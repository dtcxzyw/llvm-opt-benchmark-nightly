Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-chat?download=true
inline.NumInlined: 1454
inline.NumDeleted: 202
begin_hunk_0
@.str.40 = private unnamed_addr constant [8 x i8] c"bailing\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"bailing-think\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"llama4\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"smolvlm\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"hunyuan-moe\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"gpt-oss\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"hunyuan-dense\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"hunyuan-vl\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"kimi-k2\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"grok-2\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"pangu-embedded\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"solar-open\00", align 1
@__dso_handle = external hidden global i8
@_ZTISt12out_of_range = external constant ptr
@.str.54 = private unnamed_addr constant [13 x i8] c"<|im_start|>\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"<|im_sep|>\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"<end_of_utterance>\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"mistral\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"[INST]\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"[SYSTEM_PROMPT]\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"' [INST] ' + system_message\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"[AVAILABLE_TOOLS]\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c" [INST]\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"\22[INST]\22\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"<<SYS>>\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"bos_token + '[INST]\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"content.strip()\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"<|assistant|>\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"<|end|>\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"[gMASK]<sop>\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"<|user|>\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"<|tool_declare|>\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"</s>\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"<|{{ item['role'] }}|>\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"<|begin_of_image|>\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"<|endoftext|>\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"bos_token + message['role']\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"<start_of_turn>\00", align 1
@.str.78 = private unnamed_addr constant [30 x i8] c"'\\n\\nAssistant: ' + eos_token\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"GPT4 Correct \00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"USER: \00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"ASSISTANT: \00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"SYSTEM: \00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"### Instruction:\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"<|EOT|>\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"<|START_OF_TURN_TOKEN|>\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"<|USER_TOKEN|>\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"<|start_header_id|>\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c"<|end_header_id|>\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"[gMASK]sop\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"<\E7\94\A8\E6\88\B7>\00", align 1
@.str.91 = private unnamed_addr constant [47 x i8] c"'Assistant: ' + message['content'] + eos_token\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"<\EF\BD\9CAssistant\EF\BD\9C>\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"<\EF\BD\9CUser\EF\BD\9C>\00", align 1
@.str.94 = private unnamed_addr constant [28 x i8] c"<\EF\BD\9Cend\E2\96\81of\E2\96\81sentence\EF\BD\9C>\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"[|system|]\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"[|assistant|]\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"[|endofturn|]\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"[|tool|]\00", align 1
@.str.99 = private unnamed_addr constant [52 x i8] c"{{- 'User: ' + message['content']|trim + '\\n\\n' -}}\00", align 1
@.str.100 = private unnamed_addr constant [18 x i8] c"<|start_of_role|>\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"<tool_call>\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"<tools>\00", align 1
@.str.103 = private unnamed_addr constant [26 x i8] c"g4_default_system_message\00", align 1
@.str.104 = private unnamed_addr constant [99 x i8] c"message['role'] + additional_special_tokens[0] + message['content'] + additional_special_tokens[1]\00", align 1
@.str.105 = private unnamed_addr constant [15 x i8] c"<|role_start|>\00", align 1
@.str.106 = private unnamed_addr constant [21 x i8] c" \D0\90\D1\81\D1\81\D0\B8\D1\81\D1\82\D0\B5\D0\BD\D1\82:\00", align 1
@.str.107 = private unnamed_addr constant [23 x i8] c"<role>ASSISTANT</role>\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"'HUMAN'\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"\22HUMAN\22\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"<think>\00", align 1
@.str.111 = private unnamed_addr constant [19 x i8] c"<role>HUMAN</role>\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"<|role_end|>\00", align 1
@.str.113 = private unnamed_addr constant [17 x i8] c"<|header_start|>\00", align 1
@.str.114 = private unnamed_addr constant [15 x i8] c"<|header_end|>\00", align 1
@.str.115 = private unnamed_addr constant [20 x i8] c"<|endofuserprompt|>\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"<|extra_0|>\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"<|extra_4|>\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"<|start|>\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"<|channel|>\00", align 1
@.str.120 = private unnamed_addr constant [21 x i8] c"<\EF\BD\9Chy_Assistant\EF\BD\9C>\00", align 1
@.str.121 = private unnamed_addr constant [33 x i8] c"<\EF\BD\9Chy_begin\E2\96\81of\E2\96\81sentence\EF\BD\9C>\00", align 1
@.str.122 = private unnamed_addr constant [35 x i8] c"<\EF\BD\9Chy_place\E2\96\81holder\E2\96\81no\E2\96\813\EF\BD\9C>\00", align 1
@.str.123 = private unnamed_addr constant [39 x i8] c"<|im_assistant|>assistant<|im_middle|>\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"<seed:bos>\00", align 1
@.str.125 = private unnamed_addr constant [53 x i8] c"'Assistant: '  + message['content'] + '<|separator|>\00", align 1
@.str.126 = private unnamed_addr constant [29 x i8] c"[unused9]\E7\B3\BB\E7\BB\9F\EF\BC\9A[unused10]\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"<|begin|>\00", align 1
@.str.128 = private unnamed_addr constant [12 x i8] c"<|content|>\00", align 1
@.str.129 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.130 = private unnamed_addr constant [12 x i8] c"<|im_end|>\0A\00", align 1
@.str.131 = private unnamed_addr constant [23 x i8] c"<|im_start|>assistant\0A\00", align 1
@.str.132 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.133 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.135 = private unnamed_addr constant [17 x i8] c"[/SYSTEM_PROMPT]\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"[/INST]\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.139 = private unnamed_addr constant [8 x i8] c"[INST] \00", align 1
@.str.140 = private unnamed_addr constant [11 x i8] c"<s>[INST] \00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"<<SYS>>\0A\00", align 1
@.str.142 = private unnamed_addr constant [12 x i8] c"\0A<</SYS>>\0A\0A\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c" [/INST]\00", align 1
@.str.144 = private unnamed_addr constant [3 x i8] c"<|\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"|>\0A\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"<|end|>\0A\00", align 1
@.str.147 = private unnamed_addr constant [15 x i8] c"<|assistant|>\0A\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"<|im_end|>\00", align 1
@.str.149 = private unnamed_addr constant [32 x i8] c"<|im_start|>assistant<|im_sep|>\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"|>\00", align 1
@.str.151 = private unnamed_addr constant [15 x i8] c"<|endoftext|>\0A\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"<s>\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"</s>\0A\00", align 1
@.str.154 = private unnamed_addr constant [14 x i8] c"<s>assistant\0A\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"assistant\00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.157 = private unnamed_addr constant [15 x i8] c"<end_of_turn>\0A\00", align 1
@.str.158 = private unnamed_addr constant [22 x i8] c"<start_of_turn>model\0A\00", align 1
@.str.159 = private unnamed_addr constant [8 x i8] c"Human: \00", align 1
@.str.160 = private unnamed_addr constant [18 x i8] c"\0A\0AAssistant: </s>\00", align 1
@.str.161 = private unnamed_addr constant [16 x i8] c"<|end_of_turn|>\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.163 = private unnamed_addr constant [24 x i8] c"GPT4 Correct Assistant:\00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"ASSISTANT:\00", align 1
@.str.165 = private unnamed_addr constant [18 x i8] c"### Instruction:\0A\00", align 1
@.str.166 = private unnamed_addr constant [15 x i8] c"### Response:\0A\00", align 1
@.str.167 = private unnamed_addr constant [10 x i8] c"\0A<|EOT|>\0A\00", align 1
@.str.168 = private unnamed_addr constant [40 x i8] c"<|START_OF_TURN_TOKEN|><|SYSTEM_TOKEN|>\00", align 1
@.str.169 = private unnamed_addr constant [22 x i8] c"<|END_OF_TURN_TOKEN|>\00", align 1
@.str.170 = private unnamed_addr constant [38 x i8] c"<|START_OF_TURN_TOKEN|><|USER_TOKEN|>\00", align 1
@.str.171 = private unnamed_addr constant [41 x i8] c"<|START_OF_TURN_TOKEN|><|CHATBOT_TOKEN|>\00", align 1
@.str.172 = private unnamed_addr constant [20 x i8] c"<|end_header_id|>\0A\0A\00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c"<|eot_id|>\00", align 1
@.str.174 = private unnamed_addr constant [48 x i8] c"<|start_header_id|>assistant<|end_header_id|>\0A\0A\00", align 1
@.str.175 = private unnamed_addr constant [8 x i8] c"[gMASK]\00", align 1
@.str.176 = private unnamed_addr constant [4 x i8] c"sop\00", align 1
@.str.177 = private unnamed_addr constant [3 x i8] c"\0A \00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"<sop>\00", align 1
@.str.179 = private unnamed_addr constant [5 x i8] c"<AI>\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"User: \00", align 1
@.str.181 = private unnamed_addr constant [12 x i8] c"Assistant: \00", align 1
@.str.182 = private unnamed_addr constant [11 x i8] c"Assistant:\00", align 1
@.str.183 = private unnamed_addr constant [15 x i8] c"[|endofturn|]\0A\00", align 1
@.str.184 = private unnamed_addr constant [9 x i8] c"[|user|]\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c"tool\00", align 1
@.str.186 = private unnamed_addr constant [12 x i8] c"<|system|>\0A\00", align 1
@.str.187 = private unnamed_addr constant [15 x i8] c"<|endofturn|>\0A\00", align 1
@.str.188 = private unnamed_addr constant [10 x i8] c"<|user|>\0A\00", align 1
@.str.189 = private unnamed_addr constant [10 x i8] c"<|tool|>\0A\00", align 1
@.str.190 = private unnamed_addr constant [9 x i8] c"System: \00", align 1
@.str.191 = private unnamed_addr constant [16 x i8] c"<|end_of_role|>\00", align 1
@.str.192 = private unnamed_addr constant [20 x i8] c"assistant_tool_call\00", align 1
@.str.193 = private unnamed_addr constant [14 x i8] c"<|tool_call|>\00", align 1
@.str.194 = private unnamed_addr constant [17 x i8] c"<|end_of_text|>\0A\00", align 1
@.str.195 = private unnamed_addr constant [42 x i8] c"<|start_of_role|>assistant<|end_of_role|>\00", align 1
@.str.196 = private unnamed_addr constant [55 x i8] c"<|start_of_role|>assistant<|end_of_role|><|tool_call|>\00", align 1
@.str.197 = private unnamed_addr constant [16 x i8] c"<|message_sep|>\00", align 1
@.str.198 = private unnamed_addr constant [17 x i8] c"user<|role_sep|>\00", align 1
@.str.199 = private unnamed_addr constant [49 x i8] c"available functions<|role_sep|>[]<|message_sep|>\00", align 1
@.str.200 = private unnamed_addr constant [22 x i8] c"assistant<|role_sep|>\00", align 1
@.str.201 = private unnamed_addr constant [13 x i8] c"<|turn_end|>\00", align 1
@.str.202 = private unnamed_addr constant [36 x i8] c"<|role_start|>assistant<|role_end|>\00", align 1
@.str.203 = private unnamed_addr constant [28 x i8] c" \D0\9F\D0\BE\D0\BB\D1\8C\D0\B7\D0\BE\D0\B2\D0\B0\D1\82\D0\B5\D0\BB\D1\8C: \00", align 1
@.str.204 = private unnamed_addr constant [22 x i8] c" \D0\90\D1\81\D1\81\D0\B8\D1\81\D1\82\D0\B5\D0\BD\D1\82: \00", align 1
@.str.205 = private unnamed_addr constant [26 x i8] c" \D0\90\D1\81\D1\81\D0\B8\D1\81\D1\82\D0\B5\D0\BD\D1\82:[SEP]\00", align 1
@.str.206 = private unnamed_addr constant [6 x i8] c"HUMAN\00", align 1
@.str.207 = private unnamed_addr constant [7 x i8] c"<role>\00", align 1
@.str.208 = private unnamed_addr constant [8 x i8] c"</role>\00", align 1
@.str.209 = private unnamed_addr constant [53 x i8] c"<role>SYSTEM</role>detailed thinking off<|role_end|>\00", align 1
@.str.210 = private unnamed_addr constant [17 x i8] c"<|header_end|>\0A\0A\00", align 1
@.str.211 = private unnamed_addr constant [8 x i8] c"<|eot|>\00", align 1
@.str.212 = private unnamed_addr constant [42 x i8] c"<|header_start|>assistant<|header_end|>\0A\0A\00", align 1
@.str.213 = private unnamed_addr constant [20 x i8] c"<end_of_utterance>\0A\00", align 1
@.str.214 = private unnamed_addr constant [11 x i8] c"<|system|>\00", align 1
@.str.215 = private unnamed_addr constant [16 x i8] c"<|endofsystem|>\00", align 1
@.str.216 = private unnamed_addr constant [15 x i8] c"<|userprompt|>\00", align 1
@.str.217 = private unnamed_addr constant [13 x i8] c"<|response|>\00", align 1
@.str.218 = private unnamed_addr constant [18 x i8] c"<|endofresponse|>\00", align 1
@.str.219 = private unnamed_addr constant [16 x i8] c"<|startoftext|>\00", align 1
@.str.220 = private unnamed_addr constant [8 x i8] c"<|eos|>\00", align 1
@.str.221 = private unnamed_addr constant [12 x i8] c"<|message|>\00", align 1
@.str.222 = private unnamed_addr constant [11 x i8] c"<|return|>\00", align 1
@.str.223 = private unnamed_addr constant [19 x i8] c"<|start|>assistant\00", align 1
@.str.224 = private unnamed_addr constant [35 x i8] c"<\EF\BD\9Chy_place\E2\96\81holder\E2\96\81no\E2\96\812\EF\BD\9C>\00", align 1
@.str.225 = private unnamed_addr constant [16 x i8] c"<\EF\BD\9Chy_User\EF\BD\9C>\00", align 1
@.str.226 = private unnamed_addr constant [33 x i8] c"<|im_system|>system<|im_middle|>\00", align 1
@.str.227 = private unnamed_addr constant [29 x i8] c"<|im_user|>user<|im_middle|>\00", align 1
@.str.228 = private unnamed_addr constant [31 x i8] c"<|im_system|>tool<|im_middle|>\00", align 1
@.str.229 = private unnamed_addr constant [11 x i8] c"<seed:eos>\00", align 1
@.str.230 = private unnamed_addr constant [21 x i8] c"<seed:bos>assistant\0A\00", align 1
@.str.231 = private unnamed_addr constant [16 x i8] c"<|separator|>\0A\0A\00", align 1
@.str.232 = private unnamed_addr constant [19 x i8] c"[unused9]\E7\B3\BB\E7\BB\9F\EF\BC\9A\00", align 1
@.str.233 = private unnamed_addr constant [11 x i8] c"[unused10]\00", align 1
@.str.234 = private unnamed_addr constant [19 x i8] c"[unused9]\E7\94\A8\E6\88\B7\EF\BC\9A\00", align 1
@.str.235 = private unnamed_addr constant [19 x i8] c"[unused9]\E5\8A\A9\E6\89\8B\EF\BC\9A\00", align 1
@.str.236 = private unnamed_addr constant [19 x i8] c"[unused9]\E5\B7\A5\E5\85\B7\EF\BC\9A\00", align 1
@.str.237 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.238 = private unnamed_addr constant [19 x i8] c"[unused9]\E6\96\B9\E6\B3\95\EF\BC\9A\00", align 1
@.str.239 = private unnamed_addr constant [19 x i8] c"<|begin|>assistant\00", align 1
@.str.240 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.241 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.243 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.244 = private unnamed_addr constant [8 x i8] c"map::at\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.245 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_llama_chat.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateSt4lessIS5_ESaISt4pairIKS5_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z26llm_chat_template_from_strRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateSt4lessIS5_ESaISt4pairIKS5_S6_EEE2atERSA_(ptr noundef nonnull align 8 dereferenceable(48) @_ZL18LLM_CHAT_TEMPLATESB5cxx11, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateSt4lessIS5_ESaISt4pairIKS5_S6_EEE2atERSA_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateSt4lessIS5_ESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit, label %bb.b, !llvm.loop !33

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateSt4lessIS5_ESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateSt4lessIS5_ESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !20   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #23 ; 2 uses
  %.not.i.i.i3 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateSt4lessIS5_ESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.244) #24
  unreachable

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  ret ptr %i.x
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z24llm_chat_detect_templateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateSt4lessIS5_ESaISt4pairIKS5_S6_EEE2atERSA_(ptr noundef nonnull align 8 dereferenceable(48) @_ZL18LLM_CHAT_TEMPLATESB5cxx11, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_Z26llm_chat_template_from_strRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.b

_Z26llm_chat_template_from_strRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16
  br label %bb.cg

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr @_ZTISt12out_of_range         ; 3 uses
  %i.d = extractvalue { ptr, i32 } %i.c, 1
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12out_of_range) #23
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.ch

