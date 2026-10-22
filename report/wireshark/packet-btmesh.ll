Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-btmesh?download=true
inline.NumInlined: 30
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 20
begin_hunk_0
@.str.2064 = private unnamed_addr constant [26 x i8] c"Output Current Statistics\00", align 1
@.str.2065 = private unnamed_addr constant [36 x i8] c"Output Ripple Voltage Specification\00", align 1
@.str.2066 = private unnamed_addr constant [21 x i8] c"Output Voltage Range\00", align 1
@.str.2067 = private unnamed_addr constant [26 x i8] c"Output Voltage Statistics\00", align 1
@.str.2068 = private unnamed_addr constant [44 x i8] c"Over Output Ripple Voltage Event Statistics\00", align 1
@.str.2069 = private unnamed_addr constant [13 x i8] c"People Count\00", align 1
@.str.2070 = private unnamed_addr constant [18 x i8] c"Presence Detected\00", align 1
@.str.2071 = private unnamed_addr constant [28 x i8] c"Present Ambient Light Level\00", align 1
@.str.2072 = private unnamed_addr constant [28 x i8] c"Present Ambient Temperature\00", align 1
@.str.2073 = private unnamed_addr constant [42 x i8] c"Present CIE 1931 Chromaticity Coordinates\00", align 1
@.str.2074 = private unnamed_addr constant [37 x i8] c"Present Correlated Color Temperature\00", align 1
@.str.2075 = private unnamed_addr constant [27 x i8] c"Present Device Input Power\00", align 1
@.str.2076 = private unnamed_addr constant [36 x i8] c"Present Device Operating Efficiency\00", align 1
@.str.2077 = private unnamed_addr constant [37 x i8] c"Present Device Operating Temperature\00", align 1
@.str.2078 = private unnamed_addr constant [20 x i8] c"Present Illuminance\00", align 1
@.str.2079 = private unnamed_addr constant [35 x i8] c"Present Indoor Ambient Temperature\00", align 1
@.str.2080 = private unnamed_addr constant [22 x i8] c"Present Input Current\00", align 1
@.str.2081 = private unnamed_addr constant [29 x i8] c"Present Input Ripple Voltage\00", align 1
@.str.2082 = private unnamed_addr constant [22 x i8] c"Present Input Voltage\00", align 1
@.str.2083 = private unnamed_addr constant [22 x i8] c"Present Luminous Flux\00", align 1
@.str.2084 = private unnamed_addr constant [36 x i8] c"Present Outdoor Ambient Temperature\00", align 1
@.str.2085 = private unnamed_addr constant [23 x i8] c"Present Output Current\00", align 1
@.str.2086 = private unnamed_addr constant [23 x i8] c"Present Output Voltage\00", align 1
@.str.2087 = private unnamed_addr constant [27 x i8] c"Present Planckian Distance\00", align 1
@.str.2088 = private unnamed_addr constant [39 x i8] c"Present Relative Output Ripple Voltage\00", align 1
@.str.2089 = private unnamed_addr constant [46 x i8] c"Relative Device Energy Use In A Period Of Day\00", align 1
@.str.2090 = private unnamed_addr constant [49 x i8] c"Relative Device Runtime In A Generic Level Range\00", align 1
@.str.2091 = private unnamed_addr constant [47 x i8] c"Relative Exposure Time In An Illuminance Range\00", align 1
@.str.2092 = private unnamed_addr constant [57 x i8] c"Relative Runtime In A Correlated Color Temperature Range\00", align 1
@.str.2093 = private unnamed_addr constant [57 x i8] c"Relative Runtime In A Device Operating Temperature Range\00", align 1
@.str.2094 = private unnamed_addr constant [43 x i8] c"Relative Runtime In An Input Current Range\00", align 1
@.str.2095 = private unnamed_addr constant [43 x i8] c"Relative Runtime In An Input Voltage Range\00", align 1
@.str.2096 = private unnamed_addr constant [31 x i8] c"Short Circuit Event Statistics\00", align 1
@.str.2097 = private unnamed_addr constant [25 x i8] c"Time Since Motion Sensed\00", align 1
@.str.2098 = private unnamed_addr constant [29 x i8] c"Time Since Presence Detected\00", align 1
@.str.2099 = private unnamed_addr constant [24 x i8] c"Total Device Energy Use\00", align 1
@.str.2100 = private unnamed_addr constant [27 x i8] c"Total Device Off On Cycles\00", align 1
@.str.2101 = private unnamed_addr constant [29 x i8] c"Total Device Power On Cycles\00", align 1
@.str.2102 = private unnamed_addr constant [27 x i8] c"Total Device Power On Time\00", align 1
@.str.2103 = private unnamed_addr constant [21 x i8] c"Total Device Runtime\00", align 1
@.str.2104 = private unnamed_addr constant [26 x i8] c"Total Light Exposure Time\00", align 1
@.str.2105 = private unnamed_addr constant [22 x i8] c"Total Luminous Energy\00", align 1
@.str.2106 = private unnamed_addr constant [28 x i8] c"Desired Ambient Temperature\00", align 1
@.str.2107 = private unnamed_addr constant [32 x i8] c"Precise Total Device Energy Use\00", align 1
@.str.2108 = private unnamed_addr constant [13 x i8] c"Power Factor\00", align 1
@.str.2109 = private unnamed_addr constant [12 x i8] c"Sensor Gain\00", align 1
@.str.2110 = private unnamed_addr constant [36 x i8] c"Precise Present Ambient Temperature\00", align 1
@.str.2111 = private unnamed_addr constant [34 x i8] c"Present Ambient Relative Humidity\00", align 1
@.str.2112 = private unnamed_addr constant [45 x i8] c"Present Ambient Carbon Dioxide Concentration\00", align 1
@.str.2113 = private unnamed_addr constant [57 x i8] c"Present Ambient Volatile Organic Compounds Concentration\00", align 1
@.str.2114 = private unnamed_addr constant [22 x i8] c"Present Ambient Noise\00", align 1
@.str.2115 = private unnamed_addr constant [23 x i8] c"Active Energy Loadside\00", align 1
@.str.2116 = private unnamed_addr constant [22 x i8] c"Active Power Loadside\00", align 1
@.str.2117 = private unnamed_addr constant [13 x i8] c"Air Pressure\00", align 1
@.str.2118 = private unnamed_addr constant [16 x i8] c"Apparent Energy\00", align 1
@.str.2119 = private unnamed_addr constant [15 x i8] c"Apparent Power\00", align 1
@.str.2120 = private unnamed_addr constant [24 x i8] c"Apparent Wind Direction\00", align 1
@.str.2121 = private unnamed_addr constant [20 x i8] c"Apparent Wind Speed\00", align 1
@.str.2122 = private unnamed_addr constant [10 x i8] c"Dew Point\00", align 1
@.str.2123 = private unnamed_addr constant [24 x i8] c"External Supply Voltage\00", align 1
@.str.2124 = private unnamed_addr constant [34 x i8] c"External Supply Voltage Frequency\00", align 1
@.str.2125 = private unnamed_addr constant [12 x i8] c"Gust Factor\00", align 1
@.str.2126 = private unnamed_addr constant [11 x i8] c"Heat Index\00", align 1
@.str.2127 = private unnamed_addr constant [19 x i8] c"Light Distribution\00", align 1
@.str.2128 = private unnamed_addr constant [21 x i8] c"Light Source Current\00", align 1
@.str.2129 = private unnamed_addr constant [36 x i8] c"Light Source On Time Not Resettable\00", align 1
@.str.2130 = private unnamed_addr constant [32 x i8] c"Light Source On Time Resettable\00", align 1
@.str.2131 = private unnamed_addr constant [37 x i8] c"Light Source Open Circuit Statistics\00", align 1
@.str.2132 = private unnamed_addr constant [41 x i8] c"Light Source Overall Failures Statistics\00", align 1
@.str.2133 = private unnamed_addr constant [38 x i8] c"Light Source Short Circuit Statistics\00", align 1
@.str.2134 = private unnamed_addr constant [38 x i8] c"Light Source Start Counter Resettable\00", align 1
@.str.2135 = private unnamed_addr constant [25 x i8] c"Light Source Temperature\00", align 1
@.str.2136 = private unnamed_addr constant [41 x i8] c"Light Source Thermal Derating Statistics\00", align 1
@.str.2137 = private unnamed_addr constant [41 x i8] c"Light Source Thermal Shutdown Statistics\00", align 1
@.str.2138 = private unnamed_addr constant [35 x i8] c"Light Source Total Power On Cycles\00", align 1
@.str.2139 = private unnamed_addr constant [21 x i8] c"Light Source Voltage\00", align 1
@.str.2140 = private unnamed_addr constant [16 x i8] c"Luminaire Color\00", align 1
@.str.2141 = private unnamed_addr constant [32 x i8] c"Luminaire Identification Number\00", align 1
@.str.2142 = private unnamed_addr constant [28 x i8] c"Luminaire Manufacturer GTIN\00", align 1
@.str.2143 = private unnamed_addr constant [30 x i8] c"Luminaire Nominal Input Power\00", align 1
@.str.2144 = private unnamed_addr constant [43 x i8] c"Luminaire Nominal Maximum AC Mains Voltage\00", align 1
@.str.2145 = private unnamed_addr constant [43 x i8] c"Luminaire Nominal Minimum AC Mains Voltage\00", align 1
@.str.2146 = private unnamed_addr constant [37 x i8] c"Luminaire Power At Minimum Dim Level\00", align 1
@.str.2147 = private unnamed_addr constant [30 x i8] c"Luminaire Time Of Manufacture\00", align 1
@.str.2148 = private unnamed_addr constant [21 x i8] c"Magnetic Declination\00", align 1
@.str.2149 = private unnamed_addr constant [27 x i8] c"Magnetic Flux Density - 2D\00", align 1
@.str.2150 = private unnamed_addr constant [27 x i8] c"Magnetic Flux Density - 3D\00", align 1
@.str.2151 = private unnamed_addr constant [21 x i8] c"Nominal Light Output\00", align 1
@.str.2152 = private unnamed_addr constant [26 x i8] c"Overall Failure Condition\00", align 1
@.str.2153 = private unnamed_addr constant [21 x i8] c"Pollen Concentration\00", align 1
@.str.2154 = private unnamed_addr constant [33 x i8] c"Present Indoor Relative Humidity\00", align 1
@.str.2155 = private unnamed_addr constant [34 x i8] c"Present Outdoor Relative Humidity\00", align 1
@.str.2156 = private unnamed_addr constant [9 x i8] c"Pressure\00", align 1
@.str.2157 = private unnamed_addr constant [9 x i8] c"Rainfall\00", align 1
@.str.2158 = private unnamed_addr constant [38 x i8] c"Rated Median Useful Life Of Luminaire\00", align 1
@.str.2159 = private unnamed_addr constant [40 x i8] c"Rated Median Useful Light Source Starts\00", align 1
@.str.2160 = private unnamed_addr constant [22 x i8] c"Reference Temperature\00", align 1
@.str.2161 = private unnamed_addr constant [20 x i8] c"Total Device Starts\00", align 1
@.str.2162 = private unnamed_addr constant [20 x i8] c"True Wind Direction\00", align 1
@.str.2163 = private unnamed_addr constant [16 x i8] c"True Wind Speed\00", align 1
@.str.2164 = private unnamed_addr constant [9 x i8] c"UV Index\00", align 1
@.str.2165 = private unnamed_addr constant [11 x i8] c"Wind Chill\00", align 1
@.str.2166 = private unnamed_addr constant [18 x i8] c"Light Source Type\00", align 1
@.str.2167 = private unnamed_addr constant [32 x i8] c"Luminaire Identification String\00", align 1
@.str.2168 = private unnamed_addr constant [24 x i8] c"Output Power Limitation\00", align 1
@.str.2169 = private unnamed_addr constant [17 x i8] c"Thermal Derating\00", align 1
@.str.2170 = private unnamed_addr constant [23 x i8] c"Output Current Percent\00", align 1
@btmesh_properties_vals = internal constant [180 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 65535, [4 x i8] zeroinitializer, ptr @.str.1334 }, { i32, [4 x i8], ptr } { i32 65534, [4 x i8] zeroinitializer, ptr @.str.762 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1994 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1995 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1996 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.1997 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.1998 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.1999 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.2000 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.2001 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.2002 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.2003 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.2004 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.2005 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.2006 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.2007 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.2008 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.2009 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.2010 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.2011 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.2012 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.2013 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.2014 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.2015 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.2016 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.2017 }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.2018 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.2019 }, { i32, [4 x i8], ptr } { i32 27, [4 x i8] zeroinitializer, ptr @.str.2020 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.2021 }, { i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.2022 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.2023 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.2024 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.2025 }, { i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.2026 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.2027 }, { i32, [4 x i8], ptr } { i32 35, [4 x i8] zeroinitializer, ptr @.str.2028 }, { i32, [4 x i8], ptr } { i32 36, [4 x i8] zeroinitializer, ptr @.str.2029 }, { i32, [4 x i8], ptr } { i32 37, [4 x i8] zeroinitializer, ptr @.str.2030 }, { i32, [4 x i8], ptr } { i32 38, [4 x i8] zeroinitializer, ptr @.str.2031 }, { i32, [4 x i8], ptr } { i32 39, [4 x i8] zeroinitializer, ptr @.str.2032 }, { i32, [4 x i8], ptr } { i32 40, [4 x i8] zeroinitializer, ptr @.str.2033 }, { i32, [4 x i8], ptr } { i32 41, [4 x i8] zeroinitializer, ptr @.str.2034 }, { i32, [4 x i8], ptr } { i32 42, [4 x i8] zeroinitializer, ptr @.str.2035 }, { i32, [4 x i8], ptr } { i32 43, [4 x i8] zeroinitializer, ptr @.str.2036 }, { i32, [4 x i8], ptr } { i32 44, [4 x i8] zeroinitializer, ptr @.str.2037 }, { i32, [4 x i8], ptr } { i32 45, [4 x i8] zeroinitializer, ptr @.str.2038 }, { i32, [4 x i8], ptr } { i32 46, [4 x i8] zeroinitializer, ptr @.str.2039 }, { i32, [4 x i8], ptr } { i32 47, [4 x i8] zeroinitializer, ptr @.str.2040 }, { i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @.str.2041 }, { i32, [4 x i8], ptr } { i32 49, [4 x i8] zeroinitializer, ptr @.str.2042 }, { i32, [4 x i8], ptr } { i32 50, [4 x i8] zeroinitializer, ptr @.str.2043 }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @.str.2044 }, { i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @.str.2045 }, { i32, [4 x i8], ptr } { i32 53, [4 x i8] zeroinitializer, ptr @.str.2046 }, { i32, [4 x i8], ptr } { i32 54, [4 x i8] zeroinitializer, ptr @.str.2047 }, { i32, [4 x i8], ptr } { i32 55, [4 x i8] zeroinitializer, ptr @.str.2048 }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.2049 }, { i32, [4 x i8], ptr } { i32 57, [4 x i8] zeroinitializer, ptr @.str.2050 }, { i32, [4 x i8], ptr } { i32 58, [4 x i8] zeroinitializer, ptr @.str.2051 }, { i32, [4 x i8], ptr } { i32 59, [4 x i8] zeroinitializer, ptr @.str.2052 }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @.str.2053 }, { i32, [4 x i8], ptr } { i32 61, [4 x i8] zeroinitializer, ptr @.str.2054 }, { i32, [4 x i8], ptr } { i32 62, [4 x i8] zeroinitializer, ptr @.str.2055 }, { i32, [4 x i8], ptr } { i32 63, [4 x i8] zeroinitializer, ptr @.str.2056 }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @.str.2057 }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @.str.2058 }, { i32, [4 x i8], ptr } { i32 66, [4 x i8] zeroinitializer, ptr @.str.2059 }, { i32, [4 x i8], ptr } { i32 67, [4 x i8] zeroinitializer, ptr @.str.2060 }, { i32, [4 x i8], ptr } { i32 68, [4 x i8] zeroinitializer, ptr @.str.2061 }, { i32, [4 x i8], ptr } { i32 69, [4 x i8] zeroinitializer, ptr @.str.2062 }, { i32, [4 x i8], ptr } { i32 70, [4 x i8] zeroinitializer, ptr @.str.2063 }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @.str.2064 }, { i32, [4 x i8], ptr } { i32 72, [4 x i8] zeroinitializer, ptr @.str.2065 }, { i32, [4 x i8], ptr } { i32 73, [4 x i8] zeroinitializer, ptr @.str.2066 }, { i32, [4 x i8], ptr } { i32 74, [4 x i8] zeroinitializer, ptr @.str.2067 }, { i32, [4 x i8], ptr } { i32 75, [4 x i8] zeroinitializer, ptr @.str.2068 }, { i32, [4 x i8], ptr } { i32 76, [4 x i8] zeroinitializer, ptr @.str.2069 }, { i32, [4 x i8], ptr } { i32 77, [4 x i8] zeroinitializer, ptr @.str.2070 }, { i32, [4 x i8], ptr } { i32 78, [4 x i8] zeroinitializer, ptr @.str.2071 }, { i32, [4 x i8], ptr } { i32 79, [4 x i8] zeroinitializer, ptr @.str.2072 }, { i32, [4 x i8], ptr } { i32 80, [4 x i8] zeroinitializer, ptr @.str.2073 }, { i32, [4 x i8], ptr } { i32 81, [4 x i8] zeroinitializer, ptr @.str.2074 }, { i32, [4 x i8], ptr } { i32 82, [4 x i8] zeroinitializer, ptr @.str.2075 }, { i32, [4 x i8], ptr } { i32 83, [4 x i8] zeroinitializer, ptr @.str.2076 }, { i32, [4 x i8], ptr } { i32 84, [4 x i8] zeroinitializer, ptr @.str.2077 }, { i32, [4 x i8], ptr } { i32 85, [4 x i8] zeroinitializer, ptr @.str.2078 }, { i32, [4 x i8], ptr } { i32 86, [4 x i8] zeroinitializer, ptr @.str.2079 }, { i32, [4 x i8], ptr } { i32 87, [4 x i8] zeroinitializer, ptr @.str.2080 }, { i32, [4 x i8], ptr } { i32 88, [4 x i8] zeroinitializer, ptr @.str.2081 }, { i32, [4 x i8], ptr } { i32 89, [4 x i8] zeroinitializer, ptr @.str.2082 }, { i32, [4 x i8], ptr } { i32 90, [4 x i8] zeroinitializer, ptr @.str.2083 }, { i32, [4 x i8], ptr } { i32 91, [4 x i8] zeroinitializer, ptr @.str.2084 }, { i32, [4 x i8], ptr } { i32 92, [4 x i8] zeroinitializer, ptr @.str.2085 }, { i32, [4 x i8], ptr } { i32 93, [4 x i8] zeroinitializer, ptr @.str.2086 }, { i32, [4 x i8], ptr } { i32 94, [4 x i8] zeroinitializer, ptr @.str.2087 }, { i32, [4 x i8], ptr } { i32 95, [4 x i8] zeroinitializer, ptr @.str.2088 }, { i32, [4 x i8], ptr } { i32 96, [4 x i8] zeroinitializer, ptr @.str.2089 }, { i32, [4 x i8], ptr } { i32 97, [4 x i8] zeroinitializer, ptr @.str.2090 }, { i32, [4 x i8], ptr } { i32 98, [4 x i8] zeroinitializer, ptr @.str.2091 }, { i32, [4 x i8], ptr } { i32 99, [4 x i8] zeroinitializer, ptr @.str.2092 }, { i32, [4 x i8], ptr } { i32 100, [4 x i8] zeroinitializer, ptr @.str.2093 }, { i32, [4 x i8], ptr } { i32 101, [4 x i8] zeroinitializer, ptr @.str.2094 }, { i32, [4 x i8], ptr } { i32 102, [4 x i8] zeroinitializer, ptr @.str.2095 }, { i32, [4 x i8], ptr } { i32 103, [4 x i8] zeroinitializer, ptr @.str.2096 }, { i32, [4 x i8], ptr } { i32 104, [4 x i8] zeroinitializer, ptr @.str.2097 }, { i32, [4 x i8], ptr } { i32 105, [4 x i8] zeroinitializer, ptr @.str.2098 }, { i32, [4 x i8], ptr } { i32 106, [4 x i8] zeroinitializer, ptr @.str.2099 }, { i32, [4 x i8], ptr } { i32 107, [4 x i8] zeroinitializer, ptr @.str.2100 }, { i32, [4 x i8], ptr } { i32 108, [4 x i8] zeroinitializer, ptr @.str.2101 }, { i32, [4 x i8], ptr } { i32 109, [4 x i8] zeroinitializer, ptr @.str.2102 }, { i32, [4 x i8], ptr } { i32 110, [4 x i8] zeroinitializer, ptr @.str.2103 }, { i32, [4 x i8], ptr } { i32 111, [4 x i8] zeroinitializer, ptr @.str.2104 }, { i32, [4 x i8], ptr } { i32 112, [4 x i8] zeroinitializer, ptr @.str.2105 }, { i32, [4 x i8], ptr } { i32 113, [4 x i8] zeroinitializer, ptr @.str.2106 }, { i32, [4 x i8], ptr } { i32 114, [4 x i8] zeroinitializer, ptr @.str.2107 }, { i32, [4 x i8], ptr } { i32 115, [4 x i8] zeroinitializer, ptr @.str.2108 }, { i32, [4 x i8], ptr } { i32 116, [4 x i8] zeroinitializer, ptr @.str.2109 }, { i32, [4 x i8], ptr } { i32 117, [4 x i8] zeroinitializer, ptr @.str.2110 }, { i32, [4 x i8], ptr } { i32 118, [4 x i8] zeroinitializer, ptr @.str.2111 }, { i32, [4 x i8], ptr } { i32 119, [4 x i8] zeroinitializer, ptr @.str.2112 }, { i32, [4 x i8], ptr } { i32 120, [4 x i8] zeroinitializer, ptr @.str.2113 }, { i32, [4 x i8], ptr } { i32 121, [4 x i8] zeroinitializer, ptr @.str.2114 }, { i32, [4 x i8], ptr } { i32 128, [4 x i8] zeroinitializer, ptr @.str.2115 }, { i32, [4 x i8], ptr } { i32 129, [4 x i8] zeroinitializer, ptr @.str.2116 }, { i32, [4 x i8], ptr } { i32 130, [4 x i8] zeroinitializer, ptr @.str.2117 }, { i32, [4 x i8], ptr } { i32 131, [4 x i8] zeroinitializer, ptr @.str.2118 }, { i32, [4 x i8], ptr } { i32 132, [4 x i8] zeroinitializer, ptr @.str.2119 }, { i32, [4 x i8], ptr } { i32 133, [4 x i8] zeroinitializer, ptr @.str.2120 }, { i32, [4 x i8], ptr } { i32 134, [4 x i8] zeroinitializer, ptr @.str.2121 }, { i32, [4 x i8], ptr } { i32 135, [4 x i8] zeroinitializer, ptr @.str.2122 }, { i32, [4 x i8], ptr } { i32 136, [4 x i8] zeroinitializer, ptr @.str.2123 }, { i32, [4 x i8], ptr } { i32 137, [4 x i8] zeroinitializer, ptr @.str.2124 }, { i32, [4 x i8], ptr } { i32 138, [4 x i8] zeroinitializer, ptr @.str.2125 }, { i32, [4 x i8], ptr } { i32 139, [4 x i8] zeroinitializer, ptr @.str.2126 }, { i32, [4 x i8], ptr } { i32 140, [4 x i8] zeroinitializer, ptr @.str.2127 }, { i32, [4 x i8], ptr } { i32 141, [4 x i8] zeroinitializer, ptr @.str.2128 }, { i32, [4 x i8], ptr } { i32 142, [4 x i8] zeroinitializer, ptr @.str.2129 }, { i32, [4 x i8], ptr } { i32 143, [4 x i8] zeroinitializer, ptr @.str.2130 }, { i32, [4 x i8], ptr } { i32 144, [4 x i8] zeroinitializer, ptr @.str.2131 }, { i32, [4 x i8], ptr } { i32 145, [4 x i8] zeroinitializer, ptr @.str.2132 }, { i32, [4 x i8], ptr } { i32 146, [4 x i8] zeroinitializer, ptr @.str.2133 }, { i32, [4 x i8], ptr } { i32 147, [4 x i8] zeroinitializer, ptr @.str.2134 }, { i32, [4 x i8], ptr } { i32 148, [4 x i8] zeroinitializer, ptr @.str.2135 }, { i32, [4 x i8], ptr } { i32 149, [4 x i8] zeroinitializer, ptr @.str.2136 }, { i32, [4 x i8], ptr } { i32 150, [4 x i8] zeroinitializer, ptr @.str.2137 }, { i32, [4 x i8], ptr } { i32 151, [4 x i8] zeroinitializer, ptr @.str.2138 }, { i32, [4 x i8], ptr } { i32 152, [4 x i8] zeroinitializer, ptr @.str.2139 }, { i32, [4 x i8], ptr } { i32 153, [4 x i8] zeroinitializer, ptr @.str.2140 }, { i32, [4 x i8], ptr } { i32 154, [4 x i8] zeroinitializer, ptr @.str.2141 }, { i32, [4 x i8], ptr } { i32 155, [4 x i8] zeroinitializer, ptr @.str.2142 }, { i32, [4 x i8], ptr } { i32 156, [4 x i8] zeroinitializer, ptr @.str.2143 }, { i32, [4 x i8], ptr } { i32 157, [4 x i8] zeroinitializer, ptr @.str.2144 }, { i32, [4 x i8], ptr } { i32 158, [4 x i8] zeroinitializer, ptr @.str.2145 }, { i32, [4 x i8], ptr } { i32 159, [4 x i8] zeroinitializer, ptr @.str.2146 }, { i32, [4 x i8], ptr } { i32 160, [4 x i8] zeroinitializer, ptr @.str.2147 }, { i32, [4 x i8], ptr } { i32 161, [4 x i8] zeroinitializer, ptr @.str.2148 }, { i32, [4 x i8], ptr } { i32 162, [4 x i8] zeroinitializer, ptr @.str.2149 }, { i32, [4 x i8], ptr } { i32 163, [4 x i8] zeroinitializer, ptr @.str.2150 }, { i32, [4 x i8], ptr } { i32 164, [4 x i8] zeroinitializer, ptr @.str.2151 }, { i32, [4 x i8], ptr } { i32 165, [4 x i8] zeroinitializer, ptr @.str.2152 }, { i32, [4 x i8], ptr } { i32 166, [4 x i8] zeroinitializer, ptr @.str.2153 }, { i32, [4 x i8], ptr } { i32 167, [4 x i8] zeroinitializer, ptr @.str.2154 }, { i32, [4 x i8], ptr } { i32 168, [4 x i8] zeroinitializer, ptr @.str.2155 }, { i32, [4 x i8], ptr } { i32 169, [4 x i8] zeroinitializer, ptr @.str.2156 }, { i32, [4 x i8], ptr } { i32 170, [4 x i8] zeroinitializer, ptr @.str.2157 }, { i32, [4 x i8], ptr } { i32 171, [4 x i8] zeroinitializer, ptr @.str.2158 }, { i32, [4 x i8], ptr } { i32 172, [4 x i8] zeroinitializer, ptr @.str.2159 }, { i32, [4 x i8], ptr } { i32 173, [4 x i8] zeroinitializer, ptr @.str.2160 }, { i32, [4 x i8], ptr } { i32 174, [4 x i8] zeroinitializer, ptr @.str.2161 }, { i32, [4 x i8], ptr } { i32 175, [4 x i8] zeroinitializer, ptr @.str.2162 }, { i32, [4 x i8], ptr } { i32 176, [4 x i8] zeroinitializer, ptr @.str.2163 }, { i32, [4 x i8], ptr } { i32 177, [4 x i8] zeroinitializer, ptr @.str.2164 }, { i32, [4 x i8], ptr } { i32 178, [4 x i8] zeroinitializer, ptr @.str.2165 }, { i32, [4 x i8], ptr } { i32 179, [4 x i8] zeroinitializer, ptr @.str.2166 }, { i32, [4 x i8], ptr } { i32 180, [4 x i8] zeroinitializer, ptr @.str.2167 }, { i32, [4 x i8], ptr } { i32 181, [4 x i8] zeroinitializer, ptr @.str.2168 }, { i32, [4 x i8], ptr } { i32 182, [4 x i8] zeroinitializer, ptr @.str.2169 }, { i32, [4 x i8], ptr } { i32 183, [4 x i8] zeroinitializer, ptr @.str.2170 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.2172 = private unnamed_addr constant [16 x i8] c"Prohibited (%d)\00", align 1
@.str.2173 = private unnamed_addr constant [35 x i8] c"Use the Light Lightness Last value\00", align 1
@.str.2174 = private unnamed_addr constant [5 x i8] c"%d K\00", align 1
@.str.2175 = private unnamed_addr constant [9 x i8] c"% 3.3f\C2\B0\00", align 1
@.str.2176 = private unnamed_addr constant [6 x i8] c"%1.5f\00", align 1
@.str.2177 = private unnamed_addr constant [28 x i8] c"Not a Generic User Property\00", align 1
@.str.2178 = private unnamed_addr constant [12 x i8] c"Can be read\00", align 1
@.str.2179 = private unnamed_addr constant [15 x i8] c"Can be written\00", align 1
@.str.2180 = private unnamed_addr constant [24 x i8] c"Can be read and written\00", align 1
@.str.2181 = private unnamed_addr constant [12 x i8] c"Unspecified\00", align 1
@.str.2182 = private unnamed_addr constant [14 x i8] c"Instantaneous\00", align 1
@.str.2183 = private unnamed_addr constant [16 x i8] c"Arithmetic Mean\00", align 1
@.str.2184 = private unnamed_addr constant [4 x i8] c"RMS\00", align 1
@.str.2185 = private unnamed_addr constant [8 x i8] c"Maximum\00", align 1
@.str.2186 = private unnamed_addr constant [8 x i8] c"Minimum\00", align 1
@.str.2187 = private unnamed_addr constant [12 x i8] c"Accumulated\00", align 1
@.str.2188 = private unnamed_addr constant [6 x i8] c"Count\00", align 1
@btmesh_sensor_sampling_function_vals = internal constant [9 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2181 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.2182 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.2183 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.2184 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.2185 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.2186 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.2187 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.2188 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.2190 = private unnamed_addr constant [15 x i8] c"Not Applicable\00", align 1
@.str.2191 = private unnamed_addr constant [8 x i8] c"%.0f ms\00", align 1
@.str.2192 = private unnamed_addr constant [7 x i8] c"%.1f s\00", align 1
@.str.2193 = private unnamed_addr constant [18 x i8] c"%02lu:%02lu:%02lu\00", align 1
@.str.2194 = private unnamed_addr constant [27 x i8] c"%lu days %02lu:%02lu:%02lu\00", align 1
@.str.2195 = private unnamed_addr constant [9 x i8] c"Format A\00", align 1
@.str.2196 = private unnamed_addr constant [9 x i8] c"Format B\00", align 1
@btmesh_mpid_format_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2195 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.2196 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.2198 = private unnamed_addr constant [24 x i8] c"same format as property\00", align 1
@.str.2199 = private unnamed_addr constant [9 x i8] c"unitless\00", align 1
@btmesh_status_trigger_type_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2198 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.2199 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.2201 = private unnamed_addr constant [6 x i8] c"%d ms\00", align 1
@.str.2202 = private unnamed_addr constant [19 x i8] c"Value is not known\00", align 1
@.str.2203 = private unnamed_addr constant [9 x i8] c"%.2f lux\00", align 1
@.str.2204 = private unnamed_addr constant [8 x i8] c"%.1f %%\00", align 1
@.str.2205 = private unnamed_addr constant [7 x i8] c"%.2f s\00", align 1
@.str.2206 = private unnamed_addr constant [8 x i8] c"%.2f %%\00", align 1
@.str.2207 = private unnamed_addr constant [7 x i8] c"%.1f h\00", align 1
@.str.2208 = private unnamed_addr constant [7 x i8] c"%.1f C\00", align 1
@.str.2209 = private unnamed_addr constant [7 x i8] c"%.2f C\00", align 1
@.str.2210 = private unnamed_addr constant [7 x i8] c"%.2f A\00", align 1
@.str.2211 = private unnamed_addr constant [7 x i8] c"%d kWh\00", align 1
@.str.2212 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@.str.2213 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.2215 = private unnamed_addr constant [44 x i8] c"Key %s begins with an invalid hex char (%c)\00", align 1
@.str.2216 = private unnamed_addr constant [35 x i8] c"%s %s has an invalid hex char (%c)\00", align 1
@.str.2217 = private unnamed_addr constant [70 x i8] c"%s %s has to start with '0x' or '0X', and represent exactly %d octets\00", align 1
@.str.2218 = private unnamed_addr constant [12 x i8] c"Network PDU\00", align 1
@.str.2219 = private unnamed_addr constant [18 x i8] c"Deobfuscated data\00", align 1
@.str.2220 = private unnamed_addr constant [23 x i8] c"Decrypted network data\00", align 1
@.str.2221 = private unnamed_addr constant [20 x i8] c"Lower Transport PDU\00", align 1
@.str.2222 = private unnamed_addr constant [24 x i8] c"Reassembled Control PDU\00", align 1
@btmesh_segmented_control_frag_items = internal constant %struct._fragment_items { ptr @ett_btmesh_segmented_control_fragments, ptr @ett_btmesh_segmented_control_fragment, ptr @hf_btmesh_segmented_control_fragments, ptr @hf_btmesh_segmented_control_fragment, ptr @hf_btmesh_segmented_control_fragment_overlap, ptr @hf_btmesh_segmented_control_fragment_overlap_conflict, ptr @hf_btmesh_segmented_control_fragment_multiple_tails, ptr @hf_btmesh_segmented_control_fragment_too_long_fragment, ptr @hf_btmesh_segmented_control_fragment_error, ptr @hf_btmesh_segmented_control_fragment_count, ptr null, ptr @hf_btmesh_segmented_control_reassembled_length, ptr null, ptr @.str.2229 }, align 8
@.str.2223 = private unnamed_addr constant [23 x i8] c" (Message Reassembled)\00", align 1
@.str.2224 = private unnamed_addr constant [30 x i8] c"Control Message (fragment %u)\00", align 1
@.str.2225 = private unnamed_addr constant [24 x i8] c"Control Message Unknown\00", align 1
@.str.2226 = private unnamed_addr constant [23 x i8] c"Reassembled Access PDU\00", align 1
@btmesh_segmented_access_frag_items = internal constant %struct._fragment_items { ptr @ett_btmesh_segmented_access_fragments, ptr @ett_btmesh_segmented_access_fragment, ptr @hf_btmesh_segmented_access_fragments, ptr @hf_btmesh_segmented_access_fragment, ptr @hf_btmesh_segmented_access_fragment_overlap, ptr @hf_btmesh_segmented_access_fragment_overlap_conflict, ptr @hf_btmesh_segmented_access_fragment_multiple_tails, ptr @hf_btmesh_segmented_access_fragment_too_long_fragment, ptr @hf_btmesh_segmented_access_fragment_error, ptr @hf_btmesh_segmented_access_fragment_count, ptr null, ptr @hf_btmesh_segmented_access_reassembled_length, ptr null, ptr @.str.2229 }, align 8
@.str.2227 = private unnamed_addr constant [29 x i8] c"Access Message (fragment %u)\00", align 1
@.str.2228 = private unnamed_addr constant [29 x i8] c"Transport Control Message %s\00", align 1
@.str.2229 = private unnamed_addr constant [10 x i8] c"fragments\00", align 1
@.str.2230 = private unnamed_addr constant [27 x i8] c"Upper Transport Access PDU\00", align 1
@.str.2231 = private unnamed_addr constant [22 x i8] c"Decrypted access data\00", align 1
@.str.2232 = private unnamed_addr constant [11 x i8] c"Access PDU\00", align 1
@.str.2233 = private unnamed_addr constant [12 x i8] c"Model Layer\00", align 1
@.str.2234 = private unnamed_addr constant [31 x i8] c"Access Message - Vendor Opcode\00", align 1
@.str.2235 = private unnamed_addr constant [23 x i8] c"Access Message Unknown\00", align 1
@config_composition_data_status_features_headers = internal constant [6 x ptr] [ptr @hf_btmesh_config_composition_data_status_features_relay, ptr @hf_btmesh_config_composition_data_status_features_proxy, ptr @hf_btmesh_config_composition_data_status_features_friend, ptr @hf_btmesh_config_composition_data_status_features_low_power, ptr @hf_btmesh_config_composition_data_status_features_rfu, ptr null], align 16
@.str.2236 = private unnamed_addr constant [12 x i8] c"Element #%u\00", align 1
@.str.2237 = private unnamed_addr constant [11 x i8] c"SIG Models\00", align 1
@.str.2238 = private unnamed_addr constant [14 x i8] c"Vendor Models\00", align 1
@.str.2239 = private unnamed_addr constant [11 x i8] c"FaultArray\00", align 1
@config_heartbeat_publication_status_features_headers = internal constant [6 x ptr] [ptr @hf_btmesh_config_heartbeat_publication_status_features_relay, ptr @hf_btmesh_config_heartbeat_publication_status_features_proxy, ptr @hf_btmesh_config_heartbeat_publication_status_features_friend, ptr @hf_btmesh_config_heartbeat_publication_status_features_low_power, ptr @hf_btmesh_config_heartbeat_publication_status_features_rfu, ptr null], align 16
@.str.2240 = private unnamed_addr constant [14 x i8] c"AppKeyIndexes\00", align 1
@.str.2241 = private unnamed_addr constant [10 x i8] c"Addresses\00", align 1
@config_heartbeat_publication_set_features_headers = internal constant [6 x ptr] [ptr @hf_btmesh_config_heartbeat_publication_set_features_relay, ptr @hf_btmesh_config_heartbeat_publication_set_features_proxy, ptr @hf_btmesh_config_heartbeat_publication_set_features_friend, ptr @hf_btmesh_config_heartbeat_publication_set_features_low_power, ptr @hf_btmesh_config_heartbeat_publication_set_features_rfu, ptr null], align 16
@.str.2242 = private unnamed_addr constant [14 x i8] c"NetKeyIndexes\00", align 1
@.str.2243 = private unnamed_addr constant [7 x i8] c"Scenes\00", align 1
@.str.2244 = private unnamed_addr constant [26 x i8] c"Manufacturer Property IDs\00", align 1
@.str.2245 = private unnamed_addr constant [19 x i8] c"Admin Property IDs\00", align 1
@.str.2246 = private unnamed_addr constant [18 x i8] c"User Property IDs\00", align 1
@.str.2247 = private unnamed_addr constant [20 x i8] c"Client Property IDs\00", align 1
@sensor_cadence_set_hfs = internal constant %struct.bt_sensor_cadence_dissector_t { ptr @hf_btmesh_sensor_cadence_set_status_trigger_delta_down, ptr @hf_btmesh_sensor_cadence_set_status_trigger_delta_up, ptr @hf_btmesh_sensor_cadence_set_status_min_interval, ptr @hf_btmesh_sensor_cadence_set_fast_cadence_low, ptr @hf_btmesh_sensor_cadence_set_fast_cadence_high, ptr @hf_btmesh_sensor_cadence_set_remainder_not_dissected }, align 8
@sensor_cadence_set_unacknowledged_hfs = internal constant %struct.bt_sensor_cadence_dissector_t { ptr @hf_btmesh_sensor_cadence_set_unacknowledged_status_trigger_delta_down, ptr @hf_btmesh_sensor_cadence_set_unacknowledged_status_trigger_delta_up, ptr @hf_btmesh_sensor_cadence_set_unacknowledged_status_min_interval, ptr @hf_btmesh_sensor_cadence_set_unacknowledged_fast_cadence_low, ptr @hf_btmesh_sensor_cadence_set_unacknowledged_fast_cadence_high, ptr @hf_btmesh_sensor_cadence_set_unacknowledged_remainder_not_dissected }, align 8
@sensor_cadence_status_hfs = internal constant %struct.bt_sensor_cadence_dissector_t { ptr @hf_btmesh_sensor_cadence_status_status_trigger_delta_down, ptr @hf_btmesh_sensor_cadence_status_status_trigger_delta_up, ptr @hf_btmesh_sensor_cadence_status_status_min_interval, ptr @hf_btmesh_sensor_cadence_status_fast_cadence_low, ptr @hf_btmesh_sensor_cadence_status_fast_cadence_high, ptr @hf_btmesh_sensor_cadence_status_remainder_not_dissected }, align 8
@.str.2248 = private unnamed_addr constant [28 x i8] c"Sensor Setting Property IDs\00", align 1
@sensor_column_status_hfs = internal constant %struct.bt_property_raw_value_entry_t { ptr @hf_btmesh_sensor_column_status_raw_value_a, ptr @hf_btmesh_sensor_column_status_raw_value_b, ptr @hf_btmesh_sensor_column_status_raw_value_c }, align 8
@sensor_series_status_hfs = internal constant %struct.bt_property_raw_value_entry_t { ptr @hf_btmesh_sensor_series_status_raw_value_a, ptr @hf_btmesh_sensor_series_status_raw_value_b, ptr @hf_btmesh_sensor_series_status_raw_value_c }, align 8
@btmesh_properties = internal unnamed_addr constant [180 x %struct.btmesh_property_t] [%struct.btmesh_property_t { i16 -1, i16 -1 }, %struct.btmesh_property_t { i16 -2, i16 -2 }, %struct.btmesh_property_t { i16 128, i16 11220 }, %struct.btmesh_property_t { i16 129, i16 11013 }, %struct.btmesh_property_t { i16 130, i16 10861 }, %struct.btmesh_property_t { i16 131, i16 11215 }, %struct.btmesh_property_t { i16 132, i16 11216 }, %struct.btmesh_property_t { i16 133, i16 10867 }, %struct.btmesh_property_t { i16 134, i16 10866 }, %struct.btmesh_property_t { i16 1, i16 11022 }, %struct.btmesh_property_t { i16 2, i16 10976 }, %struct.btmesh_property_t { i16 3, i16 10977 }, %struct.btmesh_property_t { i16 4, i16 10976 }, %struct.btmesh_property_t { i16 5, i16 10977 }, %struct.btmesh_property_t { i16 6, i16 11009 }, %struct.btmesh_property_t { i16 7, i16 10982 }, %struct.btmesh_property_t { i16 8, i16 10983 }, %struct.btmesh_property_t { i16 9, i16 10983 }, %struct.btmesh_property_t { i16 113, i16 11021 }, %struct.btmesh_property_t { i16 10, i16 10753 }, %struct.btmesh_property_t { i16 11, i16 10988 }, %struct.btmesh_property_t { i16 12, i16 10989 }, %struct.btmesh_property_t { i16 13, i16 10994 }, %struct.btmesh_property_t { i16 14, i16 11000 }, %struct.btmesh_property_t { i16 15, i16 11002 }, %struct.btmesh_property_t { i16 16, i16 10997 }, %struct.btmesh_property_t { i16 17, i16 10999 }, %struct.btmesh_property_t { i16 18, i16 10998 }, %struct.btmesh_property_t { i16 19, i16 11024 }, %struct.btmesh_property_t { i16 20, i16 11025 }, %struct.btmesh_property_t { i16 21, i16 10996 }, %struct.btmesh_property_t { i16 22, i16 11014 }, %struct.btmesh_property_t { i16 23, i16 11028 }, %struct.btmesh_property_t { i16 24, i16 11028 }, %struct.btmesh_property_t { i16 25, i16 10997 }, %struct.btmesh_property_t { i16 26, i16 11000 }, %struct.btmesh_property_t { i16 27, i16 10996 }, %struct.btmesh_property_t { i16 135, i16 11219 }, %struct.btmesh_property_t { i16 136, i16 11223 }, %struct.btmesh_property_t { i16 137, i16 11232 }, %struct.btmesh_property_t { i16 138, i16 10868 }, %struct.btmesh_property_t { i16 139, i16 10874 }, %struct.btmesh_property_t { i16 28, i16 11023 }, %struct.btmesh_property_t { i16 29, i16 10980 }, %struct.btmesh_property_t { i16 30, i16 10985 }, %struct.btmesh_property_t { i16 31, i16 11007 }, %struct.btmesh_property_t { i16 32, i16 10979 }, %struct.btmesh_property_t { i16 33, i16 10992 }, %struct.btmesh_property_t { i16 34, i16 10993 }, %struct.btmesh_property_t { i16 35, i16 10996 }, %struct.btmesh_property_t { i16 36, i16 10996 }, %struct.btmesh_property_t { i16 37, i16 10996 }, %struct.btmesh_property_t { i16 38, i16 10996 }, %struct.btmesh_property_t { i16 39, i16 10996 }, %struct.btmesh_property_t { i16 40, i16 11033 }, %struct.btmesh_property_t { i16 41, i16 11012 }, %struct.btmesh_property_t { i16 42, i16 11034 }, %struct.btmesh_property_t { i16 43, i16 11003 }, %struct.btmesh_property_t { i16 44, i16 11003 }, %struct.btmesh_property_t { i16 45, i16 11003 }, %struct.btmesh_property_t { i16 46, i16 11011 }, %struct.btmesh_property_t { i16 47, i16 11011 }, %struct.btmesh_property_t { i16 48, i16 11011 }, %struct.btmesh_property_t { i16 49, i16 11012 }, %struct.btmesh_property_t { i16 50, i16 10984 }, %struct.btmesh_property_t { i16 51, i16 10984 }, %struct.btmesh_property_t { i16 52, i16 10984 }, %struct.btmesh_property_t { i16 53, i16 10984 }, %struct.btmesh_property_t { i16 54, i16 11029 }, %struct.btmesh_property_t { i16 55, i16 11029 }, %struct.btmesh_property_t { i16 56, i16 11029 }, %struct.btmesh_property_t { i16 57, i16 11029 }, %struct.btmesh_property_t { i16 58, i16 11029 }, %struct.btmesh_property_t { i16 59, i16 11029 }, %struct.btmesh_property_t { i16 60, i16 11029 }, %struct.btmesh_property_t { i16 140, i16 11224 }, %struct.btmesh_property_t { i16 141, i16 10976 }, %struct.btmesh_property_t { i16 142, i16 11230 }, %struct.btmesh_property_t { i16 143, i16 11230 }, %struct.btmesh_property_t { i16 144, i16 10996 }, %struct.btmesh_property_t { i16 145, i16 10996 }, %struct.btmesh_property_t { i16 146, i16 10996 }, %struct.btmesh_property_t { i16 147, i16 10987 }, %struct.btmesh_property_t { i16 148, i16 11222 }, %struct.btmesh_property_t { i16 149, i16 10996 }, %struct.btmesh_property_t { i16 150, i16 10996 }, %struct.btmesh_property_t { i16 151, i16 10987 }, %struct.btmesh_property_t { i16 179, i16 11226 }, %struct.btmesh_property_t { i16 152, i16 10977 }, %struct.btmesh_property_t { i16 61, i16 11012 }, %struct.btmesh_property_t { i16 153, i16 10998 }, %struct.btmesh_property_t { i16 154, i16 10998 }, %struct.btmesh_property_t { i16 180, i16 11221 }, %struct.btmesh_property_t { i16 155, i16 11002 }, %struct.btmesh_property_t { i16 156, i16 11013 }, %struct.btmesh_property_t { i16 157, i16 11032 }, %struct.btmesh_property_t { i16 158, i16 11032 }, %struct.btmesh_property_t { i16 159, i16 11013 }, %struct.btmesh_property_t { i16 160, i16 10989 }, %struct.btmesh_property_t { i16 62, i16 11004 }, %struct.btmesh_property_t { i16 63, i16 11005 }, %struct.btmesh_property_t { i16 64, i16 11006 }, %struct.btmesh_property_t { i16 65, i16 11008 }, %struct.btmesh_property_t { i16 161, i16 11227 }, %struct.btmesh_property_t { i16 162, i16 10912 }, %struct.btmesh_property_t { i16 163, i16 10913 }, %struct.btmesh_property_t { i16 66, i16 11012 }, %struct.btmesh_property_t { i16 67, i16 11012 }, %struct.btmesh_property_t { i16 164, i16 11225 }, %struct.btmesh_property_t { i16 68, i16 10996 }, %struct.btmesh_property_t { i16 69, i16 11023 }, %struct.btmesh_property_t { i16 183, i16 11012 }, %struct.btmesh_property_t { i16 70, i16 10991 }, %struct.btmesh_property_t { i16 71, i16 10993 }, %struct.btmesh_property_t { i16 181, i16 10996 }, %struct.btmesh_property_t { i16 72, i16 11012 }, %struct.btmesh_property_t { i16 73, i16 11033 }, %struct.btmesh_property_t { i16 74, i16 11034 }, %struct.btmesh_property_t { i16 75, i16 10996 }, %struct.btmesh_property_t { i16 165, i16 10996 }, %struct.btmesh_property_t { i16 76, i16 10986 }, %struct.btmesh_property_t { i16 166, i16 10869 }, %struct.btmesh_property_t { i16 115, i16 11218 }, %struct.btmesh_property_t { i16 117, i16 10862 }, %struct.btmesh_property_t { i16 114, i16 11220 }, %struct.btmesh_property_t { i16 77, i16 10978 }, %struct.btmesh_property_t { i16 119, i16 11217 }, %struct.btmesh_property_t { i16 78, i16 11003 }, %struct.btmesh_property_t { i16 121, i16 11228 }, %struct.btmesh_property_t { i16 118, i16 10863 }, %struct.btmesh_property_t { i16 79, i16 11021 }, %struct.btmesh_property_t { i16 120, i16 11231 }, %struct.btmesh_property_t { i16 80, i16 10980 }, %struct.btmesh_property_t { i16 81, i16 10985 }, %struct.btmesh_property_t { i16 82, i16 11013 }, %struct.btmesh_property_t { i16 83, i16 11012 }, %struct.btmesh_property_t { i16 84, i16 10862 }, %struct.btmesh_property_t { i16 85, i16 11003 }, %struct.btmesh_property_t { i16 86, i16 11021 }, %struct.btmesh_property_t { i16 167, i16 10863 }, %struct.btmesh_property_t { i16 87, i16 10990 }, %struct.btmesh_property_t { i16 88, i16 11012 }, %struct.btmesh_property_t { i16 89, i16 11032 }, %struct.btmesh_property_t { i16 90, i16 11007 }, %struct.btmesh_property_t { i16 91, i16 11021 }, %struct.btmesh_property_t { i16 168, i16 10863 }, %struct.btmesh_property_t { i16 92, i16 10990 }, %struct.btmesh_property_t { i16 93, i16 11032 }, %struct.btmesh_property_t { i16 94, i16 10979 }, %struct.btmesh_property_t { i16 95, i16 11012 }, %struct.btmesh_property_t { i16 169, i16 10861 }, %struct.btmesh_property_t { i16 170, i16 10872 }, %struct.btmesh_property_t { i16 171, i16 11028 }, %struct.btmesh_property_t { i16 172, i16 10987 }, %struct.btmesh_property_t { i16 173, i16 11222 }, %struct.btmesh_property_t { i16 96, i16 10995 }, %struct.btmesh_property_t { i16 97, i16 11016 }, %struct.btmesh_property_t { i16 98, i16 11018 }, %struct.btmesh_property_t { i16 99, i16 11005 }, %struct.btmesh_property_t { i16 100, i16 11020 }, %struct.btmesh_property_t { i16 101, i16 11015 }, %struct.btmesh_property_t { i16 102, i16 11017 }, %struct.btmesh_property_t { i16 116, i16 10984 }, %struct.btmesh_property_t { i16 103, i16 10996 }, %struct.btmesh_property_t { i16 182, i16 10996 }, %struct.btmesh_property_t { i16 104, i16 11030 }, %struct.btmesh_property_t { i16 105, i16 11030 }, %struct.btmesh_property_t { i16 106, i16 10994 }, %struct.btmesh_property_t { i16 107, i16 10987 }, %struct.btmesh_property_t { i16 108, i16 10987 }, %struct.btmesh_property_t { i16 109, i16 11028 }, %struct.btmesh_property_t { i16 110, i16 11028 }, %struct.btmesh_property_t { i16 174, i16 10987 }, %struct.btmesh_property_t { i16 111, i16 11028 }, %struct.btmesh_property_t { i16 112, i16 11005 }, %struct.btmesh_property_t { i16 175, i16 10865 }, %struct.btmesh_property_t { i16 176, i16 10864 }, %struct.btmesh_property_t { i16 177, i16 10870 }, %struct.btmesh_property_t { i16 178, i16 10873 }, %struct.btmesh_property_t zeroinitializer], align 16
@bt_gatt_characteristics = internal unnamed_addr constant [90 x { i16, i16, [4 x i8], ptr, i8, [7 x i8] }] [{ i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 -1, i16 2, [4 x i8] zeroinitializer, ptr @hf_bt_phony_characteristic_percentage_change_16, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 -2, i16 2, [4 x i8] zeroinitializer, ptr @hf_bt_phony_characteristic_index, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11215, i16 4, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11216, i16 3, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10867, i16 2, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10866, i16 2, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10753, i16 2, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10976, i16 3, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10977, i16 3, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10978, i16 1, [4 x i8] zeroinitializer, ptr @hf_bt_characteristic_boolean, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10979, i16 2, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10980, i16 2, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10982, i16 1, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10983, i16 1, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11217, i16 2, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10984, i16 4, [4 x i8] zeroinitializer, ptr @hf_bt_characteristic_coefficient, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10985, i16 2, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11218, i16 1, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10986, i16 2, [4 x i8] zeroinitializer, ptr @hf_bt_characteristic_count_16, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10987, i16 3, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10988, i16 2, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10989, i16 3, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11026, i16 1, [4 x i8] zeroinitializer, ptr @hf_bt_characteristic_time_decihour_8, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11219, i16 1, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10990, i16 2, [4 x i8] zeroinitializer, ptr @hf_bt_characteristic_electric_current, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10991, i16 4, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10992, i16 6, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10993, i16 9, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10994, i16 3, [4 x i8] zeroinitializer, ptr @hf_bt_characteristic_energy, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10995, i16 5, [4 x i8] zeroinitializer, ptr null, i8 1, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11220, i16 4, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10996, i16 6, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10997, i16 16, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10998, i16 24, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10999, i16 36, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11221, i16 64, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11000, i16 8, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11001, i16 2, [4 x i8] zeroinitializer, ptr @hf_bt_characteristic_generic_level, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11002, i16 6, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10868, i16 1, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10874, i16 1, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11222, i16 2, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11223, i16 3, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10863, i16 2, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11003, i16 3, [4 x i8] zeroinitializer, ptr @hf_bt_characteristic_illuminance, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11224, i16 1, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11225, i16 3, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11226, i16 1, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11004, i16 2, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11005, i16 3, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11006, i16 3, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11007, i16 2, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11008, i16 4, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11009, i16 2, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11227, i16 2, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10912, i16 4, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10913, i16 6, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11228, i16 1, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11011, i16 2, [4 x i8] zeroinitializer, ptr @hf_bt_characteristic_perceived_lightness, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11012, i16 1, [4 x i8] zeroinitializer, ptr @hf_bt_characteristic_percentage_8, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10869, i16 3, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11013, i16 3, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11014, i16 9, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10861, i16 4, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10872, i16 2, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11015, i16 5, [4 x i8] zeroinitializer, ptr null, i8 1, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11016, i16 5, [4 x i8] zeroinitializer, ptr null, i8 1, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11020, i16 5, [4 x i8] zeroinitializer, ptr null, i8 1, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11017, i16 5, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11018, i16 7, [4 x i8] zeroinitializer, ptr null, i8 1, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10862, i16 2, [4 x i8] zeroinitializer, ptr @hf_bt_characteristic_temperature, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11021, i16 1, [4 x i8] zeroinitializer, ptr @hf_bt_characteristic_temperature_8, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11022, i16 3, [4 x i8] zeroinitializer, ptr null, i8 1, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11023, i16 5, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11024, i16 4, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11025, i16 9, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11028, i16 3, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11029, i16 3, [4 x i8] zeroinitializer, ptr @hf_bt_characteristic_time_millisecond_24, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11030, i16 2, [4 x i8] zeroinitializer, ptr @hf_bt_characteristic_time_second_16, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11230, i16 4, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10865, i16 2, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10864, i16 2, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10870, i16 1, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11231, i16 2, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11032, i16 2, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11232, i16 2, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11033, i16 6, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 11034, i16 9, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } { i16 10873, i16 1, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, { i16, i16, [4 x i8], ptr, i8, [7 x i8] } zeroinitializer], align 16
@btmesh_column_properties = internal unnamed_addr constant [7 x %struct.btmesh_column_property_t] [%struct.btmesh_column_property_t { i16 11022, i16 11026, i16 11021 }, %struct.btmesh_column_property_t { i16 11020, i16 10862, i16 11012 }, %struct.btmesh_column_property_t { i16 11015, i16 10990, i16 11012 }, %struct.btmesh_column_property_t { i16 10995, i16 11026, i16 10994 }, %struct.btmesh_column_property_t { i16 11018, i16 11003, i16 11012 }, %struct.btmesh_column_property_t { i16 11016, i16 11001, i16 11012 }, %struct.btmesh_column_property_t zeroinitializer], align 16
@switch.table.format_scheduler_action = private unnamed_addr constant [16 x ptr] [ptr @.str.1984, ptr @.str.1985, ptr @.str.1626, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.1986], align 8
@switch.table.format_admin_user_access = private unnamed_addr constant [4 x ptr] [ptr @.str.2177, ptr @.str.2178, ptr @.str.2179, ptr @.str.2180], align 8
@switch.table.format_user_access = private unnamed_addr constant [3 x ptr] [ptr @.str.2178, ptr @.str.2179, ptr @.str.2180], align 8
@switch.table.dissect_btmesh_property_idx = private unnamed_addr constant [44 x i8] [i8 3, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 2, i8 5, i8 1, i8 poison, i8 4, i8 poison, i8 poison, i8 0], align 8

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @btmesh_network_find_key_and_decrypt(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca [16 x i8], align 16               ; 10 uses
  %i.d = alloca [13 x i8], align 1                ; 8 uses
  %i.e = alloca ptr, align 8                      ; 13 uses
  %i.f = alloca [3 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.h = and i8 %i.g, 127
  %i.i = load i32, ptr @num_btmesh_uat, align 4
  %.not73 = icmp eq i32 %i.i, 0
  br i1 %.not73, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 416        ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.r = getelementptr i8, ptr %4, i64 17         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %i.y = load ptr, ptr @uat_btmesh_records, align 8
  %i.z = getelementptr [104 x i8], ptr %i.y, i64 %indvars.iv ; 6 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 93
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.ab, 4
  br i1 %i.ac, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr i8, ptr %i.z, i64 64
  %i.ae = load i8, ptr %i.ad, align 8
  %i.af = icmp eq i8 %i.h, %i.ae
  br i1 %i.af, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.ag = call noalias dereferenceable_or_null(6) ptr @wmem_alloc(ptr noundef %.val, i64 noundef 6) #15 ; 7 uses
  %i.ah = call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef 0, i32 noundef 18)
  br i1 %i.ah, label %bb.e, label %btmesh_deobfuscate.exit.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.a, i8 noundef 0, i64 noundef 5, i1 noundef false) #14
  %i.ai = getelementptr i8, ptr %i.z, i64 40      ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load i32, ptr %i.aj, align 1
  store i32 %i.ak, ptr %i.k, align 1
  %i.al = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.l, i32 noundef 7, i64 noundef 7) ; 0 uses
  %i.am = call i32 @gcry_cipher_open(ptr noundef nonnull %i.b, i32 noundef 7, i32 noundef 1, i32 noundef 0)
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %bb.f, label %btmesh_deobfuscate.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.b, align 8
  %i.ao = getelementptr i8, ptr %i.z, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call i32 @gcry_cipher_setkey(ptr noundef %i.an, ptr noundef %i.ap, i64 noundef 16)
  %.not16.i = icmp eq i32 %i.aq, 0
  %i.ar = load ptr, ptr %i.b, align 8             ; 2 uses
  br i1 %.not16.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @gcry_cipher_close(ptr noundef %i.ar)
  br label %btmesh_deobfuscate.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.as = call i32 @gcry_cipher_encrypt(ptr noundef %i.ar, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef nonnull %i.a, i64 noundef 16)
  %.not17.i = icmp eq i32 %i.as, 0
  %i.at = load ptr, ptr %i.b, align 8
  call void @gcry_cipher_close(ptr noundef %i.at)
  br i1 %.not17.i, label %btmesh_deobfuscate.exit, label %btmesh_deobfuscate.exit.thread

btmesh_deobfuscate.exit.thread:                   ; preds = %bb.d, %bb.g, %bb.e, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.w

btmesh_deobfuscate.exit:                          ; preds = %bb.h
  %i.au = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.av = load i8, ptr %i.c, align 16
  %i.aw = xor i8 %i.av, %i.au
  store i8 %i.aw, ptr %i.ag, align 1
  %i.ax = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %i.ay = load i8, ptr %i.m, align 1
  %i.az = xor i8 %i.ay, %i.ax
  %i.ba = getelementptr i8, ptr %i.ag, i64 1
  store i8 %i.az, ptr %i.ba, align 1
  %i.bb = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %i.bc = load i8, ptr %i.n, align 2
  %i.bd = xor i8 %i.bc, %i.bb
  %i.be = getelementptr i8, ptr %i.ag, i64 2
  store i8 %i.bd, ptr %i.be, align 1
  %i.bf = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %i.bg = load i8, ptr %i.o, align 1
  %i.bh = xor i8 %i.bg, %i.bf
  %i.bi = getelementptr i8, ptr %i.ag, i64 3
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 5)
  %i.bk = load i8, ptr %i.p, align 4
  %i.bl = xor i8 %i.bk, %i.bj
  %i.bm = getelementptr i8, ptr %i.ag, i64 4
  store i8 %i.bl, ptr %i.bm, align 1
  %i.bn = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 6)
  %i.bo = load i8, ptr %i.q, align 1
  %i.bp = xor i8 %i.bo, %i.bn
  %i.bq = getelementptr i8, ptr %i.ag, i64 5
  store i8 %i.bp, ptr %i.bq, align 1
  %i.br = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.ag, i32 noundef 6, i32 noundef 6) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.w, label %bb.i

