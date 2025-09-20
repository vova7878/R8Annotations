# MIT License
#
# Copyright (c) 2024 Vladimir Kozelkov
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# com.v7878.r8.annotations.DoNotShrink
-dontwarn com.v7878.r8.annotations.DoNotShrink
-keepclassmembers, allowoptimization, allowobfuscation
    @com.v7878.r8.annotations.DoNotShrink class * {*;}
-keepclassmembers, allowoptimization, allowobfuscation class * {
    @com.v7878.r8.annotations.DoNotShrink <init>(...);
    @com.v7878.r8.annotations.DoNotShrink <methods>;
    @com.v7878.r8.annotations.DoNotShrink <fields>;
}

# com.v7878.r8.annotations.DoNotShrinkType
-dontwarn com.v7878.r8.annotations.DoNotShrinkType
-keep, allowoptimization, allowobfuscation
    @com.v7878.r8.annotations.DoNotShrinkType class *

# com.v7878.r8.annotations.DoNotObfuscate
-dontwarn com.v7878.r8.annotations.DoNotObfuscate
-keepclassmembers, allowshrinking, allowoptimization
    @com.v7878.r8.annotations.DoNotObfuscate class * {*;}
-keepclassmembers, allowshrinking, allowoptimization class * {
    @com.v7878.r8.annotations.DoNotObfuscate <init>(...);
    @com.v7878.r8.annotations.DoNotObfuscate <methods>;
    @com.v7878.r8.annotations.DoNotObfuscate <fields>;
}

# com.v7878.r8.annotations.DoNotObfuscateType
-dontwarn com.v7878.r8.annotations.DoNotObfuscateType
-keep, allowshrinking, allowoptimization
    @com.v7878.r8.annotations.DoNotObfuscateType class *

# com.v7878.r8.annotations.DoNotOptimize
-dontwarn com.v7878.r8.annotations.DoNotOptimize
-keepclassmembers, allowshrinking, allowobfuscation
    @com.v7878.r8.annotations.DoNotOptimize class * {*;}
-keepclassmembers, allowshrinking, allowobfuscation class * {
    @com.v7878.r8.annotations.DoNotOptimize <init>(...);
    @com.v7878.r8.annotations.DoNotOptimize <methods>;
    @com.v7878.r8.annotations.DoNotOptimize <fields>;
}

# com.v7878.r8.annotations.KeepCode
-dontwarn com.v7878.r8.annotations.KeepCode
-keepclassmembers, allowshrinking, allowobfuscation, allowoptimization, includecode
    @com.v7878.r8.annotations.KeepCode class * {*;}
-keepclassmembers, allowshrinking, allowobfuscation, allowoptimization, includecode class * {
    @com.v7878.r8.annotations.KeepCode <init>(...);
    @com.v7878.r8.annotations.KeepCode <methods>;
}

# com.v7878.r8.annotations.KeepAttributes
-dontwarn com.v7878.r8.annotations.KeepAttributes
-keep, allowshrinking, allowobfuscation, allowoptimization
    @com.v7878.r8.annotations.KeepAttributes class * {*;}
-keepclassmembers, allowshrinking, allowobfuscation, allowoptimization class * {
    @com.v7878.r8.annotations.KeepAttributes <init>(...);
    @com.v7878.r8.annotations.KeepAttributes <methods>;
    @com.v7878.r8.annotations.KeepAttributes <fields>;
}

# com.v7878.r8.annotations.NoSideEffects
-dontwarn com.v7878.r8.annotations.NoSideEffects
-assumenosideeffects @com.v7878.r8.annotations.NoSideEffects class * {*;}
-assumenosideeffects class * {
    @com.v7878.r8.annotations.NoSideEffects <init>(...);
    @com.v7878.r8.annotations.NoSideEffects <methods>;
    @com.v7878.r8.annotations.NoSideEffects <fields>;
}

# R8 specific annotations

# com.v7878.r8.annotations.AlwaysInline
-dontwarn com.v7878.r8.annotations.AlwaysInline
-alwaysinline class * {
    @com.v7878.r8.annotations.AlwaysInline <init>(...);
    @com.v7878.r8.annotations.AlwaysInline <methods>;
}

# com.v7878.r8.annotations.CheckDiscard
-dontwarn com.v7878.r8.annotations.CheckDiscard
-checkdiscard @com.v7878.r8.annotations.CheckDiscard class *
-checkdiscard class * {
    @com.v7878.r8.annotations.CheckDiscard <init>(...);
    @com.v7878.r8.annotations.CheckDiscard <methods>;
    @com.v7878.r8.annotations.CheckDiscard <fields>;
}