bb.c:                                             ; preds = %bb.b
  %i.g = extractvalue { ptr, i32 } %i.c, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #23 ; 0 uses
  tail call void @__cxa_end_catch()
  %i.i = tail call fastcc noundef zeroext i1 @"_ZZ24llm_chat_detect_templateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEPKc"(ptr %0, ptr noundef nonnull @.str.54)
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc noundef zeroext i1 @"_ZZ24llm_chat_detect_templateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEPKc"(ptr %0, ptr noundef nonnull @.str.55)
  br i1 %i.j, label %bb.cg, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call fastcc noundef zeroext i1 @"_ZZ24llm_chat_detect_templateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEPKc"(ptr %0, ptr noundef nonnull @.str.56)
  %i.l = select i1 %i.k, i32 44, i32 0
  br label %bb.cg

bb.f:                                             ; preds = %bb.c
  %i.m = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.57, i64 noundef 0, i64 noundef 7) #23
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call fastcc noundef zeroext i1 @"_ZZ24llm_chat_detect_templateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEPKc"(ptr %0, ptr noundef nonnull @.str.58)
  br i1 %i.o, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = tail call fastcc noundef zeroext i1 @"_ZZ24llm_chat_detect_templateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEPKc"(ptr %0, ptr noundef nonnull @.str.59)
  br i1 %i.p, label %bb.cg, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call fastcc noundef zeroext i1 @"_ZZ24llm_chat_detect_templateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEPKc"(ptr %0, ptr noundef nonnull @.str.60)
  br i1 %i.q, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call fastcc noundef zeroext i1 @"_ZZ24llm_chat_detect_templateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEPKc"(ptr %0, ptr noundef nonnull @.str.61)
  br i1 %i.r, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.s = tail call fastcc noundef zeroext i1 @"_ZZ24llm_chat_detect_templateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEPKc"(ptr %0, ptr noundef nonnull @.str.62)
  br i1 %i.s, label %bb.cg, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = tail call fastcc noundef zeroext i1 @"_ZZ24llm_chat_detect_templateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEPKc"(ptr %0, ptr noundef nonnull @.str.63)
  %. = select i1 %i.t, i32 7, i32 6
  br label %bb.cg