bb.i:                                             ; preds = %btmesh_deobfuscate.exit
  %i.bt = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %i.br, i32 noundef 0)
  %i.bu = lshr i8 %i.bt, 5
  %narrow = and i8 %i.bu, 4
  %i.bv = add nuw nsw i8 %narrow, 4               ; 2 uses
  %i.bw = zext nneg i8 %i.bv to i32               ; 2 uses
  %i.bx = call i32 @tvb_reported_length(ptr noundef %0)
  %i.by = add i32 %i.bx, -7
  %i.bz = sub i32 %i.by, %i.bw
  store i32 %i.bz, ptr %3, align 4
  %i.ca = load i8, ptr %i.r, align 1
  store i8 %i.ca, ptr %i.d, align 1
  %i.cb = call ptr @tvb_memcpy(ptr noundef nonnull %i.br, ptr noundef nonnull %i.s, i32 noundef 0, i64 noundef 6) ; 0 uses
  %i.cc = load i8, ptr %i.r, align 1
  %i.cd = icmp eq i8 %i.cc, 3
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.s, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i8 0, ptr %i.t, align 1
  store i8 0, ptr %i.u, align 1
  %i.ce = load ptr, ptr %i.ai, align 8
  %i.cf = load i32, ptr %i.ce, align 1
  store i32 %i.cf, ptr %i.v, align 1
  %i.cg = call i32 @gcry_cipher_open(ptr noundef nonnull %i.e, i32 noundef 7, i32 noundef 8, i32 noundef 0)
  %.not = icmp eq i32 %i.cg, 0
  br i1 %.not, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ch = load ptr, ptr %i.e, align 8
  %i.ci = getelementptr i8, ptr %i.z, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call i32 @gcry_cipher_setkey(ptr noundef %i.ch, ptr noundef %i.cj, i64 noundef 16)
  %.not60 = icmp eq i32 %i.ck, 0
  %i.cl = load ptr, ptr %i.e, align 8             ; 2 uses
  br i1 %.not60, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @gcry_cipher_close(ptr noundef %i.cl)
  br label %bb.w

