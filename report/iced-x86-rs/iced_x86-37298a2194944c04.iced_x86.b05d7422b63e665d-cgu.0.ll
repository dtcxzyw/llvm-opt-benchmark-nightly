Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0
@161 = private unnamed_addr constant [2 x i8] c"ss", align 1
@162 = private unnamed_addr constant [2 x i8] c"ds", align 1
@163 = private unnamed_addr constant [2 x i8] c"fs", align 1
@164 = private unnamed_addr constant [2 x i8] c"gs", align 1
@165 = private unnamed_addr constant [2 x i8] c"al", align 1
@166 = private unnamed_addr constant [2 x i8] c"cl", align 1
@167 = private unnamed_addr constant [2 x i8] c"ax", align 1
@168 = private unnamed_addr constant [2 x i8] c"dx", align 1
@169 = private unnamed_addr constant [3 x i8] c"eax", align 1
@170 = private unnamed_addr constant [3 x i8] c"rax", align 1
@171 = private unnamed_addr constant [2 x i8] c"ST", align 1
@172 = private unnamed_addr constant [3 x i8] c"(i)", align 1
@173 = private unnamed_addr constant [3 x i8] c"(0)", align 1
@174 = private unnamed_addr constant [4 x i8] c"imm8", align 1
@175 = private unnamed_addr constant [5 x i8] c"imm16", align 1
@176 = private unnamed_addr constant [5 x i8] c"imm32", align 1
@177 = private unnamed_addr constant [5 x i8] c"imm64", align 1
@178 = private unnamed_addr constant [5 x i8] c"rel16", align 1
@179 = private unnamed_addr constant [5 x i8] c"rel32", align 1
@180 = private unnamed_addr constant [6 x i8] c"disp16", align 1
@181 = private unnamed_addr constant [6 x i8] c"disp32", align 1
@182 = private unnamed_addr constant [6 x i8] c"sibmem", align 1
@183 = private unnamed_addr constant [3 x i8] c"tmm", align 1
@184 = private unnamed_addr constant [1 x i8] c"z", align 1
@185 = private unnamed_addr constant [3 x i8] c"sae", align 1
@186 = private unnamed_addr constant [2 x i8] c"er", align 1
@187 = private unnamed_addr constant [9 x i8] c"<invalid>", align 1
@188 = private unnamed_addr constant [10 x i8] c"ZERO_BYTES", align 1
@189 = private unnamed_addr constant [35 x i8] c"Can't encode an invalid instruction", align 1
@190 = private unnamed_addr constant [32 x i8] c"iced-x86/src/block_enc/block.rs\00", align 1
@191 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @190, [16 x i8] c"\1F\00\00\00\00\00\00\00J\00\00\00%\00\00\00" }>, align 8
@192 = private unnamed_addr constant [14 x i8] c"Internal error", align 1
@193 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @190, [16 x i8] c"\1F\00\00\00\00\00\00\00\\\00\00\00\12\00\00\00" }>, align 8
@194 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @190, [16 x i8] c"\1F\00\00\00\00\00\00\006\00\00\00\16\00\00\00" }>, align 8
@195 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @190, [16 x i8] c"\1F\00\00\00\00\00\00\00:\00\00\00\12\00\00\00" }>, align 8
@196 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @190, [16 x i8] c"\1F\00\00\00\00\00\00\009\00\00\00\12\00\00\00" }>, align 8
@197 = private unnamed_addr constant [36 x i8] c"iced-x86/src/block_enc/instr/mod.rs\00", align 1
@198 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @197, [16 x i8] c"#\00\00\00\00\00\00\00d\00\00\00+\00\00\00" }>, align 8
@199 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @197, [16 x i8] c"#\00\00\00\00\00\00\00m\00\00\00+\00\00\00" }>, align 8
@200 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @197, [16 x i8] c"#\00\00\00\00\00\00\00j\00\00\006\00\00\00" }>, align 8
@201 = private unnamed_addr constant [43 x i8] c"iced-x86/src/block_enc/instr/call_instr.rs\00", align 1
@202 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @201, [16 x i8] c"*\00\00\00\00\00\00\00>\00\00\00\1E\00\00\00" }>, align 8
@203 = private unnamed_addr constant [48 x i8] c"iced-x86/src/block_enc/instr/simple_br_instr.rs\00", align 1
@204 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @203, [16 x i8] c"/\00\00\00\00\00\00\00}\00\00\00\1E\00\00\00" }>, align 8
@205 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @203, [16 x i8] c"/\00\00\00\00\00\00\00j\00\00\00\1E\00\00\00" }>, align 8
@206 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @203, [16 x i8] c"/\00\00\00\00\00\00\00\AB\00\00\00\12\00\00\00" }>, align 8
@207 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @203, [16 x i8] c"/\00\00\00\00\00\00\00E\00\00\00\16\00\00\00" }>, align 8
@208 = private unnamed_addr constant [42 x i8] c"iced-x86/src/block_enc/instr/jcc_instr.rs\00", align 1
@209 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @208, [16 x i8] c")\00\00\00\00\00\00\00z\00\00\00\1E\00\00\00" }>, align 8
@210 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @208, [16 x i8] c")\00\00\00\00\00\00\00g\00\00\00\1E\00\00\00" }>, align 8
@211 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @208, [16 x i8] c")\00\00\00\00\00\00\00\B1\00\00\00\12\00\00\00" }>, align 8
@212 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @208, [16 x i8] c")\00\00\00\00\00\00\00\A9\00\00\00\11\00\00\00" }>, align 8
@213 = private unnamed_addr constant [42 x i8] c"iced-x86/src/block_enc/instr/jmp_instr.rs\00", align 1
@214 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @213, [16 x i8] c")\00\00\00\00\00\00\00f\00\00\00\1E\00\00\00" }>, align 8
@215 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @213, [16 x i8] c")\00\00\00\00\00\00\00S\00\00\00\1E\00\00\00" }>, align 8
@216 = private unnamed_addr constant [28 x i8] c"iced-x86/src/instruction.rs\00", align 1
@217 = private unnamed_addr constant [35 x i8] c"iced-x86/src/formatter/gas/info.rs\00", align 1
@218 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @217, [16 x i8] c"\22\00\00\00\00\00\00\00\C2\00\00\00\16\00\00\00" }>, align 8
@219 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @217, [16 x i8] c"\22\00\00\00\00\00\00\00\F1\00\00\00\12\00\00\00" }>, align 8
@220 = private unnamed_addr constant [36 x i8] c"iced-x86/src/formatter/masm/info.rs\00", align 1
@221 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @220, [16 x i8] c"#\00\00\00\00\00\00\00\BB\00\00\00\12\00\00\00" }>, align 8
@222 = private unnamed_addr constant [36 x i8] c"iced-x86/src/formatter/nasm/info.rs\00", align 1
@223 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @222, [16 x i8] c"#\00\00\00\00\00\00\00\C9\00\00\00\12\00\00\00" }>, align 8
@224 = private unnamed_addr constant [37 x i8] c"iced-x86/src/formatter/intel/info.rs\00", align 1
@225 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @224, [16 x i8] c"$\00\00\00\00\00\00\00\BC\00\00\00\12\00\00\00" }>, align 8
@226 = private unnamed_addr constant [14 x i8] c"Invalid opkind", align 1
@227 = private unnamed_addr constant [15 x i8] c"Invalid operand", align 1
@228 = private unnamed_addr constant [13 x i8] c"Invalid index", align 1
@229 = private unnamed_addr constant [26 x i8] c"iced-x86/src/block_enc.rs\00", align 1
@230 = private unnamed_addr constant [29 x i8] c"iced-x86/src/info/factory.rs\00", align 1
@231 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @230, [16 x i8] c"\1C\00\00\00\00\00\00\00q\08\00\00$\00\00\00" }>, align 8
@232 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @230, [16 x i8] c"\1C\00\00\00\00\00\00\00\AC\0A\00\001\00\00\00" }>, align 8
@233 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @230, [16 x i8] c"\1C\00\00\00\00\00\00\00u\09\00\00V\00\00\00" }>, align 8
@234 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @230, [16 x i8] c"\1C\00\00\00\00\00\00\00\9F\08\00\00$\00\00\00" }>, align 8
@235 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @230, [16 x i8] c"\1C\00\00\00\00\00\00\00\9F\09\00\00V\00\00\00" }>, align 8
@236 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @230, [16 x i8] c"\1C\00\00\00\00\00\00\00G\09\00\00V\00\00\00" }>, align 8
@237 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @230, [16 x i8] c"\1C\00\00\00\00\00\00\00\04\08\00\009\00\00\00" }>, align 8
@238 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @230, [16 x i8] c"\1C\00\00\00\00\00\00\00\C8\0A\00\00(\00\00\00" }>, align 8
@239 = private unnamed_addr constant [7 x i8] c" !(11):", align 1
@240 = private unnamed_addr constant [4 x i8] c" 11:", align 1
@241 = private unnamed_addr constant [3 x i8] c"rrr", align 1
@242 = private unnamed_addr constant [3 x i8] c"bbb", align 1
@243 = private unnamed_addr constant [3 x i8] c" /r", align 1
@244 = private unnamed_addr constant [36 x i8] c"iced-x86/src/encoder/op_code_fmt.rs\00", align 1
@245 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @244, [16 x i8] c"#\00\00\00\00\00\00\00#\01\00\00C\00\00\00" }>, align 8
@246 = private unnamed_addr constant [6 x i8] c" /vsib", align 1
@247 = private unnamed_addr constant [3 x i8] c" cp", align 1
@248 = private unnamed_addr constant [3 x i8] c" mo", align 1
@249 = private unnamed_addr constant [5 x i8] c" /is4", align 1
@250 = private unnamed_addr constant [5 x i8] c" /is5", align 1
@251 = private unnamed_addr constant [3 x i8] c" ib", align 1
@252 = private unnamed_addr constant [3 x i8] c" iw", align 1
@253 = private unnamed_addr constant [3 x i8] c" id", align 1
@254 = private unnamed_addr constant [3 x i8] c" io", align 1
@255 = private unnamed_addr constant [3 x i8] c" cb", align 1
@256 = private unnamed_addr constant [3 x i8] c" cw", align 1
@257 = private unnamed_addr constant [3 x i8] c" cd", align 1
@258 = private unnamed_addr constant [4 x i8] c"MAP5", align 1
@259 = private unnamed_addr constant [4 x i8] c"MAP6", align 1
@260 = private unnamed_addr constant [3 x i8] c"NP ", align 1
@261 = private unnamed_addr constant [3 x i8] c"+rb", align 1
@262 = private unnamed_addr constant [3 x i8] c"+rw", align 1
@263 = private unnamed_addr constant [3 x i8] c"+rd", align 1
@264 = private unnamed_addr constant [3 x i8] c"+ro", align 1
@265 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @244, [16 x i8] c"#\00\00\00\00\00\00\00c\01\00\00\12\00\00\00" }>, align 8
@266 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @244, [16 x i8] c"#\00\00\00\00\00\00\00[\01\00\00\12\00\00\00" }>, align 8
@267 = private unnamed_addr constant [8 x i8] c"\C3 \00\00i\02\00\00", align 1
@268 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @244, [16 x i8] c"#\00\00\00\00\00\00\00f\00\00\00*\00\00\00" }>, align 8
@269 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @244, [16 x i8] c"#\00\00\00\00\00\00\00\C0\01\00\00 \00\00\00" }>, align 8
@270 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @244, [16 x i8] c"#\00\00\00\00\00\00\00\B5\01\00\00O\00\00\00" }>, align 8
@271 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @244, [16 x i8] c"#\00\00\00\00\00\00\00\B8\01\00\00=\00\00\00" }>, align 8
@272 = private unnamed_addr constant [2 x i8] c"LZ", align 1
@273 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @244, [16 x i8] c"#\00\00\00\00\00\00\00\BC\01\00\00\19\00\00\00" }>, align 8
@274 = private unnamed_addr constant [3 x i8] c"LIG", align 1
@275 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @244, [16 x i8] c"#\00\00\00\00\00\00\00\DA\01\00\005\00\00\00" }>, align 8
@276 = private unnamed_addr constant [3 x i8] c"VEX", align 1
@277 = private unnamed_addr constant [4 x i8] c"EVEX", align 1
@278 = private unnamed_addr constant [3 x i8] c"XOP", align 1
@279 = private unnamed_addr constant [12 x i8] c"<zero_bytes>", align 1
@280 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @222, [16 x i8] c"#\00\00\00\00\00\00\00\\\05\00\00\12\00\00\00" }>, align 8
@281 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @229, [16 x i8] c"\19\00\00\00\00\00\00\00\C6\00\00\002\00\00\00" }>, align 8
@282 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @229, [16 x i8] c"\19\00\00\00\00\00\00\00\E9\00\00\00\1D\00\00\00" }>, align 8
@283 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @229, [16 x i8] c"\19\00\00\00\00\00\00\00\E8\00\00\006\00\00\00" }>, align 8
@284 = private unnamed_addr constant [45 x i8] c"*Multiple instructions with the same IP: 0x\C0\00", align 1
@285 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @229, [16 x i8] c"\19\00\00\00\00\00\00\00j\01\00\00\15\00\00\00" }>, align 8
@286 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @229, [16 x i8] c"\19\00\00\00\00\00\00\00i\01\00\00:\00\00\00" }>, align 8
@287 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @229, [16 x i8] c"\19\00\00\00\00\00\00\00\86\01\00\00+\00\00\00" }>, align 8
@288 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @229, [16 x i8] c"\19\00\00\00\00\00\00\00\9A\01\00\006\00\00\00" }>, align 8
@289 = private unnamed_addr constant [33 x i8] c"iced-x86/src/decoder/handlers.rs\00", align 1
@290 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @289, [16 x i8] c" \00\00\00\00\00\00\00\B5\00\00\00F\00\00\00" }>, align 8
@291 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @289, [16 x i8] c" \00\00\00\00\00\00\00\B6\00\00\00H\00\00\00" }>, align 8
@292 = private unnamed_addr constant [40 x i8] c"iced-x86/src/encoder/op_code_handler.rs\00", align 1
@293 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00\C3\00\00\00\12\00\00\00" }>, align 8
@294 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00\BE\00\00\00\12\00\00\00" }>, align 8
@295 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00\BE\00\00\00%\00\00\00" }>, align 8
@296 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00\BA\00\00\00\12\00\00\00" }>, align 8
@297 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00\BA\00\00\00%\00\00\00" }>, align 8
@298 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00\BA\00\00\008\00\00\00" }>, align 8
@299 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00\B7\00\00\00\12\00\00\00" }>, align 8
@300 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00\B7\00\00\00%\00\00\00" }>, align 8
@301 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00\B7\00\00\008\00\00\00" }>, align 8
@302 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00\B7\00\00\00K\00\00\00" }>, align 8
@303 = private unnamed_addr constant [121 x i8] c"Registers AH, CH, DH, BH can't be used if there's a REX prefix. Use AL, CL, DL, BL, SPL, BPL, SIL, DIL, R8L-R15L instead.", align 1
@304 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @220, [16 x i8] c"#\00\00\00\00\00\00\00#\05\00\00\16\00\00\00" }>, align 8
@305 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @222, [16 x i8] c"#\00\00\00\00\00\00\00\EB\05\00\00\16\00\00\00" }>, align 8
@306 = private unnamed_addr constant [25 x i8] c"iced-x86/src/register.rs\00", align 1
@307 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @289, [16 x i8] c" \00\00\00\00\00\00\00\D6\00\00\00F\00\00\00" }>, align 8
@308 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @289, [16 x i8] c" \00\00\00\00\00\00\00\D7\00\00\00H\00\00\00" }>, align 8
@309 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00E\01\00\00\12\00\00\00" }>, align 8
@310 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00?\01\00\00\12\00\00\00" }>, align 8
@311 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00?\01\00\00\22\00\00\00" }>, align 8
@312 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00:\01\00\00\12\00\00\00" }>, align 8
@313 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00:\01\00\00\22\00\00\00" }>, align 8
@314 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00:\01\00\002\00\00\00" }>, align 8
@315 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\006\01\00\00\12\00\00\00" }>, align 8
@316 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\006\01\00\00\22\00\00\00" }>, align 8
@317 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\006\01\00\002\00\00\00" }>, align 8
@318 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\006\01\00\00B\00\00\00" }>, align 8
@319 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\003\01\00\00\12\00\00\00" }>, align 8
@320 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\003\01\00\00\22\00\00\00" }>, align 8
@321 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\003\01\00\002\00\00\00" }>, align 8
@322 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\003\01\00\00B\00\00\00" }>, align 8
@323 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\003\01\00\00R\00\00\00" }>, align 8
@324 = private unnamed_addr constant [14 x i8] c"explicit panic", align 1
@325 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @306, [16 x i8] c"\18\00\00\00\00\00\00\00D\06\00\00\09\00\00\00" }>, align 8
@326 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @306, [16 x i8] c"\18\00\00\00\00\00\00\00K\06\00\00\09\00\00\00" }>, align 8
@327 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @289, [16 x i8] c" \00\00\00\00\00\00\00\FC\00\00\00P\00\00\00" }>, align 8
@328 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00\BB\01\00\00\12\00\00\00" }>, align 8
@329 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00\B6\01\00\00\12\00\00\00" }>, align 8
@330 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00\B6\01\00\00\22\00\00\00" }>, align 8
@331 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00\B2\01\00\00\12\00\00\00" }>, align 8
@332 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00\B2\01\00\00\22\00\00\00" }>, align 8
@333 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00\B2\01\00\002\00\00\00" }>, align 8
@334 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00\AF\01\00\00\12\00\00\00" }>, align 8
@335 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00\AF\01\00\00\22\00\00\00" }>, align 8
@336 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00\AF\01\00\002\00\00\00" }>, align 8
@337 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00\AF\01\00\00B\00\00\00" }>, align 8
@338 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @289, [16 x i8] c" \00\00\00\00\00\00\00\14\01\00\00D\00\00\00" }>, align 8
@339 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @292, [16 x i8] c"'\00\00\00\00\00\00\00Q\02\00\00\13\00\00\00" }>, align 8
@340 = private unnamed_addr constant [43 x i8] c"The instruction must use an opmask register", align 1
@341 = private unnamed_addr constant [48 x i8] c"The instruction doesn't support opmask registers", align 1
@342 = private unnamed_addr constant [55 x i8] c"The instruction doesn't support suppress-all-exceptions", align 1
@343 = private unnamed_addr constant [48 x i8] c"The instruction doesn't support rounding control", align 1
@344 = private unnamed_addr constant [44 x i8] c"The instruction doesn't support broadcasting", align 1
@345 = private unnamed_addr constant [47 x i8] c"The instruction doesn't support zeroing masking", align 1
@346 = private unnamed_addr constant [1 x i8] c"h", align 1
@347 = private unnamed_addr constant [1 x i8] c"o", align 1
@348 = private unnamed_addr constant [1 x i8] c"b", align 1
@349 = private unnamed_addr constant [2 x i8] c"0x", align 1
@350 = private unnamed_addr constant [1 x i8] c"0", align 1
@351 = private unnamed_addr constant [2 x i8] c"0b", align 1
@352 = private unnamed_addr constant [13 x i8] c"Invalid slice", align 1
@353 = private unnamed_addr constant [24 x i8] c"iced-x86/src/decoder.rs\00", align 1
@354 = private unnamed_addr constant [4 x i8] c"xchg", align 1
@355 = private unnamed_addr constant [5 x i8] c"xchgw", align 1
@356 = private unnamed_addr constant [5 x i8] c"xchgl", align 1
@357 = private unnamed_addr constant [5 x i8] c"xchgq", align 1
@358 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @224, [16 x i8] c"$\00\00\00\00\00\00\006\03\00\00\12\00\00\00" }>, align 8
@359 = private unnamed_addr constant [20 x i8] c"Invalid slice length", align 1
@360 = private unnamed_addr constant [35 x i8] c"iced-x86/src/instruction_create.rs\00", align 1
@361 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @360, [16 x i8] c"\22\00\00\00\00\00\00\00\16\0D\00\00.\00\00\00" }>, align 8
@362 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @360, [16 x i8] c"\22\00\00\00\00\00\00\00\C8\0D\00\00.\00\00\00" }>, align 8
@363 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @360, [16 x i8] c"\22\00\00\00\00\00\00\00:\0E\00\00.\00\00\00" }>, align 8
@364 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @217, [16 x i8] c"\22\00\00\00\00\00\00\00'\04\00\00\12\00\00\00" }>, align 8
@365 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @217, [16 x i8] c"\22\00\00\00\00\00\00\00\E9\04\00\00\12\00\00\00" }>, align 8
@366 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @224, [16 x i8] c"$\00\00\00\00\00\00\00\FC\03\00\00\16\00\00\00" }>, align 8
@367 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @220, [16 x i8] c"#\00\00\00\00\00\00\00b\04\00\00\12\00\00\00" }>, align 8
@368 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @222, [16 x i8] c"#\00\00\00\00\00\00\00\DB\04\00\00\12\00\00\00" }>, align 8
@369 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @217, [16 x i8] c"\22\00\00\00\00\00\00\00^\05\00\00\12\00\00\00" }>, align 8
@370 = private unnamed_addr constant [1 x i8] c"-", align 1
@371 = private unnamed_addr constant [1 x i8] c" ", align 1
@372 = private unnamed_addr constant [1 x i8] c"+", align 1
@373 = private unnamed_addr constant [1 x i8] c"(", align 1
@374 = private unnamed_addr constant [1 x i8] c")", align 1
@375 = private unnamed_addr constant [31 x i8] c"Invalid db/dw/dd/dq data length", align 1
@376 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"\1F\00\00\00\00\00\00\00\C6\00\00\00\1C\00\00\00" }>, align 8
@377 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"\1F\00\00\00\00\00\00\00\C7\00\00\00\1C\00\00\00" }>, align 8
@378 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"\1F\00\00\00\00\00\00\00\C8\00\00\00\1C\00\00\00" }>, align 8
@379 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"\1F\00\00\00\00\00\00\00\C9\00\00\00\1C\00\00\00" }>, align 8
@380 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"\1F\00\00\00\00\00\00\00\E1\00\00\00\1C\00\00\00" }>, align 8
@381 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"\1F\00\00\00\00\00\00\00\E2\00\00\00\1C\00\00\00" }>, align 8
@382 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"\1F\00\00\00\00\00\00\00\E3\00\00\00\1C\00\00\00" }>, align 8
@383 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"\1F\00\00\00\00\00\00\00\E4\00\00\00\1C\00\00\00" }>, align 8
@384 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"\1F\00\00\00\00\00\00\00\E5\00\00\00\1C\00\00\00" }>, align 8
@385 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"\1F\00\00\00\00\00\00\00\18\01\00\00\1C\00\00\00" }>, align 8
@386 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"\1F\00\00\00\00\00\00\00\19\01\00\00\1C\00\00\00" }>, align 8
@387 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"\1F\00\00\00\00\00\00\00\1A\01\00\00\1C\00\00\00" }>, align 8
@388 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"\1F\00\00\00\00\00\00\00\1B\01\00\00\1C\00\00\00" }>, align 8
@389 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"\1F\00\00\00\00\00\00\00Y\05\00\00\17\00\00\00" }>, align 8
@390 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @197, [16 x i8] c"#\00\00\00\00\00\00\00G\01\00\000\00\00\00" }>, align 8
@391 = private unnamed_addr constant [16 x i8] c"Block is too big", align 1
@392 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @197, [16 x i8] c"#\00\00\00\00\00\00\00R\01\00\00\12\00\00\00" }>, align 8
@393 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr12xbegin_instrNtB4_11XbeginInstrNtB6_5Instr16get_target_instr, ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr12xbegin_instrNtB4_11XbeginInstrNtB6_5Instr8optimize, ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr12xbegin_instrNtB4_11XbeginInstrNtB6_5Instr6encode }>, align 8
@394 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr15simple_br_instr17SimpleBranchInstrEBJ_, [16 x i8] c"H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr15simple_br_instrNtB4_17SimpleBranchInstrNtB6_5Instr16get_target_instr, ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr15simple_br_instrNtB4_17SimpleBranchInstrNtB6_5Instr8optimize, ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr15simple_br_instrNtB4_17SimpleBranchInstrNtB6_5Instr6encode }>, align 8
@395 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr10call_instr9CallInstrEBJ_, [16 x i8] c"H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr10call_instrNtB4_9CallInstrNtB6_5Instr16get_target_instr, ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr10call_instrNtB4_9CallInstrNtB6_5Instr8optimize, ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr10call_instrNtB4_9CallInstrNtB6_5Instr6encode }>, align 8
@396 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9jmp_instr8JmpInstrEBJ_, [16 x i8] c"H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9jmp_instrNtB4_8JmpInstrNtB6_5Instr16get_target_instr, ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9jmp_instrNtB4_8JmpInstrNtB6_5Instr8optimize, ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9jmp_instrNtB4_8JmpInstrNtB6_5Instr6encode }>, align 8
@397 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9jcc_instr8JccInstrEBJ_, [16 x i8] c"H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9jcc_instrNtB4_8JccInstrNtB6_5Instr16get_target_instr, ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9jcc_instrNtB4_8JccInstrNtB6_5Instr8optimize, ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9jcc_instrNtB4_8JccInstrNtB6_5Instr6encode }>, align 8
@398 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr15ip_relmem_instrNtB4_15IpRelMemOpInstrNtB6_5Instr16get_target_instr, ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr15ip_relmem_instrNtB4_15IpRelMemOpInstrNtB6_5Instr8optimize, ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr15ip_relmem_instrNtB4_15IpRelMemOpInstrNtB6_5Instr6encode }>, align 8
@399 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr12simple_instrNtB4_11SimpleInstrNtB6_5Instr16get_target_instr, ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr12simple_instrNtB4_11SimpleInstrNtB6_5Instr8optimize, ptr @_RNvXs_NtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr12simple_instrNtB4_11SimpleInstrNtB6_5Instr6encode }>, align 8
@400 = private unnamed_addr constant [1 x i8] c":", align 1
@401 = private unnamed_addr constant [1 x i8] c",", align 1
@402 = private unnamed_addr constant [1 x i8] c"*", align 1
@403 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @217, [16 x i8] c"\22\00\00\00\00\00\00\00!\00\00\00\09\00\00\00" }>, align 8
@404 = private unnamed_addr constant [1 x i8] c"$", align 1
@405 = private unnamed_addr constant [1 x i8] c"{", align 1
@406 = private unnamed_addr constant [1 x i8] c"}", align 1
@407 = private unnamed_addr constant [1 x i8] c";", align 1
@408 = private unnamed_addr constant [49 x i8] c"assertion failed: len_data.len() >= required_size", align 1
@409 = private unnamed_addr constant [31 x i8] c"iced-x86/src/formatter/fast.rs\00", align 1
@410 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @409, [16 x i8] c"\1E\00\00\00\00\00\00\00t\00\00\00\09\00\00\00" }>, align 8
@411 = private unnamed_addr constant [46 x i8] c"assertion failed: len_data[0] as usize <= SIZE", align 1
@412 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @409, [16 x i8] c"\1E\00\00\00\00\00\00\00u\00\00\00\09\00\00\00" }>, align 8
@413 = private unnamed_addr constant [31 x i8] c"iced-x86/src/formatter/masm.rs\00", align 1
@414 = private unnamed_addr constant [1 x i8] c"[", align 1
@415 = private unnamed_addr constant [1 x i8] c"]", align 1
@416 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @220, [16 x i8] c"#\00\00\00\00\00\00\00 \00\00\00\09\00\00\00" }>, align 8
@417 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @413, [16 x i8] c"\1E\00\00\00\00\00\00\00\D3\05\00\00 \00\00\00" }>, align 8
@418 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @222, [16 x i8] c"#\00\00\00\00\00\00\00-\00\00\00\09\00\00\00" }>, align 8
@419 = private unnamed_addr constant [32 x i8] c"iced-x86/src/formatter/intel.rs\00", align 1
@420 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @224, [16 x i8] c"$\00\00\00\00\00\00\00!\00\00\00\09\00\00\00" }>, align 8
@421 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @419, [16 x i8] c"\1F\00\00\00\00\00\00\00\A1\05\00\00 \00\00\00" }>, align 8
@422 = private unnamed_addr constant [7 x i8] c"Unknown", align 1
@423 = private unnamed_addr constant [5 x i8] c"UInt8", align 1
@424 = private unnamed_addr constant [6 x i8] c"UInt16", align 1
@425 = private unnamed_addr constant [6 x i8] c"UInt32", align 1
@426 = private unnamed_addr constant [6 x i8] c"UInt52", align 1
@427 = private unnamed_addr constant [6 x i8] c"UInt64", align 1
@428 = private unnamed_addr constant [7 x i8] c"UInt128", align 1
@429 = private unnamed_addr constant [7 x i8] c"UInt256", align 1
@430 = private unnamed_addr constant [7 x i8] c"UInt512", align 1
@431 = private unnamed_addr constant [4 x i8] c"Int8", align 1
@432 = private unnamed_addr constant [5 x i8] c"Int16", align 1
@433 = private unnamed_addr constant [5 x i8] c"Int32", align 1
@434 = private unnamed_addr constant [5 x i8] c"Int64", align 1
@435 = private unnamed_addr constant [6 x i8] c"Int128", align 1
@436 = private unnamed_addr constant [6 x i8] c"Int256", align 1
@437 = private unnamed_addr constant [6 x i8] c"Int512", align 1
@438 = private unnamed_addr constant [8 x i8] c"SegPtr16", align 1
@439 = private unnamed_addr constant [8 x i8] c"SegPtr32", align 1
@440 = private unnamed_addr constant [8 x i8] c"SegPtr64", align 1
@441 = private unnamed_addr constant [10 x i8] c"WordOffset", align 1
@442 = private unnamed_addr constant [11 x i8] c"DwordOffset", align 1
@443 = private unnamed_addr constant [11 x i8] c"QwordOffset", align 1
@444 = private unnamed_addr constant [16 x i8] c"Bound16_WordWord", align 1
@445 = private unnamed_addr constant [18 x i8] c"Bound32_DwordDword", align 1
@446 = private unnamed_addr constant [5 x i8] c"Bnd32", align 1
@447 = private unnamed_addr constant [5 x i8] c"Bnd64", align 1
@448 = private unnamed_addr constant [6 x i8] c"Fword6", align 1
@449 = private unnamed_addr constant [7 x i8] c"Fword10", align 1
@450 = private unnamed_addr constant [7 x i8] c"Float16", align 1
@451 = private unnamed_addr constant [7 x i8] c"Float32", align 1
@452 = private unnamed_addr constant [7 x i8] c"Float64", align 1
@453 = private unnamed_addr constant [7 x i8] c"Float80", align 1
@454 = private unnamed_addr constant [8 x i8] c"Float128", align 1
@455 = private unnamed_addr constant [8 x i8] c"BFloat16", align 1
@456 = private unnamed_addr constant [8 x i8] c"FpuEnv14", align 1
@457 = private unnamed_addr constant [8 x i8] c"FpuEnv28", align 1
@458 = private unnamed_addr constant [10 x i8] c"FpuState94", align 1
@459 = private unnamed_addr constant [11 x i8] c"FpuState108", align 1
@460 = private unnamed_addr constant [14 x i8] c"Fxsave_512Byte", align 1
@461 = private unnamed_addr constant [16 x i8] c"Fxsave64_512Byte", align 1
@462 = private unnamed_addr constant [5 x i8] c"Xsave", align 1
@463 = private unnamed_addr constant [7 x i8] c"Xsave64", align 1
@464 = private unnamed_addr constant [3 x i8] c"Bcd", align 1
@465 = private unnamed_addr constant [7 x i8] c"Tilecfg", align 1
@466 = private unnamed_addr constant [4 x i8] c"Tile", align 1
@467 = private unnamed_addr constant [19 x i8] c"SegmentDescSelector", align 1
@468 = private unnamed_addr constant [14 x i8] c"KLHandleAes128", align 1
@469 = private unnamed_addr constant [14 x i8] c"KLHandleAes256", align 1
@470 = private unnamed_addr constant [14 x i8] c"Packed16_UInt8", align 1
@471 = private unnamed_addr constant [13 x i8] c"Packed16_Int8", align 1
@472 = private unnamed_addr constant [14 x i8] c"Packed32_UInt8", align 1
@473 = private unnamed_addr constant [13 x i8] c"Packed32_Int8", align 1
@474 = private unnamed_addr constant [15 x i8] c"Packed32_UInt16", align 1
@475 = private unnamed_addr constant [14 x i8] c"Packed32_Int16", align 1
@476 = private unnamed_addr constant [16 x i8] c"Packed32_Float16", align 1
@477 = private unnamed_addr constant [17 x i8] c"Packed32_BFloat16", align 1
@478 = private unnamed_addr constant [14 x i8] c"Packed64_UInt8", align 1
@479 = private unnamed_addr constant [13 x i8] c"Packed64_Int8", align 1
@480 = private unnamed_addr constant [15 x i8] c"Packed64_UInt16", align 1
@481 = private unnamed_addr constant [14 x i8] c"Packed64_Int16", align 1
@482 = private unnamed_addr constant [15 x i8] c"Packed64_UInt32", align 1
@483 = private unnamed_addr constant [14 x i8] c"Packed64_Int32", align 1
@484 = private unnamed_addr constant [16 x i8] c"Packed64_Float16", align 1
@485 = private unnamed_addr constant [16 x i8] c"Packed64_Float32", align 1
@486 = private unnamed_addr constant [15 x i8] c"Packed128_UInt8", align 1
@487 = private unnamed_addr constant [14 x i8] c"Packed128_Int8", align 1
@488 = private unnamed_addr constant [16 x i8] c"Packed128_UInt16", align 1
@489 = private unnamed_addr constant [15 x i8] c"Packed128_Int16", align 1
@490 = private unnamed_addr constant [16 x i8] c"Packed128_UInt32", align 1
@491 = private unnamed_addr constant [15 x i8] c"Packed128_Int32", align 1
@492 = private unnamed_addr constant [16 x i8] c"Packed128_UInt52", align 1
@493 = private unnamed_addr constant [16 x i8] c"Packed128_UInt64", align 1
@494 = private unnamed_addr constant [15 x i8] c"Packed128_Int64", align 1
@495 = private unnamed_addr constant [17 x i8] c"Packed128_Float16", align 1
@496 = private unnamed_addr constant [17 x i8] c"Packed128_Float32", align 1
@497 = private unnamed_addr constant [17 x i8] c"Packed128_Float64", align 1
@498 = private unnamed_addr constant [18 x i8] c"Packed128_BFloat16", align 1
@499 = private unnamed_addr constant [19 x i8] c"Packed128_2xFloat16", align 1
@500 = private unnamed_addr constant [20 x i8] c"Packed128_2xBFloat16", align 1
@501 = private unnamed_addr constant [15 x i8] c"Packed256_UInt8", align 1
@502 = private unnamed_addr constant [14 x i8] c"Packed256_Int8", align 1
@503 = private unnamed_addr constant [16 x i8] c"Packed256_UInt16", align 1
@504 = private unnamed_addr constant [15 x i8] c"Packed256_Int16", align 1
@505 = private unnamed_addr constant [16 x i8] c"Packed256_UInt32", align 1
@506 = private unnamed_addr constant [15 x i8] c"Packed256_Int32", align 1
@507 = private unnamed_addr constant [16 x i8] c"Packed256_UInt52", align 1
@508 = private unnamed_addr constant [16 x i8] c"Packed256_UInt64", align 1
@509 = private unnamed_addr constant [15 x i8] c"Packed256_Int64", align 1
@510 = private unnamed_addr constant [17 x i8] c"Packed256_UInt128", align 1
@511 = private unnamed_addr constant [16 x i8] c"Packed256_Int128", align 1
@512 = private unnamed_addr constant [17 x i8] c"Packed256_Float16", align 1
@513 = private unnamed_addr constant [17 x i8] c"Packed256_Float32", align 1
@514 = private unnamed_addr constant [17 x i8] c"Packed256_Float64", align 1
@515 = private unnamed_addr constant [18 x i8] c"Packed256_Float128", align 1
@516 = private unnamed_addr constant [18 x i8] c"Packed256_BFloat16", align 1
@517 = private unnamed_addr constant [19 x i8] c"Packed256_2xFloat16", align 1
@518 = private unnamed_addr constant [20 x i8] c"Packed256_2xBFloat16", align 1
@519 = private unnamed_addr constant [15 x i8] c"Packed512_UInt8", align 1
@520 = private unnamed_addr constant [14 x i8] c"Packed512_Int8", align 1
@521 = private unnamed_addr constant [16 x i8] c"Packed512_UInt16", align 1
@522 = private unnamed_addr constant [15 x i8] c"Packed512_Int16", align 1
@523 = private unnamed_addr constant [16 x i8] c"Packed512_UInt32", align 1
@524 = private unnamed_addr constant [15 x i8] c"Packed512_Int32", align 1
@525 = private unnamed_addr constant [16 x i8] c"Packed512_UInt52", align 1
@526 = private unnamed_addr constant [16 x i8] c"Packed512_UInt64", align 1
@527 = private unnamed_addr constant [15 x i8] c"Packed512_Int64", align 1
@528 = private unnamed_addr constant [17 x i8] c"Packed512_UInt128", align 1
@529 = private unnamed_addr constant [17 x i8] c"Packed512_Float16", align 1
@530 = private unnamed_addr constant [17 x i8] c"Packed512_Float32", align 1
@531 = private unnamed_addr constant [17 x i8] c"Packed512_Float64", align 1
@532 = private unnamed_addr constant [19 x i8] c"Packed512_2xFloat16", align 1
@533 = private unnamed_addr constant [20 x i8] c"Packed512_2xBFloat16", align 1
@534 = private unnamed_addr constant [19 x i8] c"Broadcast32_Float16", align 1
@535 = private unnamed_addr constant [18 x i8] c"Broadcast64_UInt32", align 1
@536 = private unnamed_addr constant [17 x i8] c"Broadcast64_Int32", align 1
@537 = private unnamed_addr constant [19 x i8] c"Broadcast64_Float16", align 1
@538 = private unnamed_addr constant [19 x i8] c"Broadcast64_Float32", align 1
@539 = private unnamed_addr constant [18 x i8] c"Broadcast128_Int16", align 1
@540 = private unnamed_addr constant [19 x i8] c"Broadcast128_UInt16", align 1
@541 = private unnamed_addr constant [19 x i8] c"Broadcast128_UInt32", align 1
@542 = private unnamed_addr constant [18 x i8] c"Broadcast128_Int32", align 1
@543 = private unnamed_addr constant [19 x i8] c"Broadcast128_UInt52", align 1
@544 = private unnamed_addr constant [19 x i8] c"Broadcast128_UInt64", align 1
@545 = private unnamed_addr constant [18 x i8] c"Broadcast128_Int64", align 1
@546 = private unnamed_addr constant [20 x i8] c"Broadcast128_Float16", align 1
@547 = private unnamed_addr constant [20 x i8] c"Broadcast128_Float32", align 1
@548 = private unnamed_addr constant [20 x i8] c"Broadcast128_Float64", align 1
@549 = private unnamed_addr constant [20 x i8] c"Broadcast128_2xInt16", align 1
@550 = private unnamed_addr constant [20 x i8] c"Broadcast128_2xInt32", align 1
@551 = private unnamed_addr constant [21 x i8] c"Broadcast128_2xUInt32", align 1
@552 = private unnamed_addr constant [22 x i8] c"Broadcast128_2xFloat16", align 1
@553 = private unnamed_addr constant [23 x i8] c"Broadcast128_2xBFloat16", align 1
@554 = private unnamed_addr constant [18 x i8] c"Broadcast256_Int16", align 1
@555 = private unnamed_addr constant [19 x i8] c"Broadcast256_UInt16", align 1
@556 = private unnamed_addr constant [19 x i8] c"Broadcast256_UInt32", align 1
@557 = private unnamed_addr constant [18 x i8] c"Broadcast256_Int32", align 1
@558 = private unnamed_addr constant [19 x i8] c"Broadcast256_UInt52", align 1
@559 = private unnamed_addr constant [19 x i8] c"Broadcast256_UInt64", align 1
@560 = private unnamed_addr constant [18 x i8] c"Broadcast256_Int64", align 1
@561 = private unnamed_addr constant [20 x i8] c"Broadcast256_Float16", align 1
@562 = private unnamed_addr constant [20 x i8] c"Broadcast256_Float32", align 1
@563 = private unnamed_addr constant [20 x i8] c"Broadcast256_Float64", align 1
end_hunk_0
begin_hunk_1_@_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction24try_with_declare_byte_16:bb.a
  %i.x = zext i8 %14 to i64
  %i.y = shl nuw nsw i64 %i.x, 40
  %i.z = or disjoint i64 %i.w, %i.y
  %i.aa = zext i8 %15 to i64
  %i.ab = shl nuw nsw i64 %i.aa, 48
  %i.ac = add nuw nsw i64 %i.z, %i.ab
  %i.ad = zext i8 %16 to i64
  %i.ae = shl nuw i64 %i.ad, 56
  %i.af = add nuw nsw i64 %i.ac, %i.ae
  %.sroa.35.sroa.8.0.insert.ext = zext i8 %4 to i32
  %.sroa.35.sroa.8.0.insert.shift = shl nuw i32 %.sroa.35.sroa.8.0.insert.ext, 24
  %.sroa.35.sroa.7.0.insert.ext = zext i8 %3 to i32
  %.sroa.35.sroa.7.0.insert.shift = shl nuw nsw i32 %.sroa.35.sroa.7.0.insert.ext, 16
  %.sroa.35.sroa.7.0.insert.insert = or disjoint i32 %.sroa.35.sroa.8.0.insert.shift, %.sroa.35.sroa.7.0.insert.shift
  %.sroa.35.sroa.6.0.insert.ext = zext i8 %2 to i32
  %.sroa.35.sroa.6.0.insert.shift = shl nuw nsw i32 %.sroa.35.sroa.6.0.insert.ext, 8
  %.sroa.35.sroa.6.0.insert.insert = or disjoint i32 %.sroa.35.sroa.7.0.insert.insert, %.sroa.35.sroa.6.0.insert.shift
  %.sroa.35.sroa.0.0.insert.ext = zext i8 %1 to i32
  %.sroa.35.sroa.0.0.insert.insert = or disjoint i32 %.sroa.35.sroa.6.0.insert.insert, %.sroa.35.sroa.0.0.insert.ext
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.563.0..sroa_idx, align 8
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 3840, ptr %.sroa.664.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.35.sroa.0.0.insert.insert, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10.0..sroa_idx, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction24try_with_declare_dword_1(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i32 noundef %1) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  store i32 %1, ptr %.sroa.812.0..sroa_idx, align 4
  %.sroa.913.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 3, ptr %.sroa.913.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10.0..sroa_idx, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction24try_with_declare_dword_2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  store i32 256, ptr %.sroa.613.0..sroa_idx, align 4
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %.sroa.714.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %1, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 3, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1015.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1015.0..sroa_idx, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction24try_with_declare_dword_3(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i32 %3 to i64
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 512, ptr %.sroa.615.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %1, ptr %.sroa.816.0..sroa_idx, align 4
  %.sroa.917.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 3, ptr %.sroa.917.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10.0..sroa_idx, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction24try_with_declare_dword_4(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = zext i32 %4 to i64
  %i.c = shl nuw i64 %i.b, 32
  %i.d = or disjoint i64 %i.c, %i.a
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 768, ptr %.sroa.619.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %1, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 3, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1020.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1020.0..sroa_idx, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction24try_with_declare_qword_1(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i64 noundef %1) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = lshr i64 %1, 32
  %i.c = trunc nuw i64 %i.b to i32
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store i32 %i.c, ptr %.sroa.711.0..sroa_idx, align 8
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.a, ptr %.sroa.812.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 4, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1013.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1013.0..sroa_idx, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction24try_with_declare_qword_2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = lshr i64 %1, 32
  %i.c = trunc nuw i64 %i.b to i32
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 256, ptr %.sroa.612.0..sroa_idx, align 4
  %.sroa.713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.c, ptr %.sroa.713.0..sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.a, ptr %.sroa.814.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 4, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10.0..sroa_idx, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction26with_declare_word_slice_u8(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = icmp ult i64 %i.a, 16
  %i.c = and i64 %2, 1
  %i.d = icmp eq i64 %i.c, 0
  %or.cond = and i1 %i.b, %i.d
  br i1 %or.cond, label %.lr.ph.preheader, label %bb.d

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = trunc nuw nsw i64 %2 to i32
  %i.f = shl nuw nsw i32 %i.e, 7
  %i.g = add nsw i32 %i.f, -256
  %exitcond.not = icmp eq i64 %2, 0
  br i1 %exitcond.not, label %3, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.7, %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %bb.c
  %.sroa.23.sroa.6.2.ph.lcssa = phi i16 [ 0, %bb.c ], [ %i.y, %.lr.ph.1 ], [ %i.y, %.lr.ph.2 ], [ %i.y, %.lr.ph.3 ], [ %i.y, %.lr.ph.4 ], [ %i.y, %.lr.ph.5 ], [ %i.y, %.lr.ph.6 ], [ %i.y, %.lr.ph.7 ]
  %.sroa.18.2.ph.lcssa = phi i32 [ 0, %bb.c ], [ 0, %.lr.ph.1 ], [ %i.ag, %.lr.ph.2 ], [ %i.ar, %.lr.ph.3 ], [ %i.ar, %.lr.ph.4 ], [ %i.ar, %.lr.ph.5 ], [ %i.ar, %.lr.ph.6 ], [ %i.ar, %.lr.ph.7 ]
  %.sroa.5.2.ph.lcssa = phi i64 [ 0, %bb.c ], [ 0, %.lr.ph.1 ], [ 0, %.lr.ph.2 ], [ 0, %.lr.ph.3 ], [ %i.az, %.lr.ph.4 ], [ %i.bk, %.lr.ph.5 ], [ %i.bv, %.lr.ph.6 ], [ %i.cg, %.lr.ph.7 ]
  %i.h = zext i16 %.sroa.23.sroa.6.2.ph.lcssa to i32
  %i.i = shl nuw i32 %i.h, 16
  %i.j = or disjoint i32 %i.i, %i.q
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.2.ph.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.g, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.18.2.ph.lcssa, ptr %.sroa.725.0..sroa_idx, align 8
  %.sroa.826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.j, ptr %.sroa.826.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 2, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10.0..sroa_idx, i8 0, i64 6, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %._crit_edge
  ret void

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !noundef !21
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = load i8, ptr %1, align 1, !noundef !21
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.n, %i.p
  %exitcond85.not = icmp eq i64 %2, 2
  br i1 %exitcond85.not, label %._crit_edge, label %.lr.ph.1

3:                                                ; preds = %.lr.ph.preheader
  %4 = or disjoint i64 %2, 1
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %4, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #47
  unreachable

.lr.ph.1:                                         ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = load i8, ptr %i.r, align 1, !noundef !21
  %i.t = zext i8 %i.s to i16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.v = load i8, ptr %i.u, align 1, !noundef !21
  %i.w = zext i8 %i.v to i16
  %i.x = shl nuw i16 %i.w, 8
  %i.y = or disjoint i16 %i.x, %i.t               ; 7 uses
  %exitcond85.not.1 = icmp eq i64 %2, 4
  br i1 %exitcond85.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !noundef !21
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !21
  %i.af = zext i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ac, %i.af            ; 2 uses
  %exitcond85.not.2 = icmp eq i64 %2, 6
  br i1 %exitcond85.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ai = load i8, ptr %i.ah, align 1, !noundef !21
  %i.aj = zext i8 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.al = load i8, ptr %i.ak, align 1, !noundef !21
  %i.am = zext i8 %i.al to i32
  %i.an = and i32 %i.ag, 65535
  %i.ao = shl nuw i32 %i.aj, 24
  %i.ap = shl nuw nsw i32 %i.am, 16
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = or disjoint i32 %i.aq, %i.an            ; 5 uses
  %exitcond85.not.3 = icmp eq i64 %2, 8
  br i1 %exitcond85.not.3, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.at = load i8, ptr %i.as, align 1, !noundef !21
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !21
  %i.ay = zext i8 %i.ax to i64
  %i.az = or disjoint i64 %i.av, %i.ay            ; 2 uses
  %exitcond85.not.4 = icmp eq i64 %2, 10
  br i1 %exitcond85.not.4, label %._crit_edge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.bb = load i8, ptr %i.ba, align 1, !noundef !21
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.be = load i8, ptr %i.bd, align 1, !noundef !21
  %i.bf = zext i8 %i.be to i64
  %i.bg = and i64 %i.az, -4294901761
  %i.bh = shl nuw nsw i64 %i.bc, 24
  %i.bi = shl nuw nsw i64 %i.bf, 16
  %i.bj = or disjoint i64 %i.bh, %i.bi
  %i.bk = or disjoint i64 %i.bj, %i.bg            ; 2 uses
  %exitcond85.not.5 = icmp eq i64 %2, 12
  br i1 %exitcond85.not.5, label %._crit_edge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !21
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !21
  %i.bq = zext i8 %i.bp to i64
  %i.br = and i64 %i.bk, -281470681743361
  %i.bs = shl nuw nsw i64 %i.bn, 40
  %i.bt = shl nuw nsw i64 %i.bq, 32
  %i.bu = or disjoint i64 %i.bs, %i.bt
  %i.bv = or disjoint i64 %i.bu, %i.br            ; 2 uses
  %exitcond85.not.6 = icmp eq i64 %2, 14
  br i1 %exitcond85.not.6, label %._crit_edge, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !21
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ca = load i8, ptr %i.bz, align 1, !noundef !21
  %i.cb = zext i8 %i.ca to i64
  %i.cc = and i64 %i.bv, 281474976710655
  %i.cd = shl nuw i64 %i.by, 56
  %i.ce = shl nuw nsw i64 %i.cb, 48
  %i.cf = or disjoint i64 %i.cd, %i.ce
  %i.cg = or disjoint i64 %i.cf, %i.cc
  br label %._crit_edge

bb.d:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @359, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 20, ptr %.sroa.56.0..sroa_idx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 -1, ptr %i.ch, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction27with_declare_dword_slice_u8(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = icmp ult i64 %i.a, 16
  %i.c = and i64 %2, 3
  %i.d = icmp eq i64 %i.c, 0
  %or.cond = and i1 %i.b, %i.d
  br i1 %or.cond, label %.lr.ph.preheader, label %bb.e

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = trunc nuw nsw i64 %2 to i32
  %i.f = shl nuw nsw i32 %i.e, 6
  %i.g = add nsw i32 %i.f, -256
  %exitcond.not = icmp eq i64 %2, 0
  br i1 %exitcond.not, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %bb.d
  %.sroa.14.2.ph.lcssa = phi i32 [ 0, %bb.d ], [ %i.j, %.lr.ph.1 ], [ %i.j, %.lr.ph.2 ], [ %i.j, %.lr.ph.3 ]
  %.sroa.5.2.ph.lcssa = phi i64 [ 0, %bb.d ], [ 0, %.lr.ph.1 ], [ %i.m, %.lr.ph.2 ], [ %i.s, %.lr.ph.3 ]
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.2.ph.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.g, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.14.2.ph.lcssa, ptr %.sroa.726.0..sroa_idx, align 8
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.h, ptr %.sroa.827.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 3, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1028.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1028.0..sroa_idx, i8 0, i64 6, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %._crit_edge
  ret void

bb.c:                                             ; preds = %.lr.ph.preheader
  %3 = or disjoint i64 %2, 1
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @362) #47
  unreachable

bb.d:                                             ; preds = %.lr.ph.preheader
  %i.h = load i32, ptr %1, align 1
  %exitcond108.not = icmp eq i64 %2, 4
  br i1 %exitcond108.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 1              ; 3 uses
  %exitcond108.not.1 = icmp eq i64 %2, 8
  br i1 %exitcond108.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 1
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %exitcond108.not.2 = icmp eq i64 %2, 12
  br i1 %exitcond108.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load i32, ptr %i.n, align 1
  %i.p = and i64 %i.m, 4294967295
  %i.q = zext i32 %i.o to i64
  %i.r = shl nuw i64 %i.q, 32
  %i.s = or disjoint i64 %i.r, %i.p
  br label %._crit_edge

bb.e:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @359, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 20, ptr %.sroa.56.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 -1, ptr %i.t, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction27with_declare_qword_slice_u8(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = icmp ult i64 %i.a, 16
  %i.c = and i64 %2, 7
  %i.d = icmp eq i64 %i.c, 0
  %or.cond = and i1 %i.b, %i.d
  br i1 %or.cond, label %.lr.ph.preheader, label %bb.e

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = trunc nuw nsw i64 %2 to i32
  %i.f = shl nuw nsw i32 %i.e, 5
  %i.g = add nsw i32 %i.f, -256
  %exitcond.not = icmp eq i64 %2, 0
  br i1 %exitcond.not, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %.lr.ph.1, %bb.d
  %.sroa.5.2.ph.lcssa = phi i64 [ 0, %bb.d ], [ %i.aw, %.lr.ph.1 ]
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.2.ph.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.g, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.y, ptr %.sroa.735.0..sroa_idx, align 8
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.z, ptr %.sroa.836.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 4, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10.0..sroa_idx, i8 0, i64 6, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %._crit_edge
  ret void

bb.c:                                             ; preds = %.lr.ph.preheader
  %3 = or disjoint i64 %2, 1
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @363) #47
  unreachable

bb.d:                                             ; preds = %.lr.ph.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i8, ptr %i.h, align 1, !noundef !21
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.l = load i8, ptr %i.k, align 1, !noundef !21
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = or disjoint i32 %i.n, %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.q = load i8, ptr %i.p, align 1, !noundef !21
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 16
  %i.t = or disjoint i32 %i.o, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.v = load i8, ptr %i.u, align 1, !noundef !21
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw i32 %i.w, 24
  %i.y = or disjoint i32 %i.t, %i.x
  %i.z = load i32, ptr %1, align 1
  %exitcond197.not = icmp eq i64 %2, 8
  br i1 %exitcond197.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i32, ptr %i.aa, align 1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !21
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 32
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.ai = load i8, ptr %i.ah, align 1, !noundef !21
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 40
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.am = load i8, ptr %i.al, align 1, !noundef !21
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 48
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.aq = load i8, ptr %i.ap, align 1, !noundef !21
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw i64 %i.ar, 56
  %i.at = or disjoint i64 %i.ag, %i.ak
  %i.au = or disjoint i64 %i.at, %i.ao
  %i.av = or disjoint i64 %i.au, %i.as
  %i.aw = or disjoint i64 %i.av, %i.ac
  br label %._crit_edge

bb.e:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @359, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 20, ptr %.sroa.56.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 -1, ptr %i.ax, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsH_NtNtNtCsf8MNnN4IDbl_8iced_x867decoder8handlers3vexNtB5_26OpCodeHandler_VEX_Gv_Ev_Id6decode(ptr nofree noundef readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(464) %1, ptr noalias nofree noundef align 8 dereferenceable(40) initializes((18, 19), (28, 29), (32, 34)) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8, !noundef !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 428
  %i.d = load i32, ptr %i.c, align 4, !noundef !21
  %i.e = and i32 %i.d, %i.b
  %i.f = icmp eq i32 %i.e, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %i.f, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = or i32 %.pre, 64                         ; 2 uses
  store i32 %i.g, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ %.pre, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i8 9, ptr %i.i, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.l = load i32, ptr %i.k, align 8, !noundef !21
  %i.m = and i32 %i.l, %i.h
  %i.n = icmp eq i32 %i.m, 0                      ; 2 uses
  %. = select i1 %i.n, i64 2, i64 4
  %.5 = select i1 %i.n, i32 37, i32 53            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %.sink = load i16, ptr %i.o, align 2, !range !28, !noundef !21
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i16 %.sink, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i32, ptr %i.q, align 8, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i32, ptr %i.s, align 8, !noundef !21
  %i.u = add i32 %i.r, %.5
  %i.v = add i32 %i.u, %i.t
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i8 %i.w, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.z = load i32, ptr %i.y, align 4, !noundef !21
  %i.aa = icmp eq i32 %i.z, 3
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !noundef !21
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !noundef !21
  %i.af = add i32 %i.ac, %.5
  %i.ag = add i32 %i.af, %i.ae
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 29
  store i8 %i.ah, ptr %i.ai, align 1
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ak = load i32, ptr %i.aj, align 4, !noundef !21 ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.an = icmp ult i32 %i.ak, 24
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !21, !noundef !21
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 24, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.as = load i8, ptr %i.ar, align 4, !range !44, !noundef !21
  %.not = icmp eq i8 %i.as, 0
  br i1 %.not, label %bb.f, label %bb.g, !prof !32

bb.e:                                             ; preds = %bb.f, %bb.g, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !noundef !21 ; 3 uses
  %i.av = add i64 %i.au, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !21
  %i.ay = icmp ult i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.i, label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder14read_op_mem_16(ptr noalias nofree noundef align 8 dereferenceable(464) %1, ptr noalias nofree noundef align 8 dereferenceable(40) %2, i8 noundef 0) #44
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  %i.az = tail call noundef zeroext i1 %i.ap(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(464) %1) ; 0 uses
  br label %bb.e

bb.h:                                             ; preds = %bb.e
  %i.ba = load i32, ptr %i.j, align 8, !noundef !21
  %i.bb = or i32 %i.ba, 16448
  store i32 %i.bb, ptr %i.j, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.bc = add i64 %i.au, 4
  %i.bd = inttoptr i64 %i.au to ptr
  %.sroa.03.0.copyload = load i32, ptr %i.bd, align 1
  store i64 %i.bc, ptr %i.at, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.02.0 = phi i32 [ %.sroa.03.0.copyload, %bb.i ], [ 0, %bb.h ]
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.02.0, ptr %i.be, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsH_NtNtNtCsf8MNnN4IDbl_8iced_x867decoder8handlers4evexNtB5_24OpCodeHandler_EVEX_KkWIb6decode(ptr nofree noundef readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(464) %1, ptr noalias nofree noundef align 8 dereferenceable(40) initializes((18, 19), (28, 29), (32, 34)) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !21 ; 3 uses
  %i.c = and i32 %i.b, 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i32, ptr %i.d, align 8, !noundef !21
  %i.f = or i32 %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noundef !21
  %i.i = or i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.k = load i32, ptr %i.j, align 4, !noundef !21
  %i.l = or i32 %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 428
  %i.n = load i32, ptr %i.m, align 4, !noundef !21 ; 3 uses
  %i.o = and i32 %i.l, %i.n
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = or i32 %i.b, 64                          ; 2 uses
  store i32 %i.q, ptr %i.a, align 8
  br label %bb.c

end_hunk_1