bb.m:                                             ; preds = %bb.j
  %i.u = tail call fastcc noundef zeroext i1 @"_ZZ24llm_chat_detect_templateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEPKc"(ptr %0, ptr noundef nonnull @.str.64)
  %i.v = tail call fastcc noundef zeroext i1 @"_ZZ24llm_chat_detect_templateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEPKc"(ptr %0, ptr noundef nonnull @.str.65)
end_hunk_0
begin_hunk_1_@_Z23llm_chat_apply_template17llm_chat_templateRKSt6vectorIPK18llama_chat_messageSaIS3_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dlm = load i64, ptr %i.dkz, align 8, !tbaa !26
  store ptr %i.dlb, ptr %2, align 8, !tbaa !21
  %i.dln = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dlo = load <2 x i64>, ptr %i.dkg, align 8, !tbaa !26
  store <2 x i64> %i.dlo, ptr %i.dln, align 8, !tbaa !26
  %.not.i2419 = icmp eq ptr %i.dky, null
  br i1 %.not.i2419, label %bb.yh, label %bb.yg

bb.yg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dky, ptr %175, align 8, !tbaa !21
  store i64 %i.dlm, ptr %i.dkf, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.yh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.dkf, ptr %175, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.yg, %bb.yh
  %i.dlp = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.dky, %bb.yg ], [ %i.dkf, %bb.yh ]
  store i64 0, ptr %i.dkg, align 8, !tbaa !20
  store i8 0, ptr %i.dlp, align 1, !tbaa !26
  %i.dlq = load ptr, ptr %175, align 8, !tbaa !21 ; 2 uses
  %i.dlr = icmp eq ptr %i.dlq, %i.dkf
  br i1 %i.dlr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2422, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2420

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2420: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dls = load i64, ptr %i.dkf, align 8, !tbaa !26
  %i.dlt = add i64 %i.dls, 1
  call void @_ZdlPvm(ptr noundef %i.dlq, i64 noundef %i.dlt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2422

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2422: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2420
  call void @llvm.lifetime.end.p0(ptr nonnull %175) #23
  %i.dlu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dlv = load i64, ptr %i.dlu, align 8, !tbaa !20
  %i.dlw = trunc i64 %i.dlv to i32
  br label %bb.yi

.body:                                            ; preds = %bb.yb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %175) #23
  br label %bb.yj