bb.n:                                             ; preds = %bb.l
  %i.cm = call i32 @gcry_cipher_setiv(ptr noundef %i.cl, ptr noundef nonnull %i.d, i64 noundef 13)
  %.not61 = icmp eq i32 %i.cm, 0
  br i1 %.not61, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = load ptr, ptr %i.e, align 8
  call void @gcry_cipher_close(ptr noundef %i.cn)
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.co = load i32, ptr %3, align 4
  %i.cp = sext i32 %i.co to i64
  store i64 %i.cp, ptr %i.f, align 16
  store i64 0, ptr %i.w, align 8
  %i.cq = zext nneg i8 %i.bv to i64               ; 4 uses
  store i64 %i.cq, ptr %i.x, align 16
  %i.cr = load ptr, ptr %i.e, align 8
  %i.cs = call i32 @gcry_cipher_ctl(ptr noundef %i.cr, i32 noundef 69, ptr noundef nonnull %i.f, i64 noundef 24)
  %.not62 = icmp eq i32 %i.cs, 0
  br i1 %.not62, label %bb.r, label %bb.q
end_hunk_0
begin_hunk_1_@dissect_btmesh_model_layer:bb.a
  %i.dji = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.j, i32 noundef %i.djh, ptr noundef nonnull %0, i32 noundef %.253990, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.e) ; 0 uses
  %i.djj = load i32, ptr %i.e, align 4
  %i.djk = icmp eq i32 %i.djj, 0
  br i1 %i.djk, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %.lr.ph3991
  %i.djl = load i32, ptr @hf_btmesh_sensor_status_mpid_format_a_length, align 4
  %i.djm = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.j, i32 noundef %i.djl, ptr noundef nonnull %0, i32 noundef %.253990, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.g) ; 0 uses
  br label %bb.lr

