Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/value?download=true
inline.NumInlined: 37
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lxb_css_data_t = type { ptr, i64, i64 }
%struct.lexbor_shs_entry_t = type { ptr, ptr, i64, i64 }

@lxb_css_value_data = internal constant [373 x %struct.lxb_css_data_t] [%struct.lxb_css_data_t { ptr @.str.1, i64 6, i64 0 }, %struct.lxb_css_data_t { ptr @.str.2, i64 7, i64 1 }, %struct.lxb_css_data_t { ptr @.str.3, i64 7, i64 2 }, %struct.lxb_css_data_t { ptr @.str.4, i64 5, i64 3 }, %struct.lxb_css_data_t { ptr @.str.5, i64 6, i64 4 }, %struct.lxb_css_data_t { ptr @.str.6, i64 10, i64 5 }, %struct.lxb_css_data_t { ptr @.str.7, i64 8, i64 6 }, %struct.lxb_css_data_t { ptr @.str.8, i64 6, i64 7 }, %struct.lxb_css_data_t { ptr @.str.9, i64 13, i64 8 }, %struct.lxb_css_data_t { ptr @.str.10, i64 12, i64 9 }, %struct.lxb_css_data_t { ptr @.str.11, i64 7, i64 10 }, %struct.lxb_css_data_t { ptr @.str.12, i64 8, i64 11 }, %struct.lxb_css_data_t { ptr @.str.13, i64 4, i64 12 }, %struct.lxb_css_data_t { ptr @.str.14, i64 11, i64 13 }, %struct.lxb_css_data_t { ptr @.str.15, i64 10, i64 14 }, %struct.lxb_css_data_t { ptr @.str.16, i64 11, i64 15 }, %struct.lxb_css_data_t { ptr @.str.17, i64 6, i64 16 }, %struct.lxb_css_data_t { ptr @.str.18, i64 7, i64 17 }, %struct.lxb_css_data_t { ptr @.str.19, i64 12, i64 18 }, %struct.lxb_css_data_t { ptr @.str.20, i64 8, i64 19 }, %struct.lxb_css_data_t { ptr @.str.21, i64 7, i64 20 }, %struct.lxb_css_data_t { ptr @.str.22, i64 11, i64 21 }, %struct.lxb_css_data_t { ptr @.str.23, i64 3, i64 22 }, %struct.lxb_css_data_t { ptr @.str.24, i64 5, i64 23 }, %struct.lxb_css_data_t { ptr @.str.25, i64 3, i64 24 }, %struct.lxb_css_data_t { ptr @.str.26, i64 6, i64 25 }, %struct.lxb_css_data_t { ptr @.str.27, i64 5, i64 26 }, %struct.lxb_css_data_t { ptr @.str.28, i64 4, i64 27 }, %struct.lxb_css_data_t { ptr @.str.29, i64 4, i64 28 }, %struct.lxb_css_data_t { ptr @.str.30, i64 6, i64 29 }, %struct.lxb_css_data_t { ptr @.str.31, i64 5, i64 30 }, %struct.lxb_css_data_t { ptr @.str.32, i64 4, i64 31 }, %struct.lxb_css_data_t { ptr @.str.33, i64 6, i64 32 }, %struct.lxb_css_data_t { ptr @.str.34, i64 6, i64 33 }, %struct.lxb_css_data_t { ptr @.str.35, i64 6, i64 34 }, %struct.lxb_css_data_t { ptr @.str.36, i64 5, i64 35 }, %struct.lxb_css_data_t { ptr @.str.37, i64 6, i64 36 }, %struct.lxb_css_data_t { ptr @.str.38, i64 6, i64 37 }, %struct.lxb_css_data_t { ptr @.str.39, i64 5, i64 38 }, %struct.lxb_css_data_t { ptr @.str.40, i64 5, i64 39 }, %struct.lxb_css_data_t { ptr @.str.41, i64 6, i64 40 }, %struct.lxb_css_data_t { ptr @.str.42, i64 11, i64 41 }, %struct.lxb_css_data_t { ptr @.str.43, i64 10, i64 42 }, %struct.lxb_css_data_t { ptr @.str.44, i64 12, i64 43 }, %struct.lxb_css_data_t { ptr @.str.45, i64 10, i64 44 }, %struct.lxb_css_data_t { ptr @.str.46, i64 11, i64 45 }, %struct.lxb_css_data_t { ptr @.str.47, i64 9, i64 46 }, %struct.lxb_css_data_t { ptr @.str.48, i64 4, i64 47 }, %struct.lxb_css_data_t { ptr @.str.49, i64 5, i64 48 }, %struct.lxb_css_data_t { ptr @.str.50, i64 12, i64 49 }, %struct.lxb_css_data_t { ptr @.str.51, i64 11, i64 50 }, %struct.lxb_css_data_t { ptr @.str.52, i64 3, i64 51 }, %struct.lxb_css_data_t { ptr @.str.53, i64 9, i64 52 }, %struct.lxb_css_data_t { ptr @.str.54, i64 12, i64 53 }, %struct.lxb_css_data_t { ptr @.str.55, i64 4, i64 54 }, %struct.lxb_css_data_t { ptr @.str.56, i64 10, i64 55 }, %struct.lxb_css_data_t { ptr @.str.57, i64 5, i64 56 }, %struct.lxb_css_data_t { ptr @.str.58, i64 5, i64 57 }, %struct.lxb_css_data_t { ptr @.str.59, i64 6, i64 58 }, %struct.lxb_css_data_t { ptr @.str.60, i64 5, i64 59 }, %struct.lxb_css_data_t { ptr @.str.61, i64 14, i64 60 }, %struct.lxb_css_data_t { ptr @.str.62, i64 4, i64 61 }, %struct.lxb_css_data_t { ptr @.str.63, i64 10, i64 62 }, %struct.lxb_css_data_t { ptr @.str.64, i64 5, i64 63 }, %struct.lxb_css_data_t { ptr @.str.65, i64 9, i64 64 }, %struct.lxb_css_data_t { ptr @.str.66, i64 9, i64 65 }, %struct.lxb_css_data_t { ptr @.str.67, i64 10, i64 66 }, %struct.lxb_css_data_t { ptr @.str.68, i64 9, i64 67 }, %struct.lxb_css_data_t { ptr @.str.69, i64 5, i64 68 }, %struct.lxb_css_data_t { ptr @.str.70, i64 14, i64 69 }, %struct.lxb_css_data_t { ptr @.str.71, i64 8, i64 70 }, %struct.lxb_css_data_t { ptr @.str.72, i64 7, i64 71 }, %struct.lxb_css_data_t { ptr @.str.73, i64 4, i64 72 }, %struct.lxb_css_data_t { ptr @.str.74, i64 8, i64 73 }, %struct.lxb_css_data_t { ptr @.str.75, i64 8, i64 74 }, %struct.lxb_css_data_t { ptr @.str.76, i64 13, i64 75 }, %struct.lxb_css_data_t { ptr @.str.77, i64 8, i64 76 }, %struct.lxb_css_data_t { ptr @.str.78, i64 9, i64 77 }, %struct.lxb_css_data_t { ptr @.str.79, i64 8, i64 78 }, %struct.lxb_css_data_t { ptr @.str.80, i64 9, i64 79 }, %struct.lxb_css_data_t { ptr @.str.81, i64 11, i64 80 }, %struct.lxb_css_data_t { ptr @.str.82, i64 14, i64 81 }, %struct.lxb_css_data_t { ptr @.str.83, i64 10, i64 82 }, %struct.lxb_css_data_t { ptr @.str.84, i64 10, i64 83 }, %struct.lxb_css_data_t { ptr @.str.85, i64 7, i64 84 }, %struct.lxb_css_data_t { ptr @.str.86, i64 10, i64 85 }, %struct.lxb_css_data_t { ptr @.str.87, i64 12, i64 86 }, %struct.lxb_css_data_t { ptr @.str.88, i64 13, i64 87 }, %struct.lxb_css_data_t { ptr @.str.89, i64 13, i64 88 }, %struct.lxb_css_data_t { ptr @.str.90, i64 13, i64 89 }, %struct.lxb_css_data_t { ptr @.str.91, i64 13, i64 90 }, %struct.lxb_css_data_t { ptr @.str.92, i64 10, i64 91 }, %struct.lxb_css_data_t { ptr @.str.93, i64 8, i64 92 }, %struct.lxb_css_data_t { ptr @.str.94, i64 11, i64 93 }, %struct.lxb_css_data_t { ptr @.str.95, i64 7, i64 94 }, %struct.lxb_css_data_t { ptr @.str.96, i64 7, i64 95 }, %struct.lxb_css_data_t { ptr @.str.97, i64 10, i64 96 }, %struct.lxb_css_data_t { ptr @.str.98, i64 9, i64 97 }, %struct.lxb_css_data_t { ptr @.str.99, i64 11, i64 98 }, %struct.lxb_css_data_t { ptr @.str.100, i64 11, i64 99 }, %struct.lxb_css_data_t { ptr @.str.101, i64 7, i64 100 }, %struct.lxb_css_data_t { ptr @.str.102, i64 9, i64 101 }, %struct.lxb_css_data_t { ptr @.str.103, i64 10, i64 102 }, %struct.lxb_css_data_t { ptr @.str.104, i64 4, i64 103 }, %struct.lxb_css_data_t { ptr @.str.105, i64 9, i64 104 }, %struct.lxb_css_data_t { ptr @.str.106, i64 4, i64 105 }, %struct.lxb_css_data_t { ptr @.str.107, i64 5, i64 106 }, %struct.lxb_css_data_t { ptr @.str.108, i64 11, i64 107 }, %struct.lxb_css_data_t { ptr @.str.109, i64 4, i64 108 }, %struct.lxb_css_data_t { ptr @.str.110, i64 8, i64 109 }, %struct.lxb_css_data_t { ptr @.str.111, i64 7, i64 110 }, %struct.lxb_css_data_t { ptr @.str.112, i64 9, i64 111 }, %struct.lxb_css_data_t { ptr @.str.113, i64 6, i64 112 }, %struct.lxb_css_data_t { ptr @.str.114, i64 5, i64 113 }, %struct.lxb_css_data_t { ptr @.str.115, i64 5, i64 114 }, %struct.lxb_css_data_t { ptr @.str.116, i64 8, i64 115 }, %struct.lxb_css_data_t { ptr @.str.117, i64 13, i64 116 }, %struct.lxb_css_data_t { ptr @.str.118, i64 9, i64 117 }, %struct.lxb_css_data_t { ptr @.str.119, i64 12, i64 118 }, %struct.lxb_css_data_t { ptr @.str.120, i64 9, i64 119 }, %struct.lxb_css_data_t { ptr @.str.121, i64 10, i64 120 }, %struct.lxb_css_data_t { ptr @.str.122, i64 9, i64 121 }, %struct.lxb_css_data_t { ptr @.str.123, i64 20, i64 122 }, %struct.lxb_css_data_t { ptr @.str.124, i64 9, i64 123 }, %struct.lxb_css_data_t { ptr @.str.125, i64 10, i64 124 }, %struct.lxb_css_data_t { ptr @.str.126, i64 9, i64 125 }, %struct.lxb_css_data_t { ptr @.str.127, i64 9, i64 126 }, %struct.lxb_css_data_t { ptr @.str.128, i64 11, i64 127 }, %struct.lxb_css_data_t { ptr @.str.129, i64 13, i64 128 }, %struct.lxb_css_data_t { ptr @.str.130, i64 12, i64 129 }, %struct.lxb_css_data_t { ptr @.str.131, i64 14, i64 130 }, %struct.lxb_css_data_t { ptr @.str.132, i64 14, i64 131 }, %struct.lxb_css_data_t { ptr @.str.133, i64 14, i64 132 }, %struct.lxb_css_data_t { ptr @.str.134, i64 11, i64 133 }, %struct.lxb_css_data_t { ptr @.str.135, i64 4, i64 134 }, %struct.lxb_css_data_t { ptr @.str.136, i64 9, i64 135 }, %struct.lxb_css_data_t { ptr @.str.137, i64 5, i64 136 }, %struct.lxb_css_data_t { ptr @.str.138, i64 7, i64 137 }, %struct.lxb_css_data_t { ptr @.str.139, i64 6, i64 138 }, %struct.lxb_css_data_t { ptr @.str.140, i64 16, i64 139 }, %struct.lxb_css_data_t { ptr @.str.141, i64 10, i64 140 }, %struct.lxb_css_data_t { ptr @.str.142, i64 12, i64 141 }, %struct.lxb_css_data_t { ptr @.str.143, i64 12, i64 142 }, %struct.lxb_css_data_t { ptr @.str.144, i64 14, i64 143 }, %struct.lxb_css_data_t { ptr @.str.145, i64 15, i64 144 }, %struct.lxb_css_data_t { ptr @.str.146, i64 17, i64 145 }, %struct.lxb_css_data_t { ptr @.str.147, i64 15, i64 146 }, %struct.lxb_css_data_t { ptr @.str.148, i64 15, i64 147 }, %struct.lxb_css_data_t { ptr @.str.149, i64 12, i64 148 }, %struct.lxb_css_data_t { ptr @.str.150, i64 9, i64 149 }, %struct.lxb_css_data_t { ptr @.str.151, i64 9, i64 150 }, %struct.lxb_css_data_t { ptr @.str.152, i64 8, i64 151 }, %struct.lxb_css_data_t { ptr @.str.153, i64 11, i64 152 }, %struct.lxb_css_data_t { ptr @.str.154, i64 4, i64 153 }, %struct.lxb_css_data_t { ptr @.str.155, i64 7, i64 154 }, %struct.lxb_css_data_t { ptr @.str.156, i64 5, i64 155 }, %struct.lxb_css_data_t { ptr @.str.157, i64 9, i64 156 }, %struct.lxb_css_data_t { ptr @.str.158, i64 6, i64 157 }, %struct.lxb_css_data_t { ptr @.str.159, i64 9, i64 158 }, %struct.lxb_css_data_t { ptr @.str.160, i64 6, i64 159 }, %struct.lxb_css_data_t { ptr @.str.161, i64 13, i64 160 }, %struct.lxb_css_data_t { ptr @.str.162, i64 9, i64 161 }, %struct.lxb_css_data_t { ptr @.str.163, i64 13, i64 162 }, %struct.lxb_css_data_t { ptr @.str.164, i64 13, i64 163 }, %struct.lxb_css_data_t { ptr @.str.165, i64 10, i64 164 }, %struct.lxb_css_data_t { ptr @.str.166, i64 9, i64 165 }, %struct.lxb_css_data_t { ptr @.str.167, i64 4, i64 166 }, %struct.lxb_css_data_t { ptr @.str.168, i64 4, i64 167 }, %struct.lxb_css_data_t { ptr @.str.169, i64 4, i64 168 }, %struct.lxb_css_data_t { ptr @.str.170, i64 10, i64 169 }, %struct.lxb_css_data_t { ptr @.str.171, i64 6, i64 170 }, %struct.lxb_css_data_t { ptr @.str.172, i64 13, i64 171 }, %struct.lxb_css_data_t { ptr @.str.173, i64 3, i64 172 }, %struct.lxb_css_data_t { ptr @.str.174, i64 9, i64 173 }, %struct.lxb_css_data_t { ptr @.str.175, i64 9, i64 174 }, %struct.lxb_css_data_t { ptr @.str.176, i64 11, i64 175 }, %struct.lxb_css_data_t { ptr @.str.177, i64 6, i64 176 }, %struct.lxb_css_data_t { ptr @.str.178, i64 10, i64 177 }, %struct.lxb_css_data_t { ptr @.str.179, i64 8, i64 178 }, %struct.lxb_css_data_t { ptr @.str.180, i64 8, i64 179 }, %struct.lxb_css_data_t { ptr @.str.181, i64 6, i64 180 }, %struct.lxb_css_data_t { ptr @.str.182, i64 6, i64 181 }, %struct.lxb_css_data_t { ptr @.str.183, i64 7, i64 182 }, %struct.lxb_css_data_t { ptr @.str.184, i64 9, i64 183 }, %struct.lxb_css_data_t { ptr @.str.185, i64 9, i64 184 }, %struct.lxb_css_data_t { ptr @.str.186, i64 9, i64 185 }, %struct.lxb_css_data_t { ptr @.str.187, i64 4, i64 186 }, %struct.lxb_css_data_t { ptr @.str.188, i64 11, i64 187 }, %struct.lxb_css_data_t { ptr @.str.189, i64 9, i64 188 }, %struct.lxb_css_data_t { ptr @.str.190, i64 3, i64 189 }, %struct.lxb_css_data_t { ptr @.str.191, i64 4, i64 190 }, %struct.lxb_css_data_t { ptr @.str.192, i64 7, i64 191 }, %struct.lxb_css_data_t { ptr @.str.193, i64 6, i64 192 }, %struct.lxb_css_data_t { ptr @.str.194, i64 9, i64 193 }, %struct.lxb_css_data_t { ptr @.str.195, i64 6, i64 194 }, %struct.lxb_css_data_t { ptr @.str.196, i64 5, i64 195 }, %struct.lxb_css_data_t { ptr @.str.197, i64 5, i64 196 }, %struct.lxb_css_data_t { ptr @.str.198, i64 10, i64 197 }, %struct.lxb_css_data_t { ptr @.str.199, i64 6, i64 198 }, %struct.lxb_css_data_t { ptr @.str.200, i64 11, i64 199 }, %struct.lxb_css_data_t { ptr @.str.201, i64 6, i64 200 }, %struct.lxb_css_data_t { ptr @.str.202, i64 10, i64 201 }, %struct.lxb_css_data_t { ptr @.str.203, i64 8, i64 202 }, %struct.lxb_css_data_t { ptr @.str.204, i64 11, i64 203 }, %struct.lxb_css_data_t { ptr @.str.205, i64 10, i64 204 }, %struct.lxb_css_data_t { ptr @.str.206, i64 10, i64 205 }, %struct.lxb_css_data_t { ptr @.str.207, i64 10, i64 206 }, %struct.lxb_css_data_t { ptr @.str.208, i64 12, i64 207 }, %struct.lxb_css_data_t { ptr @.str.209, i64 5, i64 208 }, %struct.lxb_css_data_t { ptr @.str.210, i64 9, i64 209 }, %struct.lxb_css_data_t { ptr @.str.211, i64 9, i64 210 }, %struct.lxb_css_data_t { ptr @.str.212, i64 13, i64 211 }, %struct.lxb_css_data_t { ptr @.str.213, i64 12, i64 212 }, %struct.lxb_css_data_t { ptr @.str.214, i64 16, i64 213 }, %struct.lxb_css_data_t { ptr @.str.215, i64 4, i64 214 }, %struct.lxb_css_data_t { ptr @.str.216, i64 8, i64 215 }, %struct.lxb_css_data_t { ptr @.str.217, i64 8, i64 216 }, %struct.lxb_css_data_t { ptr @.str.218, i64 11, i64 217 }, %struct.lxb_css_data_t { ptr @.str.219, i64 15, i64 218 }, %struct.lxb_css_data_t { ptr @.str.220, i64 3, i64 219 }, %struct.lxb_css_data_t { ptr @.str.221, i64 4, i64 220 }, %struct.lxb_css_data_t { ptr @.str.222, i64 3, i64 221 }, %struct.lxb_css_data_t { ptr @.str.223, i64 4, i64 222 }, %struct.lxb_css_data_t { ptr @.str.224, i64 3, i64 223 }, %struct.lxb_css_data_t { ptr @.str.225, i64 3, i64 224 }, %struct.lxb_css_data_t { ptr @.str.226, i64 3, i64 225 }, %struct.lxb_css_data_t { ptr @.str.227, i64 5, i64 226 }, %struct.lxb_css_data_t { ptr @.str.228, i64 5, i64 227 }, %struct.lxb_css_data_t { ptr @.str.229, i64 5, i64 228 }, %struct.lxb_css_data_t { ptr @.str.230, i64 3, i64 229 }, %struct.lxb_css_data_t { ptr @.str.231, i64 3, i64 230 }, %struct.lxb_css_data_t { ptr @.str.232, i64 5, i64 231 }, %struct.lxb_css_data_t { ptr @.str.233, i64 6, i64 232 }, %struct.lxb_css_data_t { ptr @.str.234, i64 6, i64 233 }, %struct.lxb_css_data_t { ptr @.str.235, i64 4, i64 234 }, %struct.lxb_css_data_t { ptr @.str.236, i64 9, i64 235 }, %struct.lxb_css_data_t { ptr @.str.237, i64 5, i64 236 }, %struct.lxb_css_data_t { ptr @.str.238, i64 4, i64 237 }, %struct.lxb_css_data_t { ptr @.str.239, i64 4, i64 238 }, %struct.lxb_css_data_t { ptr @.str.240, i64 4, i64 239 }, %struct.lxb_css_data_t { ptr @.str.241, i64 9, i64 240 }, %struct.lxb_css_data_t { ptr @.str.242, i64 15, i64 241 }, %struct.lxb_css_data_t { ptr @.str.243, i64 18, i64 242 }, %struct.lxb_css_data_t { ptr @.str.244, i64 18, i64 243 }, %struct.lxb_css_data_t { ptr @.str.245, i64 9, i64 244 }, %struct.lxb_css_data_t { ptr @.str.246, i64 10, i64 245 }, %struct.lxb_css_data_t { ptr @.str.247, i64 18, i64 246 }, %struct.lxb_css_data_t { ptr @.str.248, i64 12, i64 247 }, %struct.lxb_css_data_t { ptr @.str.249, i64 13, i64 248 }, %struct.lxb_css_data_t { ptr @.str.250, i64 9, i64 249 }, %struct.lxb_css_data_t { ptr @.str.251, i64 9, i64 250 }, %struct.lxb_css_data_t { ptr @.str.252, i64 19, i64 251 }, %struct.lxb_css_data_t { ptr @.str.253, i64 19, i64 252 }, %struct.lxb_css_data_t { ptr @.str.254, i64 8, i64 253 }, %struct.lxb_css_data_t { ptr @.str.255, i64 12, i64 254 }, %struct.lxb_css_data_t { ptr @.str.256, i64 12, i64 255 }, %struct.lxb_css_data_t { ptr @.str.257, i64 11, i64 256 }, %struct.lxb_css_data_t { ptr @.str.258, i64 11, i64 257 }, %struct.lxb_css_data_t { ptr @.str.259, i64 7, i64 258 }, %struct.lxb_css_data_t { ptr @.str.260, i64 7, i64 259 }, %struct.lxb_css_data_t { ptr @.str.261, i64 3, i64 260 }, %struct.lxb_css_data_t { ptr @.str.262, i64 11, i64 261 }, %struct.lxb_css_data_t { ptr @.str.263, i64 6, i64 262 }, %struct.lxb_css_data_t { ptr @.str.264, i64 14, i64 263 }, %struct.lxb_css_data_t { ptr @.str.265, i64 7, i64 264 }, %struct.lxb_css_data_t { ptr @.str.266, i64 6, i64 265 }, %struct.lxb_css_data_t { ptr @.str.267, i64 4, i64 266 }, %struct.lxb_css_data_t { ptr @.str.268, i64 12, i64 267 }, %struct.lxb_css_data_t { ptr @.str.269, i64 10, i64 268 }, %struct.lxb_css_data_t { ptr @.str.270, i64 5, i64 269 }, %struct.lxb_css_data_t { ptr @.str.271, i64 3, i64 270 }, %struct.lxb_css_data_t { ptr @.str.272, i64 4, i64 271 }, %struct.lxb_css_data_t { ptr @.str.273, i64 11, i64 272 }, %struct.lxb_css_data_t { ptr @.str.274, i64 8, i64 273 }, %struct.lxb_css_data_t { ptr @.str.275, i64 6, i64 274 }, %struct.lxb_css_data_t { ptr @.str.276, i64 4, i64 275 }, %struct.lxb_css_data_t { ptr @.str.277, i64 5, i64 276 }, %struct.lxb_css_data_t { ptr @.str.278, i64 10, i64 277 }, %struct.lxb_css_data_t { ptr @.str.279, i64 7, i64 278 }, %struct.lxb_css_data_t { ptr @.str.280, i64 7, i64 279 }, %struct.lxb_css_data_t { ptr @.str.281, i64 9, i64 280 }, %struct.lxb_css_data_t { ptr @.str.282, i64 9, i64 281 }, %struct.lxb_css_data_t { ptr @.str.283, i64 5, i64 282 }, %struct.lxb_css_data_t { ptr @.str.284, i64 4, i64 283 }, %struct.lxb_css_data_t { ptr @.str.285, i64 8, i64 284 }, %struct.lxb_css_data_t { ptr @.str.286, i64 8, i64 285 }, %struct.lxb_css_data_t { ptr @.str.287, i64 13, i64 286 }, %struct.lxb_css_data_t { ptr @.str.288, i64 12, i64 287 }, %struct.lxb_css_data_t { ptr @.str.289, i64 10, i64 288 }, %struct.lxb_css_data_t { ptr @.str.290, i64 8, i64 289 }, %struct.lxb_css_data_t { ptr @.str.291, i64 7, i64 290 }, %struct.lxb_css_data_t { ptr @.str.292, i64 5, i64 291 }, %struct.lxb_css_data_t { ptr @.str.293, i64 5, i64 292 }, %struct.lxb_css_data_t { ptr @.str.294, i64 7, i64 293 }, %struct.lxb_css_data_t { ptr @.str.295, i64 8, i64 294 }, %struct.lxb_css_data_t { ptr @.str.296, i64 9, i64 295 }, %struct.lxb_css_data_t { ptr @.str.297, i64 6, i64 296 }, %struct.lxb_css_data_t { ptr @.str.298, i64 7, i64 297 }, %struct.lxb_css_data_t { ptr @.str.299, i64 6, i64 298 }, %struct.lxb_css_data_t { ptr @.str.300, i64 15, i64 299 }, %struct.lxb_css_data_t { ptr @.str.301, i64 15, i64 300 }, %struct.lxb_css_data_t { ptr @.str.302, i64 9, i64 301 }, %struct.lxb_css_data_t { ptr @.str.303, i64 14, i64 302 }, %struct.lxb_css_data_t { ptr @.str.304, i64 13, i64 303 }, %struct.lxb_css_data_t { ptr @.str.305, i64 8, i64 304 }, %struct.lxb_css_data_t { ptr @.str.306, i64 14, i64 305 }, %struct.lxb_css_data_t { ptr @.str.307, i64 14, i64 306 }, %struct.lxb_css_data_t { ptr @.str.308, i64 6, i64 307 }, %struct.lxb_css_data_t { ptr @.str.309, i64 7, i64 308 }, %struct.lxb_css_data_t { ptr @.str.310, i64 4, i64 309 }, %struct.lxb_css_data_t { ptr @.str.311, i64 6, i64 310 }, %struct.lxb_css_data_t { ptr @.str.312, i64 7, i64 311 }, %struct.lxb_css_data_t { ptr @.str.313, i64 9, i64 312 }, %struct.lxb_css_data_t { ptr @.str.314, i64 9, i64 313 }, %struct.lxb_css_data_t { ptr @.str.315, i64 11, i64 314 }, %struct.lxb_css_data_t { ptr @.str.316, i64 11, i64 315 }, %struct.lxb_css_data_t { ptr @.str.317, i64 6, i64 316 }, %struct.lxb_css_data_t { ptr @.str.318, i64 6, i64 317 }, %struct.lxb_css_data_t { ptr @.str.319, i64 5, i64 318 }, %struct.lxb_css_data_t { ptr @.str.320, i64 6, i64 319 }, %struct.lxb_css_data_t { ptr @.str.321, i64 8, i64 320 }, %struct.lxb_css_data_t { ptr @.str.322, i64 7, i64 321 }, %struct.lxb_css_data_t { ptr @.str.323, i64 4, i64 322 }, %struct.lxb_css_data_t { ptr @.str.324, i64 6, i64 323 }, %struct.lxb_css_data_t { ptr @.str.325, i64 10, i64 324 }, %struct.lxb_css_data_t { ptr @.str.326, i64 6, i64 325 }, %struct.lxb_css_data_t { ptr @.str.327, i64 8, i64 326 }, %struct.lxb_css_data_t { ptr @.str.328, i64 8, i64 327 }, %struct.lxb_css_data_t { ptr @.str.329, i64 6, i64 328 }, %struct.lxb_css_data_t { ptr @.str.330, i64 5, i64 329 }, %struct.lxb_css_data_t { ptr @.str.331, i64 7, i64 330 }, %struct.lxb_css_data_t { ptr @.str.332, i64 12, i64 331 }, %struct.lxb_css_data_t { ptr @.str.333, i64 11, i64 332 }, %struct.lxb_css_data_t { ptr @.str.334, i64 3, i64 333 }, %struct.lxb_css_data_t { ptr @.str.335, i64 6, i64 334 }, %struct.lxb_css_data_t { ptr @.str.336, i64 9, i64 335 }, %struct.lxb_css_data_t { ptr @.str.337, i64 8, i64 336 }, %struct.lxb_css_data_t { ptr @.str.338, i64 12, i64 337 }, %struct.lxb_css_data_t { ptr @.str.339, i64 5, i64 338 }, %struct.lxb_css_data_t { ptr @.str.340, i64 4, i64 339 }, %struct.lxb_css_data_t { ptr @.str.341, i64 9, i64 340 }, %struct.lxb_css_data_t { ptr @.str.342, i64 10, i64 341 }, %struct.lxb_css_data_t { ptr @.str.343, i64 15, i64 342 }, %struct.lxb_css_data_t { ptr @.str.344, i64 5, i64 343 }, %struct.lxb_css_data_t { ptr @.str.345, i64 7, i64 344 }, %struct.lxb_css_data_t { ptr @.str.346, i64 8, i64 345 }, %struct.lxb_css_data_t { ptr @.str.347, i64 8, i64 346 }, %struct.lxb_css_data_t { ptr @.str.348, i64 10, i64 347 }, %struct.lxb_css_data_t { ptr @.str.349, i64 9, i64 348 }, %struct.lxb_css_data_t { ptr @.str.350, i64 9, i64 349 }, %struct.lxb_css_data_t { ptr @.str.351, i64 10, i64 350 }, %struct.lxb_css_data_t { ptr @.str.352, i64 14, i64 351 }, %struct.lxb_css_data_t { ptr @.str.353, i64 5, i64 352 }, %struct.lxb_css_data_t { ptr @.str.354, i64 7, i64 353 }, %struct.lxb_css_data_t { ptr @.str.355, i64 13, i64 354 }, %struct.lxb_css_data_t { ptr @.str.356, i64 16, i64 355 }, %struct.lxb_css_data_t { ptr @.str.357, i64 9, i64 356 }, %struct.lxb_css_data_t { ptr @.str.358, i64 8, i64 357 }, %struct.lxb_css_data_t { ptr @.str.359, i64 3, i64 358 }, %struct.lxb_css_data_t { ptr @.str.360, i64 8, i64 359 }, %struct.lxb_css_data_t { ptr @.str.361, i64 12, i64 360 }, %struct.lxb_css_data_t { ptr @.str.362, i64 8, i64 361 }, %struct.lxb_css_data_t { ptr @.str.363, i64 8, i64 362 }, %struct.lxb_css_data_t { ptr @.str.364, i64 9, i64 363 }, %struct.lxb_css_data_t { ptr @.str.365, i64 4, i64 364 }, %struct.lxb_css_data_t { ptr @.str.366, i64 7, i64 365 }, %struct.lxb_css_data_t { ptr @.str.367, i64 7, i64 366 }, %struct.lxb_css_data_t { ptr @.str.368, i64 5, i64 367 }, %struct.lxb_css_data_t { ptr @.str.369, i64 13, i64 368 }, %struct.lxb_css_data_t { ptr @.str.370, i64 11, i64 369 }, %struct.lxb_css_data_t { ptr @.str.371, i64 11, i64 370 }, %struct.lxb_css_data_t { ptr @.str.372, i64 11, i64 371 }, %struct.lxb_css_data_t { ptr @.str.373, i64 11, i64 372 }], align 16
@lxb_css_value_shs = internal constant [373 x %struct.lexbor_shs_entry_t] [%struct.lexbor_shs_entry_t { ptr null, ptr null, i64 253, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.177, ptr inttoptr (i64 176 to ptr), i64 6, i64 2 }, %struct.lexbor_shs_entry_t { ptr @.str.374, ptr inttoptr (i64 200 to ptr), i64 6, i64 4 }, %struct.lexbor_shs_entry_t { ptr @.str.314, ptr inttoptr (i64 313 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.326, ptr inttoptr (i64 325 to ptr), i64 6, i64 5 }, %struct.lexbor_shs_entry_t { ptr @.str.329, ptr inttoptr (i64 328 to ptr), i64 6, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.92, ptr inttoptr (i64 91 to ptr), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.62, ptr inttoptr (i64 61 to ptr), i64 4, i64 1 }, %struct.lexbor_shs_entry_t { ptr @.str.271, ptr inttoptr (i64 270 to ptr), i64 3, i64 24 }, %struct.lexbor_shs_entry_t { ptr @.str.17, ptr inttoptr (i64 16 to ptr), i64 6, i64 32 }, %struct.lexbor_shs_entry_t { ptr @.str.220, ptr inttoptr (i64 219 to ptr), i64 3, i64 59 }, %struct.lexbor_shs_entry_t { ptr @.str.12, ptr inttoptr (i64 11 to ptr), i64 8, i64 69 }, %struct.lexbor_shs_entry_t { ptr @.str.151, ptr inttoptr (i64 150 to ptr), i64 9, i64 71 }, %struct.lexbor_shs_entry_t { ptr @.str.305, ptr inttoptr (i64 304 to ptr), i64 8, i64 92 }, %struct.lexbor_shs_entry_t { ptr @.str.9, ptr inttoptr (i64 8 to ptr), i64 13, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.143, ptr inttoptr (i64 142 to ptr), i64 12, i64 99 }, %struct.lexbor_shs_entry_t { ptr @.str.355, ptr inttoptr (i64 354 to ptr), i64 13, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.310, ptr inttoptr (i64 309 to ptr), i64 4, i64 103 }, %struct.lexbor_shs_entry_t { ptr @.str.344, ptr inttoptr (i64 343 to ptr), i64 5, i64 105 }, %struct.lexbor_shs_entry_t { ptr @.str.306, ptr inttoptr (i64 305 to ptr), i64 14, i64 119 }, %struct.lexbor_shs_entry_t { ptr @.str.13, ptr inttoptr (i64 12 to ptr), i64 4, i64 129 }, %struct.lexbor_shs_entry_t { ptr @.str.191, ptr inttoptr (i64 190 to ptr), i64 4, i64 130 }, %struct.lexbor_shs_entry_t { ptr @.str.225, ptr inttoptr (i64 224 to ptr), i64 3, i64 131 }, %struct.lexbor_shs_entry_t { ptr @.str.325, ptr inttoptr (i64 324 to ptr), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.58, ptr inttoptr (i64 57 to ptr), i64 5, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.142, ptr inttoptr (i64 141 to ptr), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.371, ptr inttoptr (i64 370 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.246, ptr inttoptr (i64 245 to ptr), i64 10, i64 135 }, %struct.lexbor_shs_entry_t { ptr @.str.360, ptr inttoptr (i64 359 to ptr), i64 8, i64 136 }, %struct.lexbor_shs_entry_t { ptr @.str.24, ptr inttoptr (i64 23 to ptr), i64 5, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.182, ptr inttoptr (i64 181 to ptr), i64 6, i64 137 }, %struct.lexbor_shs_entry_t { ptr @.str.222, ptr inttoptr (i64 221 to ptr), i64 3, i64 140 }, %struct.lexbor_shs_entry_t { ptr @.str.59, ptr inttoptr (i64 58 to ptr), i64 6, i64 53 }, %struct.lexbor_shs_entry_t { ptr @.str.74, ptr inttoptr (i64 73 to ptr), i64 8, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.52, ptr inttoptr (i64 51 to ptr), i64 3, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.83, ptr inttoptr (i64 82 to ptr), i64 10, i64 143 }, %struct.lexbor_shs_entry_t { ptr @.str.121, ptr inttoptr (i64 120 to ptr), i64 10, i64 145 }, %struct.lexbor_shs_entry_t { ptr @.str.245, ptr inttoptr (i64 244 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.39, ptr inttoptr (i64 38 to ptr), i64 5, i64 149 }, %struct.lexbor_shs_entry_t { ptr @.str.195, ptr inttoptr (i64 194 to ptr), i64 6, i64 156 }, %struct.lexbor_shs_entry_t { ptr @.str.308, ptr inttoptr (i64 307 to ptr), i64 6, i64 157 }, %struct.lexbor_shs_entry_t { ptr @.str.327, ptr inttoptr (i64 326 to ptr), i64 8, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.175, ptr inttoptr (i64 174 to ptr), i64 9, i64 179 }, %struct.lexbor_shs_entry_t { ptr @.str.375, ptr inttoptr (i64 211 to ptr), i64 13, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.376, ptr inttoptr (i64 203 to ptr), i64 11, i64 193 }, %struct.lexbor_shs_entry_t { ptr @.str.16, ptr inttoptr (i64 15 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.41, ptr inttoptr (i64 40 to ptr), i64 6, i64 194 }, %struct.lexbor_shs_entry_t { ptr @.str.57, ptr inttoptr (i64 56 to ptr), i64 5, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.168, ptr inttoptr (i64 167 to ptr), i64 4, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.272, ptr inttoptr (i64 271 to ptr), i64 4, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.138, ptr inttoptr (i64 137 to ptr), i64 7, i64 204 }, %struct.lexbor_shs_entry_t { ptr @.str.53, ptr inttoptr (i64 52 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.56, ptr inttoptr (i64 55 to ptr), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.179, ptr inttoptr (i64 178 to ptr), i64 8, i64 55 }, %struct.lexbor_shs_entry_t { ptr @.str.54, ptr inttoptr (i64 53 to ptr), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.254, ptr inttoptr (i64 253 to ptr), i64 8, i64 56 }, %struct.lexbor_shs_entry_t { ptr @.str.127, ptr inttoptr (i64 126 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.269, ptr inttoptr (i64 268 to ptr), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.197, ptr inttoptr (i64 196 to ptr), i64 5, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.353, ptr inttoptr (i64 352 to ptr), i64 5, i64 66 }, %struct.lexbor_shs_entry_t { ptr @.str.27, ptr inttoptr (i64 26 to ptr), i64 5, i64 211 }, %struct.lexbor_shs_entry_t { ptr @.str.38, ptr inttoptr (i64 37 to ptr), i64 6, i64 212 }, %struct.lexbor_shs_entry_t { ptr @.str.299, ptr inttoptr (i64 298 to ptr), i64 6, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.198, ptr inttoptr (i64 197 to ptr), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.377, ptr inttoptr (i64 209 to ptr), i64 9, i64 221 }, %struct.lexbor_shs_entry_t { ptr @.str.6, ptr inttoptr (i64 5 to ptr), i64 10, i64 227 }, %struct.lexbor_shs_entry_t { ptr @.str.185, ptr inttoptr (i64 184 to ptr), i64 9, i64 67 }, %struct.lexbor_shs_entry_t { ptr @.str.186, ptr inttoptr (i64 185 to ptr), i64 9, i64 68 }, %struct.lexbor_shs_entry_t { ptr @.str.81, ptr inttoptr (i64 80 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.178, ptr inttoptr (i64 177 to ptr), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.378, ptr inttoptr (i64 208 to ptr), i64 5, i64 234 }, %struct.lexbor_shs_entry_t { ptr @.str.281, ptr inttoptr (i64 280 to ptr), i64 9, i64 78 }, %struct.lexbor_shs_entry_t { ptr @.str.229, ptr inttoptr (i64 228 to ptr), i64 5, i64 236 }, %struct.lexbor_shs_entry_t { ptr @.str.8, ptr inttoptr (i64 7 to ptr), i64 6, i64 240 }, %struct.lexbor_shs_entry_t { ptr @.str.313, ptr inttoptr (i64 312 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.36, ptr inttoptr (i64 35 to ptr), i64 5, i64 243 }, %struct.lexbor_shs_entry_t { ptr @.str.104, ptr inttoptr (i64 103 to ptr), i64 4, i64 248 }, %struct.lexbor_shs_entry_t { ptr @.str.166, ptr inttoptr (i64 165 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.176, ptr inttoptr (i64 175 to ptr), i64 11, i64 86 }, %struct.lexbor_shs_entry_t { ptr @.str.233, ptr inttoptr (i64 232 to ptr), i64 6, i64 254 }, %struct.lexbor_shs_entry_t { ptr @.str.354, ptr inttoptr (i64 353 to ptr), i64 7, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.105, ptr inttoptr (i64 104 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.73, ptr inttoptr (i64 72 to ptr), i64 4, i64 256 }, %struct.lexbor_shs_entry_t { ptr @.str.137, ptr inttoptr (i64 136 to ptr), i64 5, i64 257 }, %struct.lexbor_shs_entry_t { ptr @.str.263, ptr inttoptr (i64 262 to ptr), i64 6, i64 258 }, %struct.lexbor_shs_entry_t { ptr @.str.72, ptr inttoptr (i64 71 to ptr), i64 7, i64 259 }, %struct.lexbor_shs_entry_t { ptr @.str.188, ptr inttoptr (i64 187 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.118, ptr inttoptr (i64 117 to ptr), i64 9, i64 260 }, %struct.lexbor_shs_entry_t { ptr @.str.125, ptr inttoptr (i64 124 to ptr), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.169, ptr inttoptr (i64 168 to ptr), i64 4, i64 262 }, %struct.lexbor_shs_entry_t { ptr @.str.2, ptr inttoptr (i64 1 to ptr), i64 7, i64 264 }, %struct.lexbor_shs_entry_t { ptr @.str.129, ptr inttoptr (i64 128 to ptr), i64 13, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.141, ptr inttoptr (i64 140 to ptr), i64 10, i64 93 }, %struct.lexbor_shs_entry_t { ptr @.str.379, ptr inttoptr (i64 204 to ptr), i64 10, i64 94 }, %struct.lexbor_shs_entry_t { ptr @.str.380, ptr inttoptr (i64 205 to ptr), i64 10, i64 96 }, %struct.lexbor_shs_entry_t { ptr @.str.341, ptr inttoptr (i64 340 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.108, ptr inttoptr (i64 107 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.259, ptr inttoptr (i64 258 to ptr), i64 7, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.111, ptr inttoptr (i64 110 to ptr), i64 7, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.149, ptr inttoptr (i64 148 to ptr), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.11, ptr inttoptr (i64 10 to ptr), i64 7, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.135, ptr inttoptr (i64 134 to ptr), i64 4, i64 266 }, %struct.lexbor_shs_entry_t { ptr @.str.4, ptr inttoptr (i64 3 to ptr), i64 5, i64 267 }, %struct.lexbor_shs_entry_t { ptr @.str.291, ptr inttoptr (i64 290 to ptr), i64 7, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.345, ptr inttoptr (i64 344 to ptr), i64 7, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.290, ptr inttoptr (i64 289 to ptr), i64 8, i64 108 }, %struct.lexbor_shs_entry_t { ptr @.str.120, ptr inttoptr (i64 119 to ptr), i64 9, i64 270 }, %struct.lexbor_shs_entry_t { ptr @.str.55, ptr inttoptr (i64 54 to ptr), i64 4, i64 271 }, %struct.lexbor_shs_entry_t { ptr @.str.145, ptr inttoptr (i64 144 to ptr), i64 15, i64 110 }, %struct.lexbor_shs_entry_t { ptr @.str.130, ptr inttoptr (i64 129 to ptr), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.147, ptr inttoptr (i64 146 to ptr), i64 15, i64 113 }, %struct.lexbor_shs_entry_t { ptr @.str.357, ptr inttoptr (i64 356 to ptr), i64 9, i64 272 }, %struct.lexbor_shs_entry_t { ptr @.str.333, ptr inttoptr (i64 332 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.381, ptr inttoptr (i64 218 to ptr), i64 15, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.190, ptr inttoptr (i64 189 to ptr), i64 3, i64 273 }, %struct.lexbor_shs_entry_t { ptr @.str.29, ptr inttoptr (i64 28 to ptr), i64 4, i64 274 }, %struct.lexbor_shs_entry_t { ptr @.str.63, ptr inttoptr (i64 62 to ptr), i64 10, i64 275 }, %struct.lexbor_shs_entry_t { ptr @.str.234, ptr inttoptr (i64 233 to ptr), i64 6, i64 276 }, %struct.lexbor_shs_entry_t { ptr @.str.332, ptr inttoptr (i64 331 to ptr), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.140, ptr inttoptr (i64 139 to ptr), i64 16, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.187, ptr inttoptr (i64 186 to ptr), i64 4, i64 280 }, %struct.lexbor_shs_entry_t { ptr @.str.292, ptr inttoptr (i64 291 to ptr), i64 5, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.181, ptr inttoptr (i64 180 to ptr), i64 6, i64 283 }, %struct.lexbor_shs_entry_t { ptr @.str.248, ptr inttoptr (i64 247 to ptr), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.180, ptr inttoptr (i64 179 to ptr), i64 8, i64 286 }, %struct.lexbor_shs_entry_t { ptr @.str.131, ptr inttoptr (i64 130 to ptr), i64 14, i64 287 }, %struct.lexbor_shs_entry_t { ptr @.str.240, ptr inttoptr (i64 239 to ptr), i64 4, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.372, ptr inttoptr (i64 371 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.334, ptr inttoptr (i64 333 to ptr), i64 3, i64 288 }, %struct.lexbor_shs_entry_t { ptr @.str.301, ptr inttoptr (i64 300 to ptr), i64 15, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.113, ptr inttoptr (i64 112 to ptr), i64 6, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.47, ptr inttoptr (i64 46 to ptr), i64 9, i64 134 }, %struct.lexbor_shs_entry_t { ptr @.str.311, ptr inttoptr (i64 310 to ptr), i64 6, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.100, ptr inttoptr (i64 99 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.65, ptr inttoptr (i64 64 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.61, ptr inttoptr (i64 60 to ptr), i64 14, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.148, ptr inttoptr (i64 147 to ptr), i64 15, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.165, ptr inttoptr (i64 164 to ptr), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.382, ptr inttoptr (i64 207 to ptr), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.266, ptr inttoptr (i64 265 to ptr), i64 6, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.37, ptr inttoptr (i64 36 to ptr), i64 6, i64 141 }, %struct.lexbor_shs_entry_t { ptr @.str.298, ptr inttoptr (i64 297 to ptr), i64 7, i64 142 }, %struct.lexbor_shs_entry_t { ptr @.str.71, ptr inttoptr (i64 70 to ptr), i64 8, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.97, ptr inttoptr (i64 96 to ptr), i64 10, i64 144 }, %struct.lexbor_shs_entry_t { ptr @.str.373, ptr inttoptr (i64 372 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.94, ptr inttoptr (i64 93 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.183, ptr inttoptr (i64 182 to ptr), i64 7, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.102, ptr inttoptr (i64 101 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.115, ptr inttoptr (i64 114 to ptr), i64 5, i64 290 }, %struct.lexbor_shs_entry_t { ptr @.str.98, ptr inttoptr (i64 97 to ptr), i64 9, i64 153 }, %struct.lexbor_shs_entry_t { ptr @.str.273, ptr inttoptr (i64 272 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.34, ptr inttoptr (i64 33 to ptr), i64 6, i64 293 }, %struct.lexbor_shs_entry_t { ptr @.str.235, ptr inttoptr (i64 234 to ptr), i64 4, i64 295 }, %struct.lexbor_shs_entry_t { ptr @.str.88, ptr inttoptr (i64 87 to ptr), i64 13, i64 154 }, %struct.lexbor_shs_entry_t { ptr @.str.91, ptr inttoptr (i64 90 to ptr), i64 13, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.224, ptr inttoptr (i64 223 to ptr), i64 3, i64 297 }, %struct.lexbor_shs_entry_t { ptr @.str.383, ptr inttoptr (i64 210 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.161, ptr inttoptr (i64 160 to ptr), i64 13, i64 159 }, %struct.lexbor_shs_entry_t { ptr @.str.322, ptr inttoptr (i64 321 to ptr), i64 7, i64 298 }, %struct.lexbor_shs_entry_t { ptr @.str.164, ptr inttoptr (i64 163 to ptr), i64 13, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.107, ptr inttoptr (i64 106 to ptr), i64 5, i64 299 }, %struct.lexbor_shs_entry_t { ptr @.str.33, ptr inttoptr (i64 32 to ptr), i64 6, i64 300 }, %struct.lexbor_shs_entry_t { ptr @.str.283, ptr inttoptr (i64 282 to ptr), i64 5, i64 301 }, %struct.lexbor_shs_entry_t { ptr @.str.77, ptr inttoptr (i64 76 to ptr), i64 8, i64 303 }, %struct.lexbor_shs_entry_t { ptr @.str.193, ptr inttoptr (i64 192 to ptr), i64 6, i64 304 }, %struct.lexbor_shs_entry_t { ptr @.str.295, ptr inttoptr (i64 294 to ptr), i64 8, i64 305 }, %struct.lexbor_shs_entry_t { ptr @.str.285, ptr inttoptr (i64 284 to ptr), i64 8, i64 306 }, %struct.lexbor_shs_entry_t { ptr @.str.270, ptr inttoptr (i64 269 to ptr), i64 5, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.49, ptr inttoptr (i64 48 to ptr), i64 5, i64 307 }, %struct.lexbor_shs_entry_t { ptr @.str.5, ptr inttoptr (i64 4 to ptr), i64 6, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.340, ptr inttoptr (i64 339 to ptr), i64 4, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.221, ptr inttoptr (i64 220 to ptr), i64 4, i64 310 }, %struct.lexbor_shs_entry_t { ptr @.str.139, ptr inttoptr (i64 138 to ptr), i64 6, i64 313 }, %struct.lexbor_shs_entry_t { ptr @.str.156, ptr inttoptr (i64 155 to ptr), i64 5, i64 314 }, %struct.lexbor_shs_entry_t { ptr @.str.158, ptr inttoptr (i64 157 to ptr), i64 6, i64 315 }, %struct.lexbor_shs_entry_t { ptr @.str.155, ptr inttoptr (i64 154 to ptr), i64 7, i64 317 }, %struct.lexbor_shs_entry_t { ptr @.str.337, ptr inttoptr (i64 336 to ptr), i64 8, i64 320 }, %struct.lexbor_shs_entry_t { ptr @.str.359, ptr inttoptr (i64 358 to ptr), i64 3, i64 322 }, %struct.lexbor_shs_entry_t { ptr @.str.226, ptr inttoptr (i64 225 to ptr), i64 3, i64 323 }, %struct.lexbor_shs_entry_t { ptr @.str.250, ptr inttoptr (i64 249 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.171, ptr inttoptr (i64 170 to ptr), i64 6, i64 325 }, %struct.lexbor_shs_entry_t { ptr @.str.231, ptr inttoptr (i64 230 to ptr), i64 3, i64 328 }, %struct.lexbor_shs_entry_t { ptr @.str.26, ptr inttoptr (i64 25 to ptr), i64 6, i64 329 }, %struct.lexbor_shs_entry_t { ptr @.str.238, ptr inttoptr (i64 237 to ptr), i64 4, i64 331 }, %struct.lexbor_shs_entry_t { ptr @.str.170, ptr inttoptr (i64 169 to ptr), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.230, ptr inttoptr (i64 229 to ptr), i64 3, i64 334 }, %struct.lexbor_shs_entry_t { ptr @.str.300, ptr inttoptr (i64 299 to ptr), i64 15, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.338, ptr inttoptr (i64 337 to ptr), i64 12, i64 336 }, %struct.lexbor_shs_entry_t { ptr @.str.23, ptr inttoptr (i64 22 to ptr), i64 3, i64 337 }, %struct.lexbor_shs_entry_t { ptr @.str.312, ptr inttoptr (i64 311 to ptr), i64 7, i64 340 }, %struct.lexbor_shs_entry_t { ptr @.str.116, ptr inttoptr (i64 115 to ptr), i64 8, i64 341 }, %struct.lexbor_shs_entry_t { ptr @.str.258, ptr inttoptr (i64 257 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.261, ptr inttoptr (i64 260 to ptr), i64 3, i64 343 }, %struct.lexbor_shs_entry_t { ptr @.str.262, ptr inttoptr (i64 261 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.172, ptr inttoptr (i64 171 to ptr), i64 13, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.260, ptr inttoptr (i64 259 to ptr), i64 7, i64 344 }, %struct.lexbor_shs_entry_t { ptr @.str.173, ptr inttoptr (i64 172 to ptr), i64 3, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.384, ptr inttoptr (i64 212 to ptr), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.228, ptr inttoptr (i64 227 to ptr), i64 5, i64 346 }, %struct.lexbor_shs_entry_t { ptr @.str.237, ptr inttoptr (i64 236 to ptr), i64 5, i64 348 }, %struct.lexbor_shs_entry_t { ptr @.str.385, ptr inttoptr (i64 214 to ptr), i64 4, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.60, ptr inttoptr (i64 59 to ptr), i64 5, i64 349 }, %struct.lexbor_shs_entry_t { ptr @.str.255, ptr inttoptr (i64 254 to ptr), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.323, ptr inttoptr (i64 322 to ptr), i64 4, i64 352 }, %struct.lexbor_shs_entry_t { ptr @.str.321, ptr inttoptr (i64 320 to ptr), i64 8, i64 205 }, %struct.lexbor_shs_entry_t { ptr @.str.328, ptr inttoptr (i64 327 to ptr), i64 8, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.196, ptr inttoptr (i64 195 to ptr), i64 5, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.336, ptr inttoptr (i64 335 to ptr), i64 9, i64 353 }, %struct.lexbor_shs_entry_t { ptr @.str.25, ptr inttoptr (i64 24 to ptr), i64 3, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.15, ptr inttoptr (i64 14 to ptr), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.288, ptr inttoptr (i64 287 to ptr), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.80, ptr inttoptr (i64 79 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.386, ptr inttoptr (i64 216 to ptr), i64 8, i64 214 }, %struct.lexbor_shs_entry_t { ptr @.str.277, ptr inttoptr (i64 276 to ptr), i64 5, i64 354 }, %struct.lexbor_shs_entry_t { ptr @.str.241, ptr inttoptr (i64 240 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.69, ptr inttoptr (i64 68 to ptr), i64 5, i64 355 }, %struct.lexbor_shs_entry_t { ptr @.str.347, ptr inttoptr (i64 346 to ptr), i64 8, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.18, ptr inttoptr (i64 17 to ptr), i64 7, i64 357 }, %struct.lexbor_shs_entry_t { ptr @.str.75, ptr inttoptr (i64 74 to ptr), i64 8, i64 358 }, %struct.lexbor_shs_entry_t { ptr @.str.223, ptr inttoptr (i64 222 to ptr), i64 4, i64 359 }, %struct.lexbor_shs_entry_t { ptr @.str.86, ptr inttoptr (i64 85 to ptr), i64 10, i64 360 }, %struct.lexbor_shs_entry_t { ptr @.str.236, ptr inttoptr (i64 235 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.87, ptr inttoptr (i64 86 to ptr), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.243, ptr inttoptr (i64 242 to ptr), i64 18, i64 361 }, %struct.lexbor_shs_entry_t { ptr @.str.82, ptr inttoptr (i64 81 to ptr), i64 14, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.106, ptr inttoptr (i64 105 to ptr), i64 4, i64 363 }, %struct.lexbor_shs_entry_t { ptr @.str.317, ptr inttoptr (i64 316 to ptr), i64 6, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.103, ptr inttoptr (i64 102 to ptr), i64 10, i64 229 }, %struct.lexbor_shs_entry_t { ptr @.str.31, ptr inttoptr (i64 30 to ptr), i64 5, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.268, ptr inttoptr (i64 267 to ptr), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.284, ptr inttoptr (i64 283 to ptr), i64 4, i64 365 }, %struct.lexbor_shs_entry_t { ptr @.str.21, ptr inttoptr (i64 20 to ptr), i64 7, i64 366 }, %struct.lexbor_shs_entry_t { ptr @.str.101, ptr inttoptr (i64 100 to ptr), i64 7, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.267, ptr inttoptr (i64 266 to ptr), i64 4, i64 367 }, %struct.lexbor_shs_entry_t { ptr @.str.330, ptr inttoptr (i64 329 to ptr), i64 5, i64 235 }, %struct.lexbor_shs_entry_t { ptr @.str.134, ptr inttoptr (i64 133 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.368, ptr inttoptr (i64 367 to ptr), i64 5, i64 237 }, %struct.lexbor_shs_entry_t { ptr @.str.93, ptr inttoptr (i64 92 to ptr), i64 8, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.28, ptr inttoptr (i64 27 to ptr), i64 4, i64 368 }, %struct.lexbor_shs_entry_t { ptr @.str.352, ptr inttoptr (i64 351 to ptr), i64 14, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.7, ptr inttoptr (i64 6 to ptr), i64 8, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.162, ptr inttoptr (i64 161 to ptr), i64 9, i64 370 }, %struct.lexbor_shs_entry_t { ptr @.str.387, ptr inttoptr (i64 202 to ptr), i64 8, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.14, ptr inttoptr (i64 13 to ptr), i64 11, i64 245 }, %struct.lexbor_shs_entry_t { ptr @.str.40, ptr inttoptr (i64 39 to ptr), i64 5, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.257, ptr inttoptr (i64 256 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.3, ptr inttoptr (i64 2 to ptr), i64 7, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.154, ptr inttoptr (i64 153 to ptr), i64 4, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.239, ptr inttoptr (i64 238 to ptr), i64 4, i64 252 }, %struct.lexbor_shs_entry_t { ptr @.str.252, ptr inttoptr (i64 251 to ptr), i64 19, i64 371 }, %struct.lexbor_shs_entry_t { ptr @.str.160, ptr inttoptr (i64 159 to ptr), i64 6, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.44, ptr inttoptr (i64 43 to ptr), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.43, ptr inttoptr (i64 42 to ptr), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.167, ptr inttoptr (i64 166 to ptr), i64 4, i64 372 }, %struct.lexbor_shs_entry_t { ptr @.str.50, ptr inttoptr (i64 49 to ptr), i64 12, i64 255 }, %struct.lexbor_shs_entry_t { ptr @.str.123, ptr inttoptr (i64 122 to ptr), i64 20, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.10, ptr inttoptr (i64 9 to ptr), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.304, ptr inttoptr (i64 303 to ptr), i64 13, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.303, ptr inttoptr (i64 302 to ptr), i64 14, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.256, ptr inttoptr (i64 255 to ptr), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.122, ptr inttoptr (i64 121 to ptr), i64 9, i64 261 }, %struct.lexbor_shs_entry_t { ptr @.str.136, ptr inttoptr (i64 135 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.128, ptr inttoptr (i64 127 to ptr), i64 11, i64 263 }, %struct.lexbor_shs_entry_t { ptr @.str.356, ptr inttoptr (i64 355 to ptr), i64 16, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.363, ptr inttoptr (i64 362 to ptr), i64 8, i64 265 }, %struct.lexbor_shs_entry_t { ptr @.str.119, ptr inttoptr (i64 118 to ptr), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.346, ptr inttoptr (i64 345 to ptr), i64 8, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.293, ptr inttoptr (i64 292 to ptr), i64 5, i64 268 }, %struct.lexbor_shs_entry_t { ptr @.str.319, ptr inttoptr (i64 318 to ptr), i64 5, i64 269 }, %struct.lexbor_shs_entry_t { ptr @.str.110, ptr inttoptr (i64 109 to ptr), i64 8, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.350, ptr inttoptr (i64 349 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.99, ptr inttoptr (i64 98 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.133, ptr inttoptr (i64 132 to ptr), i64 14, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.388, ptr inttoptr (i64 215 to ptr), i64 8, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.32, ptr inttoptr (i64 31 to ptr), i64 4, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.389, ptr inttoptr (i64 206 to ptr), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.275, ptr inttoptr (i64 274 to ptr), i64 6, i64 277 }, %struct.lexbor_shs_entry_t { ptr @.str.46, ptr inttoptr (i64 45 to ptr), i64 11, i64 278 }, %struct.lexbor_shs_entry_t { ptr @.str.315, ptr inttoptr (i64 314 to ptr), i64 11, i64 279 }, %struct.lexbor_shs_entry_t { ptr @.str.316, ptr inttoptr (i64 315 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.124, ptr inttoptr (i64 123 to ptr), i64 9, i64 281 }, %struct.lexbor_shs_entry_t { ptr @.str.126, ptr inttoptr (i64 125 to ptr), i64 9, i64 282 }, %struct.lexbor_shs_entry_t { ptr @.str.174, ptr inttoptr (i64 173 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.324, ptr inttoptr (i64 323 to ptr), i64 6, i64 284 }, %struct.lexbor_shs_entry_t { ptr @.str.335, ptr inttoptr (i64 334 to ptr), i64 6, i64 285 }, %struct.lexbor_shs_entry_t { ptr @.str.153, ptr inttoptr (i64 152 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.249, ptr inttoptr (i64 248 to ptr), i64 13, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.132, ptr inttoptr (i64 131 to ptr), i64 14, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.199, ptr inttoptr (i64 198 to ptr), i64 6, i64 289 }, %struct.lexbor_shs_entry_t { ptr @.str.361, ptr inttoptr (i64 360 to ptr), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.227, ptr inttoptr (i64 226 to ptr), i64 5, i64 291 }, %struct.lexbor_shs_entry_t { ptr @.str.184, ptr inttoptr (i64 183 to ptr), i64 9, i64 292 }, %struct.lexbor_shs_entry_t { ptr @.str.189, ptr inttoptr (i64 188 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.35, ptr inttoptr (i64 34 to ptr), i64 6, i64 294 }, %struct.lexbor_shs_entry_t { ptr @.str.51, ptr inttoptr (i64 50 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.85, ptr inttoptr (i64 84 to ptr), i64 7, i64 296 }, %struct.lexbor_shs_entry_t { ptr @.str.157, ptr inttoptr (i64 156 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.84, ptr inttoptr (i64 83 to ptr), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.76, ptr inttoptr (i64 75 to ptr), i64 13, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.265, ptr inttoptr (i64 264 to ptr), i64 7, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.274, ptr inttoptr (i64 273 to ptr), i64 8, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.95, ptr inttoptr (i64 94 to ptr), i64 7, i64 302 }, %struct.lexbor_shs_entry_t { ptr @.str.96, ptr inttoptr (i64 95 to ptr), i64 7, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.79, ptr inttoptr (i64 78 to ptr), i64 8, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.294, ptr inttoptr (i64 293 to ptr), i64 7, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.369, ptr inttoptr (i64 368 to ptr), i64 13, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.296, ptr inttoptr (i64 295 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.320, ptr inttoptr (i64 319 to ptr), i64 6, i64 308 }, %struct.lexbor_shs_entry_t { ptr @.str.89, ptr inttoptr (i64 88 to ptr), i64 13, i64 309 }, %struct.lexbor_shs_entry_t { ptr @.str.90, ptr inttoptr (i64 89 to ptr), i64 13, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.64, ptr inttoptr (i64 63 to ptr), i64 5, i64 311 }, %struct.lexbor_shs_entry_t { ptr @.str.282, ptr inttoptr (i64 281 to ptr), i64 9, i64 312 }, %struct.lexbor_shs_entry_t { ptr @.str.390, ptr inttoptr (i64 217 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.251, ptr inttoptr (i64 250 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.279, ptr inttoptr (i64 278 to ptr), i64 7, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.152, ptr inttoptr (i64 151 to ptr), i64 8, i64 316 }, %struct.lexbor_shs_entry_t { ptr @.str.358, ptr inttoptr (i64 357 to ptr), i64 8, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.309, ptr inttoptr (i64 308 to ptr), i64 7, i64 318 }, %struct.lexbor_shs_entry_t { ptr @.str.66, ptr inttoptr (i64 65 to ptr), i64 9, i64 319 }, %struct.lexbor_shs_entry_t { ptr @.str.68, ptr inttoptr (i64 67 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.67, ptr inttoptr (i64 66 to ptr), i64 10, i64 321 }, %struct.lexbor_shs_entry_t { ptr @.str.348, ptr inttoptr (i64 347 to ptr), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.200, ptr inttoptr (i64 199 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.276, ptr inttoptr (i64 275 to ptr), i64 4, i64 324 }, %struct.lexbor_shs_entry_t { ptr @.str.391, ptr inttoptr (i64 213 to ptr), i64 16, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.70, ptr inttoptr (i64 69 to ptr), i64 14, i64 326 }, %struct.lexbor_shs_entry_t { ptr @.str.144, ptr inttoptr (i64 143 to ptr), i64 14, i64 327 }, %struct.lexbor_shs_entry_t { ptr @.str.264, ptr inttoptr (i64 263 to ptr), i64 14, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.289, ptr inttoptr (i64 288 to ptr), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.30, ptr inttoptr (i64 29 to ptr), i64 6, i64 330 }, %struct.lexbor_shs_entry_t { ptr @.str.362, ptr inttoptr (i64 361 to ptr), i64 8, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.366, ptr inttoptr (i64 365 to ptr), i64 7, i64 332 }, %struct.lexbor_shs_entry_t { ptr @.str.367, ptr inttoptr (i64 366 to ptr), i64 7, i64 333 }, %struct.lexbor_shs_entry_t { ptr @.str.146, ptr inttoptr (i64 145 to ptr), i64 17, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.150, ptr inttoptr (i64 149 to ptr), i64 9, i64 335 }, %struct.lexbor_shs_entry_t { ptr @.str.307, ptr inttoptr (i64 306 to ptr), i64 14, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.163, ptr inttoptr (i64 162 to ptr), i64 13, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.297, ptr inttoptr (i64 296 to ptr), i64 6, i64 338 }, %struct.lexbor_shs_entry_t { ptr @.str.42, ptr inttoptr (i64 41 to ptr), i64 11, i64 339 }, %struct.lexbor_shs_entry_t { ptr @.str.117, ptr inttoptr (i64 116 to ptr), i64 13, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.112, ptr inttoptr (i64 111 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.45, ptr inttoptr (i64 44 to ptr), i64 10, i64 342 }, %struct.lexbor_shs_entry_t { ptr @.str.342, ptr inttoptr (i64 341 to ptr), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.318, ptr inttoptr (i64 317 to ptr), i64 6, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.331, ptr inttoptr (i64 330 to ptr), i64 7, i64 345 }, %struct.lexbor_shs_entry_t { ptr @.str.364, ptr inttoptr (i64 363 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.392, ptr inttoptr (i64 201 to ptr), i64 10, i64 347 }, %struct.lexbor_shs_entry_t { ptr @.str.19, ptr inttoptr (i64 18 to ptr), i64 12, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.351, ptr inttoptr (i64 350 to ptr), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.232, ptr inttoptr (i64 231 to ptr), i64 5, i64 350 }, %struct.lexbor_shs_entry_t { ptr @.str.339, ptr inttoptr (i64 338 to ptr), i64 5, i64 351 }, %struct.lexbor_shs_entry_t { ptr @.str.192, ptr inttoptr (i64 191 to ptr), i64 7, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.194, ptr inttoptr (i64 193 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.349, ptr inttoptr (i64 348 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.20, ptr inttoptr (i64 19 to ptr), i64 8, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.114, ptr inttoptr (i64 113 to ptr), i64 5, i64 356 }, %struct.lexbor_shs_entry_t { ptr @.str.343, ptr inttoptr (i64 342 to ptr), i64 15, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.280, ptr inttoptr (i64 279 to ptr), i64 7, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.278, ptr inttoptr (i64 277 to ptr), i64 10, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.78, ptr inttoptr (i64 77 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.242, ptr inttoptr (i64 241 to ptr), i64 15, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.244, ptr inttoptr (i64 243 to ptr), i64 18, i64 362 }, %struct.lexbor_shs_entry_t { ptr @.str.247, ptr inttoptr (i64 246 to ptr), i64 18, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.109, ptr inttoptr (i64 108 to ptr), i64 4, i64 364 }, %struct.lexbor_shs_entry_t { ptr @.str.370, ptr inttoptr (i64 369 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.365, ptr inttoptr (i64 364 to ptr), i64 4, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.22, ptr inttoptr (i64 21 to ptr), i64 11, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.286, ptr inttoptr (i64 285 to ptr), i64 8, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.48, ptr inttoptr (i64 47 to ptr), i64 4, i64 369 }, %struct.lexbor_shs_entry_t { ptr @.str.287, ptr inttoptr (i64 286 to ptr), i64 13, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.302, ptr inttoptr (i64 301 to ptr), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.253, ptr inttoptr (i64 252 to ptr), i64 19, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.159, ptr inttoptr (i64 158 to ptr), i64 9, i64 0 }], align 16
@.str = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_undef\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"initial\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"inherit\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"revert\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"flex-start\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"flex-end\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"space-between\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"space-around\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"stretch\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"baseline\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"text-bottom\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"alphabetic\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"ideographic\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"middle\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"central\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"mathematical\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"text-top\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"_length\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"_percentage\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"super\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"thin\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"thick\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"hidden\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"dotted\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"dashed\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"solid\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"groove\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"ridge\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"inset\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"outset\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"content-box\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"border-box\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"inline-start\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"inline-end\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"block-start\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"block-end\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"currentcolor\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"transparent\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"aliceblue\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"antiquewhite\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"aqua\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"aquamarine\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"azure\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"beige\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"bisque\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"blanchedalmond\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"blueviolet\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"brown\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"burlywood\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"cadetblue\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"chartreuse\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"chocolate\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"coral\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"cornflowerblue\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"cornsilk\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"crimson\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"cyan\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"darkblue\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"darkcyan\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"darkgoldenrod\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"darkgray\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"darkgreen\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"darkgrey\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"darkkhaki\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"darkmagenta\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"darkolivegreen\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"darkorange\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"darkorchid\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"darkred\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"darksalmon\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"darkseagreen\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"darkslateblue\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"darkslategray\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"darkslategrey\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"darkturquoise\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"darkviolet\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"deeppink\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"deepskyblue\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"dimgray\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"dimgrey\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"dodgerblue\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"firebrick\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"floralwhite\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"forestgreen\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"fuchsia\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"gainsboro\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"ghostwhite\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"gold\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"goldenrod\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"gray\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"greenyellow\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"grey\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"honeydew\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"hotpink\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"indianred\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"indigo\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"ivory\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"khaki\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"lavender\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"lavenderblush\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"lawngreen\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"lemonchiffon\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"lightblue\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"lightcoral\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"lightcyan\00", align 1
@.str.123 = private unnamed_addr constant [21 x i8] c"lightgoldenrodyellow\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"lightgray\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"lightgreen\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"lightgrey\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"lightpink\00", align 1
@.str.128 = private unnamed_addr constant [12 x i8] c"lightsalmon\00", align 1
@.str.129 = private unnamed_addr constant [14 x i8] c"lightseagreen\00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"lightskyblue\00", align 1
@.str.131 = private unnamed_addr constant [15 x i8] c"lightslategray\00", align 1
@.str.132 = private unnamed_addr constant [15 x i8] c"lightslategrey\00", align 1
@.str.133 = private unnamed_addr constant [15 x i8] c"lightsteelblue\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"lightyellow\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c"lime\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"limegreen\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"linen\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"magenta\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"maroon\00", align 1
@.str.140 = private unnamed_addr constant [17 x i8] c"mediumaquamarine\00", align 1
@.str.141 = private unnamed_addr constant [11 x i8] c"mediumblue\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"mediumorchid\00", align 1
@.str.143 = private unnamed_addr constant [13 x i8] c"mediumpurple\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"mediumseagreen\00", align 1
@.str.145 = private unnamed_addr constant [16 x i8] c"mediumslateblue\00", align 1
@.str.146 = private unnamed_addr constant [18 x i8] c"mediumspringgreen\00", align 1
@.str.147 = private unnamed_addr constant [16 x i8] c"mediumturquoise\00", align 1
@.str.148 = private unnamed_addr constant [16 x i8] c"mediumvioletred\00", align 1
@.str.149 = private unnamed_addr constant [13 x i8] c"midnightblue\00", align 1
@.str.150 = private unnamed_addr constant [10 x i8] c"mintcream\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"mistyrose\00", align 1
@.str.152 = private unnamed_addr constant [9 x i8] c"moccasin\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c"navajowhite\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"navy\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"oldlace\00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c"olive\00", align 1
@.str.157 = private unnamed_addr constant [10 x i8] c"olivedrab\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"orange\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"orangered\00", align 1
@.str.160 = private unnamed_addr constant [7 x i8] c"orchid\00", align 1
@.str.161 = private unnamed_addr constant [14 x i8] c"palegoldenrod\00", align 1
@.str.162 = private unnamed_addr constant [10 x i8] c"palegreen\00", align 1
@.str.163 = private unnamed_addr constant [14 x i8] c"paleturquoise\00", align 1
@.str.164 = private unnamed_addr constant [14 x i8] c"palevioletred\00", align 1
@.str.165 = private unnamed_addr constant [11 x i8] c"papayawhip\00", align 1
@.str.166 = private unnamed_addr constant [10 x i8] c"peachpuff\00", align 1
@.str.167 = private unnamed_addr constant [5 x i8] c"peru\00", align 1
@.str.168 = private unnamed_addr constant [5 x i8] c"pink\00", align 1
@.str.169 = private unnamed_addr constant [5 x i8] c"plum\00", align 1
@.str.170 = private unnamed_addr constant [11 x i8] c"powderblue\00", align 1
@.str.171 = private unnamed_addr constant [7 x i8] c"purple\00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"rebeccapurple\00", align 1
@.str.173 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"rosybrown\00", align 1
@.str.175 = private unnamed_addr constant [10 x i8] c"royalblue\00", align 1
@.str.176 = private unnamed_addr constant [12 x i8] c"saddlebrown\00", align 1
@.str.177 = private unnamed_addr constant [7 x i8] c"salmon\00", align 1
@.str.178 = private unnamed_addr constant [11 x i8] c"sandybrown\00", align 1
@.str.179 = private unnamed_addr constant [9 x i8] c"seagreen\00", align 1
@.str.180 = private unnamed_addr constant [9 x i8] c"seashell\00", align 1
@.str.181 = private unnamed_addr constant [7 x i8] c"sienna\00", align 1
@.str.182 = private unnamed_addr constant [7 x i8] c"silver\00", align 1
@.str.183 = private unnamed_addr constant [8 x i8] c"skyblue\00", align 1
@.str.184 = private unnamed_addr constant [10 x i8] c"slateblue\00", align 1
@.str.185 = private unnamed_addr constant [10 x i8] c"slategray\00", align 1
@.str.186 = private unnamed_addr constant [10 x i8] c"slategrey\00", align 1
@.str.187 = private unnamed_addr constant [5 x i8] c"snow\00", align 1
@.str.188 = private unnamed_addr constant [12 x i8] c"springgreen\00", align 1
@.str.189 = private unnamed_addr constant [10 x i8] c"steelblue\00", align 1
@.str.190 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str.191 = private unnamed_addr constant [5 x i8] c"teal\00", align 1
@.str.192 = private unnamed_addr constant [8 x i8] c"thistle\00", align 1
@.str.193 = private unnamed_addr constant [7 x i8] c"tomato\00", align 1
@.str.194 = private unnamed_addr constant [10 x i8] c"turquoise\00", align 1
@.str.195 = private unnamed_addr constant [7 x i8] c"violet\00", align 1
@.str.196 = private unnamed_addr constant [6 x i8] c"wheat\00", align 1
end_hunk_0
begin_hunk_1
@.str.198 = private unnamed_addr constant [11 x i8] c"whitesmoke\00", align 1
@.str.199 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1
@.str.200 = private unnamed_addr constant [12 x i8] c"yellowgreen\00", align 1
@.str.201 = private unnamed_addr constant [7 x i8] c"Canvas\00", align 1
@.str.202 = private unnamed_addr constant [11 x i8] c"CanvasText\00", align 1
@.str.203 = private unnamed_addr constant [9 x i8] c"LinkText\00", align 1
@.str.204 = private unnamed_addr constant [12 x i8] c"VisitedText\00", align 1
@.str.205 = private unnamed_addr constant [11 x i8] c"ActiveText\00", align 1
@.str.206 = private unnamed_addr constant [11 x i8] c"ButtonFace\00", align 1
@.str.207 = private unnamed_addr constant [11 x i8] c"ButtonText\00", align 1
@.str.208 = private unnamed_addr constant [13 x i8] c"ButtonBorder\00", align 1
@.str.209 = private unnamed_addr constant [6 x i8] c"Field\00", align 1
@.str.210 = private unnamed_addr constant [10 x i8] c"FieldText\00", align 1
@.str.211 = private unnamed_addr constant [10 x i8] c"Highlight\00", align 1
@.str.212 = private unnamed_addr constant [14 x i8] c"HighlightText\00", align 1
@.str.213 = private unnamed_addr constant [13 x i8] c"SelectedItem\00", align 1
@.str.214 = private unnamed_addr constant [17 x i8] c"SelectedItemText\00", align 1
@.str.215 = private unnamed_addr constant [5 x i8] c"Mark\00", align 1
@.str.216 = private unnamed_addr constant [9 x i8] c"MarkText\00", align 1
@.str.217 = private unnamed_addr constant [9 x i8] c"GrayText\00", align 1
@.str.218 = private unnamed_addr constant [12 x i8] c"AccentColor\00", align 1
@.str.219 = private unnamed_addr constant [16 x i8] c"AccentColorText\00", align 1
@.str.220 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@.str.221 = private unnamed_addr constant [5 x i8] c"rgba\00", align 1
@.str.222 = private unnamed_addr constant [4 x i8] c"hsl\00", align 1
@.str.223 = private unnamed_addr constant [5 x i8] c"hsla\00", align 1
@.str.224 = private unnamed_addr constant [4 x i8] c"hwb\00", align 1
@.str.225 = private unnamed_addr constant [4 x i8] c"lab\00", align 1
@.str.226 = private unnamed_addr constant [4 x i8] c"lch\00", align 1
@.str.227 = private unnamed_addr constant [6 x i8] c"oklab\00", align 1
@.str.228 = private unnamed_addr constant [6 x i8] c"oklch\00", align 1
@.str.229 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.230 = private unnamed_addr constant [4 x i8] c"ltr\00", align 1
@.str.231 = private unnamed_addr constant [4 x i8] c"rtl\00", align 1
@.str.232 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.233 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.234 = private unnamed_addr constant [7 x i8] c"run-in\00", align 1
@.str.235 = private unnamed_addr constant [5 x i8] c"flow\00", align 1
@.str.236 = private unnamed_addr constant [10 x i8] c"flow-root\00", align 1
@.str.237 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"flex\00", align 1
@.str.239 = private unnamed_addr constant [5 x i8] c"grid\00", align 1
@.str.240 = private unnamed_addr constant [5 x i8] c"ruby\00", align 1
@.str.241 = private unnamed_addr constant [10 x i8] c"list-item\00", align 1
@.str.242 = private unnamed_addr constant [16 x i8] c"table-row-group\00", align 1
@.str.243 = private unnamed_addr constant [19 x i8] c"table-header-group\00", align 1
@.str.244 = private unnamed_addr constant [19 x i8] c"table-footer-group\00", align 1
@.str.245 = private unnamed_addr constant [10 x i8] c"table-row\00", align 1
@.str.246 = private unnamed_addr constant [11 x i8] c"table-cell\00", align 1
@.str.247 = private unnamed_addr constant [19 x i8] c"table-column-group\00", align 1
@.str.248 = private unnamed_addr constant [13 x i8] c"table-column\00", align 1
@.str.249 = private unnamed_addr constant [14 x i8] c"table-caption\00", align 1
@.str.250 = private unnamed_addr constant [10 x i8] c"ruby-base\00", align 1
@.str.251 = private unnamed_addr constant [10 x i8] c"ruby-text\00", align 1
@.str.252 = private unnamed_addr constant [20 x i8] c"ruby-base-container\00", align 1
@.str.253 = private unnamed_addr constant [20 x i8] c"ruby-text-container\00", align 1
@.str.254 = private unnamed_addr constant [9 x i8] c"contents\00", align 1
@.str.255 = private unnamed_addr constant [13 x i8] c"inline-block\00", align 1
@.str.256 = private unnamed_addr constant [13 x i8] c"inline-table\00", align 1
@.str.257 = private unnamed_addr constant [12 x i8] c"inline-flex\00", align 1
@.str.258 = private unnamed_addr constant [12 x i8] c"inline-grid\00", align 1
@.str.259 = private unnamed_addr constant [8 x i8] c"hanging\00", align 1
@.str.260 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.261 = private unnamed_addr constant [4 x i8] c"row\00", align 1
@.str.262 = private unnamed_addr constant [12 x i8] c"row-reverse\00", align 1
@.str.263 = private unnamed_addr constant [7 x i8] c"column\00", align 1
@.str.264 = private unnamed_addr constant [15 x i8] c"column-reverse\00", align 1
@.str.265 = private unnamed_addr constant [8 x i8] c"_number\00", align 1
@.str.266 = private unnamed_addr constant [7 x i8] c"nowrap\00", align 1
@.str.267 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.268 = private unnamed_addr constant [13 x i8] c"wrap-reverse\00", align 1
@.str.269 = private unnamed_addr constant [11 x i8] c"snap-block\00", align 1
@.str.270 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.271 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.272 = private unnamed_addr constant [5 x i8] c"near\00", align 1
@.str.273 = private unnamed_addr constant [12 x i8] c"snap-inline\00", align 1
@.str.274 = private unnamed_addr constant [9 x i8] c"_integer\00", align 1
@.str.275 = private unnamed_addr constant [7 x i8] c"region\00", align 1
@.str.276 = private unnamed_addr constant [5 x i8] c"page\00", align 1
@.str.277 = private unnamed_addr constant [6 x i8] c"serif\00", align 1
@.str.278 = private unnamed_addr constant [11 x i8] c"sans-serif\00", align 1
@.str.279 = private unnamed_addr constant [8 x i8] c"cursive\00", align 1
@.str.280 = private unnamed_addr constant [8 x i8] c"fantasy\00", align 1
@.str.281 = private unnamed_addr constant [10 x i8] c"monospace\00", align 1
@.str.282 = private unnamed_addr constant [10 x i8] c"system-ui\00", align 1
@.str.283 = private unnamed_addr constant [6 x i8] c"emoji\00", align 1
@.str.284 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@.str.285 = private unnamed_addr constant [9 x i8] c"fangsong\00", align 1
@.str.286 = private unnamed_addr constant [9 x i8] c"ui-serif\00", align 1
@.str.287 = private unnamed_addr constant [14 x i8] c"ui-sans-serif\00", align 1
@.str.288 = private unnamed_addr constant [13 x i8] c"ui-monospace\00", align 1
@.str.289 = private unnamed_addr constant [11 x i8] c"ui-rounded\00", align 1
@.str.290 = private unnamed_addr constant [9 x i8] c"xx-small\00", align 1
@.str.291 = private unnamed_addr constant [8 x i8] c"x-small\00", align 1
@.str.292 = private unnamed_addr constant [6 x i8] c"small\00", align 1
@.str.293 = private unnamed_addr constant [6 x i8] c"large\00", align 1
@.str.294 = private unnamed_addr constant [8 x i8] c"x-large\00", align 1
@.str.295 = private unnamed_addr constant [9 x i8] c"xx-large\00", align 1
@.str.296 = private unnamed_addr constant [10 x i8] c"xxx-large\00", align 1
@.str.297 = private unnamed_addr constant [7 x i8] c"larger\00", align 1
@.str.298 = private unnamed_addr constant [8 x i8] c"smaller\00", align 1
@.str.299 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.300 = private unnamed_addr constant [16 x i8] c"ultra-condensed\00", align 1
@.str.301 = private unnamed_addr constant [16 x i8] c"extra-condensed\00", align 1
@.str.302 = private unnamed_addr constant [10 x i8] c"condensed\00", align 1
@.str.303 = private unnamed_addr constant [15 x i8] c"semi-condensed\00", align 1
@.str.304 = private unnamed_addr constant [14 x i8] c"semi-expanded\00", align 1
@.str.305 = private unnamed_addr constant [9 x i8] c"expanded\00", align 1
@.str.306 = private unnamed_addr constant [15 x i8] c"extra-expanded\00", align 1
@.str.307 = private unnamed_addr constant [15 x i8] c"ultra-expanded\00", align 1
@.str.308 = private unnamed_addr constant [7 x i8] c"italic\00", align 1
@.str.309 = private unnamed_addr constant [8 x i8] c"oblique\00", align 1
@.str.310 = private unnamed_addr constant [5 x i8] c"bold\00", align 1
@.str.311 = private unnamed_addr constant [7 x i8] c"bolder\00", align 1
@.str.312 = private unnamed_addr constant [8 x i8] c"lighter\00", align 1
@.str.313 = private unnamed_addr constant [10 x i8] c"force-end\00", align 1
@.str.314 = private unnamed_addr constant [10 x i8] c"allow-end\00", align 1
@.str.315 = private unnamed_addr constant [12 x i8] c"min-content\00", align 1
@.str.316 = private unnamed_addr constant [12 x i8] c"max-content\00", align 1
@.str.317 = private unnamed_addr constant [7 x i8] c"_angle\00", align 1
@.str.318 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str.319 = private unnamed_addr constant [6 x i8] c"loose\00", align 1
@.str.320 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.321 = private unnamed_addr constant [9 x i8] c"anywhere\00", align 1
@.str.322 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.323 = private unnamed_addr constant [5 x i8] c"clip\00", align 1
@.str.324 = private unnamed_addr constant [7 x i8] c"scroll\00", align 1
@.str.325 = private unnamed_addr constant [11 x i8] c"break-word\00", align 1
@.str.326 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.327 = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@.str.328 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1
@.str.329 = private unnamed_addr constant [7 x i8] c"sticky\00", align 1
@.str.330 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.331 = private unnamed_addr constant [8 x i8] c"justify\00", align 1
@.str.332 = private unnamed_addr constant [13 x i8] c"match-parent\00", align 1
@.str.333 = private unnamed_addr constant [12 x i8] c"justify-all\00", align 1
@.str.334 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.335 = private unnamed_addr constant [7 x i8] c"digits\00", align 1
@.str.336 = private unnamed_addr constant [10 x i8] c"underline\00", align 1
@.str.337 = private unnamed_addr constant [9 x i8] c"overline\00", align 1
@.str.338 = private unnamed_addr constant [13 x i8] c"line-through\00", align 1
@.str.339 = private unnamed_addr constant [6 x i8] c"blink\00", align 1
@.str.340 = private unnamed_addr constant [5 x i8] c"wavy\00", align 1
@.str.341 = private unnamed_addr constant [10 x i8] c"each-line\00", align 1
@.str.342 = private unnamed_addr constant [11 x i8] c"inter-word\00", align 1
@.str.343 = private unnamed_addr constant [16 x i8] c"inter-character\00", align 1
@.str.344 = private unnamed_addr constant [6 x i8] c"mixed\00", align 1
@.str.345 = private unnamed_addr constant [8 x i8] c"upright\00", align 1
@.str.346 = private unnamed_addr constant [9 x i8] c"sideways\00", align 1
@.str.347 = private unnamed_addr constant [9 x i8] c"ellipsis\00", align 1
@.str.348 = private unnamed_addr constant [11 x i8] c"capitalize\00", align 1
@.str.349 = private unnamed_addr constant [10 x i8] c"uppercase\00", align 1
@.str.350 = private unnamed_addr constant [10 x i8] c"lowercase\00", align 1
@.str.351 = private unnamed_addr constant [11 x i8] c"full-width\00", align 1
@.str.352 = private unnamed_addr constant [15 x i8] c"full-size-kana\00", align 1
@.str.353 = private unnamed_addr constant [6 x i8] c"embed\00", align 1
@.str.354 = private unnamed_addr constant [8 x i8] c"isolate\00", align 1
@.str.355 = private unnamed_addr constant [14 x i8] c"bidi-override\00", align 1
@.str.356 = private unnamed_addr constant [17 x i8] c"isolate-override\00", align 1
@.str.357 = private unnamed_addr constant [10 x i8] c"plaintext\00", align 1
@.str.358 = private unnamed_addr constant [9 x i8] c"collapse\00", align 1
@.str.359 = private unnamed_addr constant [4 x i8] c"pre\00", align 1
@.str.360 = private unnamed_addr constant [9 x i8] c"pre-wrap\00", align 1
@.str.361 = private unnamed_addr constant [13 x i8] c"break-spaces\00", align 1
@.str.362 = private unnamed_addr constant [9 x i8] c"pre-line\00", align 1
@.str.363 = private unnamed_addr constant [9 x i8] c"keep-all\00", align 1
@.str.364 = private unnamed_addr constant [10 x i8] c"break-all\00", align 1
@.str.365 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.366 = private unnamed_addr constant [8 x i8] c"minimum\00", align 1
@.str.367 = private unnamed_addr constant [8 x i8] c"maximum\00", align 1
@.str.368 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.369 = private unnamed_addr constant [14 x i8] c"horizontal-tb\00", align 1
@.str.370 = private unnamed_addr constant [12 x i8] c"vertical-rl\00", align 1
@.str.371 = private unnamed_addr constant [12 x i8] c"vertical-lr\00", align 1
@.str.372 = private unnamed_addr constant [12 x i8] c"sideways-rl\00", align 1
@.str.373 = private unnamed_addr constant [12 x i8] c"sideways-lr\00", align 1
@.str.374 = private unnamed_addr constant [7 x i8] c"canvas\00", align 1
@.str.375 = private unnamed_addr constant [14 x i8] c"highlighttext\00", align 1
@.str.376 = private unnamed_addr constant [12 x i8] c"visitedtext\00", align 1
@.str.377 = private unnamed_addr constant [10 x i8] c"fieldtext\00", align 1
@.str.378 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.379 = private unnamed_addr constant [11 x i8] c"activetext\00", align 1
@.str.380 = private unnamed_addr constant [11 x i8] c"buttonface\00", align 1
@.str.381 = private unnamed_addr constant [16 x i8] c"accentcolortext\00", align 1
@.str.382 = private unnamed_addr constant [13 x i8] c"buttonborder\00", align 1
@.str.383 = private unnamed_addr constant [10 x i8] c"highlight\00", align 1
@.str.384 = private unnamed_addr constant [13 x i8] c"selecteditem\00", align 1
@.str.385 = private unnamed_addr constant [5 x i8] c"mark\00", align 1
@.str.386 = private unnamed_addr constant [9 x i8] c"graytext\00", align 1
@.str.387 = private unnamed_addr constant [9 x i8] c"linktext\00", align 1
@.str.388 = private unnamed_addr constant [9 x i8] c"marktext\00", align 1
@.str.389 = private unnamed_addr constant [11 x i8] c"buttontext\00", align 1
@.str.390 = private unnamed_addr constant [12 x i8] c"accentcolor\00", align 1
@.str.391 = private unnamed_addr constant [17 x i8] c"selecteditemtext\00", align 1
@.str.392 = private unnamed_addr constant [11 x i8] c"canvastext\00", align 1
@.str.393 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@lexbor_str_res_map_hex_to_char_lowercase = external constant [17 x i8], align 16
@lexbor_str_res_char_to_two_hex_value_lowercase = external local_unnamed_addr global [257 x ptr], align 16
@.str.394 = private unnamed_addr constant [5 x i8] c"rgb(\00", align 1
@.str.395 = private unnamed_addr constant [6 x i8] c"rgba(\00", align 1
@.str.396 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.397 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.398 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.399 = private unnamed_addr constant [4 x i8] c" / \00", align 1
@.str.400 = private unnamed_addr constant [5 x i8] c"hsl(\00", align 1
@.str.401 = private unnamed_addr constant [6 x i8] c"hsla(\00", align 1
@.str.402 = private unnamed_addr constant [5 x i8] c"hwb(\00", align 1
@.str.403 = private unnamed_addr constant [5 x i8] c"lab(\00", align 1
@.str.404 = private unnamed_addr constant [7 x i8] c"oklab(\00", align 1
@.str.405 = private unnamed_addr constant [5 x i8] c"lch(\00", align 1
@.str.406 = private unnamed_addr constant [7 x i8] c"oklch(\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @lxb_css_value_by_id(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %0, 373
  %i.b = getelementptr inbounds nuw [24 x i8], ptr @lxb_css_value_data, i64 %0
  %.0 = select i1 %i.a, ptr %i.b, ptr null
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_css_value_by_name(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @lexbor_shs_entry_get_lower_static(ptr noundef nonnull @lxb_css_value_shs, ptr noundef %0, i64 noundef %1) #4 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = trunc i64 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @lexbor_shs_entry_get_lower_static(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_css_value_serialize(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %0, 372
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [24 x i8], ptr @lxb_css_value_data, i64 %i.b ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = tail call i32 %1(ptr noundef %i.d, i64 noundef %i.f, ptr noundef %2) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 9, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_css_value_percentage_sr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = load double, ptr %0, align 8, !tbaa !21
  %i.c = call i64 @lexbor_conv_float_to_data(double noundef %i.b, ptr noundef nonnull %i.a, i64 noundef 128) #4
  %i.d = call i32 %1(ptr noundef nonnull %i.a, i64 noundef %i.c, ptr noundef %2) #4 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 %1(ptr noundef nonnull @.str, i64 noundef 1, ptr noundef %2) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.a ], [ %i.e, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0
}

declare i64 @lexbor_conv_float_to_data(double noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_css_value_length_sr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = load double, ptr %0, align 8, !tbaa !23
  %i.c = call i64 @lexbor_conv_float_to_data(double noundef %i.b, ptr noundef nonnull %i.a, i64 noundef 128) #4
  %i.d = call i32 %1(ptr noundef nonnull %i.a, i64 noundef %i.c, ptr noundef %2) #4 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !24   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call ptr @lxb_css_unit_by_id(i32 noundef %i.f) #4 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17
  %i.m = call i32 %1(ptr noundef %i.j, i64 noundef %i.l, ptr noundef %2) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.c ], [ %i.d, %bb.a ], [ 0, %bb.b ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0
}

declare ptr @lxb_css_unit_by_id(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_css_value_number_sr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = load double, ptr %0, align 8, !tbaa !21
  %i.c = call i64 @lexbor_conv_float_to_data(double noundef %i.b, ptr noundef nonnull %i.a, i64 noundef 128) #4
  %i.d = call i32 %1(ptr noundef nonnull %i.a, i64 noundef %i.c, ptr noundef %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_css_value_integer_sr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = load i64, ptr %0, align 8, !tbaa !26
  %i.c = call i64 @lexbor_conv_long_to_data(i64 noundef %i.b, ptr noundef nonnull %i.a, i64 noundef 128) #4
  %i.d = call i32 %1(ptr noundef nonnull %i.a, i64 noundef %i.c, ptr noundef %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %i.d
}

declare i64 @lexbor_conv_long_to_data(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_css_value_length_percentage_sr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !28     ; 4 uses
  switch i32 %i.c, label %bb.h [
    i32 20, label %bb.b
    i32 264, label %bb.b
    i32 21, label %bb.f
    i32 0, label %lxb_css_value_serialize.exit
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.e = load double, ptr %i.d, align 8, !tbaa !23
  %i.f = call i64 @lexbor_conv_float_to_data(double noundef %i.e, ptr noundef nonnull %i.b, i64 noundef 128) #4
  %i.g = call i32 %1(ptr noundef nonnull %i.b, i64 noundef %i.f, ptr noundef %2) #4, !inline_history !29 ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.c, label %lxb_css_value_length_sr.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %lxb_css_value_length_sr.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call ptr @lxb_css_unit_by_id(i32 noundef %i.i) #4 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %lxb_css_value_length_sr.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !17
  %i.p = call i32 %1(ptr noundef %i.m, i64 noundef %i.o, ptr noundef %2) #4, !inline_history !29
  br label %lxb_css_value_length_sr.exit

lxb_css_value_length_sr.exit:                     ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ 0, %bb.d ], [ %i.g, %bb.b ], [ 0, %bb.c ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %lxb_css_value_serialize.exit

bb.f:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@lxb_css_value_hue_sr:bb.a
  %i.e = load double, ptr %i.d, align 8, !tbaa !21
  %i.f = call i64 @lexbor_conv_float_to_data(double noundef %i.e, ptr noundef nonnull %i.b, i64 noundef 128) #4
  %i.g = call i32 %1(ptr noundef nonnull %i.b, i64 noundef %i.f, ptr noundef %2) #4, !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %lxb_css_value_serialize.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.i = load double, ptr %i.h, align 8, !tbaa !23
  %i.j = call i64 @lexbor_conv_float_to_data(double noundef %i.i, ptr noundef nonnull %i.a, i64 noundef 128) #4
  %i.k = call i32 %1(ptr noundef nonnull %i.a, i64 noundef %i.j, ptr noundef %2) #4, !inline_history !44 ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.d, label %lxb_css_value_angle_sr.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !24
  %i.n = call ptr @lxb_css_unit_by_id(i32 noundef %i.m) #4 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17
  %i.r = call i32 %1(ptr noundef %i.o, i64 noundef %i.q, ptr noundef %2) #4, !inline_history !44
  br label %lxb_css_value_angle_sr.exit

lxb_css_value_angle_sr.exit:                      ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.r, %bb.d ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %lxb_css_value_serialize.exit

bb.e:                                             ; preds = %bb.a
  %i.s = icmp ugt i32 %i.c, 372
  br i1 %i.s, label %lxb_css_value_serialize.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = zext nneg i32 %i.c to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr @lxb_css_value_data, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !17
  %i.y = tail call i32 %1(ptr noundef %i.v, i64 noundef %i.x, ptr noundef %2) #4, !inline_history !31
  br label %lxb_css_value_serialize.exit

lxb_css_value_serialize.exit:                     ; preds = %bb.f, %bb.e, %bb.a, %lxb_css_value_angle_sr.exit, %bb.b
  %.0 = phi i32 [ %i.c, %bb.a ], [ %i.g, %bb.b ], [ %.0.i, %lxb_css_value_angle_sr.exit ], [ %i.y, %bb.f ], [ 9, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_css_value_color_serialize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = alloca [128 x i8], align 16              ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 4 uses
  %i.e = alloca [128 x i8], align 16              ; 4 uses
  %i.f = alloca [128 x i8], align 16              ; 4 uses
  %i.g = alloca [128 x i8], align 16              ; 4 uses
  %i.h = alloca [128 x i8], align 16              ; 4 uses
  %i.i = alloca [128 x i8], align 16              ; 4 uses
  %i.j = alloca [128 x i8], align 16              ; 4 uses
  %i.k = alloca [128 x i8], align 16              ; 4 uses
  %i.l = alloca [128 x i8], align 16              ; 4 uses
  %i.m = alloca [128 x i8], align 16              ; 4 uses
  %i.n = load i32, ptr %0, align 8, !tbaa !28     ; 8 uses
  switch i32 %i.n, label %bb.cl [
    i32 51, label %bb.b
    i32 219, label %bb.o
    i32 220, label %bb.o
    i32 221, label %bb.ah
    i32 222, label %bb.ah
    i32 223, label %bb.ah
    i32 224, label %bb.ax
    i32 226, label %bb.ax
    i32 225, label %bb.br
    i32 227, label %bb.br
    i32 0, label %lxb_css_value_color_hex_sr.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = tail call i32 %1(ptr noundef nonnull @.str.393, i64 noundef 1, ptr noundef %2) #4, !inline_history !45 ; 2 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.c, label %lxb_css_value_color_hex_sr.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !63
  switch i32 %i.r, label %bb.n [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 2, label %bb.i
    i32 3, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.s = load i8, ptr %i.o, align 8, !tbaa !64
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @lexbor_str_res_map_hex_to_char_lowercase, i64 %i.t
  %i.v = tail call i32 %1(ptr noundef nonnull %i.u, i64 noundef 1, ptr noundef %2) #4, !inline_history !45 ; 2 uses
  %.not69.i = icmp eq i32 %i.v, 0
  br i1 %.not69.i, label %bb.e, label %lxb_css_value_color_hex_sr.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.x = load i8, ptr %i.w, align 1, !tbaa !65
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @lexbor_str_res_map_hex_to_char_lowercase, i64 %i.y
  %i.aa = tail call i32 %1(ptr noundef nonnull %i.z, i64 noundef 1, ptr noundef %2) #4, !inline_history !45 ; 2 uses
  %.not70.i = icmp eq i32 %i.aa, 0
  br i1 %.not70.i, label %bb.f, label %lxb_css_value_color_hex_sr.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !66
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @lexbor_str_res_map_hex_to_char_lowercase, i64 %i.ad
  %i.af = tail call i32 %1(ptr noundef nonnull %i.ae, i64 noundef 1, ptr noundef %2) #4, !inline_history !45 ; 2 uses
  %.not71.i = icmp eq i32 %i.af, 0
  br i1 %.not71.i, label %bb.g, label %lxb_css_value_color_hex_sr.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = load i32, ptr %i.q, align 4, !tbaa !63
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !67
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @lexbor_str_res_map_hex_to_char_lowercase, i64 %i.ak
  %i.am = tail call i32 %1(ptr noundef nonnull %i.al, i64 noundef 1, ptr noundef %2) #4, !inline_history !45 ; 2 uses
  %.not72.i = icmp eq i32 %i.am, 0
  br i1 %.not72.i, label %bb.n, label %lxb_css_value_color_hex_sr.exit

bb.i:                                             ; preds = %bb.c, %bb.c
  %i.an = load i8, ptr %i.o, align 8, !tbaa !64
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @lexbor_str_res_char_to_two_hex_value_lowercase, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !68
  %i.ar = tail call i32 %1(ptr noundef %i.aq, i64 noundef 2, ptr noundef %2) #4, !inline_history !45 ; 2 uses
  %.not65.i = icmp eq i32 %i.ar, 0
  br i1 %.not65.i, label %bb.j, label %lxb_css_value_color_hex_sr.exit

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.at = load i8, ptr %i.as, align 1, !tbaa !65
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr @lexbor_str_res_char_to_two_hex_value_lowercase, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !68
  %i.ax = tail call i32 %1(ptr noundef %i.aw, i64 noundef 2, ptr noundef %2) #4, !inline_history !45 ; 2 uses
  %.not66.i = icmp eq i32 %i.ax, 0
  br i1 %.not66.i, label %bb.k, label %lxb_css_value_color_hex_sr.exit

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !66
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @lexbor_str_res_char_to_two_hex_value_lowercase, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !68
  %i.bd = tail call i32 %1(ptr noundef %i.bc, i64 noundef 2, ptr noundef %2) #4, !inline_history !45 ; 2 uses
  %.not67.i = icmp eq i32 %i.bd, 0
  br i1 %.not67.i, label %bb.l, label %lxb_css_value_color_hex_sr.exit

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.q, align 4, !tbaa !63
  %i.bf = icmp eq i32 %i.be, 3
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !67
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @lexbor_str_res_char_to_two_hex_value_lowercase, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !68
  %i.bl = tail call i32 %1(ptr noundef %i.bk, i64 noundef 2, ptr noundef %2) #4, !inline_history !45 ; 2 uses
  %.not68.i = icmp eq i32 %i.bl, 0
  br i1 %.not68.i, label %bb.n, label %lxb_css_value_color_hex_sr.exit

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.h, %bb.g, %bb.c
  br label %lxb_css_value_color_hex_sr.exit

bb.o:                                             ; preds = %bb.a, %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = icmp eq i32 %i.n, 219
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bo = tail call i32 %1(ptr noundef nonnull @.str.394, i64 noundef 4, ptr noundef %2) #4, !inline_history !46 ; 2 uses
  %.not63.i = icmp eq i32 %i.bo, 0
  br i1 %.not63.i, label %bb.r, label %lxb_css_value_color_hex_sr.exit

bb.q:                                             ; preds = %bb.o
  %i.bp = tail call i32 %1(ptr noundef nonnull @.str.395, i64 noundef 5, ptr noundef %2) #4, !inline_history !46 ; 2 uses
  %.not.i23 = icmp eq i32 %i.bp, 0
  br i1 %.not.i23, label %bb.r, label %lxb_css_value_color_hex_sr.exit

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !70, !range !71, !noundef !72
  %i.bs = trunc nuw i8 %i.br to i1                ; 2 uses
  %i.bt = load i32, ptr %i.bm, align 8, !tbaa !28 ; 3 uses
  switch i32 %i.bt, label %bb.v [
    i32 264, label %bb.s
    i32 21, label %bb.t
    i32 0, label %lxb_css_value_number_percentage_sr.exit.thread.i
  ]

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #4
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !21
  %i.bw = call i64 @lexbor_conv_float_to_data(double noundef %i.bv, ptr noundef nonnull %i.m, i64 noundef 128) #4
  %i.bx = call i32 %1(ptr noundef nonnull %i.m, i64 noundef %i.bw, ptr noundef %2) #4, !inline_history !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #4
  br label %lxb_css_value_number_percentage_sr.exit.i

bb.t:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #4
  %i.bz = load double, ptr %i.by, align 8, !tbaa !21
  %i.ca = call i64 @lexbor_conv_float_to_data(double noundef %i.bz, ptr noundef nonnull %i.l, i64 noundef 128) #4
  %i.cb = call i32 %1(ptr noundef nonnull %i.l, i64 noundef %i.ca, ptr noundef %2) #4, !inline_history !48 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i, label %bb.u, label %lxb_css_value_percentage_sr.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.cc = call i32 %1(ptr noundef nonnull @.str, i64 noundef 1, ptr noundef %2) #4, !inline_history !48
  br label %lxb_css_value_percentage_sr.exit.i.i

lxb_css_value_percentage_sr.exit.i.i:             ; preds = %bb.u, %bb.t
  %.0.i.i.i = phi i32 [ %i.cb, %bb.t ], [ %i.cc, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  br label %lxb_css_value_number_percentage_sr.exit.i

bb.v:                                             ; preds = %bb.r
  %i.cd = icmp ugt i32 %i.bt, 372
  br i1 %i.cd, label %lxb_css_value_color_hex_sr.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = zext nneg i32 %i.bt to i64
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr @lxb_css_value_data, i64 %i.ce ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !17
  %i.cj = tail call i32 %1(ptr noundef %i.cg, i64 noundef %i.ci, ptr noundef %2) #4, !inline_history !49
  br label %lxb_css_value_number_percentage_sr.exit.i

lxb_css_value_number_percentage_sr.exit.i:        ; preds = %bb.w, %lxb_css_value_percentage_sr.exit.i.i, %bb.s
  %.0.i.i = phi i32 [ %i.cj, %bb.w ], [ %i.bx, %bb.s ], [ %.0.i.i.i, %lxb_css_value_percentage_sr.exit.i.i ] ; 2 uses
  %.not64.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not64.i, label %lxb_css_value_number_percentage_sr.exit.thread.i, label %lxb_css_value_color_hex_sr.exit

lxb_css_value_number_percentage_sr.exit.thread.i: ; preds = %lxb_css_value_number_percentage_sr.exit.i, %bb.r
  %3 = select i1 %i.bs, ptr @.str.396, ptr @.str.397 ; 2 uses
  %4 = select i1 %i.bs, i64 2, i64 1              ; 2 uses
  %i.ck = call i32 %1(ptr noundef nonnull %3, i64 noundef %4, ptr noundef %2) #4, !inline_history !46 ; 2 uses
  %.not65.i25 = icmp eq i32 %i.ck, 0
  br i1 %.not65.i25, label %bb.x, label %lxb_css_value_color_hex_sr.exit

bb.x:                                             ; preds = %lxb_css_value_number_percentage_sr.exit.thread.i
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !28 ; 3 uses
  switch i32 %i.cm, label %bb.ab [
    i32 264, label %bb.y
    i32 21, label %bb.z
    i32 0, label %lxb_css_value_number_percentage_sr.exit76.thread.i
  ]

bb.y:                                             ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  %i.co = load double, ptr %i.cn, align 8, !tbaa !21
  %i.cp = call i64 @lexbor_conv_float_to_data(double noundef %i.co, ptr noundef nonnull %i.k, i64 noundef 128) #4
  %i.cq = call i32 %1(ptr noundef nonnull %i.k, i64 noundef %i.cp, ptr noundef %2) #4, !inline_history !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  br label %lxb_css_value_number_percentage_sr.exit76.i

bb.z:                                             ; preds = %bb.x
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !21
  %i.ct = call i64 @lexbor_conv_float_to_data(double noundef %i.cs, ptr noundef nonnull %i.j, i64 noundef 128) #4
  %i.cu = call i32 %1(ptr noundef nonnull %i.j, i64 noundef %i.ct, ptr noundef %2) #4, !inline_history !48 ; 2 uses
  %.not.i.i73.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i73.i, label %bb.aa, label %lxb_css_value_percentage_sr.exit.i74.i

bb.aa:                                            ; preds = %bb.z
  %i.cv = call i32 %1(ptr noundef nonnull @.str, i64 noundef 1, ptr noundef %2) #4, !inline_history !48
  br label %lxb_css_value_percentage_sr.exit.i74.i

lxb_css_value_percentage_sr.exit.i74.i:           ; preds = %bb.aa, %bb.z
  %.0.i.i75.i = phi i32 [ %i.cu, %bb.z ], [ %i.cv, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  br label %lxb_css_value_number_percentage_sr.exit76.i

bb.ab:                                            ; preds = %bb.x
  %i.cw = icmp ugt i32 %i.cm, 372
  br i1 %i.cw, label %lxb_css_value_color_hex_sr.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cx = zext nneg i32 %i.cm to i64
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr @lxb_css_value_data, i64 %i.cx ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !17
  %i.dc = call i32 %1(ptr noundef %i.cz, i64 noundef %i.db, ptr noundef %2) #4, !inline_history !49
  br label %lxb_css_value_number_percentage_sr.exit76.i

lxb_css_value_number_percentage_sr.exit76.i:      ; preds = %bb.ac, %lxb_css_value_percentage_sr.exit.i74.i, %bb.y
  %.0.i72.i = phi i32 [ %i.dc, %bb.ac ], [ %i.cq, %bb.y ], [ %.0.i.i75.i, %lxb_css_value_percentage_sr.exit.i74.i ] ; 2 uses
  %.not66.i30 = icmp eq i32 %.0.i72.i, 0
  br i1 %.not66.i30, label %lxb_css_value_number_percentage_sr.exit76.thread.i, label %lxb_css_value_color_hex_sr.exit

lxb_css_value_number_percentage_sr.exit76.thread.i: ; preds = %lxb_css_value_number_percentage_sr.exit76.i, %bb.x
  %i.dd = call i32 %1(ptr noundef nonnull %3, i64 noundef %4, ptr noundef %2) #4, !inline_history !46 ; 2 uses
  %.not67.i26 = icmp eq i32 %i.dd, 0
  br i1 %.not67.i26, label %bb.ad, label %lxb_css_value_color_hex_sr.exit

bb.ad:                                            ; preds = %lxb_css_value_number_percentage_sr.exit76.thread.i
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.df = call i32 @lxb_css_value_number_percentage_sr(ptr noundef nonnull readonly %i.de, ptr noundef readonly %1, ptr noundef %2) ; 2 uses
  %.not68.i27 = icmp eq i32 %i.df, 0
  br i1 %.not68.i27, label %bb.ae, label %lxb_css_value_color_hex_sr.exit

bb.ae:                                            ; preds = %bb.ad
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !73
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %lxb_css_value_number_percentage_sr.exit.thread79.sink.split.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dj = load i8, ptr %i.bq, align 8, !tbaa !70, !range !71, !noundef !72
  %i.dk = trunc nuw i8 %i.dj to i1                ; 2 uses
  %i.dl = select i1 %i.dk, ptr @.str.396, ptr @.str.399
  %5 = select i1 %i.dk, i64 2, i64 3
  %i.dm = call i32 %1(ptr noundef nonnull %i.dl, i64 noundef %5, ptr noundef %2) #4, !inline_history !46 ; 2 uses
  %.not70.i28 = icmp eq i32 %i.dm, 0
  br i1 %.not70.i28, label %bb.ag, label %lxb_css_value_color_hex_sr.exit

bb.ag:                                            ; preds = %bb.af
  %i.dn = call i32 @lxb_css_value_number_percentage_sr(ptr noundef nonnull readonly %i.dg, ptr noundef readonly %1, ptr noundef %2) ; 2 uses
  %.not71.i29 = icmp eq i32 %i.dn, 0
  br i1 %.not71.i29, label %lxb_css_value_number_percentage_sr.exit.thread79.sink.split.i, label %lxb_css_value_color_hex_sr.exit

lxb_css_value_number_percentage_sr.exit.thread79.sink.split.i: ; preds = %bb.ag, %bb.ae
  %i.do = call i32 %1(ptr noundef nonnull @.str.398, i64 noundef 1, ptr noundef %2) #4, !inline_history !46
  br label %lxb_css_value_color_hex_sr.exit

bb.ah:                                            ; preds = %bb.a, %bb.a, %bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  switch i32 %i.n, label %default.unreachable [
    i32 221, label %bb.ai
    i32 222, label %bb.aj
    i32 223, label %bb.ak
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.dq = tail call i32 %1(ptr noundef nonnull @.str.400, i64 noundef 4, ptr noundef %2) #4, !inline_history !50
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.dr = tail call i32 %1(ptr noundef nonnull @.str.401, i64 noundef 5, ptr noundef %2) #4, !inline_history !50
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  %i.ds = tail call i32 %1(ptr noundef nonnull @.str.402, i64 noundef 4, ptr noundef %2) #4, !inline_history !50
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.0.i31 = phi i32 [ %i.dq, %bb.ai ], [ %i.dr, %bb.aj ], [ %i.ds, %bb.ak ] ; 2 uses
  %.not.i32 = icmp eq i32 %.0.i31, 0
  br i1 %.not.i32, label %bb.am, label %lxb_css_value_color_hex_sr.exit

bb.am:                                            ; preds = %bb.al
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 8, !tbaa !75, !range !71, !noundef !72
  %i.dv = tail call i32 @lxb_css_value_hue_sr(ptr noundef nonnull readonly %i.dp, ptr noundef readonly %1, ptr noundef %2) ; 2 uses
  %.not62.i = icmp eq i32 %i.dv, 0
  br i1 %.not62.i, label %bb.an, label %lxb_css_value_color_hex_sr.exit

bb.an:                                            ; preds = %bb.am
  %i.dw = trunc nuw i8 %i.du to i1                ; 2 uses
  %i.dx = select i1 %i.dw, ptr @.str.396, ptr @.str.397 ; 2 uses
  %6 = select i1 %i.dw, i64 2, i64 1              ; 2 uses
  %i.dy = tail call i32 %1(ptr noundef nonnull %i.dx, i64 noundef %6, ptr noundef %2) #4, !inline_history !50 ; 2 uses
  %.not63.i33 = icmp eq i32 %i.dy, 0
  br i1 %.not63.i33, label %bb.ao, label %lxb_css_value_color_hex_sr.exit

bb.ao:                                            ; preds = %bb.an
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !34 ; 3 uses
  switch i32 %i.ea, label %bb.ar [
    i32 21, label %bb.ap
    i32 0, label %lxb_css_value_percentage_type_sr.exit.thread.i
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !21
  %i.ed = call i64 @lexbor_conv_float_to_data(double noundef %i.ec, ptr noundef nonnull %i.i, i64 noundef 128) #4
  %i.ee = call i32 %1(ptr noundef nonnull %i.i, i64 noundef %i.ed, ptr noundef %2) #4, !inline_history !51 ; 2 uses
  %.not.i.i.i38 = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.i38, label %bb.aq, label %lxb_css_value_percentage_sr.exit.i.i39

bb.aq:                                            ; preds = %bb.ap
  %i.ef = call i32 %1(ptr noundef nonnull @.str, i64 noundef 1, ptr noundef %2) #4, !inline_history !51
  br label %lxb_css_value_percentage_sr.exit.i.i39

lxb_css_value_percentage_sr.exit.i.i39:           ; preds = %bb.aq, %bb.ap
  %.0.i.i.i40 = phi i32 [ %i.ee, %bb.ap ], [ %i.ef, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  br label %lxb_css_value_percentage_type_sr.exit.i

bb.ar:                                            ; preds = %bb.ao
  %i.eg = icmp ugt i32 %i.ea, 372
  br i1 %i.eg, label %lxb_css_value_color_hex_sr.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eh = zext nneg i32 %i.ea to i64
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr @lxb_css_value_data, i64 %i.eh ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !17
  %i.em = tail call i32 %1(ptr noundef %i.ej, i64 noundef %i.el, ptr noundef %2) #4, !inline_history !52
  br label %lxb_css_value_percentage_type_sr.exit.i

lxb_css_value_percentage_type_sr.exit.i:          ; preds = %bb.as, %lxb_css_value_percentage_sr.exit.i.i39
  %.0.i.i41 = phi i32 [ %i.em, %bb.as ], [ %.0.i.i.i40, %lxb_css_value_percentage_sr.exit.i.i39 ] ; 2 uses
  %.not64.i42 = icmp eq i32 %.0.i.i41, 0
  br i1 %.not64.i42, label %lxb_css_value_percentage_type_sr.exit.thread.i, label %lxb_css_value_color_hex_sr.exit

lxb_css_value_percentage_type_sr.exit.thread.i:   ; preds = %lxb_css_value_percentage_type_sr.exit.i, %bb.ao
  %i.en = call i32 %1(ptr noundef nonnull %i.dx, i64 noundef %6, ptr noundef %2) #4, !inline_history !50 ; 2 uses
  %.not65.i34 = icmp eq i32 %i.en, 0
  br i1 %.not65.i34, label %bb.at, label %lxb_css_value_color_hex_sr.exit

bb.at:                                            ; preds = %lxb_css_value_percentage_type_sr.exit.thread.i
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ep = call i32 @lxb_css_value_percentage_type_sr(ptr noundef nonnull readonly %i.eo, ptr noundef readonly %1, ptr noundef %2) ; 2 uses
  %.not66.i35 = icmp eq i32 %i.ep, 0
  br i1 %.not66.i35, label %bb.au, label %lxb_css_value_color_hex_sr.exit

bb.au:                                            ; preds = %bb.at
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !76
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %lxb_css_value_percentage_type_sr.exit.thread72.sink.split.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.et = load i8, ptr %i.dt, align 8, !tbaa !75, !range !71, !noundef !72
  %i.eu = trunc nuw i8 %i.et to i1                ; 2 uses
  %i.ev = select i1 %i.eu, ptr @.str.396, ptr @.str.399
  %7 = select i1 %i.eu, i64 2, i64 3
  %i.ew = call i32 %1(ptr noundef nonnull %i.ev, i64 noundef %7, ptr noundef %2) #4, !inline_history !50 ; 2 uses
  %.not68.i36 = icmp eq i32 %i.ew, 0
  br i1 %.not68.i36, label %bb.aw, label %lxb_css_value_color_hex_sr.exit

bb.aw:                                            ; preds = %bb.av
  %i.ex = call i32 @lxb_css_value_number_percentage_sr(ptr noundef nonnull readonly %i.eq, ptr noundef readonly %1, ptr noundef %2) ; 2 uses
  %.not69.i37 = icmp eq i32 %i.ex, 0
  br i1 %.not69.i37, label %lxb_css_value_percentage_type_sr.exit.thread72.sink.split.i, label %lxb_css_value_color_hex_sr.exit

lxb_css_value_percentage_type_sr.exit.thread72.sink.split.i: ; preds = %bb.aw, %bb.au
  %i.ey = call i32 %1(ptr noundef nonnull @.str.398, i64 noundef 1, ptr noundef %2) #4, !inline_history !50
  br label %lxb_css_value_color_hex_sr.exit

bb.ax:                                            ; preds = %bb.a, %bb.a
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  switch i32 %i.n, label %lxb_css_value_color_hex_sr.exit [
    i32 224, label %bb.ay
    i32 226, label %bb.az
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.fa = tail call i32 %1(ptr noundef nonnull @.str.403, i64 noundef 4, ptr noundef %2) #4, !inline_history !53
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.fb = tail call i32 %1(ptr noundef nonnull @.str.404, i64 noundef 6, ptr noundef %2) #4, !inline_history !53
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0.i43 = phi i32 [ %i.fa, %bb.ay ], [ %i.fb, %bb.az ] ; 2 uses
  %.not.i44 = icmp eq i32 %.0.i43, 0
  br i1 %.not.i44, label %bb.bb, label %lxb_css_value_color_hex_sr.exit

bb.bb:                                            ; preds = %bb.ba
  %i.fc = load i32, ptr %i.ez, align 8, !tbaa !28 ; 3 uses
  switch i32 %i.fc, label %bb.bf [
    i32 264, label %bb.bc
    i32 21, label %bb.bd
    i32 0, label %lxb_css_value_number_percentage_sr.exit.thread.i45
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !21
  %i.ff = call i64 @lexbor_conv_float_to_data(double noundef %i.fe, ptr noundef nonnull %i.h, i64 noundef 128) #4
  %i.fg = call i32 %1(ptr noundef nonnull %i.h, i64 noundef %i.ff, ptr noundef %2) #4, !inline_history !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  br label %lxb_css_value_number_percentage_sr.exit.i49

bb.bd:                                            ; preds = %bb.bb
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !21
  %i.fj = call i64 @lexbor_conv_float_to_data(double noundef %i.fi, ptr noundef nonnull %i.g, i64 noundef 128) #4
  %i.fk = call i32 %1(ptr noundef nonnull %i.g, i64 noundef %i.fj, ptr noundef %2) #4, !inline_history !55 ; 2 uses
  %.not.i.i.i46 = icmp eq i32 %i.fk, 0
  br i1 %.not.i.i.i46, label %bb.be, label %lxb_css_value_percentage_sr.exit.i.i47

bb.be:                                            ; preds = %bb.bd
  %i.fl = call i32 %1(ptr noundef nonnull @.str, i64 noundef 1, ptr noundef %2) #4, !inline_history !55
  br label %lxb_css_value_percentage_sr.exit.i.i47

lxb_css_value_percentage_sr.exit.i.i47:           ; preds = %bb.be, %bb.bd
  %.0.i.i.i48 = phi i32 [ %i.fk, %bb.bd ], [ %i.fl, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  br label %lxb_css_value_number_percentage_sr.exit.i49

bb.bf:                                            ; preds = %bb.bb
  %i.fm = icmp ugt i32 %i.fc, 372
  br i1 %i.fm, label %lxb_css_value_color_hex_sr.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fn = zext nneg i32 %i.fc to i64
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr @lxb_css_value_data, i64 %i.fn ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !17
  %i.fs = tail call i32 %1(ptr noundef %i.fp, i64 noundef %i.fr, ptr noundef %2) #4, !inline_history !56
  br label %lxb_css_value_number_percentage_sr.exit.i49

lxb_css_value_number_percentage_sr.exit.i49:      ; preds = %bb.bg, %lxb_css_value_percentage_sr.exit.i.i47, %bb.bc
  %.0.i.i50 = phi i32 [ %i.fs, %bb.bg ], [ %i.fg, %bb.bc ], [ %.0.i.i.i48, %lxb_css_value_percentage_sr.exit.i.i47 ] ; 2 uses
  %.not52.i = icmp eq i32 %.0.i.i50, 0
  br i1 %.not52.i, label %lxb_css_value_number_percentage_sr.exit.thread.i45, label %lxb_css_value_color_hex_sr.exit

lxb_css_value_number_percentage_sr.exit.thread.i45: ; preds = %lxb_css_value_number_percentage_sr.exit.i49, %bb.bb
  %i.ft = call i32 %1(ptr noundef nonnull @.str.397, i64 noundef 1, ptr noundef %2) #4, !inline_history !53 ; 2 uses
  %.not53.i = icmp eq i32 %i.ft, 0
  br i1 %.not53.i, label %bb.bh, label %lxb_css_value_color_hex_sr.exit

bb.bh:                                            ; preds = %lxb_css_value_number_percentage_sr.exit.thread.i45
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !28 ; 3 uses
  switch i32 %i.fv, label %bb.bl [
    i32 264, label %bb.bi
    i32 21, label %bb.bj
    i32 0, label %lxb_css_value_number_percentage_sr.exit63.thread.i
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !21
  %i.fy = call i64 @lexbor_conv_float_to_data(double noundef %i.fx, ptr noundef nonnull %i.f, i64 noundef 128) #4
  %i.fz = call i32 %1(ptr noundef nonnull %i.f, i64 noundef %i.fy, ptr noundef %2) #4, !inline_history !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  br label %lxb_css_value_number_percentage_sr.exit63.i

bb.bj:                                            ; preds = %bb.bh
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !21
  %i.gc = call i64 @lexbor_conv_float_to_data(double noundef %i.gb, ptr noundef nonnull %i.e, i64 noundef 128) #4
  %i.gd = call i32 %1(ptr noundef nonnull %i.e, i64 noundef %i.gc, ptr noundef %2) #4, !inline_history !55 ; 2 uses
  %.not.i.i60.i = icmp eq i32 %i.gd, 0
  br i1 %.not.i.i60.i, label %bb.bk, label %lxb_css_value_percentage_sr.exit.i61.i

bb.bk:                                            ; preds = %bb.bj
  %i.ge = call i32 %1(ptr noundef nonnull @.str, i64 noundef 1, ptr noundef %2) #4, !inline_history !55
  br label %lxb_css_value_percentage_sr.exit.i61.i

lxb_css_value_percentage_sr.exit.i61.i:           ; preds = %bb.bk, %bb.bj
  %.0.i.i62.i = phi i32 [ %i.gd, %bb.bj ], [ %i.ge, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  br label %lxb_css_value_number_percentage_sr.exit63.i

bb.bl:                                            ; preds = %bb.bh
  %i.gf = icmp ugt i32 %i.fv, 372
  br i1 %i.gf, label %lxb_css_value_color_hex_sr.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gg = zext nneg i32 %i.fv to i64
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr @lxb_css_value_data, i64 %i.gg ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !17
  %i.gl = call i32 %1(ptr noundef %i.gi, i64 noundef %i.gk, ptr noundef %2) #4, !inline_history !56
  br label %lxb_css_value_number_percentage_sr.exit63.i

lxb_css_value_number_percentage_sr.exit63.i:      ; preds = %bb.bm, %lxb_css_value_percentage_sr.exit.i61.i, %bb.bi
  %.0.i59.i = phi i32 [ %i.gl, %bb.bm ], [ %i.fz, %bb.bi ], [ %.0.i.i62.i, %lxb_css_value_percentage_sr.exit.i61.i ] ; 2 uses
  %.not54.i = icmp eq i32 %.0.i59.i, 0
  br i1 %.not54.i, label %lxb_css_value_number_percentage_sr.exit63.thread.i, label %lxb_css_value_color_hex_sr.exit

lxb_css_value_number_percentage_sr.exit63.thread.i: ; preds = %lxb_css_value_number_percentage_sr.exit63.i, %bb.bh
  %i.gm = call i32 %1(ptr noundef nonnull @.str.397, i64 noundef 1, ptr noundef %2) #4, !inline_history !53 ; 2 uses
  %.not55.i = icmp eq i32 %i.gm, 0
  br i1 %.not55.i, label %bb.bn, label %lxb_css_value_color_hex_sr.exit

bb.bn:                                            ; preds = %lxb_css_value_number_percentage_sr.exit63.thread.i
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.go = call i32 @lxb_css_value_number_percentage_sr(ptr noundef nonnull readonly %i.gn, ptr noundef readonly %1, ptr noundef %2) ; 2 uses
  %.not56.i = icmp eq i32 %i.go, 0
  br i1 %.not56.i, label %bb.bo, label %lxb_css_value_color_hex_sr.exit

bb.bo:                                            ; preds = %bb.bn
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !78
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %lxb_css_value_number_percentage_sr.exit.thread66.sink.split.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gs = call i32 %1(ptr noundef nonnull @.str.399, i64 noundef 3, ptr noundef %2) #4, !inline_history !53 ; 2 uses
  %.not57.i = icmp eq i32 %i.gs, 0
  br i1 %.not57.i, label %bb.bq, label %lxb_css_value_color_hex_sr.exit

bb.bq:                                            ; preds = %bb.bp
  %i.gt = call i32 @lxb_css_value_number_percentage_sr(ptr noundef nonnull readonly %i.gp, ptr noundef readonly %1, ptr noundef %2) ; 2 uses
  %.not58.i = icmp eq i32 %i.gt, 0
  br i1 %.not58.i, label %lxb_css_value_number_percentage_sr.exit.thread66.sink.split.i, label %lxb_css_value_color_hex_sr.exit

lxb_css_value_number_percentage_sr.exit.thread66.sink.split.i: ; preds = %bb.bq, %bb.bo
  %i.gu = call i32 %1(ptr noundef nonnull @.str.398, i64 noundef 1, ptr noundef %2) #4, !inline_history !53
  br label %lxb_css_value_color_hex_sr.exit

bb.br:                                            ; preds = %bb.a, %bb.a
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8
  switch i32 %i.n, label %lxb_css_value_color_hex_sr.exit [
    i32 225, label %bb.bs
    i32 227, label %bb.bt
  ]

bb.bs:                                            ; preds = %bb.br
  %i.gw = tail call i32 %1(ptr noundef nonnull @.str.405, i64 noundef 4, ptr noundef %2) #4, !inline_history !57
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.gx = tail call i32 %1(ptr noundef nonnull @.str.406, i64 noundef 6, ptr noundef %2) #4, !inline_history !57
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.0.i51 = phi i32 [ %i.gw, %bb.bs ], [ %i.gx, %bb.bt ] ; 2 uses
  %.not.i52 = icmp eq i32 %.0.i51, 0
  br i1 %.not.i52, label %bb.bv, label %lxb_css_value_color_hex_sr.exit

bb.bv:                                            ; preds = %bb.bu
  %i.gy = load i32, ptr %i.gv, align 8, !tbaa !28 ; 3 uses
  switch i32 %i.gy, label %bb.bz [
    i32 264, label %bb.bw
    i32 21, label %bb.bx
    i32 0, label %lxb_css_value_number_percentage_sr.exit.thread.i54
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !21
  %i.hb = call i64 @lexbor_conv_float_to_data(double noundef %i.ha, ptr noundef nonnull %i.d, i64 noundef 128) #4
  %i.hc = call i32 %1(ptr noundef nonnull %i.d, i64 noundef %i.hb, ptr noundef %2) #4, !inline_history !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %lxb_css_value_number_percentage_sr.exit.i71

bb.bx:                                            ; preds = %bb.bv
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.he = load double, ptr %i.hd, align 8, !tbaa !21
  %i.hf = call i64 @lexbor_conv_float_to_data(double noundef %i.he, ptr noundef nonnull %i.c, i64 noundef 128) #4
  %i.hg = call i32 %1(ptr noundef nonnull %i.c, i64 noundef %i.hf, ptr noundef %2) #4, !inline_history !59 ; 2 uses
  %.not.i.i.i68 = icmp eq i32 %i.hg, 0
  br i1 %.not.i.i.i68, label %bb.by, label %lxb_css_value_percentage_sr.exit.i.i69

bb.by:                                            ; preds = %bb.bx
  %i.hh = call i32 %1(ptr noundef nonnull @.str, i64 noundef 1, ptr noundef %2) #4, !inline_history !59
  br label %lxb_css_value_percentage_sr.exit.i.i69

lxb_css_value_percentage_sr.exit.i.i69:           ; preds = %bb.by, %bb.bx
  %.0.i.i.i70 = phi i32 [ %i.hg, %bb.bx ], [ %i.hh, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br label %lxb_css_value_number_percentage_sr.exit.i71

bb.bz:                                            ; preds = %bb.bv
  %i.hi = icmp ugt i32 %i.gy, 372
  br i1 %i.hi, label %lxb_css_value_color_hex_sr.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hj = zext nneg i32 %i.gy to i64
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr @lxb_css_value_data, i64 %i.hj ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !17
  %i.ho = tail call i32 %1(ptr noundef %i.hl, i64 noundef %i.hn, ptr noundef %2) #4, !inline_history !60
  br label %lxb_css_value_number_percentage_sr.exit.i71

lxb_css_value_number_percentage_sr.exit.i71:      ; preds = %bb.ca, %lxb_css_value_percentage_sr.exit.i.i69, %bb.bw
  %.0.i.i72 = phi i32 [ %i.ho, %bb.ca ], [ %i.hc, %bb.bw ], [ %.0.i.i.i70, %lxb_css_value_percentage_sr.exit.i.i69 ] ; 2 uses
  %.not52.i73 = icmp eq i32 %.0.i.i72, 0
  br i1 %.not52.i73, label %lxb_css_value_number_percentage_sr.exit.thread.i54, label %lxb_css_value_color_hex_sr.exit

lxb_css_value_number_percentage_sr.exit.thread.i54: ; preds = %lxb_css_value_number_percentage_sr.exit.i71, %bb.bv
  %i.hp = call i32 %1(ptr noundef nonnull @.str.397, i64 noundef 1, ptr noundef %2) #4, !inline_history !57 ; 2 uses
  %.not53.i55 = icmp eq i32 %i.hp, 0
  br i1 %.not53.i55, label %bb.cb, label %lxb_css_value_color_hex_sr.exit

bb.cb:                                            ; preds = %lxb_css_value_number_percentage_sr.exit.thread.i54
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !28 ; 3 uses
  switch i32 %i.hr, label %bb.cf [
    i32 264, label %bb.cc
    i32 21, label %bb.cd
    i32 0, label %lxb_css_value_number_percentage_sr.exit63.thread.i56
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !21
  %i.hu = call i64 @lexbor_conv_float_to_data(double noundef %i.ht, ptr noundef nonnull %i.b, i64 noundef 128) #4
  %i.hv = call i32 %1(ptr noundef nonnull %i.b, i64 noundef %i.hu, ptr noundef %2) #4, !inline_history !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %lxb_css_value_number_percentage_sr.exit63.i65

bb.cd:                                            ; preds = %bb.cb
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !21
  %i.hy = call i64 @lexbor_conv_float_to_data(double noundef %i.hx, ptr noundef nonnull %i.a, i64 noundef 128) #4
  %i.hz = call i32 %1(ptr noundef nonnull %i.a, i64 noundef %i.hy, ptr noundef %2) #4, !inline_history !59 ; 2 uses
  %.not.i.i60.i62 = icmp eq i32 %i.hz, 0
  br i1 %.not.i.i60.i62, label %bb.ce, label %lxb_css_value_percentage_sr.exit.i61.i63

bb.ce:                                            ; preds = %bb.cd
  %i.ia = call i32 %1(ptr noundef nonnull @.str, i64 noundef 1, ptr noundef %2) #4, !inline_history !59
  br label %lxb_css_value_percentage_sr.exit.i61.i63

lxb_css_value_percentage_sr.exit.i61.i63:         ; preds = %bb.ce, %bb.cd
  %.0.i.i62.i64 = phi i32 [ %i.hz, %bb.cd ], [ %i.ia, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %lxb_css_value_number_percentage_sr.exit63.i65

bb.cf:                                            ; preds = %bb.cb
  %i.ib = icmp ugt i32 %i.hr, 372
  br i1 %i.ib, label %lxb_css_value_color_hex_sr.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ic = zext nneg i32 %i.hr to i64
  %i.id = getelementptr inbounds nuw [24 x i8], ptr @lxb_css_value_data, i64 %i.ic ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !16
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !17
  %i.ih = call i32 %1(ptr noundef %i.ie, i64 noundef %i.ig, ptr noundef %2) #4, !inline_history !60
  br label %lxb_css_value_number_percentage_sr.exit63.i65

lxb_css_value_number_percentage_sr.exit63.i65:    ; preds = %bb.cg, %lxb_css_value_percentage_sr.exit.i61.i63, %bb.cc
  %.0.i59.i66 = phi i32 [ %i.ih, %bb.cg ], [ %i.hv, %bb.cc ], [ %.0.i.i62.i64, %lxb_css_value_percentage_sr.exit.i61.i63 ] ; 2 uses
  %.not54.i67 = icmp eq i32 %.0.i59.i66, 0
  br i1 %.not54.i67, label %lxb_css_value_number_percentage_sr.exit63.thread.i56, label %lxb_css_value_color_hex_sr.exit

lxb_css_value_number_percentage_sr.exit63.thread.i56: ; preds = %lxb_css_value_number_percentage_sr.exit63.i65, %bb.cb
  %i.ii = call i32 %1(ptr noundef nonnull @.str.397, i64 noundef 1, ptr noundef %2) #4, !inline_history !57 ; 2 uses
  %.not55.i57 = icmp eq i32 %i.ii, 0
  br i1 %.not55.i57, label %bb.ch, label %lxb_css_value_color_hex_sr.exit

bb.ch:                                            ; preds = %lxb_css_value_number_percentage_sr.exit63.thread.i56
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ik = call i32 @lxb_css_value_hue_sr(ptr noundef nonnull readonly %i.ij, ptr noundef readonly %1, ptr noundef %2) ; 2 uses
  %.not56.i58 = icmp eq i32 %i.ik, 0
  br i1 %.not56.i58, label %bb.ci, label %lxb_css_value_color_hex_sr.exit

bb.ci:                                            ; preds = %bb.ch
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.im = load i32, ptr %i.il, align 8, !tbaa !78
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %lxb_css_value_number_percentage_sr.exit.thread66.sink.split.i61, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.io = call i32 %1(ptr noundef nonnull @.str.399, i64 noundef 3, ptr noundef %2) #4, !inline_history !57 ; 2 uses
  %.not57.i59 = icmp eq i32 %i.io, 0
  br i1 %.not57.i59, label %bb.ck, label %lxb_css_value_color_hex_sr.exit

bb.ck:                                            ; preds = %bb.cj
  %i.ip = call i32 @lxb_css_value_number_percentage_sr(ptr noundef nonnull readonly %i.il, ptr noundef readonly %1, ptr noundef %2) ; 2 uses
  %.not58.i60 = icmp eq i32 %i.ip, 0
  br i1 %.not58.i60, label %lxb_css_value_number_percentage_sr.exit.thread66.sink.split.i61, label %lxb_css_value_color_hex_sr.exit

lxb_css_value_number_percentage_sr.exit.thread66.sink.split.i61: ; preds = %bb.ck, %bb.ci
  %i.iq = call i32 %1(ptr noundef nonnull @.str.398, i64 noundef 1, ptr noundef %2) #4, !inline_history !57
  br label %lxb_css_value_color_hex_sr.exit

bb.cl:                                            ; preds = %bb.a
  %i.ir = icmp ugt i32 %i.n, 372
  br i1 %i.ir, label %lxb_css_value_color_hex_sr.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.is = zext nneg i32 %i.n to i64
  %i.it = getelementptr inbounds nuw [24 x i8], ptr @lxb_css_value_data, i64 %i.is ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !16
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !17
  %i.ix = tail call i32 %1(ptr noundef %i.iu, i64 noundef %i.iw, ptr noundef %2) #4, !inline_history !31
  br label %lxb_css_value_color_hex_sr.exit

default.unreachable:                              ; preds = %bb.ah
  unreachable

lxb_css_value_color_hex_sr.exit:                  ; preds = %bb.cm, %bb.cl, %lxb_css_value_number_percentage_sr.exit.thread66.sink.split.i61, %bb.ck, %bb.cj, %bb.ch, %lxb_css_value_number_percentage_sr.exit63.thread.i56, %lxb_css_value_number_percentage_sr.exit63.i65, %bb.cf, %lxb_css_value_number_percentage_sr.exit.thread.i54, %lxb_css_value_number_percentage_sr.exit.i71, %bb.bz, %bb.bu, %bb.br, %lxb_css_value_number_percentage_sr.exit.thread66.sink.split.i, %bb.bq, %bb.bp, %bb.bn, %lxb_css_value_number_percentage_sr.exit63.thread.i, %lxb_css_value_number_percentage_sr.exit63.i, %bb.bl, %lxb_css_value_number_percentage_sr.exit.thread.i45, %lxb_css_value_number_percentage_sr.exit.i49, %bb.bf, %bb.ba, %bb.ax, %lxb_css_value_percentage_type_sr.exit.thread72.sink.split.i, %bb.aw, %bb.av, %bb.at, %lxb_css_value_percentage_type_sr.exit.thread.i, %lxb_css_value_percentage_type_sr.exit.i, %bb.ar, %bb.an, %bb.am, %bb.al, %lxb_css_value_number_percentage_sr.exit.thread79.sink.split.i, %bb.ag, %bb.af, %bb.ad, %lxb_css_value_number_percentage_sr.exit76.thread.i, %lxb_css_value_number_percentage_sr.exit76.i, %bb.ab, %lxb_css_value_number_percentage_sr.exit.thread.i, %lxb_css_value_number_percentage_sr.exit.i, %bb.v, %bb.q, %bb.p, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ %i.iq, %lxb_css_value_number_percentage_sr.exit.thread66.sink.split.i61 ], [ %i.n, %bb.a ], [ %i.bl, %bb.m ], [ %i.do, %lxb_css_value_number_percentage_sr.exit.thread79.sink.split.i ], [ %i.ey, %lxb_css_value_percentage_type_sr.exit.thread72.sink.split.i ], [ %i.gu, %lxb_css_value_number_percentage_sr.exit.thread66.sink.split.i ], [ %i.bd, %bb.k ], [ 0, %bb.n ], [ %i.p, %bb.b ], [ %i.v, %bb.d ], [ %i.aa, %bb.e ], [ %i.af, %bb.f ], [ %i.am, %bb.h ], [ %i.ar, %bb.i ], [ %i.ax, %bb.j ], [ %i.bo, %bb.p ], [ %i.bp, %bb.q ], [ %.0.i.i, %lxb_css_value_number_percentage_sr.exit.i ], [ %i.ck, %lxb_css_value_number_percentage_sr.exit.thread.i ], [ %.0.i72.i, %lxb_css_value_number_percentage_sr.exit76.i ], [ %i.dd, %lxb_css_value_number_percentage_sr.exit76.thread.i ], [ 9, %bb.v ], [ %i.df, %bb.ad ], [ %i.dm, %bb.af ], [ 9, %bb.ab ], [ %i.dn, %bb.ag ], [ %i.ex, %bb.aw ], [ 9, %bb.cl ], [ %.0.i31, %bb.al ], [ %i.dv, %bb.am ], [ %i.dy, %bb.an ], [ %.0.i.i41, %lxb_css_value_percentage_type_sr.exit.i ], [ %i.en, %lxb_css_value_percentage_type_sr.exit.thread.i ], [ 9, %bb.ar ], [ %i.ep, %bb.at ], [ %i.ew, %bb.av ], [ 9, %bb.bf ], [ 9, %bb.ax ], [ %.0.i43, %bb.ba ], [ %.0.i.i50, %lxb_css_value_number_percentage_sr.exit.i49 ], [ %i.ft, %lxb_css_value_number_percentage_sr.exit.thread.i45 ], [ %.0.i59.i, %lxb_css_value_number_percentage_sr.exit63.i ], [ %i.gm, %lxb_css_value_number_percentage_sr.exit63.thread.i ], [ 9, %bb.bl ], [ %i.go, %bb.bn ], [ %i.gs, %bb.bp ], [ %i.gt, %bb.bq ], [ 9, %bb.bz ], [ 9, %bb.br ], [ %.0.i51, %bb.bu ], [ %.0.i.i72, %lxb_css_value_number_percentage_sr.exit.i71 ], [ %i.hp, %lxb_css_value_number_percentage_sr.exit.thread.i54 ], [ %.0.i59.i66, %lxb_css_value_number_percentage_sr.exit63.i65 ], [ %i.ii, %lxb_css_value_number_percentage_sr.exit63.thread.i56 ], [ 9, %bb.cf ], [ %i.ik, %bb.ch ], [ %i.io, %bb.cj ], [ %i.ip, %bb.ck ], [ %i.ix, %bb.cm ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!"", !13, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !13, i64 0}
!17 = !{!15, !14, i64 8}
!18 = !{!"double", !8, i64 0}
!19 = !{!"_Bool", !8, i64 0}
!20 = !{!"", !18, i64 0, !19, i64 8}
!21 = !{!20, !18, i64 0}
!22 = !{!"", !18, i64 0, !19, i64 8, !9, i64 12}
!23 = !{!22, !18, i64 0}
!24 = !{!22, !9, i64 12}
!25 = !{!"", !14, i64 0}
!26 = !{!25, !14, i64 0}
!27 = !{!"", !9, i64 0, !8, i64 8}
!28 = !{!27, !9, i64 0}
!29 = !{ptr @lxb_css_value_length_sr}
!30 = !{ptr @lxb_css_value_percentage_sr}
!31 = !{ptr @lxb_css_value_serialize}
!32 = !{ptr @lxb_css_value_number_sr}
!33 = !{!"", !9, i64 0, !20, i64 8}
!34 = !{!33, !9, i64 0}
!35 = !{!"", !13, i64 0, !12, i64 8, !14, i64 16, !14, i64 24}
!36 = !{!35, !12, i64 8}
!37 = !{!"", !9, i64 0, !22, i64 8}
!38 = !{!37, !9, i64 0}
!39 = !{!"", !9, i64 0, !25, i64 8}
!40 = !{!39, !9, i64 0}
!41 = !{ptr @lxb_css_value_integer_sr}
!42 = !{!"", !9, i64 0, !27, i64 8}
!43 = !{!42, !9, i64 0}
!44 = !{ptr @lxb_css_value_angle_sr}
!45 = distinct !{null}
!46 = distinct !{null}
!47 = distinct !{null, ptr @lxb_css_value_number_percentage_sr, ptr @lxb_css_value_number_sr}
!48 = distinct !{null, ptr @lxb_css_value_number_percentage_sr, ptr @lxb_css_value_percentage_sr}
!49 = distinct !{null, ptr @lxb_css_value_number_percentage_sr, ptr @lxb_css_value_serialize}
!50 = distinct !{null}
!51 = distinct !{null, ptr @lxb_css_value_percentage_type_sr, ptr @lxb_css_value_percentage_sr}
!52 = distinct !{null, ptr @lxb_css_value_percentage_type_sr, ptr @lxb_css_value_serialize}
!53 = distinct !{null}
!54 = distinct !{null, ptr @lxb_css_value_number_percentage_sr, ptr @lxb_css_value_number_sr}
!55 = distinct !{null, ptr @lxb_css_value_number_percentage_sr, ptr @lxb_css_value_percentage_sr}
!56 = distinct !{null, ptr @lxb_css_value_number_percentage_sr, ptr @lxb_css_value_serialize}
!57 = distinct !{null}
!58 = distinct !{null, ptr @lxb_css_value_number_percentage_sr, ptr @lxb_css_value_number_sr}
!59 = distinct !{null, ptr @lxb_css_value_number_percentage_sr, ptr @lxb_css_value_percentage_sr}
!60 = distinct !{null, ptr @lxb_css_value_number_percentage_sr, ptr @lxb_css_value_serialize}
!61 = !{!"", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3}
!62 = !{!"", !61, i64 0, !9, i64 4}
!63 = !{!62, !9, i64 4}
!64 = !{!61, !8, i64 0}
!65 = !{!61, !8, i64 1}
!66 = !{!61, !8, i64 2}
!67 = !{!61, !8, i64 3}
!68 = !{!13, !13, i64 0}
!69 = !{!"", !27, i64 0, !27, i64 24, !27, i64 48, !27, i64 72, !19, i64 96}
!70 = !{!69, !19, i64 96}
!71 = !{i8 0, i8 2}
!72 = !{}
!73 = !{!69, !9, i64 72}
!74 = !{!"", !27, i64 0, !33, i64 24, !33, i64 48, !27, i64 72, !19, i64 96}
!75 = !{!74, !19, i64 96}
!76 = !{!74, !9, i64 72}
!77 = !{!"", !27, i64 0, !27, i64 24, !27, i64 48, !27, i64 72}
!78 = !{!77, !9, i64 72}
end_hunk_2