bb.yi:                                            ; preds = %bb.sf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2422
  %.0519 = phi i32 [ %i.dlw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2422 ], [ -1, %bb.sf ]
  %i.dlx = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dlx, ptr %4, align 8, !tbaa !54
  %i.dly = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.dlz = getelementptr i8, ptr %i.dlx, i64 -24
  %i.dma = load i64, ptr %i.dlz, align 8
  %i.dmb = getelementptr inbounds i8, ptr %4, i64 %i.dma
  store ptr %i.dly, ptr %i.dmb, align 8, !tbaa !54
  %i.dmc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.dmd = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.dmc, ptr %i.dmd, align 8, !tbaa !54
  %i.dme = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dme, align 8, !tbaa !54
  %i.dmf = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.dmg = load ptr, ptr %i.dmf, align 8, !tbaa !21 ; 2 uses
  %i.dmh = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.dmi = icmp eq ptr %i.dmg, %i.dmh
  br i1 %i.dmi, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.yi
  %i.dmj = load i64, ptr %i.dmh, align 8, !tbaa !26
  %i.dmk = add i64 %i.dmj, 1
  call void @_ZdlPvm(ptr noundef %i.dmg, i64 noundef %i.dmk) #25
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.yi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dme, align 8, !tbaa !54
  %i.dml = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dml) #23
  %i.dmm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.dmm, ptr %4, align 8, !tbaa !54
  %i.dmn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dmo = getelementptr i8, ptr %i.dmm, i64 -24
  %i.dmp = load i64, ptr %i.dmo, align 8
  %i.dmq = getelementptr inbounds i8, ptr %4, i64 %i.dmp
  store ptr %i.dmn, ptr %i.dmq, align 8, !tbaa !54
  %i.dmr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.dmr, align 8, !tbaa !76
  %i.dms = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.dms) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i32 %.0519