bb.lq:                                            ; preds = %.lr.ph3991
  %i.djn = load i32, ptr @hf_btmesh_sensor_status_mpid_format_b_length, align 4
  %i.djo = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.j, i32 noundef %i.djn, ptr noundef nonnull %0, i32 noundef %.253990, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.g) ; 0 uses
  %i.djp = add i32 %.253990, 1
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp
  %hf_btmesh_sensor_status_mpid_format_b_property_id.sink = phi ptr [ @hf_btmesh_sensor_status_mpid_format_b_property_id, %bb.lq ], [ @hf_btmesh_sensor_status_mpid_format_a_property_id, %bb.lp ]
  %.sink4117 = phi i32 [ %i.djp, %bb.lq ], [ %.253990, %bb.lp ]
  %.sink4115 = phi i32 [ 3, %bb.lq ], [ 2, %bb.lp ]
  %i.djq = load i32, ptr %hf_btmesh_sensor_status_mpid_format_b_property_id.sink, align 4
  %i.djr = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.j, i32 noundef %i.djq, ptr noundef nonnull %0, i32 noundef %.sink4117, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.f) ; 0 uses
  %i.djs = add i32 %.253990, %.sink4115           ; 2 uses
  %i.djt = load i32, ptr @hf_btmesh_sensor_status_raw_value, align 4
  %i.dju = load i32, ptr %i.f, align 4
  %i.djv = trunc i32 %i.dju to i16
  %i.djw = load i32, ptr %i.g, align 4
  %i.djx = call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %i.j, i32 noundef %i.djt, ptr noundef %0, i32 noundef %i.djs, i16 noundef zeroext %i.djv, i32 noundef %i.djw)
  %i.djy = zext i16 %i.djx to i32
  %i.djz = add i32 %i.djs, %i.djy                 ; 3 uses
  %i.dka = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %i.djz)
  %.not3905 = icmp eq i32 %i.dka, 0
  br i1 %.not3905, label %.loopexit3968, label %.lr.ph3991, !llvm.loop !31

bb.ls:                                            ; preds = %bb.f
  %i.dkb = load i32, ptr @hf_btmesh_sensor_column_get_property_id, align 4
  %i.dkc = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.j, i32 noundef %i.dkb, ptr noundef nonnull %0, i32 noundef %.03898, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.dkd = add nuw nsw i32 %.03898, 2             ; 2 uses
  %i.dke = load i16, ptr %i.c, align 2
  %i.dkf = call fastcc i32 @dissect_columns_raw_value(ptr noundef %i.j, ptr noundef %0, i32 noundef %i.dkd, i16 noundef zeroext %i.dke, ptr @hf_btmesh_sensor_column_get_raw_value_a, ptr null)
  %i.dkg = add i32 %i.dkf, %i.dkd
  br label %.loopexit3968

bb.lt:                                            ; preds = %bb.f
  %i.dkh = load i32, ptr @hf_btmesh_sensor_column_status_property_id, align 4
  %i.dki = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.j, i32 noundef %i.dkh, ptr noundef nonnull %0, i32 noundef %.03898, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.dkj = add nuw nsw i32 %.03898, 2             ; 2 uses
  %i.dkk = load i16, ptr %i.c, align 2
  %i.dkl = call fastcc i32 @dissect_property_raw_value_entry(ptr noundef %i.j, ptr noundef %0, i32 noundef %i.dkj, i16 noundef zeroext %i.dkk, ptr noundef @sensor_column_status_hfs)
  %i.dkm = add i32 %i.dkl, %i.dkj
  br label %.loopexit3968

bb.lu:                                            ; preds = %bb.f
  %i.dkn = load i32, ptr @hf_btmesh_sensor_series_get_property_id, align 4
  %i.dko = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.j, i32 noundef %i.dkn, ptr noundef nonnull %0, i32 noundef %.03898, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.dkp = add nuw nsw i32 %.03898, 2             ; 4 uses
  %i.dkq = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %i.dkp)
  %.not3904 = icmp eq i32 %i.dkq, 0
  br i1 %.not3904, label %.loopexit3968, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.dkr = load i16, ptr %i.c, align 2
  %i.dks = call fastcc i32 @dissect_columns_raw_value(ptr noundef %i.j, ptr noundef %0, i32 noundef %i.dkp, i16 noundef zeroext %i.dkr, ptr @hf_btmesh_sensor_series_get_raw_value_a1, ptr @hf_btmesh_sensor_series_get_raw_value_a2)
  %i.dkt = add i32 %i.dks, %i.dkp
  br label %.loopexit3968

bb.lw:                                            ; preds = %bb.f
  %i.dku = load i32, ptr @hf_btmesh_sensor_series_status_property_id, align 4
  %i.dkv = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.j, i32 noundef %i.dku, ptr noundef nonnull %0, i32 noundef %.03898, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.dkw = add nuw nsw i32 %.03898, 2             ; 3 uses
  %i.dkx = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %i.dkw)
  %.not39033987 = icmp eq i32 %i.dkx, 0
  br i1 %.not39033987, label %.loopexit3968, label %.lr.ph

.lr.ph:                                           ; preds = %bb.lw, %.lr.ph
  %.273988 = phi i32 [ %i.dla, %.lr.ph ], [ %i.dkw, %bb.lw ] ; 2 uses
  %i.dky = load i16, ptr %i.c, align 2
  %i.dkz = call fastcc i32 @dissect_property_raw_value_entry(ptr noundef %i.j, ptr noundef %0, i32 noundef %.273988, i16 noundef zeroext %i.dky, ptr noundef @sensor_series_status_hfs)
  %i.dla = add i32 %i.dkz, %.273988               ; 3 uses
  %i.dlb = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %i.dla)
  %.not3903 = icmp eq i32 %i.dlb, 0
  br i1 %.not3903, label %.loopexit3968, label %.lr.ph, !llvm.loop !32

bb.lx:                                            ; preds = %bb.f
  %i.dlc = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %.03898)
  %.not3963 = icmp eq i32 %i.dlc, 0
  br i1 %.not3963, label %.loopexit3968, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.dld = load i32, ptr @hf_btmesh_model_layer_parameters, align 4
  %i.dle = call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.dld, ptr noundef nonnull %0, i32 noundef %.03898, i32 noundef -1, i32 noundef 0) ; 0 uses
  %i.dlf = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %.03898)
  %i.dlg = add i32 %i.dlf, %.03898
  br label %.loopexit3968