bb.yj:                                            ; preds = %bb.xk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2400, %bb.sw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2107, %bb.sv, %bb.qy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2041, %bb.qx, %bb.ba, %.critedge876, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2416, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2354, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2265, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2253, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2184, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2085, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2064, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2010, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1992, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1980, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1969, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1905, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1825, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1745, %bb.la, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1674, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1656, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1651, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1611, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1595, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1575, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1555, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1525, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1452, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1422, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1387, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1371, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1328, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1250, %bb.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1206, %bb.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1082, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005, %bb.j, %bb.h
  %.pn867 = phi { ptr, i32 } [ %i.av, %bb.h ], [ %i.dks, %.body ], [ %i.ax, %bb.j ], [ %.pn864.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.pn857.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1082 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2416 ], [ %.pn845, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1165 ], [ %i.rm, %bb.cp ], [ %.pn843, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1206 ], [ %i.un, %bb.di ], [ %i.wd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1250 ], [ %.pn834.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1328 ], [ %.pn828.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1371 ], [ %.pn826, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1387 ], [ %.pn824, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1422 ], [ %.pn822, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1452 ], [ %.pn817.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1525 ], [ %.pn806.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1555 ], [ %.pn804, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1575 ], [ %.pn802, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1595 ], [ %.pn800, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1611 ], [ %.pn797.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1651 ], [ %.pn789, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1656 ], [ %.pn787, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1674 ], [ %i.bep, %bb.la ], [ %.pn782.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1745 ], [ %.pn771.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1825 ], [ %.pn757.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1905 ], [ %.pn743.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1969 ], [ %.pn735, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1980 ], [ %.pn733, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1992 ], [ %.pn731, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2010 ], [ %i.ks, %bb.ba ], [ %.pn726, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2064 ], [ %.pn724, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073 ], [ %.pn722, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2085 ], [ %i.cdf, %bb.qx ], [ %.pn714.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2155 ], [ %.pn712, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2164 ], [ %.pn710, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2184 ], [ %.pn708, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2204 ], [ %.pn706, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2228 ], [ %.pn704, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2235 ], [ %.pn702, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2253 ], [ %.pn700, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2265 ], [ %.pn694.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2306 ], [ %.pn689.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2354 ], [ %i.cnd, %bb.sv ], [ %.pn851.pn, %.critedge876 ], [ %.pn728, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2041 ], [ %i.cdg, %bb.qy ], [ %.pn719, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2107 ], [ %i.cne, %bb.sw ], [ %.pn683, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2400 ], [ %lpad.phi, %bb.xk ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn867
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !24
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.243) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.d, ptr %i.a, align 8, !tbaa !25
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !21
  %i.g = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.g, ptr %i.b, align 8, !tbaa !26
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !26
  store i8 %i.i, ptr %i.h, align 1, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !20
  %i.l = load ptr, ptr %0, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL4trimRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not4 = icmp eq i64 %.8.val, 0
  br i1 %.not4, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0161 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.0161
  %i.c = load i8, ptr %i.b, align 1, !tbaa !26
  %i.d = zext i8 %i.c to i32
  %i.e = tail call i32 @isspace(i32 noundef %i.d) #26
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = add nuw i64 %.0161, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %.8.val
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !77

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.016.lcssa = phi i64 [ 0, %bb.a ], [ %.8.val, %bb.b ], [ %.0161, %.lr.ph ] ; 8 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %.016.lcssa, i64 %.8.val) ; 2 uses
  %i.g = icmp ugt i64 %.8.val, %.016.lcssa
  br i1 %i.g, label %.lr.ph7, label %.critedge2

bb.c:                                             ; preds = %.lr.ph7
  %i.h = icmp ugt i64 %i.i, %.016.lcssa
  br i1 %i.h, label %.lr.ph7, label %.critedge2, !llvm.loop !78

.lr.ph7:                                          ; preds = %.critedge, %bb.c
  %.06 = phi i64 [ %i.i, %bb.c ], [ %.8.val, %.critedge ] ; 2 uses
  %i.i = add i64 %.06, -1                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !26
  %i.l = zext i8 %i.k to i32
  %i.m = tail call i32 @isspace(i32 noundef %i.l) #26
  %.not17 = icmp eq i32 %i.m, 0
  br i1 %.not17, label %..critedge2_crit_edge8, label %bb.c, !llvm.loop !78

..critedge2_crit_edge8:                           ; preds = %.lr.ph7
  br label %.critedge2, !llvm.loop !78

.critedge2:                                       ; preds = %bb.c, %..critedge2_crit_edge8, %.critedge
  %.0.lcssa = phi i64 [ %umin, %.critedge ], [ %.06, %..critedge2_crit_edge8 ], [ %umin, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %1 = icmp ugt i64 %.016.lcssa, %.8.val
  br i1 %1, label %2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

2:                                                ; preds = %.critedge2
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.240, i64 noundef %.016.lcssa, i64 noundef %.8.val) #24, !noalias !81
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %.critedge2
  %i.n = sub i64 %.0.lcssa, %.016.lcssa
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !24, !alias.scope !81
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.016.lcssa ; 2 uses
  %i.q = sub nuw i64 %.8.val, %.016.lcssa
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 %i.q) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !81
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !25, !noalias !81
  %i.r = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.r, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !21, !alias.scope !81
  %i.t = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !81
  store i64 %i.t, ptr %i.o, align 8, !tbaa !26, !alias.scope !81
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.u = phi ptr [ %i.s, %.noexc10.i.i ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.v = load i8, ptr %i.p, align 1, !tbaa !26
  store i8 %i.v, ptr %i.u, align 1, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.p, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.w = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !81 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !20, !alias.scope !81
  %i.y = load ptr, ptr %0, align 8, !tbaa !21, !alias.scope !81
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !81
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %bcmp.i = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp ne i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.h = phi i1 [ true, %bb.a ], [ %i.g, %bb.c ], [ false, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable
define i32 @llama_chat_builtin_templates(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL18LLM_CHAT_TEMPLATESB5cxx11, i64 40), align 8, !tbaa !27 ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %1) ; 2 uses
  %.not = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL18LLM_CHAT_TEMPLATESB5cxx11, i64 24), align 8, !tbaa !28
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.c = trunc i64 %i.a to i32
  ret i32 %i.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.08 = phi i64 [ %i.h, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0.07 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.08
  store ptr %i.e, ptr %i.f, align 8, !tbaa !83
  %i.g = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0.07) #26
  %i.h = add nuw i64 %.08, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !82
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !26
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !84

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.e
  br i1 %or.cond.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = load ptr, ptr %2, align 8, !tbaa !21
  %i.n = tail call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %.sroa.speculated.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.o = sub i64 %i.g, %i.i
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.p = icmp slt i32 %.0.i.i.i.i, 0
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit: ; preds = %bb.b, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %i.q = phi i1 [ %i.p, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ true, %bb.b ]
  %i.r = load ptr, ptr %3, align 8, !tbaa !87, !nonnull !88, !align !89
  %i.s = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #27 ; 3 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE17_M_construct_nodeIJRKS9_EEEvPSt13_Rb_tree_nodeIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(36) %2)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.q, ptr noundef nonnull %i.s, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit
  %.sroa.08.0 = phi ptr [ %i.s, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit ], [ %i.b, %bb.a ]
  ret ptr %.sroa.08.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.h) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.m = load ptr, ptr %2, align 8, !tbaa !21
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.o = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.m, i64 noundef %.sroa.speculated.i.i.i) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.p = sub i64 %i.h, %i.j
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.p, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.q = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.q, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.b
  %i.r = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20   ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20   ; 4 uses
  %.sroa.speculated.i.i.i10 = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.v) ; 3 uses
  %i.y = icmp eq i64 %.sroa.speculated.i.i.i10, 0
  br i1 %i.y, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21  ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.ac = tail call i32 @memcmp(ptr noundef %i.ab, ptr noundef %i.aa, i64 noundef %.sroa.speculated.i.i.i10) #23 ; 2 uses
  %.not.i.i.i12 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i12, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18: ; preds = %bb.e
  %i.ad = sub i64 %i.v, %i.x
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11
  %i.af = sub i64 %i.v, %i.x
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11
  %i.ah = icmp slt i32 %i.ac, 0
  br i1 %i.ah, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #26 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !20 ; 2 uses
  %.sroa.speculated.i.i.i19 = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.an) ; 2 uses
  %i.ao = icmp eq i64 %.sroa.speculated.i.i.i19, 0
  br i1 %i.ao, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i23, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20: ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.aq = load ptr, ptr %2, align 8, !tbaa !21
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !21
  %i.as = tail call i32 @memcmp(ptr noundef %i.ar, ptr noundef %i.aq, i64 noundef %.sroa.speculated.i.i.i19) #23 ; 2 uses
  %.not.i.i.i21 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i21, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i23, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i23: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20, %bb.g
  %i.at = sub i64 %i.an, %i.v
  %spec.select7.i.i.i.i24 = tail call i64 @llvm.smax.i64(i64 %i.at, i64 -2147483648)
  %.08.i.i.i.i25 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i24, i64 2147483647)
  %.0.i6.i.i.i26 = trunc nsw i64 %.08.i.i.i.i25 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i23
  %.0.i.i.i22 = phi i32 [ %i.as, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20 ], [ %.0.i6.i.i.i26, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i23 ]
  %i.au = icmp slt i32 %.0.i.i.i22, 0
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !29
  %i.ax = icmp eq ptr %i.aw, null                 ; 2 uses
  %spec.select = select i1 %i.ax, ptr null, ptr %1
  %spec.select73 = select i1 %i.ax, ptr %i.al, ptr %1
  br label %bb.n

bb.i:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27
  %i.ay = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.az = extractvalue { ptr, ptr } %i.ay, 0
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1
  br label %bb.n

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread
  %i.bb = tail call i32 @memcmp(ptr noundef %i.aa, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i.i10) #23 ; 2 uses
  %.not.i.i.i30 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i30, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36

end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE24_M_get_insert_unique_posERS7_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !22 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !22  ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !90

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !21
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #23 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE17_M_construct_nodeIJRKS9_EEEvPSt13_Rb_tree_nodeIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !24
  %i.d = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.f, ptr %i.a, align 8, !tbaa !25
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !21
  %i.i = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.i, ptr %i.c, align 8, !tbaa !26
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !26
  store i8 %i.k, ptr %i.j, align 1, !tbaa !26
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #23 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #25
  invoke void @__cxa_rethrow() #24
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !20
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !32
  store i32 %i.v, ptr %i.t, align 8, !tbaa !32
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #22
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #13

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_llama_chat.cpp() #17 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, llm_chat_template>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, llm_chat_template>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %1 = alloca [54 x %"struct.std::pair"], align 8 ; 275 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 6, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 0, ptr %i.f, align 2, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.i, ptr noundef nonnull align 1 dereferenceable(6) @.str.1, i64 6, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 6, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 62
  store i8 0, ptr %i.k, align 2, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 1, ptr %i.l, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.n, ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 10, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 106
  store i8 0, ptr %i.p, align 2, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 2, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.s, ptr noundef nonnull align 1 dereferenceable(14) @.str.3, i64 14, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 14, ptr %i.t, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 150
  store i8 0, ptr %i.u, align 2, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i32 3, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 16, ptr %i.c, align 8, !tbaa !25
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc236.i unwind label %bb.d ; 2 uses

.noexc236.i:                                      ; preds = %bb.a
  store ptr %i.y, ptr %i.w, align 8, !tbaa !21
  %i.z = load i64, ptr %i.c, align 8, !tbaa !25   ; 3 uses
  store i64 %i.z, ptr %i.x, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.y, ptr noundef nonnull align 1 dereferenceable(16) @.str.4, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !20
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i32 4, ptr %i.ad, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.af, ptr noundef nonnull align 1 dereferenceable(10) @.str.5, i64 10, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 10, ptr %i.ag, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 226
  store i8 0, ptr %i.ah, align 2, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 232
  store i32 5, ptr %i.ai, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ak, ptr noundef nonnull align 1 dereferenceable(10) @.str.6, i64 10, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i64 10, ptr %i.al, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 266
  store i8 0, ptr %i.am, align 2, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i32 6, ptr %i.an, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 17, ptr %i.b, align 8, !tbaa !25
  %i.aq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc247.i unwind label %bb.e ; 2 uses

.noexc247.i:                                      ; preds = %.noexc236.i
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !21
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !25  ; 3 uses
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.aq, ptr noundef nonnull align 1 dereferenceable(17) @.str.7, i64 17, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 288
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !20
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i32 7, ptr %i.av, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ax, ptr noundef nonnull align 1 dereferenceable(10) @.str.8, i64 10, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i64 10, ptr %i.ay, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 346
  store i8 0, ptr %i.az, align 2, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i32 8, ptr %i.ba, align 8, !tbaa !32
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 17, ptr %i.a, align 8, !tbaa !25
  %i.bd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc254.i unwind label %bb.f ; 2 uses