.loopexit3968:                                    ; preds = %.lr.ph, %bb.lr, %.lr.ph3994, %.lr.ph3998, %.lr.ph4001, %.lr.ph4004, %.lr.ph4007, %.lr.ph4010, %.lr.ph4013, %bb.du, %bb.dp, %bb.df, %.lr.ph4025, %.lr.ph4028, %bb.y, %.lr.ph4035, %.lr.ph4039, %.loopexit, %bb.lw, %.preheader3984, %bb.lh, %.preheader, %bb.kw, %bb.kp, %bb.kj, %bb.kd, %bb.fv, %bb.dr, %bb.dm, %bb.dc, %bb.cd, %bb.cb, %bb.v, %bb.r, %bb.q, %bb.i, %bb.lx, %bb.ly, %bb.lu, %bb.lv, %bb.ln, %bb.lo, %bb.ll, %bb.lm, %bb.lg, %bb.la, %bb.kx, %bb.ky, %bb.kt, %bb.ku, %bb.kn, %bb.ko, %bb.kh, %bb.ki, %bb.ka, %bb.kb, %bb.jy, %bb.jz, %bb.jw, %bb.jx, %bb.ji, %bb.jj, %bb.jg, %bb.jh, %bb.je, %bb.jf, %bb.jc, %bb.jd, %bb.iu, %bb.iv, %bb.is, %bb.it, %bb.iq, %bb.ir, %bb.io, %bb.ip, %bb.im, %bb.in, %bb.ik, %bb.il, %bb.ii, %bb.ij, %bb.ig, %bb.ih, %bb.ie, %bb.if, %bb.ic, %bb.id, %bb.hv, %bb.hw, %bb.ht, %bb.hu, %bb.hr, %bb.hs, %bb.ho, %bb.hp, %bb.hm, %bb.hn, %bb.hk, %bb.hl, %bb.hb, %bb.hc, %bb.gz, %bb.ha, %bb.gx, %bb.gy, %bb.gv, %bb.gw, %bb.gt, %bb.gu, %bb.gr, %bb.gs, %bb.gb, %bb.gc, %bb.ft, %bb.fu, %bb.fr, %bb.fs, %bb.fp, %bb.fq, %bb.fc, %bb.fd, %bb.fa, %bb.fb, %bb.ey, %bb.ez, %bb.eq, %bb.er, %bb.eo, %bb.ep, %bb.em, %bb.en, %bb.ek, %bb.el, %bb.ei, %bb.ej, %bb.eg, %bb.eh, %bb.ee, %bb.ef, %bb.ec, %bb.ed, %bb.ea, %bb.eb, %bb.dy, %bb.dz, %bb.cy, %bb.cz, %bb.cv, %bb.cw, %bb.cs, %bb.ct, %bb.bu, %bb.bv, %bb.br, %bb.bs, %bb.bo, %bb.bp, %bb.bl, %bb.bm, %bb.bi, %bb.bj, %bb.bf, %bb.bg, %bb.bc, %bb.bd, %bb.az, %bb.ba, %bb.aw, %bb.ax, %bb.at, %bb.au, %bb.aq, %bb.ar, %bb.o, %bb.p, %bb.lt, %bb.ls, %bb.lk, %bb.lj, %bb.li, %bb.lf, %bb.le, %bb.ld, %bb.lc, %bb.lb, %bb.kv, %bb.ks, %bb.kr, %bb.kq, %bb.km, %bb.kl, %bb.kk, %bb.kg, %bb.kf, %bb.ke, %bb.kc, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hq, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.dx, %bb.dw, %bb.dv, %bb.dq, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.db, %bb.da, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cc, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.u, %bb.t, %bb.s, %bb.h, %bb.g, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %.28 = phi i32 [ %i.dlg, %bb.ly ], [ %.03898, %bb.lx ], [ %i.ay, %bb.g ], [ %i.bk, %bb.h ], [ %i.akn, %bb.dp ], [ %i.fe, %bb.o ], [ %i.fh, %bb.p ], [ %i.amd, %bb.du ], [ %i.bex, %.lr.ph4013 ], [ %i.hl, %bb.s ], [ %i.hu, %bb.t ], [ %i.id, %bb.u ], [ %i.cze, %.lr.ph4010 ], [ %i.kc, %bb.z ], [ %i.kf, %bb.aa ], [ %i.ki, %bb.ab ], [ %i.kl, %bb.ac ], [ %i.ko, %bb.ad ], [ %i.kr, %bb.ae ], [ %i.ku, %bb.af ], [ %i.kx, %bb.ag ], [ %i.la, %bb.ah ], [ %i.ld, %bb.ai ], [ %i.lg, %bb.aj ], [ %i.lj, %bb.ak ], [ %i.lm, %bb.al ], [ %i.lv, %bb.am ], [ %i.mh, %bb.an ], [ %i.mw, %bb.ao ], [ %i.ne, %bb.aq ], [ %i.nh, %bb.ar ], [ %i.pb, %bb.at ], [ %i.pe, %bb.au ], [ %i.qv, %bb.aw ], [ %i.qy, %bb.ax ], [ %i.rj, %bb.az ], [ %i.rm, %bb.ba ], [ %i.rx, %bb.bc ], [ %i.sa, %bb.bd ], [ %i.si, %bb.bf ], [ %i.sl, %bb.bg ], [ %i.sw, %bb.bi ], [ %i.sz, %bb.bj ], [ %i.tn, %bb.bl ], [ %i.tq, %bb.bm ], [ %i.ub, %bb.bo ], [ %i.ue, %bb.bp ], [ %i.up, %bb.br ], [ %i.us, %bb.bs ], [ %i.vd, %bb.bu ], [ %i.vg, %bb.bv ], [ %i.vp, %bb.bw ], [ %i.vy, %bb.bx ], [ %i.wk, %bb.by ], [ %i.ww, %bb.bz ], [ %i.xc, %bb.ca ], [ %i.dap, %.lr.ph4007 ], [ %i.yb, %bb.cc ], [ %i.dck, %.lr.ph4004 ], [ %i.yx, %bb.ce ], [ %i.zd, %bb.cf ], [ %i.zg, %bb.cg ], [ %i.zj, %bb.ch ], [ %i.zm, %bb.ci ], [ %i.zs, %bb.cj ], [ %i.zy, %bb.ck ], [ %i.aab, %bb.cl ], [ %i.aae, %bb.cm ], [ %i.aah, %bb.cn ], [ %i.abg, %bb.co ], [ %i.abp, %bb.cp ], [ %i.ack, %bb.cq ], [ %i.adb, %bb.cs ], [ %i.ade, %bb.ct ], [ %i.ady, %bb.cv ], [ %i.aeb, %bb.cw ], [ %i.aes, %bb.cy ], [ %i.aev, %bb.cz ], [ %i.afh, %bb.da ], [ %i.afq, %bb.db ], [ %i.dec, %.lr.ph4001 ], [ %i.ahd, %bb.dg ], [ %i.ahp, %bb.dh ], [ %i.ahy, %bb.di ], [ %i.aik, %bb.dj ], [ %i.aiz, %bb.dk ], [ %i.ajf, %bb.dl ], [ %i.dfg, %.lr.ph3998 ], [ %i.akv, %bb.dq ], [ %i.dhj, %.lr.ph3994 ], [ %i.amo, %bb.dv ], [ %i.amx, %bb.dw ], [ %i.ang, %bb.dx ], [ %i.anz, %bb.dz ], [ %i.anm, %bb.dy ], [ %i.aos, %bb.eb ], [ %i.aof, %bb.ea ], [ %i.api, %bb.ed ], [ %i.aov, %bb.ec ], [ %i.aqb, %bb.ef ], [ %i.apo, %bb.ee ], [ %i.aqu, %bb.eh ], [ %i.aqh, %bb.eg ], [ %i.ark, %bb.ej ], [ %i.aqx, %bb.ei ], [ %i.asd, %bb.el ], [ %i.arq, %bb.ek ], [ %i.asw, %bb.en ], [ %i.asj, %bb.em ], [ %i.atp, %bb.ep ], [ %i.atc, %bb.eo ], [ %i.aui, %bb.er ], [ %i.atv, %bb.eq ], [ %i.aur, %bb.es ], [ %i.ava, %bb.et ], [ %i.avj, %bb.eu ], [ %i.avm, %bb.ev ], [ %i.avp, %bb.ew ], [ %i.avs, %bb.ex ], [ %i.awl, %bb.ez ], [ %i.avy, %bb.ey ], [ %i.axe, %bb.fb ], [ %i.awr, %bb.fa ], [ %i.axu, %bb.fd ], [ %i.axh, %bb.fc ], [ %i.axx, %bb.fe ], [ %i.aya, %bb.ff ], [ %i.ayj, %bb.fg ], [ %i.aym, %bb.fh ], [ %i.ayp, %bb.fi ], [ %i.ayv, %bb.fj ], [ %i.azb, %bb.fk ], [ %i.azt, %bb.fl ], [ %i.bao, %bb.fm ], [ %i.bbj, %bb.fn ], [ %i.bce, %bb.fo ], [ %i.bcx, %bb.fq ], [ %i.bck, %bb.fp ], [ %i.bdq, %bb.fs ], [ %i.bdd, %bb.fr ], [ %i.bej, %bb.fu ], [ %i.bdw, %bb.ft ], [ %i.djz, %bb.lr ], [ %i.bfc, %bb.fw ], [ %i.bff, %bb.fx ], [ %i.bfi, %bb.fy ], [ %i.bfl, %bb.fz ], [ %i.bgc, %bb.ga ], [ %i.bgu, %bb.gc ], [ %i.bgf, %bb.gb ], [ %i.bjq, %bb.gd ], [ %i.bmm, %bb.ge ], [ %i.bpi, %bb.gf ], [ %i.bpl, %bb.gg ], [ %i.bpo, %bb.gh ], [ %i.bpu, %bb.gi ], [ %i.bqd, %bb.gj ], [ %i.bql, %bb.gk ], [ %i.bqy, %bb.gl ], [ %i.brb, %bb.gm ], [ %i.bsm, %bb.gn ], [ %i.bsu, %bb.go ], [ %i.btc, %bb.gp ], [ %i.btk, %bb.gq ], [ %i.bud, %bb.gs ], [ %i.btq, %bb.gr ], [ %i.buw, %bb.gu ], [ %i.buj, %bb.gt ], [ %i.bvm, %bb.gw ], [ %i.buz, %bb.gv ], [ %i.bwf, %bb.gy ], [ %i.bvs, %bb.gx ], [ %i.bwy, %bb.ha ], [ %i.bwl, %bb.gz ], [ %i.bxo, %bb.hc ], [ %i.bxb, %bb.hb ], [ %i.bxr, %bb.hd ], [ %i.bxu, %bb.he ], [ %i.byd, %bb.hf ], [ %i.byg, %bb.hg ], [ %i.byj, %bb.hh ], [ %i.byp, %bb.hi ], [ %i.byv, %bb.hj ], [ %i.bzu, %bb.hl ], [ %i.bzh, %bb.hk ], [ %i.cat, %bb.hn ], [ %i.cag, %bb.hm ], [ %i.cbp, %bb.hp ], [ %i.caz, %bb.ho ], [ %i.cby, %bb.hq ], [ %i.ccu, %bb.hs ], [ %i.cch, %bb.hr ], [ %i.cdq, %bb.hu ], [ %i.cdd, %bb.ht ], [ %i.cem, %bb.hw ], [ %i.cdw, %bb.hv ], [ %i.cev, %bb.hx ], [ %i.cfe, %bb.hy ], [ %i.cfn, %bb.hz ], [ %i.cft, %bb.ia ], [ %i.cfz, %bb.ib ], [ %i.cgs, %bb.id ], [ %i.cgf, %bb.ic ], [ %i.chl, %bb.if ], [ %i.cgy, %bb.ie ], [ %i.cib, %bb.ih ], [ %i.cho, %bb.ig ], [ %i.ciu, %bb.ij ], [ %i.cih, %bb.ii ], [ %i.cjn, %bb.il ], [ %i.cja, %bb.ik ], [ %i.ckd, %bb.in ], [ %i.cjq, %bb.im ], [ %i.clc, %bb.ip ], [ %i.ckp, %bb.io ], [ %i.cmb, %bb.ir ], [ %i.clo, %bb.iq ], [ %i.cmu, %bb.it ], [ %i.cmk, %bb.is ], [ %i.cnn, %bb.iv ], [ %i.cnd, %bb.iu ], [ %i.cnw, %bb.iw ], [ %i.col, %bb.ix ], [ %i.cou, %bb.iy ], [ %i.cpd, %bb.iz ], [ %i.cpp, %bb.ja ], [ %i.cqb, %bb.jb ], [ %i.cra, %bb.jd ], [ %i.cqn, %bb.jc ], [ %i.crz, %bb.jf ], [ %i.crm, %bb.je ], [ %i.css, %bb.jh ], [ %i.csi, %bb.jg ], [ %i.ctl, %bb.jj ], [ %i.ctb, %bb.ji ], [ %i.ctu, %bb.jk ], [ %i.cuj, %bb.jl ], [ %i.cus, %bb.jm ], [ %i.cvb, %bb.jn ], [ %i.cvn, %bb.jo ], [ %i.cvz, %bb.jp ], [ %i.cwc, %bb.jq ], [ %i.cwf, %bb.jr ], [ %i.cwi, %bb.js ], [ %i.cwl, %bb.jt ], [ %i.cwo, %bb.ju ], [ %i.cwr, %bb.jv ], [ %i.cxk, %bb.jx ], [ %i.cwx, %bb.jw ], [ %i.cyd, %bb.jz ], [ %i.cxq, %bb.jy ], [ %i.cyt, %bb.kb ], [ %i.cyg, %bb.ka ], [ %i.cyw, %bb.kc ], [ %.5, %.loopexit ], [ %i.czj, %bb.ke ], [ %i.czp, %bb.kf ], [ %i.czv, %bb.kg ], [ %i.dah, %bb.ki ], [ %i.czy, %bb.kh ], [ %i.fu, %.lr.ph4039 ], [ %i.dau, %bb.kk ], [ %i.dbf, %bb.kl ], [ %i.dbq, %bb.km ], [ %i.dcc, %bb.ko ], [ %i.dbt, %bb.kn ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %.03898, %bb.f ], [ %i.gi, %.lr.ph4035 ], [ %i.dcp, %bb.kq ], [ %i.dcx, %bb.kr ], [ %i.ddf, %bb.ks ], [ %i.ddr, %bb.ku ], [ %i.ddi, %bb.kt ], [ %i.ddu, %bb.kv ], [ %i.jo, %bb.y ], [ %i.dej, %bb.ky ], [ %.03898, %bb.kx ], [ %i.dep, %bb.la ], [ %i.xt, %.lr.ph4028 ], [ %i.dfk, %bb.lb ], [ %i.dfw, %bb.lc ], [ %i.dgi, %bb.ld ], [ %i.dgu, %bb.le ], [ %i.dgx, %bb.lf ], [ %i.ys, %.lr.ph4025 ], [ %i.dha, %bb.lg ], [ %i.dhr, %bb.li ], [ %i.dic, %bb.lj ], [ %i.din, %bb.lk ], [ %i.djc, %bb.lm ], [ %i.dit, %bb.ll ], [ %i.djg, %bb.lo ], [ %.03898, %bb.ln ], [ %i.agp, %bb.df ], [ %i.dkg, %bb.ls ], [ %i.dkm, %bb.lt ], [ %i.dkt, %bb.lv ], [ %i.dkp, %bb.lu ], [ %i.cd, %bb.i ], [ %i.fn, %bb.q ], [ %i.gb, %bb.r ], [ %i.ip, %bb.v ], [ %i.xl, %bb.cb ], [ %i.yk, %bb.cd ], [ %.03898, %bb.dc ], [ %i.ajo, %bb.dm ], [ %i.ale, %bb.dr ], [ %i.bep, %bb.fv ], [ %.03898, %bb.kd ], [ %.03898, %bb.kj ], [ %.03898, %bb.kp ], [ %.03898, %bb.kw ], [ %.03898, %.preheader ], [ %i.dha, %bb.lh ], [ %.03898, %.preheader3984 ], [ %i.dkw, %bb.lw ], [ %i.dla, %.lr.ph ] ; 2 uses
  %i.dlh = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %.28)
  %.not3964 = icmp eq i32 %i.dlh, 0
  br i1 %.not3964, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %.loopexit3968
  %i.dli = call ptr @proto_tree_add_expert_remaining(ptr noundef %i.j, ptr noundef %1, ptr noundef @ei_btmesh_unknown_payload, ptr noundef nonnull %0, i32 noundef %.28) ; 0 uses
  br label %bb.ma

bb.ma:                                            ; preds = %bb.lz, %.loopexit3968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_get_parent_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint16(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissector_try_uint_with_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask_with_flags(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_uint24(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_uint16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, i16 noundef zeroext %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %5, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %2, i32 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.030 = phi i32 [ %i.b, %bb.b ], [ %5, %bb.a ]  ; 4 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.i
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.c = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i
  %i.d = load i16, ptr %i.c, align 4
  %i.e = icmp eq i16 %i.d, %4
  br i1 %i.e, label %find_characteristic_id.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.f = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i.1
  %i.g = load i16, ptr %i.f, align 8
  %i.h = icmp eq i16 %i.g, %4
  br i1 %i.h, label %find_characteristic_id.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i.i.2 = icmp eq i64 %indvars.iv.i.i, 176
  br i1 %.not.i.i.2, label %find_btmesh_property_characteristic_idx.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.i = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i.2
  %i.j = load i16, ptr %i.i, align 4
  %i.k = icmp eq i16 %i.j, %4
  br i1 %i.k, label %find_characteristic_id.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %indvars.iv.i.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.i.3, %bb.h ] ; 7 uses
  %i.l = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.i.i
  %i.m = load i16, ptr %i.l, align 16
  %i.n = icmp eq i16 %i.m, %4
  br i1 %i.n, label %find_characteristic_id.exit.i, label %bb.d

find_characteristic_id.exit.i:                    ; preds = %bb.g, %bb.e, %bb.d, %bb.i
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %bb.i ], [ %indvars.iv.next.i.i, %bb.d ], [ %indvars.iv.next.i.i.1, %bb.e ], [ %indvars.iv.next.i.i.2, %bb.g ] ; 2 uses
  %i.o = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.i.i.lcssa
  %i.p = getelementptr i8, ptr %i.o, i64 2
  %i.q = load i16, ptr %i.p, align 2              ; 4 uses
  %i.r = and i64 %indvars.iv.i.i.lcssa, 4611686018427387903
  %i.s = icmp eq i64 %i.r, 179
  br i1 %i.s, label %find_btmesh_property_characteristic_idx.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %find_characteristic_id.exit.i, %bb.k
  %indvars.iv.i7.i = phi i64 [ %indvars.iv.next.i8.i.3, %bb.k ], [ 0, %find_characteristic_id.exit.i ] ; 7 uses
  %6 = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i7.i ; 2 uses
  %7 = load i16, ptr %6, align 16
  %i.t = icmp eq i16 %7, %i.q
  br i1 %i.t, label %find_btmesh_property_characteristic_idx.exit, label %bb.j

bb.j:                                             ; preds = %.preheader.i
  %.not.i9.i = icmp eq i64 %indvars.iv.i7.i, 88
  br i1 %.not.i9.i, label %find_btmesh_property_characteristic_idx.exit.thread, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.j
  %indvars.iv.next.i8.i = or disjoint i64 %indvars.iv.i7.i, 1 ; 2 uses
  %i.u = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i ; 2 uses
  %i.v = load i16, ptr %i.u, align 8
  %i.w = icmp eq i16 %i.v, %i.q
  br i1 %i.w, label %find_btmesh_property_characteristic_idx.exit, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %indvars.iv.next.i8.i.1 = or disjoint i64 %indvars.iv.i7.i, 2 ; 2 uses
  %i.x = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i.1 ; 2 uses
  %i.y = load i16, ptr %i.x, align 16
  %i.z = icmp eq i16 %i.y, %i.q
  br i1 %i.z, label %find_btmesh_property_characteristic_idx.exit, label %.preheader.i.3

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %indvars.iv.next.i8.i.2 = or disjoint i64 %indvars.iv.i7.i, 3 ; 2 uses
  %i.aa = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i.2 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8
  %i.ac = icmp eq i16 %i.ab, %i.q
  br i1 %i.ac, label %find_btmesh_property_characteristic_idx.exit, label %bb.k

bb.k:                                             ; preds = %.preheader.i.3
  %indvars.iv.next.i8.i.3 = add nuw nsw i64 %indvars.iv.i7.i, 4
  br label %.preheader.i

find_btmesh_property_characteristic_idx.exit:     ; preds = %.preheader.i.3, %.preheader.i.2, %.preheader.i.1, %.preheader.i
  %indvars.iv.i7.i.lcssa = phi i64 [ %indvars.iv.i7.i, %.preheader.i ], [ %indvars.iv.next.i8.i, %.preheader.i.1 ], [ %indvars.iv.next.i8.i.1, %.preheader.i.2 ], [ %indvars.iv.next.i8.i.2, %.preheader.i.3 ]
  %.lcssa = phi ptr [ %6, %.preheader.i ], [ %i.u, %.preheader.i.1 ], [ %i.x, %.preheader.i.2 ], [ %i.aa, %.preheader.i.3 ]
  %8 = trunc nuw nsw i64 %indvars.iv.i7.i.lcssa to i32 ; 2 uses
  switch i32 %8, label %bb.l [
    i32 -1, label %find_btmesh_property_characteristic_idx.exit.thread
    i32 89, label %bb.m
  ]

bb.l:                                             ; preds = %find_btmesh_property_characteristic_idx.exit
  %9 = getelementptr i8, ptr %.lcssa, i64 2
  %10 = load i16, ptr %9, align 2                 ; 2 uses
  %i.ad = zext i16 %10 to i32
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %i.ad, i32 noundef 0) ; 0 uses
  tail call fastcc void @dissect_btmesh_property_idx(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef %8)
  br label %bb.n

bb.m:                                             ; preds = %find_btmesh_property_characteristic_idx.exit
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %.030, i32 noundef 0) ; 0 uses
  %i.ag = trunc i32 %.030 to i16
  br label %bb.n

find_btmesh_property_characteristic_idx.exit.thread: ; preds = %bb.f, %bb.j, %find_characteristic_id.exit.i, %find_btmesh_property_characteristic_idx.exit
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %.030, i32 noundef 0) ; 0 uses
  %i.ai = trunc i32 %.030 to i16
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %find_btmesh_property_characteristic_idx.exit.thread
  %.0 = phi i16 [ %10, %bb.l ], [ %i.ag, %bb.m ], [ %i.ai, %find_btmesh_property_characteristic_idx.exit.thread ]
  ret i16 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -2, 262144) i32 @dissect_sensor_cadence(ptr noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 4, 7) %2, i16 noundef zeroext %3, i8 noundef zeroext %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %4, 0
  br i1 %i.a, label %.preheader, label %.preheader110

.preheader.1:                                     ; preds = %.preheader
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.b = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i
  %i.c = load i16, ptr %i.b, align 4
  %i.d = icmp eq i16 %i.c, %3
  br i1 %i.d, label %find_characteristic_id.exit.i, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.e = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i.1
  %i.f = load i16, ptr %i.e, align 8
  %i.g = icmp eq i16 %i.f, %3
  br i1 %i.g, label %find_characteristic_id.exit.i, label %bb.b

bb.b:                                             ; preds = %.preheader.2
  %.not.i.i.2 = icmp eq i64 %indvars.iv.i.i, 176
  br i1 %.not.i.i.2, label %find_btmesh_property_length.exit.thread, label %.preheader.3

.preheader.3:                                     ; preds = %bb.b
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.h = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i.2
  %i.i = load i16, ptr %i.h, align 4
  %i.j = icmp eq i16 %i.i, %3
  br i1 %i.j, label %find_characteristic_id.exit.i, label %bb.c

bb.c:                                             ; preds = %.preheader.3
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %bb.c ], [ 0, %bb.a ] ; 7 uses
  %i.k = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.i.i
  %i.l = load i16, ptr %i.k, align 16
  %i.m = icmp eq i16 %i.l, %3
  br i1 %i.m, label %find_characteristic_id.exit.i, label %.preheader.1

find_characteristic_id.exit.i:                    ; preds = %.preheader.3, %.preheader.2, %.preheader.1, %.preheader
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %.preheader ], [ %indvars.iv.next.i.i, %.preheader.1 ], [ %indvars.iv.next.i.i.1, %.preheader.2 ], [ %indvars.iv.next.i.i.2, %.preheader.3 ] ; 2 uses
  %i.n = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.i.i.lcssa
  %i.o = getelementptr i8, ptr %i.n, i64 2
  %i.p = load i16, ptr %i.o, align 2              ; 4 uses
  %i.q = and i64 %indvars.iv.i.i.lcssa, 4611686018427387903
  %i.r = icmp eq i64 %i.q, 179
  br i1 %i.r, label %find_btmesh_property_length.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %find_characteristic_id.exit.i, %bb.e
  %indvars.iv.i7.i = phi i64 [ %indvars.iv.next.i8.i.3, %bb.e ], [ 0, %find_characteristic_id.exit.i ] ; 7 uses
  %6 = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i7.i ; 2 uses
  %7 = load i16, ptr %6, align 16
  %i.s = icmp eq i16 %7, %i.p
  br i1 %i.s, label %find_btmesh_property_length.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %.not.i9.i = icmp eq i64 %indvars.iv.i7.i, 88
  br i1 %.not.i9.i, label %find_btmesh_property_length.exit.thread, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.d
  %indvars.iv.next.i8.i = or disjoint i64 %indvars.iv.i7.i, 1 ; 2 uses
  %i.t = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i ; 2 uses
  %i.u = load i16, ptr %i.t, align 8
  %i.v = icmp eq i16 %i.u, %i.p
  br i1 %i.v, label %find_btmesh_property_length.exit, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %indvars.iv.next.i8.i.1 = or disjoint i64 %indvars.iv.i7.i, 2 ; 2 uses
  %i.w = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i.1 ; 2 uses
  %i.x = load i16, ptr %i.w, align 16
  %i.y = icmp eq i16 %i.x, %i.p
  br i1 %i.y, label %find_btmesh_property_length.exit, label %.preheader.i.3

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %indvars.iv.next.i8.i.2 = or disjoint i64 %indvars.iv.i7.i, 3 ; 2 uses
  %i.z = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i.2 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 8
  %i.ab = icmp eq i16 %i.aa, %i.p
  br i1 %i.ab, label %find_btmesh_property_length.exit, label %bb.e

bb.e:                                             ; preds = %.preheader.i.3
  %indvars.iv.next.i8.i.3 = add nuw nsw i64 %indvars.iv.i7.i, 4
  br label %.preheader.i

find_btmesh_property_length.exit:                 ; preds = %.preheader.i.3, %.preheader.i.2, %.preheader.i.1, %.preheader.i
  %indvars.iv.i7.i.lcssa = phi i64 [ %indvars.iv.i7.i, %.preheader.i ], [ %indvars.iv.next.i8.i, %.preheader.i.1 ], [ %indvars.iv.next.i8.i.1, %.preheader.i.2 ], [ %indvars.iv.next.i8.i.2, %.preheader.i.3 ]
  %.lcssa = phi ptr [ %6, %.preheader.i ], [ %i.t, %.preheader.i.1 ], [ %i.w, %.preheader.i.2 ], [ %i.z, %.preheader.i.3 ]
  %i.ac = getelementptr i8, ptr %.lcssa, i64 2
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = zext i16 %i.ad to i32                   ; 2 uses
  %8 = and i64 %indvars.iv.i7.i.lcssa, 2305843009213693951
  %i.af = icmp eq i64 %8, 89
  br i1 %i.af, label %find_btmesh_property_length.exit.thread, label %.thread

.preheader110.1:                                  ; preds = %.preheader110
  %indvars.iv.next.i.i91 = or disjoint i64 %indvars.iv.i.i90, 1 ; 2 uses
  %i.ag = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i91
  %i.ah = load i16, ptr %i.ag, align 4
  %i.ai = icmp eq i16 %i.ah, %3
  br i1 %i.ai, label %find_characteristic_id.exit.i94, label %.preheader110.2

.preheader110.2:                                  ; preds = %.preheader110.1
  %indvars.iv.next.i.i91.1 = or disjoint i64 %indvars.iv.i.i90, 2 ; 2 uses
  %i.aj = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i91.1
  %i.ak = load i16, ptr %i.aj, align 8
  %i.al = icmp eq i16 %i.ak, %3
  br i1 %i.al, label %find_characteristic_id.exit.i94, label %bb.f

bb.f:                                             ; preds = %.preheader110.2
  %.not.i.i92.2 = icmp eq i64 %indvars.iv.i.i90, 176
  br i1 %.not.i.i92.2, label %find_btmesh_property_length.exit100.thread, label %.preheader110.3

.preheader110.3:                                  ; preds = %bb.f
  %indvars.iv.next.i.i91.2 = or disjoint i64 %indvars.iv.i.i90, 3 ; 2 uses
  %i.am = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i91.2
  %i.an = load i16, ptr %i.am, align 4
  %i.ao = icmp eq i16 %i.an, %3
  br i1 %i.ao, label %find_characteristic_id.exit.i94, label %bb.g

bb.g:                                             ; preds = %.preheader110.3
  %indvars.iv.next.i.i91.3 = add nuw nsw i64 %indvars.iv.i.i90, 4
  br label %.preheader110

.preheader110:                                    ; preds = %bb.a, %bb.g
  %indvars.iv.i.i90 = phi i64 [ %indvars.iv.next.i.i91.3, %bb.g ], [ 0, %bb.a ] ; 7 uses
  %i.ap = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.i.i90
  %i.aq = load i16, ptr %i.ap, align 16
  %i.ar = icmp eq i16 %i.aq, %3
  br i1 %i.ar, label %find_characteristic_id.exit.i94, label %.preheader110.1

find_characteristic_id.exit.i94:                  ; preds = %.preheader110.3, %.preheader110.2, %.preheader110.1, %.preheader110
  %indvars.iv.i.i90.lcssa = phi i64 [ %indvars.iv.i.i90, %.preheader110 ], [ %indvars.iv.next.i.i91, %.preheader110.1 ], [ %indvars.iv.next.i.i91.1, %.preheader110.2 ], [ %indvars.iv.next.i.i91.2, %.preheader110.3 ] ; 2 uses
  %i.as = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.i.i90.lcssa
  %i.at = getelementptr i8, ptr %i.as, i64 2
  %i.au = load i16, ptr %i.at, align 2            ; 4 uses
  %i.av = and i64 %indvars.iv.i.i90.lcssa, 4611686018427387903
  %i.aw = icmp eq i64 %i.av, 179
  br i1 %i.aw, label %find_btmesh_property_length.exit100.thread, label %.preheader.i95

.preheader.i95:                                   ; preds = %find_characteristic_id.exit.i94, %bb.i
  %indvars.iv.i7.i96 = phi i64 [ %indvars.iv.next.i8.i97.3, %bb.i ], [ 0, %find_characteristic_id.exit.i94 ] ; 7 uses
  %9 = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i7.i96 ; 2 uses
  %10 = load i16, ptr %9, align 16
  %i.ax = icmp eq i16 %10, %i.au
  br i1 %i.ax, label %find_btmesh_property_length.exit100, label %bb.h

bb.h:                                             ; preds = %.preheader.i95
  %.not.i9.i98 = icmp eq i64 %indvars.iv.i7.i96, 88
  br i1 %.not.i9.i98, label %find_btmesh_property_length.exit100.thread, label %.preheader.i95.1

.preheader.i95.1:                                 ; preds = %bb.h
  %indvars.iv.next.i8.i97 = or disjoint i64 %indvars.iv.i7.i96, 1 ; 2 uses
  %i.ay = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i97 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 8
  %i.ba = icmp eq i16 %i.az, %i.au
  br i1 %i.ba, label %find_btmesh_property_length.exit100, label %.preheader.i95.2

.preheader.i95.2:                                 ; preds = %.preheader.i95.1
  %indvars.iv.next.i8.i97.1 = or disjoint i64 %indvars.iv.i7.i96, 2 ; 2 uses
  %i.bb = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i97.1 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 16
  %i.bd = icmp eq i16 %i.bc, %i.au
  br i1 %i.bd, label %find_btmesh_property_length.exit100, label %.preheader.i95.3

.preheader.i95.3:                                 ; preds = %.preheader.i95.2
  %indvars.iv.next.i8.i97.2 = or disjoint i64 %indvars.iv.i7.i96, 3 ; 2 uses
  %i.be = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i97.2 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = icmp eq i16 %i.bf, %i.au
  br i1 %i.bg, label %find_btmesh_property_length.exit100, label %bb.i

bb.i:                                             ; preds = %.preheader.i95.3
  %indvars.iv.next.i8.i97.3 = add nuw nsw i64 %indvars.iv.i7.i96, 4
  br label %.preheader.i95

find_btmesh_property_length.exit100:              ; preds = %.preheader.i95.3, %.preheader.i95.2, %.preheader.i95.1, %.preheader.i95
  %indvars.iv.i7.i96.lcssa = phi i64 [ %indvars.iv.i7.i96, %.preheader.i95 ], [ %indvars.iv.next.i8.i97, %.preheader.i95.1 ], [ %indvars.iv.next.i8.i97.1, %.preheader.i95.2 ], [ %indvars.iv.next.i8.i97.2, %.preheader.i95.3 ]
  %.lcssa172 = phi ptr [ %9, %.preheader.i95 ], [ %i.ay, %.preheader.i95.1 ], [ %i.bb, %.preheader.i95.2 ], [ %i.be, %.preheader.i95.3 ]
  %i.bh = getelementptr i8, ptr %.lcssa172, i64 2
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = zext i16 %i.bi to i32
  %11 = and i64 %indvars.iv.i7.i96.lcssa, 2305843009213693951
  %i.bk = icmp eq i64 %11, 89
  br i1 %i.bk, label %find_btmesh_property_length.exit100.thread, label %.thread

find_btmesh_property_length.exit100.thread:       ; preds = %bb.f, %bb.h, %find_characteristic_id.exit.i94, %find_btmesh_property_length.exit100
  %i.bl = add nuw nsw i32 %2, 4
  %i.bm = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %1, i32 noundef %i.bl) ; 2 uses
  %i.bn = and i32 %i.bm, 1
  %.not = icmp eq i32 %i.bn, 0
  %i.bo = lshr i32 %i.bm, 1
  %spec.select89 = select i1 %.not, i32 -1, i32 %i.bo
  br label %.thread

find_btmesh_property_length.exit.thread:          ; preds = %bb.b, %bb.d, %find_characteristic_id.exit.i, %find_btmesh_property_length.exit
  %i.bp = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %1, i32 noundef %2) ; 2 uses
  %i.bq = and i32 %i.bp, 3
  %.not108 = icmp eq i32 %i.bq, 1
  %i.br = lshr i32 %i.bp, 2                       ; 2 uses
  br i1 %.not108, label %.thread, label %bb.l

.thread:                                          ; preds = %find_btmesh_property_length.exit100.thread, %find_btmesh_property_length.exit, %find_btmesh_property_length.exit100, %find_btmesh_property_length.exit.thread
  %. = phi i16 [ %3, %find_btmesh_property_length.exit.thread ], [ -1, %find_btmesh_property_length.exit100.thread ], [ %3, %find_btmesh_property_length.exit ], [ -1, %find_btmesh_property_length.exit100 ] ; 2 uses
  %.0107 = phi i32 [ %i.br, %find_btmesh_property_length.exit.thread ], [ %spec.select89, %find_btmesh_property_length.exit100.thread ], [ %i.ae, %find_btmesh_property_length.exit ], [ %i.bj, %find_btmesh_property_length.exit100 ] ; 3 uses
  %.1106 = phi i32 [ %i.br, %find_btmesh_property_length.exit.thread ], [ 2, %find_btmesh_property_length.exit100.thread ], [ %i.ae, %find_btmesh_property_length.exit ], [ 2, %find_btmesh_property_length.exit100 ] ; 2 uses
  %i.bs = getelementptr i8, ptr %5, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = tail call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %0, i32 noundef %i.bu, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %., i32 noundef %.1106)
  %i.bw = zext i16 %i.bv to i32
  %i.bx = add nuw nsw i32 %2, %i.bw               ; 2 uses
  %i.by = load ptr, ptr %5, align 8
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = tail call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %0, i32 noundef %i.bz, ptr noundef %1, i32 noundef %i.bx, i16 noundef zeroext %., i32 noundef %.1106)
  %i.cb = zext i16 %i.ca to i32
  %i.cc = add nuw nsw i32 %i.bx, %i.cb            ; 2 uses
  %i.cd = getelementptr i8, ptr %5, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.cf, ptr noundef nonnull %1, i32 noundef %i.cc, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ch = add nuw nsw i32 %i.cc, 1                ; 5 uses
  %.not87 = icmp eq i32 %.0107, -1
  br i1 %.not87, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.ci = getelementptr i8, ptr %5, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = tail call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %0, i32 noundef %i.ck, ptr noundef %1, i32 noundef %i.ch, i16 noundef zeroext %3, i32 noundef %.0107)
  %i.cm = zext i16 %i.cl to i32
  %i.cn = add nuw nsw i32 %i.ch, %i.cm            ; 2 uses
  %i.co = getelementptr i8, ptr %5, i64 32
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = tail call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %0, i32 noundef %i.cq, ptr noundef %1, i32 noundef %i.cn, i16 noundef zeroext %3, i32 noundef %.0107)
  br label %bb.m

bb.k:                                             ; preds = %.thread
  %i.cs = getelementptr i8, ptr %5, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %1, i32 noundef %i.ch)
  %i.cw = tail call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %0, i32 noundef %i.cu, ptr noundef %1, i32 noundef %i.ch, i16 noundef zeroext %3, i32 noundef %i.cv)
  br label %bb.m

bb.l:                                             ; preds = %find_btmesh_property_length.exit.thread
  %i.cx = getelementptr i8, ptr %5, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %1, i32 noundef %2)
  %i.db = tail call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %0, i32 noundef %i.cz, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, i32 noundef %i.da)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sink158 = phi i16 [ %i.cr, %bb.j ], [ %i.cw, %bb.k ], [ %i.db, %bb.l ]
  %.sink = phi i32 [ %i.cn, %bb.j ], [ %i.ch, %bb.k ], [ %2, %bb.l ]
  %i.dc = zext i16 %.sink158 to i32
  %i.dd = add nuw nsw i32 %.sink, %i.dc
  %i.de = sub nsw i32 %i.dd, %2
  ret i32 %i.de
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_columns_raw_value(ptr noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 3, 6) %2, i16 noundef zeroext %3, ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(address_is_null) %.8.val) unnamed_addr #0 {
bb.a:
  br label %bb.g

bb.b:                                             ; preds = %bb.g
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.a = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i
  %i.b = load i16, ptr %i.a, align 4
  %i.c = icmp eq i16 %i.b, %3
  br i1 %i.c, label %find_characteristic_id.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.d = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i.1
  %i.e = load i16, ptr %i.d, align 8
  %i.f = icmp eq i16 %i.e, %3
  br i1 %i.f, label %find_characteristic_id.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.2 = icmp eq i64 %indvars.iv.i.i, 176
  br i1 %.not.i.i.2, label %find_btmesh_property_characteristic_idx.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.g = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i.2
  %i.h = load i16, ptr %i.g, align 4
  %i.i = icmp eq i16 %i.h, %3
  br i1 %i.i, label %find_characteristic_id.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %indvars.iv.i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.i.3, %bb.f ] ; 7 uses
  %i.j = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.i.i
  %i.k = load i16, ptr %i.j, align 16
  %i.l = icmp eq i16 %i.k, %3
  br i1 %i.l, label %find_characteristic_id.exit.i, label %bb.b