.noexc254.i:                                      ; preds = %.noexc247.i
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !21
  %i.be = load i64, ptr %i.a, align 8, !tbaa !25  ; 3 uses
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.bd, ptr noundef nonnull align 1 dereferenceable(17) @.str.9, i64 17, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !20
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i32 9, ptr %i.bi, align 8, !tbaa !32
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !24
  store i32 862546032, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i64 4, ptr %i.bl, align 8, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 420
  store i8 0, ptr %i.bm, align 4, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 432
  store i32 10, ptr %i.bn, align 8, !tbaa !32
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !24
  store i32 879323248, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 448
  store i64 4, ptr %i.bq, align 8, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 460
  store i8 0, ptr %i.br, align 4, !tbaa !26
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 472
  store i32 11, ptr %i.bs, align 8, !tbaa !32
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bu, ptr noundef nonnull align 1 dereferenceable(7) @.str.12, i64 7, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 488
  store i64 7, ptr %i.bv, align 8, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 503
  store i8 0, ptr %i.bw, align 1, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 512
  store i32 12, ptr %i.bx, align 8, !tbaa !32
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bz, ptr noundef nonnull align 1 dereferenceable(6) @.str.13, i64 6, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 528
  store i64 6, ptr %i.ca, align 8, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 542
  store i8 0, ptr %i.cb, align 2, !tbaa !26
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 552
  store i32 13, ptr %i.cc, align 8, !tbaa !32
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ce, ptr noundef nonnull align 1 dereferenceable(7) @.str.14, i64 7, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 568
  store i64 7, ptr %i.cf, align 8, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 583
  store i8 0, ptr %i.cg, align 1, !tbaa !26
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 592
  store i32 14, ptr %i.ch, align 8, !tbaa !32
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cj, ptr noundef nonnull align 1 dereferenceable(5) @.str.15, i64 5, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 608
  store i64 5, ptr %i.ck, align 8, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 621
  store i8 0, ptr %i.cl, align 1, !tbaa !26
end_hunk_2
begin_hunk_3_@_GLOBAL__sub_I_llama_chat.cpp:bb.a
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 1946
  store i8 0, ptr %i.iu, align 2, !tbaa !26
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 1952
  store i32 49, ptr %i.iv, align 8, !tbaa !32
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 1960
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 1976 ; 2 uses
  store ptr %i.ix, ptr %i.iw, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ix, ptr noundef nonnull align 1 dereferenceable(7) @.str.49, i64 7, i1 false)
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 1968
  store i64 7, ptr %i.iy, align 8, !tbaa !20
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 1983
  store i8 0, ptr %i.iz, align 1, !tbaa !26
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 1992
  store i32 50, ptr %i.ja, align 8, !tbaa !32
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 2000
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 2016 ; 2 uses
  store ptr %i.jc, ptr %i.jb, align 8, !tbaa !24
  store i64 8319115392180381043, ptr %i.jc, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 2008
  store i64 8, ptr %i.jd, align 8, !tbaa !20
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 2024
  store i8 0, ptr %i.je, align 8, !tbaa !26
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 2032
  store i32 51, ptr %i.jf, align 8, !tbaa !32
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 2040
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 2056 ; 2 uses
  store ptr %i.jh, ptr %i.jg, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.jh, ptr noundef nonnull align 1 dereferenceable(6) @.str.51, i64 6, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 2048
  store i64 6, ptr %i.ji, align 8, !tbaa !20
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 2062
  store i8 0, ptr %i.jj, align 2, !tbaa !26
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 2072
  store i32 52, ptr %i.jk, align 8, !tbaa !32
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 2080
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 2096 ; 2 uses
  store ptr %i.jm, ptr %i.jl, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.jm, ptr noundef nonnull align 1 dereferenceable(14) @.str.52, i64 14, i1 false)
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 2088
  store i64 14, ptr %i.jn, align 8, !tbaa !20
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 2110
  store i8 0, ptr %i.jo, align 2, !tbaa !26
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 2112
  store i32 53, ptr %i.jp, align 8, !tbaa !32
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 2120
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 2136 ; 2 uses
  store ptr %i.jr, ptr %i.jq, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.jr, ptr noundef nonnull align 1 dereferenceable(10) @.str.53, i64 10, i1 false)
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 2128
  store i64 10, ptr %i.js, align 8, !tbaa !20
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 2146
  store i8 0, ptr %i.jt, align 2, !tbaa !26
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 2152
  store i32 54, ptr %i.ju, align 8, !tbaa !32
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL18LLM_CHAT_TEMPLATESB5cxx11, i64 8), align 8, !tbaa !92
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZL18LLM_CHAT_TEMPLATESB5cxx11, i64 16), align 8, !tbaa !14
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18LLM_CHAT_TEMPLATESB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZL18LLM_CHAT_TEMPLATESB5cxx11, i64 24), align 8, !tbaa !28
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18LLM_CHAT_TEMPLATESB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZL18LLM_CHAT_TEMPLATESB5cxx11, i64 32), align 8, !tbaa !93
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL18LLM_CHAT_TEMPLATESB5cxx11, i64 40), align 8, !tbaa !27
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 2160 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  store ptr @_ZL18LLM_CHAT_TEMPLATESB5cxx11, ptr %0, align 8, !tbaa !94
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i.i, %.noexc254.i
  %.07.i.i.idx.i = phi i64 [ %.07.i.i.add.i, %.noexc.i.i ], [ 0, %.noexc254.i ] ; 2 uses
  %.07.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %1, i64 %.07.i.i.idx.i
  %i.jw = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) @_ZL18LLM_CHAT_TEMPLATESB5cxx11, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZL18LLM_CHAT_TEMPLATESB5cxx11, i64 8), ptr noundef nonnull align 8 dereferenceable(36) %.07.i.i.ptr.i, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc.i.i unwind label %.body.i ; 0 uses

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %.07.i.i.add.i = add nuw nsw i64 %.07.i.i.idx.i, 40 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.07.i.i.add.i, 2160
  br i1 %.not.i.i.i, label %bb.b, label %.lr.ph.i.i.i, !llvm.loop !91

.body.i:                                          ; preds = %.lr.ph.i.i.i
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) @_ZL18LLM_CHAT_TEMPLATESB5cxx11) #23
  br label %bb.g

bb.b:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateED2Ev.exit.i, %bb.b
  %i.jy = phi ptr [ %i.jv, %bb.b ], [ %i.jz, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateED2Ev.exit.i ] ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -40 ; 3 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !21 ; 2 uses
  %i.kb = getelementptr inbounds i8, ptr %i.jy, i64 -24 ; 2 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !26
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.ke) #25
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateED2Ev.exit.i

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.kf = icmp eq ptr %i.jz, %1
  br i1 %i.kf, label %__cxx_global_var_init.exit, label %bb.c