find_characteristic_id.exit.i:                    ; preds = %bb.e, %bb.c, %bb.b, %bb.g
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %bb.g ], [ %indvars.iv.next.i.i, %bb.b ], [ %indvars.iv.next.i.i.1, %bb.c ], [ %indvars.iv.next.i.i.2, %bb.e ] ; 2 uses
  %i.m = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.i.i.lcssa
  %i.n = getelementptr i8, ptr %i.m, i64 2
  %i.o = load i16, ptr %i.n, align 2              ; 4 uses
  %i.p = and i64 %indvars.iv.i.i.lcssa, 4611686018427387903
  %i.q = icmp eq i64 %i.p, 179
  br i1 %i.q, label %find_btmesh_property_characteristic_idx.exit, label %.preheader.i

.preheader.i:                                     ; preds = %find_characteristic_id.exit.i, %bb.i
  %indvars.iv.i7.i = phi i64 [ %indvars.iv.next.i8.i.3, %bb.i ], [ 0, %find_characteristic_id.exit.i ] ; 7 uses
  %4 = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i7.i
  %5 = load i16, ptr %4, align 16
  %i.r = icmp eq i16 %5, %i.o
  br i1 %i.r, label %.split.loop.exit.i11.i, label %bb.h

bb.h:                                             ; preds = %.preheader.i
  %.not.i9.i = icmp eq i64 %indvars.iv.i7.i, 88
  br i1 %.not.i9.i, label %find_btmesh_property_characteristic_idx.exit, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.h
  %indvars.iv.next.i8.i = or disjoint i64 %indvars.iv.i7.i, 1 ; 2 uses
  %i.s = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i
  %i.t = load i16, ptr %i.s, align 8
  %i.u = icmp eq i16 %i.t, %i.o
  br i1 %i.u, label %.split.loop.exit.i11.i, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %indvars.iv.next.i8.i.1 = or disjoint i64 %indvars.iv.i7.i, 2 ; 2 uses
  %i.v = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i.1
  %i.w = load i16, ptr %i.v, align 16
  %i.x = icmp eq i16 %i.w, %i.o
  br i1 %i.x, label %.split.loop.exit.i11.i, label %.preheader.i.3

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %indvars.iv.next.i8.i.2 = or disjoint i64 %indvars.iv.i7.i, 3 ; 2 uses
  %i.y = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i.2
  %i.z = load i16, ptr %i.y, align 8
  %i.aa = icmp eq i16 %i.z, %i.o
  br i1 %i.aa, label %.split.loop.exit.i11.i, label %bb.i

bb.i:                                             ; preds = %.preheader.i.3
  %indvars.iv.next.i8.i.3 = add nuw nsw i64 %indvars.iv.i7.i, 4
  br label %.preheader.i

.split.loop.exit.i11.i:                           ; preds = %.preheader.i.3, %.preheader.i.2, %.preheader.i.1, %.preheader.i
  %indvars.iv.i7.i.lcssa = phi i64 [ %indvars.iv.i7.i, %.preheader.i ], [ %indvars.iv.next.i8.i, %.preheader.i.1 ], [ %indvars.iv.next.i8.i.1, %.preheader.i.2 ], [ %indvars.iv.next.i8.i.2, %.preheader.i.3 ]
  %i.ab = trunc nuw nsw i64 %indvars.iv.i7.i.lcssa to i32
  br label %find_btmesh_property_characteristic_idx.exit

find_btmesh_property_characteristic_idx.exit:     ; preds = %bb.d, %bb.h, %find_characteristic_id.exit.i, %.split.loop.exit.i11.i
  %.0.i = phi i32 [ -1, %find_characteristic_id.exit.i ], [ -1, %bb.h ], [ %i.ab, %.split.loop.exit.i11.i ], [ -1, %bb.d ] ; 3 uses
  %i.ac = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %1, i32 noundef %2) ; 2 uses
  %i.ad = icmp ne ptr %.8.val, null               ; 4 uses
  %i.ae = icmp ugt i32 %i.ac, 1
  %or.cond = select i1 %i.ad, i1 %i.ae, i1 false
  %i.af = zext i1 %or.cond to i32
  %spec.select = lshr i32 %i.ac, %i.af            ; 3 uses
  %.not = icmp eq i32 %.0.i, -1
  br i1 %.not, label %find_characteristic_idx.exit.thread, label %bb.j

bb.j:                                             ; preds = %find_btmesh_property_characteristic_idx.exit
  %i.ag = sext i32 %.0.i to i64
  %i.ah = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %i.aj = load i8, ptr %i.ai, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.al = load i32, ptr %.0.val, align 4
  %i.am = tail call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %0, i32 noundef %i.al, ptr noundef %1, i32 noundef %2, i16 noundef zeroext -2, i32 noundef 2)
  %i.an = zext i16 %i.am to i32
  %i.ao = add nuw nsw i32 %2, %i.an               ; 3 uses
  br i1 %i.ad, label %bb.l, label %find_column_properties_idx.exit

bb.l:                                             ; preds = %bb.k
  %i.ap = load i32, ptr %.8.val, align 4
  %i.aq = tail call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %0, i32 noundef %i.ap, ptr noundef %1, i32 noundef %i.ao, i16 noundef zeroext -2, i32 noundef 2)
  %i.ar = zext i16 %i.aq to i32
  %i.as = add nuw nsw i32 %i.ao, %i.ar
  br label %find_column_properties_idx.exit

bb.m:                                             ; preds = %bb.j
  %switch.tableidx = add i32 %.0.i, -29           ; 3 uses
  %6 = icmp ult i32 %switch.tableidx, 44
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 10376640987137, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond39 = select i1 %6, i1 %switch.lobit, i1 false
  br i1 %or.cond39, label %switch.lookup, label %find_characteristic_idx.exit.thread

switch.lookup:                                    ; preds = %bb.m
  %i.at = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dissect_btmesh_property_idx, i64 %i.at
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.au = getelementptr [6 x i8], ptr @btmesh_column_properties, i64 %switch.ext
  %i.av = getelementptr i8, ptr %i.au, i64 2
  %i.aw = load i16, ptr %i.av, align 2            ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %switch.lookup
  %indvars.iv.i = phi i64 [ 0, %switch.lookup ], [ %indvars.iv.next.i.3, %bb.s ] ; 7 uses
  %7 = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i ; 2 uses
  %8 = load i16, ptr %7, align 16
  %i.ax = icmp eq i16 %8, %i.aw
  br i1 %i.ax, label %find_characteristic_idx.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i = icmp eq i64 %indvars.iv.i, 88
  br i1 %.not.i, label %find_characteristic_idx.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ay = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i ; 2 uses
  %i.az = load i16, ptr %i.ay, align 8
  %i.ba = icmp eq i16 %i.az, %i.aw
  br i1 %i.ba, label %find_characteristic_idx.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.bb = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 16
  %i.bd = icmp eq i16 %i.bc, %i.aw
  br i1 %i.bd, label %find_characteristic_idx.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.be = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = icmp eq i16 %i.bf, %i.aw
  br i1 %i.bg, label %find_characteristic_idx.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  br label %bb.n

find_characteristic_idx.exit:                     ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %bb.n ], [ %indvars.iv.next.i, %bb.p ], [ %indvars.iv.next.i.1, %bb.q ], [ %indvars.iv.next.i.2, %bb.r ]
  %.lcssa = phi ptr [ %7, %bb.n ], [ %i.ay, %bb.p ], [ %i.bb, %bb.q ], [ %i.be, %bb.r ] ; 3 uses
  %9 = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32 ; 2 uses
  %i.bh = getelementptr i8, ptr %.lcssa, i64 2
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = zext i16 %i.bi to i32                   ; 6 uses
  %10 = getelementptr i8, ptr %.lcssa, i64 8
  %11 = load ptr, ptr %10, align 8
  %.not87.a = icmp eq ptr %11, null
  br i1 %.not87.a, label %find_characteristic_idx.exit.thread, label %bb.t

bb.t:                                             ; preds = %find_characteristic_idx.exit
  %i.bk = getelementptr i8, ptr %.lcssa, i64 16
  %i.bl = load i8, ptr %i.bk, align 8
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.u, label %find_characteristic_idx.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bn = load i32, ptr %.0.val, align 4
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bn, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %i.bj, i32 noundef 0) ; 0 uses
  tail call fastcc void @dissect_btmesh_property_idx(ptr noundef %1, ptr noundef %0, i32 noundef %2, i32 noundef %9)
  %i.bp = add nuw nsw i32 %2, %i.bj               ; 4 uses
  br i1 %i.ad, label %bb.v, label %find_column_properties_idx.exit

bb.v:                                             ; preds = %bb.u
  %i.bq = load i32, ptr %.8.val, align 4
  %i.br = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bq, ptr noundef nonnull %1, i32 noundef %i.bp, i32 noundef %i.bj, i32 noundef 0) ; 0 uses
  tail call fastcc void @dissect_btmesh_property_idx(ptr noundef %1, ptr noundef %0, i32 noundef %i.bp, i32 noundef %9)
  %i.bs = add nuw nsw i32 %i.bp, %i.bj
  br label %find_column_properties_idx.exit

find_characteristic_idx.exit.thread:              ; preds = %bb.o, %bb.m, %find_btmesh_property_characteristic_idx.exit, %bb.t, %find_characteristic_idx.exit
  %.3.ph = phi i32 [ %i.bj, %find_characteristic_idx.exit ], [ %i.bj, %bb.t ], [ %spec.select, %bb.m ], [ %spec.select, %find_btmesh_property_characteristic_idx.exit ], [ %spec.select, %bb.o ] ; 4 uses
  %i.bt = load i32, ptr %.0.val, align 4
  %i.bu = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bt, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %.3.ph, i32 noundef 0) ; 0 uses
  %i.bv = add i32 %.3.ph, %2                      ; 3 uses
  br i1 %i.ad, label %bb.w, label %find_column_properties_idx.exit

bb.w:                                             ; preds = %find_characteristic_idx.exit.thread
  %i.bw = load i32, ptr %.8.val, align 4
  %i.bx = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bw, ptr noundef nonnull %1, i32 noundef %i.bv, i32 noundef %.3.ph, i32 noundef 0) ; 0 uses
  %i.by = add i32 %i.bv, %.3.ph
  br label %find_column_properties_idx.exit

find_column_properties_idx.exit:                  ; preds = %bb.k, %bb.l, %bb.v, %bb.u, %find_characteristic_idx.exit.thread, %bb.w
  %.375 = phi i32 [ %i.by, %bb.w ], [ %i.bv, %find_characteristic_idx.exit.thread ], [ %i.as, %bb.l ], [ %i.ao, %bb.k ], [ %i.bs, %bb.v ], [ %i.bp, %bb.u ]
  %i.bz = sub i32 %.375, %2
  ret i32 %i.bz
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_property_raw_value_entry(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i16 noundef zeroext %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  br label %bb.g

bb.b:                                             ; preds = %bb.g
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.a = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i
  %i.b = load i16, ptr %i.a, align 4
  %i.c = icmp eq i16 %i.b, %3
  br i1 %i.c, label %find_characteristic_id.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.d = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i.1
  %i.e = load i16, ptr %i.d, align 8
  %i.f = icmp eq i16 %i.e, %3
  br i1 %i.f, label %find_characteristic_id.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.2 = icmp eq i64 %indvars.iv.i.i, 176
  br i1 %.not.i.i.2, label %find_btmesh_property_characteristic_idx.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.g = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.next.i.i.2
  %i.h = load i16, ptr %i.g, align 4
  %i.i = icmp eq i16 %i.h, %3
  br i1 %i.i, label %find_characteristic_id.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %indvars.iv.i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.i.3, %bb.f ] ; 7 uses
  %i.j = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.i.i
  %i.k = load i16, ptr %i.j, align 16
  %i.l = icmp eq i16 %i.k, %3
  br i1 %i.l, label %find_characteristic_id.exit.i, label %bb.b

find_characteristic_id.exit.i:                    ; preds = %bb.e, %bb.c, %bb.b, %bb.g
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %bb.g ], [ %indvars.iv.next.i.i, %bb.b ], [ %indvars.iv.next.i.i.1, %bb.c ], [ %indvars.iv.next.i.i.2, %bb.e ] ; 2 uses
  %i.m = getelementptr [4 x i8], ptr @btmesh_properties, i64 %indvars.iv.i.i.lcssa
  %i.n = getelementptr i8, ptr %i.m, i64 2
  %i.o = load i16, ptr %i.n, align 2              ; 4 uses
  %i.p = and i64 %indvars.iv.i.i.lcssa, 4611686018427387903
  %i.q = icmp eq i64 %i.p, 179
  br i1 %i.q, label %find_btmesh_property_characteristic_idx.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %find_characteristic_id.exit.i, %bb.i
  %indvars.iv.i7.i = phi i64 [ %indvars.iv.next.i8.i.3, %bb.i ], [ 0, %find_characteristic_id.exit.i ] ; 7 uses
  %5 = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i7.i ; 2 uses
  %6 = load i16, ptr %5, align 16
  %i.r = icmp eq i16 %6, %i.o
  br i1 %i.r, label %find_btmesh_property_characteristic_idx.exit, label %bb.h

bb.h:                                             ; preds = %.preheader.i
  %.not.i9.i = icmp eq i64 %indvars.iv.i7.i, 88
  br i1 %.not.i9.i, label %find_btmesh_property_characteristic_idx.exit.thread, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.h
  %indvars.iv.next.i8.i = or disjoint i64 %indvars.iv.i7.i, 1 ; 2 uses
  %i.s = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i ; 2 uses
  %i.t = load i16, ptr %i.s, align 8
  %i.u = icmp eq i16 %i.t, %i.o
  br i1 %i.u, label %find_btmesh_property_characteristic_idx.exit, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %indvars.iv.next.i8.i.1 = or disjoint i64 %indvars.iv.i7.i, 2 ; 2 uses
  %i.v = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i.1 ; 2 uses
  %i.w = load i16, ptr %i.v, align 16
  %i.x = icmp eq i16 %i.w, %i.o
  br i1 %i.x, label %find_btmesh_property_characteristic_idx.exit, label %.preheader.i.3

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %indvars.iv.next.i8.i.2 = or disjoint i64 %indvars.iv.i7.i, 3 ; 2 uses
  %i.y = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i8.i.2 ; 2 uses
  %i.z = load i16, ptr %i.y, align 8
  %i.aa = icmp eq i16 %i.z, %i.o
  br i1 %i.aa, label %find_btmesh_property_characteristic_idx.exit, label %bb.i

bb.i:                                             ; preds = %.preheader.i.3
  %indvars.iv.next.i8.i.3 = add nuw nsw i64 %indvars.iv.i7.i, 4
  br label %.preheader.i

find_btmesh_property_characteristic_idx.exit.thread: ; preds = %bb.d, %bb.h, %find_characteristic_id.exit.i
  %i.ab = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %1, i32 noundef %2)
  br label %find_characteristic_idx.exit.thread

find_btmesh_property_characteristic_idx.exit:     ; preds = %.preheader.i.3, %.preheader.i.2, %.preheader.i.1, %.preheader.i
  %indvars.iv.i7.i.lcssa = phi i64 [ %indvars.iv.i7.i, %.preheader.i ], [ %indvars.iv.next.i8.i, %.preheader.i.1 ], [ %indvars.iv.next.i8.i.1, %.preheader.i.2 ], [ %indvars.iv.next.i8.i.2, %.preheader.i.3 ]
  %.lcssa158 = phi ptr [ %5, %.preheader.i ], [ %i.s, %.preheader.i.1 ], [ %i.v, %.preheader.i.2 ], [ %i.y, %.preheader.i.3 ]
  %7 = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %1, i32 noundef %2) ; 2 uses
  %i.ac = getelementptr i8, ptr %.lcssa158, i64 16
  %i.ad = load i8, ptr %i.ac, align 8
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %find_btmesh_property_characteristic_idx.exit
  %i.af = load ptr, ptr %4, align 8
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = tail call fastcc zeroext i16 @dissect_btmesh_property(ptr noundef %0, i32 noundef %i.ag, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, i32 noundef -1)
  %i.ai = zext i16 %i.ah to i32
  %i.aj = add i32 %2, %i.ai
  br label %find_column_properties_idx.exit

bb.k:                                             ; preds = %find_btmesh_property_characteristic_idx.exit
  %8 = trunc nuw nsw i64 %indvars.iv.i7.i.lcssa to i32
  %switch.tableidx = add i32 %8, -29              ; 3 uses
  %9 = icmp ult i32 %switch.tableidx, 44
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 10376640987137, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %9, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %find_characteristic_idx.exit.thread

switch.lookup:                                    ; preds = %bb.k
  %i.ak = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dissect_btmesh_property_idx, i64 %i.ak
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.al = getelementptr [6 x i8], ptr @btmesh_column_properties, i64 %switch.ext ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 2
  %i.an = load i16, ptr %i.am, align 2            ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.q, %switch.lookup
  %indvars.iv.i = phi i64 [ 0, %switch.lookup ], [ %indvars.iv.next.i.3, %bb.q ] ; 7 uses
  %10 = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i ; 2 uses
  %11 = load i16, ptr %10, align 16
  %i.ao = icmp eq i16 %11, %i.an
  br i1 %i.ao, label %find_characteristic_idx.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i = icmp eq i64 %indvars.iv.i, 88
  br i1 %.not.i, label %find_characteristic_idx.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ap = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 8
  %i.ar = icmp eq i16 %i.aq, %i.an
  br i1 %i.ar, label %find_characteristic_idx.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.as = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.at = load i16, ptr %i.as, align 16
  %i.au = icmp eq i16 %i.at, %i.an
  br i1 %i.au, label %find_characteristic_idx.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.av = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 8
  %i.ax = icmp eq i16 %i.aw, %i.an
  br i1 %i.ax, label %find_characteristic_idx.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  br label %bb.l

find_characteristic_idx.exit:                     ; preds = %bb.p, %bb.o, %bb.n, %bb.l
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %bb.l ], [ %indvars.iv.next.i, %bb.n ], [ %indvars.iv.next.i.1, %bb.o ], [ %indvars.iv.next.i.2, %bb.p ]
  %.lcssa155 = phi ptr [ %10, %bb.l ], [ %i.ap, %bb.n ], [ %i.as, %bb.o ], [ %i.av, %bb.p ] ; 3 uses
  %12 = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32 ; 2 uses
  %i.ay = getelementptr i8, ptr %.lcssa155, i64 2
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = zext i16 %i.az to i32                   ; 6 uses
  %13 = getelementptr i8, ptr %.lcssa155, i64 8
  %14 = load ptr, ptr %13, align 8
  %.not91.a = icmp eq ptr %14, null
  br i1 %.not91.a, label %find_characteristic_idx.exit.thread, label %bb.r

bb.r:                                             ; preds = %find_characteristic_idx.exit
  %i.bb = getelementptr i8, ptr %.lcssa155, i64 16
  %i.bc = load i8, ptr %i.bb, align 8
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.s, label %find_characteristic_idx.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.be = load ptr, ptr %4, align 8
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bf, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %i.ba, i32 noundef 0) ; 0 uses
  tail call fastcc void @dissect_btmesh_property_idx(ptr noundef %1, ptr noundef %0, i32 noundef %2, i32 noundef %12)
  %i.bh = add i32 %2, %i.ba                       ; 3 uses
  %i.bi = getelementptr i8, ptr %4, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bk, ptr noundef nonnull %1, i32 noundef %i.bh, i32 noundef %i.ba, i32 noundef 0) ; 0 uses
  tail call fastcc void @dissect_btmesh_property_idx(ptr noundef %1, ptr noundef %0, i32 noundef %i.bh, i32 noundef %12)
  %i.bm = add i32 %i.bh, %i.ba                    ; 6 uses
  %i.bn = getelementptr i8, ptr %i.al, i64 4
  %i.bo = load i16, ptr %i.bn, align 2            ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.y, %bb.s
  %indvars.iv.i96 = phi i64 [ 0, %bb.s ], [ %indvars.iv.next.i97.3, %bb.y ] ; 7 uses
  %15 = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i96 ; 2 uses
  %16 = load i16, ptr %15, align 16
  %i.bp = icmp eq i16 %16, %i.bo
  br i1 %i.bp, label %find_characteristic_idx.exit101, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i98 = icmp eq i64 %indvars.iv.i96, 88
  br i1 %.not.i98, label %find_characteristic_idx.exit101.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next.i97 = or disjoint i64 %indvars.iv.i96, 1 ; 2 uses
  %i.bq = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i97 ; 2 uses
  %i.br = load i16, ptr %i.bq, align 8
  %i.bs = icmp eq i16 %i.br, %i.bo
  br i1 %i.bs, label %find_characteristic_idx.exit101, label %bb.w

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next.i97.1 = or disjoint i64 %indvars.iv.i96, 2 ; 2 uses
  %i.bt = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i97.1 ; 2 uses
  %i.bu = load i16, ptr %i.bt, align 16
  %i.bv = icmp eq i16 %i.bu, %i.bo
  br i1 %i.bv, label %find_characteristic_idx.exit101, label %bb.x

bb.x:                                             ; preds = %bb.w
  %indvars.iv.next.i97.2 = or disjoint i64 %indvars.iv.i96, 3 ; 2 uses
  %i.bw = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.next.i97.2 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 8
  %i.by = icmp eq i16 %i.bx, %i.bo
  br i1 %i.by, label %find_characteristic_idx.exit101, label %bb.y

bb.y:                                             ; preds = %bb.x
  %indvars.iv.next.i97.3 = add nuw nsw i64 %indvars.iv.i96, 4
  br label %bb.t

find_characteristic_idx.exit101:                  ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  %indvars.iv.i96.lcssa = phi i64 [ %indvars.iv.i96, %bb.t ], [ %indvars.iv.next.i97, %bb.v ], [ %indvars.iv.next.i97.1, %bb.w ], [ %indvars.iv.next.i97.2, %bb.x ]
  %.lcssa = phi ptr [ %15, %bb.t ], [ %i.bq, %bb.v ], [ %i.bt, %bb.w ], [ %i.bw, %bb.x ] ; 3 uses
  %17 = trunc nuw nsw i64 %indvars.iv.i96.lcssa to i32
  %i.bz = getelementptr i8, ptr %.lcssa, i64 2
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = zext i16 %i.ca to i32                   ; 2 uses
  %18 = getelementptr i8, ptr %.lcssa, i64 8
  %19 = load ptr, ptr %18, align 8
  %.not94.a = icmp eq ptr %19, null
  br i1 %.not94.a, label %find_characteristic_idx.exit101.thread, label %bb.z

bb.z:                                             ; preds = %find_characteristic_idx.exit101
  %i.cc = getelementptr i8, ptr %.lcssa, i64 16
  %i.cd = load i8, ptr %i.cc, align 8
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %bb.aa, label %find_characteristic_idx.exit101.thread

bb.aa:                                            ; preds = %bb.z
  %i.cf = getelementptr i8, ptr %4, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ch, ptr noundef nonnull %1, i32 noundef %i.bm, i32 noundef %i.cb, i32 noundef 0) ; 0 uses
  tail call fastcc void @dissect_btmesh_property_idx(ptr noundef %1, ptr noundef %0, i32 noundef %i.bm, i32 noundef %17)
  br label %bb.ab

find_characteristic_idx.exit101.thread:           ; preds = %bb.u, %bb.z, %find_characteristic_idx.exit101
  %i.cj = getelementptr i8, ptr %4, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %1, i32 noundef %i.bm)
  %i.cn = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.cl, ptr noundef nonnull %1, i32 noundef %i.bm, i32 noundef %i.cm, i32 noundef 0) ; 0 uses
  %i.co = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %1, i32 noundef %i.bm)
  br label %bb.ab

bb.ab:                                            ; preds = %find_characteristic_idx.exit101.thread, %bb.aa
  %.pn = phi i32 [ %i.cb, %bb.aa ], [ %i.co, %find_characteristic_idx.exit101.thread ]
  %.079 = add i32 %.pn, %i.bm
  br label %find_column_properties_idx.exit

find_characteristic_idx.exit.thread:              ; preds = %bb.m, %bb.k, %find_btmesh_property_characteristic_idx.exit.thread, %bb.r, %find_characteristic_idx.exit
  %.2.ph = phi i32 [ %i.ba, %find_characteristic_idx.exit ], [ %i.ba, %bb.r ], [ %7, %bb.k ], [ %i.ab, %find_btmesh_property_characteristic_idx.exit.thread ], [ %7, %bb.m ] ; 2 uses
  %i.cp = load ptr, ptr %4, align 8
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.cq, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %.2.ph, i32 noundef 0) ; 0 uses
  %i.cs = add i32 %.2.ph, %2
  br label %find_column_properties_idx.exit

find_column_properties_idx.exit:                  ; preds = %bb.j, %bb.ab, %find_characteristic_idx.exit.thread
  %.4 = phi i32 [ %i.cs, %find_characteristic_idx.exit.thread ], [ %i.aj, %bb.j ], [ %.079, %bb.ab ]
  %i.ct = sub i32 %.4, %2
  ret i32 %i.ct
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_btmesh_property_idx(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, -1) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %3, 0
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %3 to i64
  %i.c = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %i.b ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = zext i16 %i.e to i32
  %i.g = icmp eq i32 %3, 89
  br i1 %i.g, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.c, i64 16
  %i.i = load i8, ptr %i.h, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.c, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.l, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.n, ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.f, i32 noundef -2147483648) ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.q, null
  br i1 %.not5.i, label %.critedge, label %.critedge.sink.split

bb.g:                                             ; preds = %bb.c
  %switch.tableidx = add nsw i32 %3, -29          ; 3 uses
  %4 = icmp ult i32 %switch.tableidx, 44
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 10376640987137, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %4, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %.critedge

switch.lookup:                                    ; preds = %bb.g
  %i.r = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dissect_btmesh_property_idx, i64 %i.r
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.s = getelementptr [6 x i8], ptr @btmesh_column_properties, i64 %switch.ext ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 2
  %i.u = load i16, ptr %i.t, align 2              ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %switch.lookup
  %indvars.iv.i = phi i64 [ 0, %switch.lookup ], [ %indvars.iv.next.i.3, %bb.m ] ; 6 uses
  %5 = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i ; 2 uses
  %6 = load i16, ptr %5, align 16
  %i.v = icmp eq i16 %6, %i.u
  br i1 %i.v, label %find_characteristic_idx.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i69 = icmp eq i64 %indvars.iv.i, 88
  br i1 %.not.i69, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %7 = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i ; 2 uses
  %8 = getelementptr i8, ptr %7, i64 24
  %i.w = load i16, ptr %8, align 8
  %i.x = icmp eq i16 %i.w, %i.u
  br i1 %i.x, label %find_characteristic_idx.exit.split.loop.exit14, label %bb.k

bb.k:                                             ; preds = %bb.j
  %9 = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i ; 2 uses
  %10 = getelementptr i8, ptr %9, i64 48
  %i.y = load i16, ptr %10, align 16
  %i.z = icmp eq i16 %i.y, %i.u
  br i1 %i.z, label %find_characteristic_idx.exit.split.loop.exit12, label %bb.l

bb.l:                                             ; preds = %bb.k
  %11 = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i ; 2 uses
  %12 = getelementptr i8, ptr %11, i64 72
  %i.aa = load i16, ptr %12, align 8
  %i.ab = icmp eq i16 %i.aa, %i.u
  br i1 %i.ab, label %find_characteristic_idx.exit.split.loop.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  br label %bb.h

find_characteristic_idx.exit.split.loop.exit:     ; preds = %bb.l
  %13 = getelementptr i8, ptr %11, i64 72
  br label %find_characteristic_idx.exit

find_characteristic_idx.exit.split.loop.exit12:   ; preds = %bb.k
  %14 = getelementptr i8, ptr %9, i64 48
  br label %find_characteristic_idx.exit

find_characteristic_idx.exit.split.loop.exit14:   ; preds = %bb.j
  %i.ac = getelementptr i8, ptr %7, i64 24
  br label %find_characteristic_idx.exit

find_characteristic_idx.exit:                     ; preds = %bb.h, %find_characteristic_idx.exit.split.loop.exit14, %find_characteristic_idx.exit.split.loop.exit12, %find_characteristic_idx.exit.split.loop.exit
  %.lcssa10 = phi ptr [ %i.ac, %find_characteristic_idx.exit.split.loop.exit14 ], [ %14, %find_characteristic_idx.exit.split.loop.exit12 ], [ %13, %find_characteristic_idx.exit.split.loop.exit ], [ %5, %bb.h ] ; 3 uses
  %15 = getelementptr i8, ptr %.lcssa10, i64 2
  %i.ad = getelementptr i8, ptr %.lcssa10, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.critedge, label %bb.n

bb.n:                                             ; preds = %find_characteristic_idx.exit
  %i.ag = getelementptr i8, ptr %.lcssa10, i64 16
  %i.ah = load i8, ptr %i.ag, align 8
  %.not67 = icmp eq i8 %i.ah, 0
  br i1 %.not67, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr i8, ptr %i.s, i64 4
  %i.aj = load i16, ptr %i.ai, align 2            ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.u, %bb.o
  %indvars.iv.i70 = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.i71.3, %bb.u ] ; 6 uses
  %16 = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i70 ; 2 uses
  %17 = load i16, ptr %16, align 16
  %i.ak = icmp eq i16 %17, %i.aj
  br i1 %i.ak, label %find_characteristic_idx.exit75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i72 = icmp eq i64 %indvars.iv.i70, 88
  br i1 %.not.i72, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %18 = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i70 ; 2 uses
  %19 = getelementptr i8, ptr %18, i64 24
  %i.al = load i16, ptr %19, align 8
  %i.am = icmp eq i16 %i.al, %i.aj
  br i1 %i.am, label %find_characteristic_idx.exit75.split.loop.exit23, label %bb.s

bb.s:                                             ; preds = %bb.r
  %20 = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i70 ; 2 uses
  %21 = getelementptr i8, ptr %20, i64 48
  %i.an = load i16, ptr %21, align 16
  %i.ao = icmp eq i16 %i.an, %i.aj
  br i1 %i.ao, label %find_characteristic_idx.exit75.split.loop.exit21, label %bb.t

bb.t:                                             ; preds = %bb.s
  %22 = getelementptr [24 x i8], ptr @bt_gatt_characteristics, i64 %indvars.iv.i70 ; 2 uses
  %23 = getelementptr i8, ptr %22, i64 72
  %i.ap = load i16, ptr %23, align 8
  %i.aq = icmp eq i16 %i.ap, %i.aj
  br i1 %i.aq, label %find_characteristic_idx.exit75.split.loop.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next.i71.3 = add nuw nsw i64 %indvars.iv.i70, 4
  br label %bb.p

find_characteristic_idx.exit75.split.loop.exit:   ; preds = %bb.t
  %24 = getelementptr i8, ptr %22, i64 72
  br label %find_characteristic_idx.exit75

find_characteristic_idx.exit75.split.loop.exit21: ; preds = %bb.s
  %25 = getelementptr i8, ptr %20, i64 48
  br label %find_characteristic_idx.exit75

find_characteristic_idx.exit75.split.loop.exit23: ; preds = %bb.r
  %i.ar = getelementptr i8, ptr %18, i64 24
  br label %find_characteristic_idx.exit75

find_characteristic_idx.exit75:                   ; preds = %bb.p, %find_characteristic_idx.exit75.split.loop.exit23, %find_characteristic_idx.exit75.split.loop.exit21, %find_characteristic_idx.exit75.split.loop.exit
  %.lcssa = phi ptr [ %i.ar, %find_characteristic_idx.exit75.split.loop.exit23 ], [ %25, %find_characteristic_idx.exit75.split.loop.exit21 ], [ %24, %find_characteristic_idx.exit75.split.loop.exit ], [ %16, %bb.p ] ; 3 uses
  %26 = getelementptr i8, ptr %.lcssa, i64 2
  %i.as = getelementptr i8, ptr %.lcssa, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.critedge, label %bb.v

bb.v:                                             ; preds = %find_characteristic_idx.exit75
  %i.av = getelementptr i8, ptr %.lcssa, i64 16
  %i.aw = load i8, ptr %i.av, align 8
  %.not68 = icmp eq i8 %i.aw, 0
  br i1 %.not68, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.ax = load i32, ptr %i.ae, align 4
  %27 = load i16, ptr %15, align 2                ; 2 uses
  %i.ay = zext i16 %27 to i32                     ; 3 uses
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ax, ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.ay, i32 noundef -2147483648) ; 2 uses
  %.not.i76 = icmp eq ptr %i.az, null
  br i1 %.not.i76, label %proto_item_set_generated.exit78, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = getelementptr i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not5.i77 = icmp eq ptr %i.bb, null
  br i1 %.not5.i77, label %proto_item_set_generated.exit78, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bc = getelementptr i8, ptr %i.bb, i64 28     ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = or i32 %i.bd, 2
  store i32 %i.be, ptr %i.bc, align 4
  br label %proto_item_set_generated.exit78

proto_item_set_generated.exit78:                  ; preds = %bb.w, %bb.x, %bb.y
  %i.bf = load i32, ptr %i.ae, align 4
  %i.bg = add i32 %2, %i.ay
  %i.bh = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bf, ptr noundef nonnull %0, i32 noundef %i.bg, i32 noundef %i.ay, i32 noundef -2147483648) ; 2 uses
  %.not.i79 = icmp eq ptr %i.bh, null
  br i1 %.not.i79, label %proto_item_set_generated.exit81, label %bb.z

bb.z:                                             ; preds = %proto_item_set_generated.exit78
  %i.bi = getelementptr i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not5.i80 = icmp eq ptr %i.bj, null
  br i1 %.not5.i80, label %proto_item_set_generated.exit81, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bk = getelementptr i8, ptr %i.bj, i64 28     ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = or i32 %i.bl, 2
  store i32 %i.bm, ptr %i.bk, align 4
  br label %proto_item_set_generated.exit81

proto_item_set_generated.exit81:                  ; preds = %proto_item_set_generated.exit78, %bb.z, %bb.aa
  %i.bn = shl i16 %27, 1
  %i.bo = load i32, ptr %i.at, align 4
  %i.bp = zext i16 %i.bn to i32
  %i.bq = add i32 %2, %i.bp
  %28 = load i16, ptr %26, align 2
  %i.br = zext i16 %28 to i32
  %i.bs = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bo, ptr noundef nonnull %0, i32 noundef %i.bq, i32 noundef %i.br, i32 noundef -2147483648) ; 2 uses
  %.not.i82 = icmp eq ptr %i.bs, null
  br i1 %.not.i82, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %proto_item_set_generated.exit81
  %i.bt = getelementptr i8, ptr %i.bs, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not5.i83 = icmp eq ptr %i.bu, null
  br i1 %.not5.i83, label %.critedge, label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.ab, %bb.f
  %.sink7 = phi ptr [ %i.q, %bb.f ], [ %i.bu, %bb.ab ]
  %i.bv = getelementptr i8, ptr %.sink7, i64 28   ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = or i32 %i.bw, 2
  store i32 %i.bx, ptr %i.bv, align 4
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.q, %.critedge.sink.split, %bb.ab, %proto_item_set_generated.exit81, %bb.g, %bb.f, %bb.e, %bb.n, %find_characteristic_idx.exit, %bb.v, %find_characteristic_idx.exit75, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @upper_transport_fragment_hash(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca [14 x i8], align 2                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = load i16, ptr %0, align 1
  store i16 %i.b, ptr %i.a, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.d = getelementptr i8, ptr %0, i64 4
  %i.e = load <2 x i32>, ptr %i.d, align 1
  store <2 x i32> %i.e, ptr %i.c, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.g = getelementptr i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 1
  store i32 %i.h, ptr %i.f, align 2
  %i.i = call i32 @wmem_strong_hash(ptr noundef nonnull %i.a, i64 noundef 14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @upper_transport_fragment_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #11 {
bb.a:
  %i.a = load i16, ptr %0, align 4
  %i.b = load i16, ptr %1, align 4
  %i.c = icmp eq i16 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp eq i32 %i.o, %i.q
  %i.s = zext i1 %i.r to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.t = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.s, %bb.d ]
  ret i32 %i.t
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noalias noundef ptr @upper_transport_fragment_temporary_key(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @g_slice_alloc(i64 noundef 16) #17 ; 4 uses
  %i.b = load i16, ptr %2, align 4
  store i16 %i.b, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %2, i64 4
  %i.d = getelementptr i8, ptr %i.a, i64 4
  %i.e = load <2 x i32>, ptr %i.c, align 4
  store <2 x i32> %i.e, ptr %i.d, align 4
  %i.f = getelementptr i8, ptr %2, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr i8, ptr %i.a, i64 12
  store i32 %i.g, ptr %i.h, align 4
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noalias noundef ptr @upper_transport_fragment_persistent_key(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @g_slice_alloc(i64 noundef 16) #17 ; 4 uses
  %i.b = load i16, ptr %2, align 4
  store i16 %i.b, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %2, i64 4
  %i.d = getelementptr i8, ptr %i.a, i64 4
  %i.e = load <2 x i32>, ptr %i.c, align 4
  store <2 x i32> %i.e, ptr %i.d, align 4
  %i.f = getelementptr i8, ptr %2, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr i8, ptr %i.a, i64 12
  store i32 %i.g, ptr %i.h, align 4
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @upper_transport_fragment_free_temporary_key(ptr noundef %0) #0 {
bb.a:
  tail call void @g_slice_free1(i64 noundef 16, ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @upper_transport_fragment_free_persistent_key(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_slice_free1(i64 noundef 16, ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_slice_alloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare void @g_slice_free1(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double, i32) local_unnamed_addr #13

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(errnomem: write) }
attributes #14 = { nounwind }
attributes #15 = { allocsize(1) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { allocsize(0) }
attributes #18 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
end_hunk_1