bb.d:                                             ; preds = %bb.a
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.e:                                             ; preds = %.noexc236.i
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.f:                                             ; preds = %.noexc247.i
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.g:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateED2Ev.exit426.i, %.body.i
  %i.kj = phi ptr [ %i.jv, %.body.i ], [ %i.kk, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateED2Ev.exit426.i ] ; 2 uses
  %i.kk = getelementptr inbounds i8, ptr %i.kj, i64 -40 ; 3 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !21 ; 2 uses
  %i.km = getelementptr inbounds i8, ptr %i.kj, i64 -24 ; 2 uses
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateED2Ev.exit426.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i424.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i424.i: ; preds = %bb.g
  %i.ko = load i64, ptr %i.km, align 8, !tbaa !26
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.kp) #25
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateED2Ev.exit426.i

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateED2Ev.exit426.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i424.i
  %i.kq = icmp eq ptr %i.kk, %1
  br i1 %i.kq, label %.thread.i, label %bb.g

.preheader.preheader.i:                           ; preds = %bb.f, %bb.e, %bb.d
  %.52169.i = phi ptr [ %i.bb, %bb.f ], [ %i.w, %bb.d ], [ %i.ao, %bb.e ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ki, %bb.f ], [ %i.kg, %bb.d ], [ %i.kh, %bb.e ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateED2Ev.exit429.i, %.preheader.preheader.i
  %i.kr = phi ptr [ %i.ks, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateED2Ev.exit429.i ], [ %.52169.i, %.preheader.preheader.i ] ; 2 uses
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 -40 ; 3 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !21 ; 2 uses
  %i.ku = getelementptr inbounds i8, ptr %i.kr, i64 -24 ; 2 uses
  %i.kv = icmp eq ptr %i.kt, %i.ku
  br i1 %i.kv, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateED2Ev.exit429.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i427.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i427.i: ; preds = %.preheader.i
  %i.kw = load i64, ptr %i.ku, align 8, !tbaa !26
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kx) #25
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateED2Ev.exit429.i

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateED2Ev.exit429.i: ; preds = %.preheader.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i427.i
  %i.ky = icmp eq ptr %i.ks, %1
  br i1 %i.ky, label %.thread.i, label %.preheader.i

.thread.i:                                        ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateED2Ev.exit429.i, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateED2Ev.exit426.i
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn488.i = phi { ptr, i32 } [ %i.jx, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateED2Ev.exit426.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateED2Ev.exit429.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn488.i

__cxx_global_var_init.exit:                       ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.kz = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateSt4lessIS5_ESaISt4pairIKS5_S6_EEED2Ev, ptr nonnull @_ZL18LLM_CHAT_TEMPLATESB5cxx11, ptr nonnull @__dso_handle) #23 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(none) }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin nounwind }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_ZTSSt14_Rb_tree_color", !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !9, i64 0}
!11 = !{!"_ZTSSt18_Rb_tree_node_base", !8, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!12 = !{!"long", !4, i64 0}
!13 = !{!"_ZTSSt15_Rb_tree_header", !11, i64 0, !12, i64 32}
!14 = !{!13, !10, i64 8}
!15 = !{!"_ZTS17llm_chat_template", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 omnipotent char", !9, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !12, i64 8, !4, i64 16}
!20 = !{!19, !12, i64 8}
!21 = !{!19, !17, i64 0}
!22 = !{!10, !10, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!18, !17, i64 0}
!25 = !{!12, !12, i64 0}
!26 = !{!4, !4, i64 0}
!27 = !{!13, !12, i64 32}
!28 = !{!13, !10, i64 16}
!29 = !{!11, !10, i64 24}
!30 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE", !9, i64 0}
!31 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17llm_chat_templateE", !19, i64 0, !15, i64 32}
!32 = !{!31, !15, i64 32}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !23}
!35 = distinct !{!35, !23}
!36 = distinct !{!36, !23}
!37 = distinct !{null}
!38 = distinct !{!38, !23}
!39 = distinct !{!39, !23, !68}
!40 = distinct !{!40, !23, !68}
!41 = distinct !{!41, !23, !68}
!42 = distinct !{!42, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!43 = distinct !{!43, !42, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!44 = distinct !{!44, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!45 = distinct !{!45, !44, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!46 = !{!"any p2 pointer", !9, i64 0}
!47 = !{!"p2 _ZTS18llama_chat_message", !46, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"p1 _ZTS18llama_chat_message", !9, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"_ZTS18llama_chat_message", !17, i64 0, !17, i64 8}
!52 = !{!51, !17, i64 0}
!53 = !{!"vtable pointer", !3, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"_ZTSSt13_Ios_Fmtflags", !4, i64 0}
!56 = !{!"_ZTSSt12_Ios_Iostate", !4, i64 0}
!57 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!58 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !12, i64 8}
!59 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!60 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!61 = !{!"_ZTSSt6locale", !60, i64 0}
!62 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !55, i64 24, !56, i64 28, !56, i64 32, !57, i64 40, !58, i64 48, !4, i64 64, !5, i64 192, !59, i64 200, !61, i64 208}
!63 = !{!62, !56, i64 32}
!64 = !{!51, !17, i64 8}
!65 = !{!"_ZTSNSt12_Vector_baseIPK18llama_chat_messageSaIS2_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!66 = !{!65, !47, i64 8}
!67 = !{!65, !47, i64 0}
!68 = !{!"llvm.loop.peeled.count", i32 1}
!69 = !{!43}
!70 = !{!45}
!71 = !{!45, !43}
!72 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !61, i64 56}
!73 = !{!72, !17, i64 40}
!74 = !{!72, !17, i64 32}
!75 = !{!"_ZTSSi", !12, i64 8}
!76 = !{!75, !12, i64 8}
!77 = distinct !{!77, !23}
!78 = distinct !{!78, !23}
!79 = distinct !{!79, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!80 = distinct !{!80, !79, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!81 = !{!80}
!82 = distinct !{!82, !23}
!83 = !{!17, !17, i64 0}
!84 = distinct !{!84, !23}
!85 = !{!11, !10, i64 16}
!86 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17llm_chat_templateESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE11_Alloc_nodeE", !30, i64 0}
!87 = !{!86, !30, i64 0}
!88 = !{}
!89 = !{i64 8}
!90 = distinct !{!90, !23}
!91 = distinct !{!91, !23}
!92 = !{!13, !8, i64 0}
!93 = !{!13, !10, i64 24}
!94 = !{!30, !30, i64 0}
end_hunk_3
