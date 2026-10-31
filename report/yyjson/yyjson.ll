Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yyjson/original/yyjson?download=true
inline.NumInlined: 38
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 115
begin_hunk_0_@yyjson_val_write_opts:bb.a
    i32 8205, label %.thread1124
    i32 0, label %.thread1124
  ], !prof !152

.critedge321.i244:                                ; preds = %bb.kj
  %i.bsb = zext i16 %.sroa.0.0.copyload.i.i239 to i64
  %i.bsc = shl nuw nsw i64 %i.bsb, 12
  %i.bsd = lshr i16 %.sroa.0.0.copyload.i.i239, 2
  %i.bse = and i16 %i.bsd, 4032                   ; 2 uses
  %i.bsf = zext nneg i16 %i.bse to i64
  %i.bsg = and i8 %i.brx, 63
  store i16 30044, ptr %.8253.i223, align 1
  %i.bsh = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 2
  %.masked.i249 = or disjoint i64 %i.bsc, %i.bsf
  %i.bsi = lshr i64 %.masked.i249, 7
  %i.bsj = and i64 %i.bsi, 510
  %i.bsk = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bsj
  %i.bsl = load i16, ptr %i.bsk, align 2
  store i16 %i.bsl, ptr %i.bsh, align 1
  %i.bsm = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 4
  %.tr294.i250 = trunc i16 %i.bse to i8
  %.narrow295.i251 = or disjoint i8 %i.bsg, %.tr294.i250
  %i.bsn = zext i8 %.narrow295.i251 to i64
  %i.bso = shl nuw nsw i64 %i.bsn, 1
  %i.bsp = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bso
  %i.bsq = load i16, ptr %i.bsp, align 2
  store i16 %i.bsq, ptr %i.bsm, align 1
  %i.bsr = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 6
  %i.bss = getelementptr inbounds nuw i8, ptr %.8.i224, i64 3
  br label %.preheader1369.backedge

bb.kk:                                            ; preds = %bb.jt
  %.sroa.0.0.copyload.i333.i229 = load i32, ptr %.8.i224, align 1 ; 9 uses
  %i.bst = and i32 %.sroa.0.0.copyload.i333.i229, -1061109512
  %i.bsu = icmp ne i32 %i.bst, -2139062032
  %i.bsv = and i32 %.sroa.0.0.copyload.i333.i229, 12295
  %.not288.i230 = icmp eq i32 %i.bsv, 0
  %or.cond323.i231 = or i1 %i.bsu, %.not288.i230
  %i.bsw = lshr i32 %.sroa.0.0.copyload.i333.i229, 24
  br i1 %or.cond323.i231, label %.thread1124, label %bb.kl, !prof !140

bb.kl:                                            ; preds = %bb.kk
  %i.bsx = and i32 %.sroa.0.0.copyload.i333.i229, 4
  %i.bsy = icmp ne i32 %i.bsx, 0
  %i.bsz = and i32 %.sroa.0.0.copyload.i333.i229, 12291
  %i.bta = icmp ne i32 %i.bsz, 0
  %.not291.i232 = and i1 %i.bsy, %i.bta
  br i1 %.not291.i232, label %.thread1124, label %.critedge325.i235, !prof !45

.critedge325.i235:                                ; preds = %bb.kl
  %i.btb = shl i32 %.sroa.0.0.copyload.i333.i229, 18
  %i.btc = and i32 %i.btb, 1835008
  %i.btd = shl i32 %.sroa.0.0.copyload.i333.i229, 4
  %i.bte = and i32 %i.btd, 258048
  %i.btf = lshr i32 %.sroa.0.0.copyload.i333.i229, 10 ; 2 uses
  %i.btg = and i32 %i.btf, 3072
  %i.bth = and i32 %i.bsw, 63
  %i.bti = add nsw i32 %i.btc, -65536
  %i.btj = add nsw i32 %i.bti, %i.bte             ; 2 uses
  %i.btk = or disjoint i32 %i.btj, %i.btg
  %i.btl = lshr exact i32 %i.btj, 10
  %i.btm = add nuw nsw i32 %i.btl, 55296
  store i16 30044, ptr %.8253.i223, align 1
  %i.btn = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 2
  %i.bto = lshr i32 %i.btm, 7
  %i.btp = and i32 %i.bto, 65534
  %i.btq = zext nneg i32 %i.btp to i64
  %i.btr = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.btq
  %i.bts = load i16, ptr %i.btr, align 2
  store i16 %i.bts, ptr %i.btn, align 1
  %i.btt = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 4
  %i.btu = lshr exact i32 %i.btk, 9
  %i.btv = and i32 %i.btu, 510
  %i.btw = zext nneg i32 %i.btv to i64
  %i.btx = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.btw
  %i.bty = load i16, ptr %i.btx, align 2
  store i16 %i.bty, ptr %i.btt, align 1
  %i.btz = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 6
  store i16 30044, ptr %i.btz, align 1
  %i.bua = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 8
  %i.bub = lshr i32 %.sroa.0.0.copyload.i333.i229, 17
  %i.buc = and i32 %i.bub, 6
  %i.bud = zext nneg i32 %i.buc to i64
  %i.bue = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bud
  %i.buf = getelementptr inbounds nuw i8, ptr %i.bue, i64 440
  %i.bug = load i16, ptr %i.buf, align 2
  store i16 %i.bug, ptr %i.bua, align 1
  %i.buh = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 10
  %.masked3289 = and i32 %i.btf, 192
  %i.bui = or disjoint i32 %i.bth, %.masked3289
  %i.buj = shl nuw nsw i32 %i.bui, 1
  %i.buk = zext nneg i32 %i.buj to i64
  %i.bul = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.buk
  %i.bum = load i16, ptr %i.bul, align 2
  store i16 %i.bum, ptr %i.buh, align 1
  %i.bun = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 12
  br label %.preheader1369.backedge

bb.km:                                            ; preds = %bb.jt, %bb.js
  %i.buo = phi i8 [ %i.bpj, %bb.jt ], [ %i.bpb, %bb.js ]
  br i1 %.not1291, label %.thread1114, label %.thread1124

.thread1114:                                      ; preds = %bb.kc, %bb.kd, %bb.ka, %bb.jy, %bb.kb, %bb.kb, %bb.jz, %bb.jz, %bb.jv, %bb.km
  %i.bup = phi i8 [ %i.bqi, %bb.kc ], [ %i.bqi, %bb.kd ], [ %i.bqb, %bb.ka ], [ %i.bpv, %bb.jy ], [ %i.bqb, %bb.kb ], [ %i.bqb, %bb.kb ], [ %i.bpv, %bb.jz ], [ %i.bpv, %bb.jz ], [ %i.bpq, %bb.jv ], [ %i.buo, %bb.km ]
  br i1 %.not1286, label %.loopexit1370, label %bb.kn

bb.kn:                                            ; preds = %.thread1114
  %i.buq = getelementptr inbounds nuw i8, ptr %.8.i224, i64 1
  %i.bur = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 1
  store i8 %i.bup, ptr %.8253.i223, align 1, !tbaa !100
  br label %.preheader1369.backedge

.thread1124:                                      ; preds = %bb.kk, %bb.kl, %bb.ki, %bb.kj, %bb.kj, %bb.kg, %bb.km
  br i1 %.not1286, label %.loopexit1370, label %bb.ko

bb.ko:                                            ; preds = %.thread1124
  store i16 30044, ptr %.8253.i223, align 1
  %i.bus = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 2
  store i32 1145456198, ptr %i.bus, align 1
  %i.but = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 6
  %i.buu = getelementptr inbounds nuw i8, ptr %.8.i224, i64 1
  br label %.preheader1369.backedge

bb.kp:                                            ; preds = %bb.ih
  %i.buv = getelementptr inbounds nuw i8, ptr %.0.i740.lcssa, i64 1 ; 2 uses
  %i.buw = icmp ugt i64 %i.asn, 4095
  br i1 %i.buw, label %.lr.ph2391, label %.preheader1401

.preheader1401:                                   ; preds = %.lr.ph2391, %bb.kp
  %.021.i71.lcssa = phi ptr [ %i.buv, %bb.kp ], [ %i.bvl, %.lr.ph2391 ] ; 5 uses
  %.018.i72.lcssa = phi ptr [ %i.asw, %bb.kp ], [ %i.bvm, %.lr.ph2391 ] ; 5 uses
  %.0.i73.lcssa = phi i64 [ %i.asu, %bb.kp ], [ %i.bvn, %.lr.ph2391 ] ; 5 uses
  %i.bux = icmp samesign ugt i64 %.0.i73.lcssa, 3
  br i1 %i.bux, label %.lr.ph2398.preheader, label %.preheader1400

.lr.ph2398.preheader:                             ; preds = %.preheader1401
  %.018.i72.lcssa5171 = ptrtoaddr ptr %.018.i72.lcssa to i64
  %.021.i71.lcssa5170 = ptrtoaddr ptr %.021.i71.lcssa to i64
  %i.buy = add nsw i64 %.0.i73.lcssa, -4          ; 2 uses
  %i.buz = lshr i64 %i.buy, 2
  %i.bva = add nuw nsw i64 %i.buz, 1              ; 2 uses
  %min.iters.check5173 = icmp ult i64 %i.buy, 28
  %i.bvb = sub i64 %.018.i72.lcssa5171, %.021.i71.lcssa5170
  %diff.check5172 = icmp ugt i64 %i.bvb, -32
  %or.cond5312 = select i1 %min.iters.check5173, i1 true, i1 %diff.check5172
  br i1 %or.cond5312, label %.lr.ph2398.preheader5709, label %vector.ph5174

vector.ph5174:                                    ; preds = %.lr.ph2398.preheader
  %n.vec5175 = and i64 %i.bva, 9223372036854775800 ; 4 uses
  %i.bvc = shl i64 %n.vec5175, 2
  %i.bvd = sub i64 %.0.i73.lcssa, %i.bvc          ; 2 uses
  %i.bve = shl i64 %n.vec5175, 2                  ; 2 uses
  %i.bvf = getelementptr i8, ptr %.018.i72.lcssa, i64 %i.bve ; 2 uses
  %i.bvg = getelementptr i8, ptr %.021.i71.lcssa, i64 %i.bve ; 2 uses
  br label %vector.body5176

vector.body5176:                                  ; preds = %vector.body5176, %vector.ph5174
  %index5177 = phi i64 [ 0, %vector.ph5174 ], [ %index.next5182, %vector.body5176 ] ; 2 uses
  %i.bvh = shl i64 %index5177, 2                  ; 2 uses
  %next.gep5178 = getelementptr i8, ptr %.018.i72.lcssa, i64 %i.bvh ; 2 uses
  %next.gep5179 = getelementptr i8, ptr %.021.i71.lcssa, i64 %i.bvh ; 2 uses
  %i.bvi = getelementptr i8, ptr %next.gep5178, i64 16
  %wide.load5180 = load <4 x i32>, ptr %next.gep5178, align 1
  %wide.load5181 = load <4 x i32>, ptr %i.bvi, align 1
  %i.bvj = getelementptr i8, ptr %next.gep5179, i64 16
  store <4 x i32> %wide.load5180, ptr %next.gep5179, align 1
  store <4 x i32> %wide.load5181, ptr %i.bvj, align 1
  %index.next5182 = add nuw i64 %index5177, 8     ; 2 uses
  %i.bvk = icmp eq i64 %index.next5182, %n.vec5175
  br i1 %i.bvk, label %middle.block5183, label %vector.body5176, !llvm.loop !375

middle.block5183:                                 ; preds = %vector.body5176
  %cmp.n5184 = icmp eq i64 %i.bva, %n.vec5175
  br i1 %cmp.n5184, label %.preheader1400, label %.lr.ph2398.preheader5709

.lr.ph2398.preheader5709:                         ; preds = %.lr.ph2398.preheader, %middle.block5183
  %.1.i762397.ph = phi i64 [ %.0.i73.lcssa, %.lr.ph2398.preheader ], [ %i.bvd, %middle.block5183 ]
  %.119.i752396.ph = phi ptr [ %.018.i72.lcssa, %.lr.ph2398.preheader ], [ %i.bvf, %middle.block5183 ]
  %.122.i742395.ph = phi ptr [ %.021.i71.lcssa, %.lr.ph2398.preheader ], [ %i.bvg, %middle.block5183 ]
  br label %.lr.ph2398

.lr.ph2391:                                       ; preds = %bb.kp, %.lr.ph2391
  %.0.i732389 = phi i64 [ %i.bvn, %.lr.ph2391 ], [ %i.asu, %bb.kp ]
  %.018.i722388 = phi ptr [ %i.bvm, %.lr.ph2391 ], [ %i.asw, %bb.kp ] ; 2 uses
  %.021.i712387 = phi ptr [ %i.bvl, %.lr.ph2391 ], [ %i.buv, %bb.kp ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i712387, ptr noundef nonnull align 1 dereferenceable(16) %.018.i722388, i64 16, i1 false)
  %i.bvl = getelementptr inbounds nuw i8, ptr %.021.i712387, i64 16 ; 2 uses
  %i.bvm = getelementptr inbounds nuw i8, ptr %.018.i722388, i64 16 ; 2 uses
  %i.bvn = add nsw i64 %.0.i732389, -16           ; 3 uses
  %i.bvo = icmp ugt i64 %i.bvn, 15
  br i1 %i.bvo, label %.lr.ph2391, label %.preheader1401, !llvm.loop !26

.preheader1400:                                   ; preds = %.lr.ph2398, %middle.block5183, %.preheader1401
  %.122.i74.lcssa = phi ptr [ %.021.i71.lcssa, %.preheader1401 ], [ %i.bvg, %middle.block5183 ], [ %i.bwi, %.lr.ph2398 ] ; 7 uses
  %.119.i75.lcssa = phi ptr [ %.018.i72.lcssa, %.preheader1401 ], [ %i.bvf, %middle.block5183 ], [ %i.bwj, %.lr.ph2398 ] ; 6 uses
  %.1.i76.lcssa = phi i64 [ %.0.i73.lcssa, %.preheader1401 ], [ %i.bvd, %middle.block5183 ], [ %i.bwk, %.lr.ph2398 ] ; 11 uses
  %.not.i802402 = icmp eq i64 %.1.i76.lcssa, 0
  br i1 %.not.i802402, label %write_str.exit407, label %iter.check

iter.check:                                       ; preds = %.preheader1400
  %.119.i75.lcssa5156 = ptrtoaddr ptr %.122.i74.lcssa to i64
  %.122.i74.lcssa5155 = ptrtoaddr ptr %.119.i75.lcssa to i64
  %min.iters.check = icmp ult i64 %.1.i76.lcssa, 4
  %i.bvp = sub i64 %.122.i74.lcssa5155, %.119.i75.lcssa5156
  %diff.check = icmp ugt i64 %i.bvp, -32
  %or.cond5313 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond5313, label %.lr.ph2406.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5157 = icmp ult i64 %.1.i76.lcssa, 32
  br i1 %min.iters.check5157, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bvq = and i64 %.1.i76.lcssa, 28
  %n.vec = and i64 %.1.i76.lcssa, -32             ; 5 uses
  %i.bvr = and i64 %.1.i76.lcssa, 31
  %i.bvs = getelementptr i8, ptr %.119.i75.lcssa, i64 %n.vec
  %i.bvt = getelementptr i8, ptr %.122.i74.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.119.i75.lcssa, i64 %index ; 2 uses
  %next.gep5158 = getelementptr i8, ptr %.122.i74.lcssa, i64 %index ; 2 uses
  %i.bvu = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !100
  %wide.load5159 = load <16 x i8>, ptr %i.bvu, align 1, !tbaa !100
  %i.bvv = getelementptr i8, ptr %next.gep5158, i64 16
  store <16 x i8> %wide.load, ptr %next.gep5158, align 1, !tbaa !100
  store <16 x i8> %wide.load5159, ptr %i.bvv, align 1, !tbaa !100
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bvw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bvw, label %middle.block, label %vector.body, !llvm.loop !376

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.1.i76.lcssa, %n.vec
  br i1 %cmp.n, label %write_str.exit407, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bvq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2406.preheader, label %vec.epilog.ph, !prof !153

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5160 = and i64 %.1.i76.lcssa, -4          ; 4 uses
  %i.bvx = and i64 %.1.i76.lcssa, 3
  %i.bvy = getelementptr i8, ptr %.119.i75.lcssa, i64 %n.vec5160
  %i.bvz = getelementptr i8, ptr %.122.i74.lcssa, i64 %n.vec5160 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index5161 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next5165, %vec.epilog.vector.body ] ; 3 uses
  %next.gep5162 = getelementptr i8, ptr %.119.i75.lcssa, i64 %index5161
  %next.gep5163 = getelementptr i8, ptr %.122.i74.lcssa, i64 %index5161
  %wide.load5164 = load <4 x i8>, ptr %next.gep5162, align 1, !tbaa !100
  store <4 x i8> %wide.load5164, ptr %next.gep5163, align 1, !tbaa !100
  %index.next5165 = add nuw i64 %index5161, 4     ; 2 uses
  %i.bwa = icmp eq i64 %index.next5165, %n.vec5160
  br i1 %i.bwa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !377

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n5166 = icmp eq i64 %.1.i76.lcssa, %n.vec5160
  br i1 %cmp.n5166, label %write_str.exit407, label %.lr.ph2406.preheader

.lr.ph2406.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2.i792405.ph = phi i64 [ %.1.i76.lcssa, %iter.check ], [ %i.bvr, %vec.epilog.iter.check ], [ %i.bvx, %vec.epilog.middle.block ] ; 4 uses
  %.220.i782404.ph = phi ptr [ %.119.i75.lcssa, %iter.check ], [ %i.bvs, %vec.epilog.iter.check ], [ %i.bvy, %vec.epilog.middle.block ] ; 2 uses
  %.223.i772403.ph = phi ptr [ %.122.i74.lcssa, %iter.check ], [ %i.bvt, %vec.epilog.iter.check ], [ %i.bvz, %vec.epilog.middle.block ] ; 2 uses
  %i.bwb = add nsw i64 %.2.i792405.ph, -1
  %xtraiter5952 = and i64 %.2.i792405.ph, 7       ; 2 uses
  %lcmp.mod5953.not = icmp eq i64 %xtraiter5952, 0
  br i1 %lcmp.mod5953.not, label %.lr.ph2406.prol.loopexit, label %.lr.ph2406.prol

.lr.ph2406.prol:                                  ; preds = %.lr.ph2406.preheader, %.lr.ph2406.prol
  %.2.i792405.prol = phi i64 [ %i.bwf, %.lr.ph2406.prol ], [ %.2.i792405.ph, %.lr.ph2406.preheader ]
  %.220.i782404.prol = phi ptr [ %i.bwc, %.lr.ph2406.prol ], [ %.220.i782404.ph, %.lr.ph2406.preheader ] ; 2 uses
  %.223.i772403.prol = phi ptr [ %i.bwe, %.lr.ph2406.prol ], [ %.223.i772403.ph, %.lr.ph2406.preheader ] ; 2 uses
  %prol.iter5954 = phi i64 [ %prol.iter5954.next, %.lr.ph2406.prol ], [ 0, %.lr.ph2406.preheader ]
  %i.bwc = getelementptr inbounds nuw i8, ptr %.220.i782404.prol, i64 1 ; 2 uses
  %i.bwd = load i8, ptr %.220.i782404.prol, align 1, !tbaa !100
  %i.bwe = getelementptr inbounds nuw i8, ptr %.223.i772403.prol, i64 1 ; 3 uses
  store i8 %i.bwd, ptr %.223.i772403.prol, align 1, !tbaa !100
  %i.bwf = add nsw i64 %.2.i792405.prol, -1       ; 2 uses
  %prol.iter5954.next = add i64 %prol.iter5954, 1 ; 2 uses
  %prol.iter5954.cmp.not = icmp eq i64 %prol.iter5954.next, %xtraiter5952
  br i1 %prol.iter5954.cmp.not, label %.lr.ph2406.prol.loopexit, label %.lr.ph2406.prol, !llvm.loop !378

.lr.ph2406.prol.loopexit:                         ; preds = %.lr.ph2406.prol, %.lr.ph2406.preheader
  %.lcssa5797.unr = phi ptr [ poison, %.lr.ph2406.preheader ], [ %i.bwe, %.lr.ph2406.prol ]
  %.2.i792405.unr = phi i64 [ %.2.i792405.ph, %.lr.ph2406.preheader ], [ %i.bwf, %.lr.ph2406.prol ]
  %.220.i782404.unr = phi ptr [ %.220.i782404.ph, %.lr.ph2406.preheader ], [ %i.bwc, %.lr.ph2406.prol ]
  %.223.i772403.unr = phi ptr [ %.223.i772403.ph, %.lr.ph2406.preheader ], [ %i.bwe, %.lr.ph2406.prol ]
  %i.bwg = icmp ult i64 %i.bwb, 7
  br i1 %i.bwg, label %write_str.exit407, label %.lr.ph2406

.lr.ph2398:                                       ; preds = %.lr.ph2398.preheader5709, %.lr.ph2398
  %.1.i762397 = phi i64 [ %i.bwk, %.lr.ph2398 ], [ %.1.i762397.ph, %.lr.ph2398.preheader5709 ]
  %.119.i752396 = phi ptr [ %i.bwj, %.lr.ph2398 ], [ %.119.i752396.ph, %.lr.ph2398.preheader5709 ] ; 2 uses
  %.122.i742395 = phi ptr [ %i.bwi, %.lr.ph2398 ], [ %.122.i742395.ph, %.lr.ph2398.preheader5709 ] ; 2 uses
  %i.bwh = load i32, ptr %.119.i752396, align 1
  store i32 %i.bwh, ptr %.122.i742395, align 1
  %i.bwi = getelementptr inbounds nuw i8, ptr %.122.i742395, i64 4 ; 2 uses
  %i.bwj = getelementptr inbounds nuw i8, ptr %.119.i752396, i64 4 ; 2 uses
  %i.bwk = add nsw i64 %.1.i762397, -4            ; 3 uses
  %i.bwl = icmp ugt i64 %i.bwk, 3
  br i1 %i.bwl, label %.lr.ph2398, label %.preheader1400, !llvm.loop !379

.lr.ph2406:                                       ; preds = %.lr.ph2406.prol.loopexit, %.lr.ph2406
  %.2.i792405 = phi i64 [ %i.bxk, %.lr.ph2406 ], [ %.2.i792405.unr, %.lr.ph2406.prol.loopexit ]
  %.220.i782404 = phi ptr [ %i.bxh, %.lr.ph2406 ], [ %.220.i782404.unr, %.lr.ph2406.prol.loopexit ] ; 9 uses
  %.223.i772403 = phi ptr [ %i.bxj, %.lr.ph2406 ], [ %.223.i772403.unr, %.lr.ph2406.prol.loopexit ] ; 9 uses
  %i.bwm = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 1
  %i.bwn = load i8, ptr %.220.i782404, align 1, !tbaa !100
  %i.bwo = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 1
  store i8 %i.bwn, ptr %.223.i772403, align 1, !tbaa !100
  %i.bwp = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 2
  %i.bwq = load i8, ptr %i.bwm, align 1, !tbaa !100
  %i.bwr = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 2
  store i8 %i.bwq, ptr %i.bwo, align 1, !tbaa !100
  %i.bws = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 3
  %i.bwt = load i8, ptr %i.bwp, align 1, !tbaa !100
  %i.bwu = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 3
  store i8 %i.bwt, ptr %i.bwr, align 1, !tbaa !100
  %i.bwv = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 4
  %i.bww = load i8, ptr %i.bws, align 1, !tbaa !100
  %i.bwx = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 4
  store i8 %i.bww, ptr %i.bwu, align 1, !tbaa !100
  %i.bwy = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 5
  %i.bwz = load i8, ptr %i.bwv, align 1, !tbaa !100
  %i.bxa = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 5
  store i8 %i.bwz, ptr %i.bwx, align 1, !tbaa !100
  %i.bxb = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 6
  %i.bxc = load i8, ptr %i.bwy, align 1, !tbaa !100
  %i.bxd = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 6
  store i8 %i.bxc, ptr %i.bxa, align 1, !tbaa !100
  %i.bxe = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 7
  %i.bxf = load i8, ptr %i.bxb, align 1, !tbaa !100
  %i.bxg = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 7
  store i8 %i.bxf, ptr %i.bxd, align 1, !tbaa !100
  %i.bxh = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 8
  %i.bxi = load i8, ptr %i.bxe, align 1, !tbaa !100
  %i.bxj = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 8 ; 2 uses
  store i8 %i.bxi, ptr %i.bxg, align 1, !tbaa !100
  %i.bxk = add nsw i64 %.2.i792405, -8            ; 2 uses
  %.not.i80.7 = icmp eq i64 %i.bxk, 0
  br i1 %.not.i80.7, label %write_str.exit407, label %.lr.ph2406, !llvm.loop !380

write_str.exit407:                                ; preds = %.preheader1386, %.lr.ph2406.prol.loopexit, %.lr.ph2406, %.preheader1372, %bb.gw, %.lr.ph2384.prol.loopexit, %bb.hj, %bb.hl, %bb.je, %.lr.ph2434.prol.loopexit, %bb.jr, %bb.jt, %middle.block, %vec.epilog.middle.block, %.preheader1400
  %.3248.i316.lcssa.sink4530 = phi ptr [ %.122.i74.lcssa, %.preheader1400 ], [ %.8253.i322, %bb.hj ], [ %.lcssa5867.unr, %.lr.ph2434.prol.loopexit ], [ %i.bvz, %vec.epilog.middle.block ], [ %i.bxj, %.lr.ph2406 ], [ %i.bvt, %middle.block ], [ %.lcssa5784.unr, %.lr.ph2384.prol.loopexit ], [ %.2247.i215.lcssa, %.preheader1372 ], [ %.8253.i223, %bb.jr ], [ %.8253.i223, %bb.jt ], [ %i.bnk, %bb.je ], [ %.8253.i322, %bb.hl ], [ %i.bab, %bb.gw ], [ %.lcssa5797.unr, %.lr.ph2406.prol.loopexit ], [ %.2247.i314.lcssa, %.preheader1386 ] ; 4 uses
  %i.bxl = getelementptr inbounds nuw i8, ptr %.3248.i316.lcssa.sink4530, i64 1
  store i8 34, ptr %.3248.i316.lcssa.sink4530, align 1, !tbaa !100
  %i.bxm = select i1 %.not593.i, i8 44, i8 58
  %i.bxn = getelementptr inbounds nuw i8, ptr %.3248.i316.lcssa.sink4530, i64 2
  store i8 %i.bxm, ptr %i.bxl, align 1, !tbaa !100
  %i.bxo = select i1 %.not593.i, i8 10, i8 32
  %i.bxp = getelementptr inbounds nuw i8, ptr %.3248.i316.lcssa.sink4530, i64 3
  store i8 %i.bxo, ptr %i.bxn, align 1, !tbaa !100
  br label %bb.mf

bb.kq:                                            ; preds = %bb.fx
  %i.bxq = trunc i64 %.01041 to i32
  %i.bxr = and i32 %i.asc, %i.bxq
  %.not588.i = icmp ne i32 %i.bxr, 0              ; 2 uses
  %i.bxs = select i1 %.not588.i, i64 40, i64 %i.ase ; 2 uses
  %i.bxt = getelementptr inbounds nuw i8, ptr %.0523.i, i64 %i.bxs
  %.not589.i = icmp ult ptr %i.bxt, %.0493.i
  br i1 %.not589.i, label %bb.kr, label %size_align_up.exit628.i, !prof !62

size_align_up.exit628.i:                          ; preds = %bb.kq
  %i.bxu = lshr i64 %.0484.i, 1
  %i.bxv = tail call i64 @llvm.umax.i64(i64 %i.bxu, i64 %i.bxs)
  %i.bxw = add i64 %i.bxv, 7
  %i.bxx = and i64 %i.bxw, -8
  %i.bxy = add i64 %i.bxx, %.0484.i               ; 4 uses
  %i.bxz = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0542.i, i64 noundef %.0484.i, i64 noundef %i.bxy) #33, !inline_history !371 ; 6 uses
  %.not590.i = icmp eq ptr %i.bxz, null
  br i1 %.not590.i, label %.loopexit1398, label %.thread1136, !prof !45

.thread1136:                                      ; preds = %size_align_up.exit628.i
  %i.bya = ptrtoint ptr %.0504.i to i64
  %i.byb = ptrtoint ptr %.0493.i to i64           ; 2 uses
  %i.byc = sub i64 %i.bya, %i.byb                 ; 2 uses
  %i.byd = ptrtoint ptr %.0523.i to i64
  %i.bye = ptrtoint ptr %.0542.i to i64           ; 2 uses
  %i.byf = sub i64 %i.byd, %i.bye
  %i.byg = sub i64 %i.byb, %i.bye
  %i.byh = sub i64 %i.bxy, %i.byc
  %i.byi = getelementptr inbounds nuw i8, ptr %i.bxz, i64 %i.byh ; 2 uses
  %i.byj = getelementptr inbounds nuw i8, ptr %i.bxz, i64 %i.byg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.byi, ptr nonnull align 1 %i.byj, i64 %i.byc, i1 false)
  %i.byk = getelementptr inbounds nuw i8, ptr %i.bxz, i64 %i.byf
  %i.byl = getelementptr inbounds nuw i8, ptr %i.bxz, i64 %i.bxy
  br label %bb.kr

bb.kr:                                            ; preds = %.thread1136, %bb.kq
  %.4546.i = phi ptr [ %i.bxz, %.thread1136 ], [ %.0542.i, %bb.kq ] ; 2 uses
  %.5528.i = phi ptr [ %i.byk, %.thread1136 ], [ %.0523.i, %bb.kq ] ; 3 uses
  %.4508.i = phi ptr [ %i.byl, %.thread1136 ], [ %.0504.i, %bb.kq ]
  %.4497.i = phi ptr [ %i.byi, %.thread1136 ], [ %.0493.i, %bb.kq ]
  %.2486.i = phi i64 [ %i.bxy, %.thread1136 ], [ %.0484.i, %bb.kq ]
  %.not.i7492351 = select i1 %.not588.i, i1 true, i1 %.not.i74923513285
  br i1 %.not.i7492351, label %write_indent.exit750, label %select.unfold1142.preheader

select.unfold1142.preheader:                      ; preds = %bb.kr
end_hunk_0
begin_hunk_1_@yyjson_val_write_opts:bb.a
    i32 8205, label %.thread1227
    i32 0, label %.thread1227
  ], !prof !152

.critedge321.i:                                   ; preds = %bb.ri
  %i.dwn = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.dwo = shl nuw nsw i64 %i.dwn, 12
  %i.dwp = lshr i16 %.sroa.0.0.copyload.i.i, 2
  %i.dwq = and i16 %i.dwp, 4032                   ; 2 uses
  %i.dwr = zext nneg i16 %i.dwq to i64
  %i.dws = and i8 %i.dwj, 63
  store i16 30044, ptr %.8253.i, align 1
  %i.dwt = getelementptr inbounds nuw i8, ptr %.8253.i, i64 2
  %.masked.i = or disjoint i64 %i.dwo, %i.dwr
  %i.dwu = lshr i64 %.masked.i, 7
  %i.dwv = and i64 %i.dwu, 510
  %i.dww = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dwv
  %i.dwx = load i16, ptr %i.dww, align 2
  store i16 %i.dwx, ptr %i.dwt, align 1
  %i.dwy = getelementptr inbounds nuw i8, ptr %.8253.i, i64 4
  %.tr294.i = trunc i16 %i.dwq to i8
  %.narrow295.i = or disjoint i8 %i.dws, %.tr294.i
  %i.dwz = zext i8 %.narrow295.i to i64
  %i.dxa = shl nuw nsw i64 %i.dwz, 1
  %i.dxb = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dxa
  %i.dxc = load i16, ptr %i.dxb, align 2
  store i16 %i.dxc, ptr %i.dwy, align 1
  %i.dxd = getelementptr inbounds nuw i8, ptr %.8253.i, i64 6
  %i.dxe = getelementptr inbounds nuw i8, ptr %.8.i94, i64 3
  br label %.preheader1336.backedge

bb.rj:                                            ; preds = %bb.qs
  %.sroa.0.0.copyload.i333.i = load i32, ptr %.8.i94, align 1 ; 9 uses
  %i.dxf = and i32 %.sroa.0.0.copyload.i333.i, -1061109512
  %i.dxg = icmp ne i32 %i.dxf, -2139062032
  %i.dxh = and i32 %.sroa.0.0.copyload.i333.i, 12295
  %.not288.i = icmp eq i32 %i.dxh, 0
  %or.cond323.i = or i1 %i.dxg, %.not288.i
  %i.dxi = lshr i32 %.sroa.0.0.copyload.i333.i, 24
  br i1 %or.cond323.i, label %.thread1227, label %bb.rk, !prof !140

bb.rk:                                            ; preds = %bb.rj
  %i.dxj = and i32 %.sroa.0.0.copyload.i333.i, 4
  %i.dxk = icmp ne i32 %i.dxj, 0
  %i.dxl = and i32 %.sroa.0.0.copyload.i333.i, 12291
  %i.dxm = icmp ne i32 %i.dxl, 0
  %.not291.i = and i1 %i.dxk, %i.dxm
  br i1 %.not291.i, label %.thread1227, label %.critedge325.i, !prof !45

.critedge325.i:                                   ; preds = %bb.rk
  %i.dxn = shl i32 %.sroa.0.0.copyload.i333.i, 18
  %i.dxo = and i32 %i.dxn, 1835008
  %i.dxp = shl i32 %.sroa.0.0.copyload.i333.i, 4
  %i.dxq = and i32 %i.dxp, 258048
  %i.dxr = lshr i32 %.sroa.0.0.copyload.i333.i, 10 ; 2 uses
  %i.dxs = and i32 %i.dxr, 3072
  %i.dxt = and i32 %i.dxi, 63
  %i.dxu = add nsw i32 %i.dxo, -65536
  %i.dxv = add nsw i32 %i.dxu, %i.dxq             ; 2 uses
  %i.dxw = or disjoint i32 %i.dxv, %i.dxs
  %i.dxx = lshr exact i32 %i.dxv, 10
  %i.dxy = add nuw nsw i32 %i.dxx, 55296
  store i16 30044, ptr %.8253.i, align 1
  %i.dxz = getelementptr inbounds nuw i8, ptr %.8253.i, i64 2
  %i.dya = lshr i32 %i.dxy, 7
  %i.dyb = and i32 %i.dya, 65534
  %i.dyc = zext nneg i32 %i.dyb to i64
  %i.dyd = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dyc
  %i.dye = load i16, ptr %i.dyd, align 2
  store i16 %i.dye, ptr %i.dxz, align 1
  %i.dyf = getelementptr inbounds nuw i8, ptr %.8253.i, i64 4
  %i.dyg = lshr exact i32 %i.dxw, 9
  %i.dyh = and i32 %i.dyg, 510
  %i.dyi = zext nneg i32 %i.dyh to i64
  %i.dyj = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dyi
  %i.dyk = load i16, ptr %i.dyj, align 2
  store i16 %i.dyk, ptr %i.dyf, align 1
  %i.dyl = getelementptr inbounds nuw i8, ptr %.8253.i, i64 6
  store i16 30044, ptr %i.dyl, align 1
  %i.dym = getelementptr inbounds nuw i8, ptr %.8253.i, i64 8
  %i.dyn = lshr i32 %.sroa.0.0.copyload.i333.i, 17
  %i.dyo = and i32 %i.dyn, 6
  %i.dyp = zext nneg i32 %i.dyo to i64
  %i.dyq = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dyp
  %i.dyr = getelementptr inbounds nuw i8, ptr %i.dyq, i64 440
  %i.dys = load i16, ptr %i.dyr, align 2
  store i16 %i.dys, ptr %i.dym, align 1
  %i.dyt = getelementptr inbounds nuw i8, ptr %.8253.i, i64 10
  %.masked3298 = and i32 %i.dxr, 192
  %i.dyu = or disjoint i32 %i.dxt, %.masked3298
  %i.dyv = shl nuw nsw i32 %i.dyu, 1
  %i.dyw = zext nneg i32 %i.dyv to i64
  %i.dyx = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dyw
  %i.dyy = load i16, ptr %i.dyx, align 2
  store i16 %i.dyy, ptr %i.dyt, align 1
  %i.dyz = getelementptr inbounds nuw i8, ptr %.8253.i, i64 12
  br label %.preheader1336.backedge

bb.rl:                                            ; preds = %bb.qs, %bb.qr
  %i.dza = phi i8 [ %i.dtv, %bb.qs ], [ %i.dtn, %bb.qr ]
  br i1 %.not1291, label %.thread1217, label %.thread1227

.thread1217:                                      ; preds = %bb.rb, %bb.rc, %bb.qz, %bb.qx, %bb.ra, %bb.ra, %bb.qy, %bb.qy, %bb.qu, %bb.rl
  %i.dzb = phi i8 [ %i.duu, %bb.rb ], [ %i.duu, %bb.rc ], [ %i.dun, %bb.qz ], [ %i.duh, %bb.qx ], [ %i.dun, %bb.ra ], [ %i.dun, %bb.ra ], [ %i.duh, %bb.qy ], [ %i.duh, %bb.qy ], [ %i.duc, %bb.qu ], [ %i.dza, %bb.rl ]
  br i1 %.not1294, label %.loopexit1337, label %bb.rm

bb.rm:                                            ; preds = %.thread1217
  %i.dzc = getelementptr inbounds nuw i8, ptr %.8.i94, i64 1
  %i.dzd = getelementptr inbounds nuw i8, ptr %.8253.i, i64 1
  store i8 %i.dzb, ptr %.8253.i, align 1, !tbaa !100
  br label %.preheader1336.backedge

.thread1227:                                      ; preds = %bb.rj, %bb.rk, %bb.rh, %bb.ri, %bb.ri, %bb.rf, %bb.rl
  br i1 %.not1294, label %.loopexit1337, label %bb.rn

bb.rn:                                            ; preds = %.thread1227
  store i16 30044, ptr %.8253.i, align 1
  %i.dze = getelementptr inbounds nuw i8, ptr %.8253.i, i64 2
  store i32 1145456198, ptr %i.dze, align 1
  %i.dzf = getelementptr inbounds nuw i8, ptr %.8253.i, i64 6
  %i.dzg = getelementptr inbounds nuw i8, ptr %.8.i94, i64 1
  br label %.preheader1336.backedge

bb.ro:                                            ; preds = %bb.pg
  %i.dzh = getelementptr inbounds nuw i8, ptr %.2387.i, i64 1 ; 2 uses
  %i.dzi = icmp ugt i64 %i.cxm, 4095
  br i1 %i.dzi, label %.lr.ph2509, label %.preheader1367

.preheader1367:                                   ; preds = %.lr.ph2509, %bb.ro
  %.021.i.lcssa = phi ptr [ %i.dzh, %bb.ro ], [ %i.dzx, %.lr.ph2509 ] ; 5 uses
  %.018.i.lcssa = phi ptr [ %i.cxu, %bb.ro ], [ %i.dzy, %.lr.ph2509 ] ; 5 uses
  %.0.i67.lcssa = phi i64 [ %i.cxs, %bb.ro ], [ %i.dzz, %.lr.ph2509 ] ; 5 uses
  %i.dzj = icmp samesign ugt i64 %.0.i67.lcssa, 3
  br i1 %i.dzj, label %.lr.ph2516.preheader, label %.preheader1366

.lr.ph2516.preheader:                             ; preds = %.preheader1367
  %.018.i.lcssa5227 = ptrtoaddr ptr %.018.i.lcssa to i64
  %.021.i.lcssa5226 = ptrtoaddr ptr %.021.i.lcssa to i64
  %i.dzk = add nsw i64 %.0.i67.lcssa, -4          ; 2 uses
  %i.dzl = lshr i64 %i.dzk, 2
  %i.dzm = add nuw nsw i64 %i.dzl, 1              ; 2 uses
  %min.iters.check5230 = icmp ult i64 %i.dzk, 28
  %i.dzn = sub i64 %.018.i.lcssa5227, %.021.i.lcssa5226
  %diff.check5228 = icmp ugt i64 %i.dzn, -32
  %or.cond5314 = select i1 %min.iters.check5230, i1 true, i1 %diff.check5228
  br i1 %or.cond5314, label %.lr.ph2516.preheader5502, label %vector.ph5231

vector.ph5231:                                    ; preds = %.lr.ph2516.preheader
  %n.vec5232 = and i64 %i.dzm, 9223372036854775800 ; 4 uses
  %i.dzo = shl i64 %n.vec5232, 2
  %i.dzp = sub i64 %.0.i67.lcssa, %i.dzo          ; 2 uses
  %i.dzq = shl i64 %n.vec5232, 2                  ; 2 uses
  %i.dzr = getelementptr i8, ptr %.018.i.lcssa, i64 %i.dzq ; 2 uses
  %i.dzs = getelementptr i8, ptr %.021.i.lcssa, i64 %i.dzq ; 2 uses
  br label %vector.body5233

vector.body5233:                                  ; preds = %vector.body5233, %vector.ph5231
  %index5234 = phi i64 [ 0, %vector.ph5231 ], [ %index.next5239, %vector.body5233 ] ; 2 uses
  %i.dzt = shl i64 %index5234, 2                  ; 2 uses
  %next.gep5235 = getelementptr i8, ptr %.018.i.lcssa, i64 %i.dzt ; 2 uses
  %next.gep5236 = getelementptr i8, ptr %.021.i.lcssa, i64 %i.dzt ; 2 uses
  %i.dzu = getelementptr i8, ptr %next.gep5235, i64 16
  %wide.load5237 = load <4 x i32>, ptr %next.gep5235, align 1
  %wide.load5238 = load <4 x i32>, ptr %i.dzu, align 1
  %i.dzv = getelementptr i8, ptr %next.gep5236, i64 16
  store <4 x i32> %wide.load5237, ptr %next.gep5236, align 1
  store <4 x i32> %wide.load5238, ptr %i.dzv, align 1
  %index.next5239 = add nuw i64 %index5234, 8     ; 2 uses
  %i.dzw = icmp eq i64 %index.next5239, %n.vec5232
  br i1 %i.dzw, label %middle.block5240, label %vector.body5233, !llvm.loop !391

middle.block5240:                                 ; preds = %vector.body5233
  %cmp.n5241 = icmp eq i64 %i.dzm, %n.vec5232
  br i1 %cmp.n5241, label %.preheader1366, label %.lr.ph2516.preheader5502

.lr.ph2516.preheader5502:                         ; preds = %.lr.ph2516.preheader, %middle.block5240
  %.1.i682515.ph = phi i64 [ %.0.i67.lcssa, %.lr.ph2516.preheader ], [ %i.dzp, %middle.block5240 ]
  %.119.i2514.ph = phi ptr [ %.018.i.lcssa, %.lr.ph2516.preheader ], [ %i.dzr, %middle.block5240 ]
  %.122.i2513.ph = phi ptr [ %.021.i.lcssa, %.lr.ph2516.preheader ], [ %i.dzs, %middle.block5240 ]
  br label %.lr.ph2516

.lr.ph2509:                                       ; preds = %bb.ro, %.lr.ph2509
  %.0.i672507 = phi i64 [ %i.dzz, %.lr.ph2509 ], [ %i.cxs, %bb.ro ]
  %.018.i2506 = phi ptr [ %i.dzy, %.lr.ph2509 ], [ %i.cxu, %bb.ro ] ; 2 uses
  %.021.i2505 = phi ptr [ %i.dzx, %.lr.ph2509 ], [ %i.dzh, %bb.ro ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i2505, ptr noundef nonnull align 1 dereferenceable(16) %.018.i2506, i64 16, i1 false)
  %i.dzx = getelementptr inbounds nuw i8, ptr %.021.i2505, i64 16 ; 2 uses
  %i.dzy = getelementptr inbounds nuw i8, ptr %.018.i2506, i64 16 ; 2 uses
  %i.dzz = add nsw i64 %.0.i672507, -16           ; 3 uses
  %i.eaa = icmp ugt i64 %i.dzz, 15
  br i1 %i.eaa, label %.lr.ph2509, label %.preheader1367, !llvm.loop !26

.preheader1366:                                   ; preds = %.lr.ph2516, %middle.block5240, %.preheader1367
  %.122.i.lcssa = phi ptr [ %.021.i.lcssa, %.preheader1367 ], [ %i.dzs, %middle.block5240 ], [ %i.eau, %.lr.ph2516 ] ; 7 uses
  %.119.i.lcssa = phi ptr [ %.018.i.lcssa, %.preheader1367 ], [ %i.dzr, %middle.block5240 ], [ %i.eav, %.lr.ph2516 ] ; 6 uses
  %.1.i68.lcssa = phi i64 [ %.0.i67.lcssa, %.preheader1367 ], [ %i.dzp, %middle.block5240 ], [ %i.eaw, %.lr.ph2516 ] ; 11 uses
  %.not.i702520 = icmp eq i64 %.1.i68.lcssa, 0
  br i1 %.not.i702520, label %write_str.exit209, label %iter.check5207

iter.check5207:                                   ; preds = %.preheader1366
  %.119.i.lcssa5190 = ptrtoaddr ptr %.122.i.lcssa to i64
  %.122.i.lcssa5189 = ptrtoaddr ptr %.119.i.lcssa to i64
  %min.iters.check5193 = icmp ult i64 %.1.i68.lcssa, 4
  %i.eab = sub i64 %.122.i.lcssa5189, %.119.i.lcssa5190
  %diff.check5191 = icmp ugt i64 %i.eab, -32
  %or.cond5315 = select i1 %min.iters.check5193, i1 true, i1 %diff.check5191
  br i1 %or.cond5315, label %.lr.ph2524.preheader, label %vector.main.loop.iter.check5194

vector.main.loop.iter.check5194:                  ; preds = %iter.check5207
  %min.iters.check5195 = icmp ult i64 %.1.i68.lcssa, 32
  br i1 %min.iters.check5195, label %vec.epilog.ph5211, label %vector.ph5196

vector.ph5196:                                    ; preds = %vector.main.loop.iter.check5194
  %i.eac = and i64 %.1.i68.lcssa, 28
  %n.vec5197 = and i64 %.1.i68.lcssa, -32         ; 5 uses
  %i.ead = and i64 %.1.i68.lcssa, 31
  %i.eae = getelementptr i8, ptr %.119.i.lcssa, i64 %n.vec5197
  %i.eaf = getelementptr i8, ptr %.122.i.lcssa, i64 %n.vec5197 ; 2 uses
  br label %vector.body5198

vector.body5198:                                  ; preds = %vector.ph5196, %vector.body5198
  %index5199 = phi i64 [ 0, %vector.ph5196 ], [ %index.next5204, %vector.body5198 ] ; 3 uses
  %next.gep5200 = getelementptr i8, ptr %.119.i.lcssa, i64 %index5199 ; 2 uses
  %next.gep5201 = getelementptr i8, ptr %.122.i.lcssa, i64 %index5199 ; 2 uses
  %i.eag = getelementptr i8, ptr %next.gep5200, i64 16
  %wide.load5202 = load <16 x i8>, ptr %next.gep5200, align 1, !tbaa !100
  %wide.load5203 = load <16 x i8>, ptr %i.eag, align 1, !tbaa !100
  %i.eah = getelementptr i8, ptr %next.gep5201, i64 16
  store <16 x i8> %wide.load5202, ptr %next.gep5201, align 1, !tbaa !100
  store <16 x i8> %wide.load5203, ptr %i.eah, align 1, !tbaa !100
  %index.next5204 = add nuw i64 %index5199, 32    ; 2 uses
  %i.eai = icmp eq i64 %index.next5204, %n.vec5197
  br i1 %i.eai, label %middle.block5205, label %vector.body5198, !llvm.loop !392

middle.block5205:                                 ; preds = %vector.body5198
  %cmp.n5206 = icmp eq i64 %.1.i68.lcssa, %n.vec5197
  br i1 %cmp.n5206, label %write_str.exit209, label %vec.epilog.iter.check5208

vec.epilog.iter.check5208:                        ; preds = %middle.block5205
  %min.epilog.iters.check5210 = icmp eq i64 %i.eac, 0
  br i1 %min.epilog.iters.check5210, label %.lr.ph2524.preheader, label %vec.epilog.ph5211, !prof !153

vec.epilog.ph5211:                                ; preds = %vector.main.loop.iter.check5194, %vec.epilog.iter.check5208
  %vec.epilog.resume.val5212 = phi i64 [ %n.vec5197, %vec.epilog.iter.check5208 ], [ 0, %vector.main.loop.iter.check5194 ]
  %n.vec5213 = and i64 %.1.i68.lcssa, -4          ; 4 uses
  %i.eaj = and i64 %.1.i68.lcssa, 3
  %i.eak = getelementptr i8, ptr %.119.i.lcssa, i64 %n.vec5213
  %i.eal = getelementptr i8, ptr %.122.i.lcssa, i64 %n.vec5213 ; 2 uses
  br label %vec.epilog.vector.body5214

vec.epilog.vector.body5214:                       ; preds = %vec.epilog.vector.body5214, %vec.epilog.ph5211
  %index5215 = phi i64 [ %vec.epilog.resume.val5212, %vec.epilog.ph5211 ], [ %index.next5219, %vec.epilog.vector.body5214 ] ; 3 uses
  %next.gep5216 = getelementptr i8, ptr %.119.i.lcssa, i64 %index5215
  %next.gep5217 = getelementptr i8, ptr %.122.i.lcssa, i64 %index5215
  %wide.load5218 = load <4 x i8>, ptr %next.gep5216, align 1, !tbaa !100
  store <4 x i8> %wide.load5218, ptr %next.gep5217, align 1, !tbaa !100
  %index.next5219 = add nuw i64 %index5215, 4     ; 2 uses
  %i.eam = icmp eq i64 %index.next5219, %n.vec5213
  br i1 %i.eam, label %vec.epilog.middle.block5220, label %vec.epilog.vector.body5214, !llvm.loop !393

vec.epilog.middle.block5220:                      ; preds = %vec.epilog.vector.body5214
  %cmp.n5221 = icmp eq i64 %.1.i68.lcssa, %n.vec5213
  br i1 %cmp.n5221, label %write_str.exit209, label %.lr.ph2524.preheader

.lr.ph2524.preheader:                             ; preds = %iter.check5207, %vec.epilog.iter.check5208, %vec.epilog.middle.block5220
  %.2.i692523.ph = phi i64 [ %.1.i68.lcssa, %iter.check5207 ], [ %i.ead, %vec.epilog.iter.check5208 ], [ %i.eaj, %vec.epilog.middle.block5220 ] ; 4 uses
  %.220.i2522.ph = phi ptr [ %.119.i.lcssa, %iter.check5207 ], [ %i.eae, %vec.epilog.iter.check5208 ], [ %i.eak, %vec.epilog.middle.block5220 ] ; 2 uses
  %.223.i2521.ph = phi ptr [ %.122.i.lcssa, %iter.check5207 ], [ %i.eaf, %vec.epilog.iter.check5208 ], [ %i.eal, %vec.epilog.middle.block5220 ] ; 2 uses
  %i.ean = add nsw i64 %.2.i692523.ph, -1
  %xtraiter5987 = and i64 %.2.i692523.ph, 7       ; 2 uses
  %lcmp.mod5988.not = icmp eq i64 %xtraiter5987, 0
  br i1 %lcmp.mod5988.not, label %.lr.ph2524.prol.loopexit, label %.lr.ph2524.prol

.lr.ph2524.prol:                                  ; preds = %.lr.ph2524.preheader, %.lr.ph2524.prol
  %.2.i692523.prol = phi i64 [ %i.ear, %.lr.ph2524.prol ], [ %.2.i692523.ph, %.lr.ph2524.preheader ]
  %.220.i2522.prol = phi ptr [ %i.eao, %.lr.ph2524.prol ], [ %.220.i2522.ph, %.lr.ph2524.preheader ] ; 2 uses
  %.223.i2521.prol = phi ptr [ %i.eaq, %.lr.ph2524.prol ], [ %.223.i2521.ph, %.lr.ph2524.preheader ] ; 2 uses
  %prol.iter5989 = phi i64 [ %prol.iter5989.next, %.lr.ph2524.prol ], [ 0, %.lr.ph2524.preheader ]
  %i.eao = getelementptr inbounds nuw i8, ptr %.220.i2522.prol, i64 1 ; 2 uses
  %i.eap = load i8, ptr %.220.i2522.prol, align 1, !tbaa !100
  %i.eaq = getelementptr inbounds nuw i8, ptr %.223.i2521.prol, i64 1 ; 3 uses
  store i8 %i.eap, ptr %.223.i2521.prol, align 1, !tbaa !100
  %i.ear = add nsw i64 %.2.i692523.prol, -1       ; 2 uses
  %prol.iter5989.next = add i64 %prol.iter5989, 1 ; 2 uses
  %prol.iter5989.cmp.not = icmp eq i64 %prol.iter5989.next, %xtraiter5987
  br i1 %prol.iter5989.cmp.not, label %.lr.ph2524.prol.loopexit, label %.lr.ph2524.prol, !llvm.loop !394

.lr.ph2524.prol.loopexit:                         ; preds = %.lr.ph2524.prol, %.lr.ph2524.preheader
  %.lcssa5586.unr = phi ptr [ poison, %.lr.ph2524.preheader ], [ %i.eaq, %.lr.ph2524.prol ]
  %.2.i692523.unr = phi i64 [ %.2.i692523.ph, %.lr.ph2524.preheader ], [ %i.ear, %.lr.ph2524.prol ]
  %.220.i2522.unr = phi ptr [ %.220.i2522.ph, %.lr.ph2524.preheader ], [ %i.eao, %.lr.ph2524.prol ]
  %.223.i2521.unr = phi ptr [ %.223.i2521.ph, %.lr.ph2524.preheader ], [ %i.eaq, %.lr.ph2524.prol ]
  %i.eas = icmp ult i64 %i.ean, 7
  br i1 %i.eas, label %write_str.exit209, label %.lr.ph2524

.lr.ph2516:                                       ; preds = %.lr.ph2516.preheader5502, %.lr.ph2516
  %.1.i682515 = phi i64 [ %i.eaw, %.lr.ph2516 ], [ %.1.i682515.ph, %.lr.ph2516.preheader5502 ]
  %.119.i2514 = phi ptr [ %i.eav, %.lr.ph2516 ], [ %.119.i2514.ph, %.lr.ph2516.preheader5502 ] ; 2 uses
  %.122.i2513 = phi ptr [ %i.eau, %.lr.ph2516 ], [ %.122.i2513.ph, %.lr.ph2516.preheader5502 ] ; 2 uses
  %i.eat = load i32, ptr %.119.i2514, align 1
  store i32 %i.eat, ptr %.122.i2513, align 1
  %i.eau = getelementptr inbounds nuw i8, ptr %.122.i2513, i64 4 ; 2 uses
  %i.eav = getelementptr inbounds nuw i8, ptr %.119.i2514, i64 4 ; 2 uses
  %i.eaw = add nsw i64 %.1.i682515, -4            ; 3 uses
  %i.eax = icmp ugt i64 %i.eaw, 3
  br i1 %i.eax, label %.lr.ph2516, label %.preheader1366, !llvm.loop !395

.lr.ph2524:                                       ; preds = %.lr.ph2524.prol.loopexit, %.lr.ph2524
  %.2.i692523 = phi i64 [ %i.ebw, %.lr.ph2524 ], [ %.2.i692523.unr, %.lr.ph2524.prol.loopexit ]
  %.220.i2522 = phi ptr [ %i.ebt, %.lr.ph2524 ], [ %.220.i2522.unr, %.lr.ph2524.prol.loopexit ] ; 9 uses
  %.223.i2521 = phi ptr [ %i.ebv, %.lr.ph2524 ], [ %.223.i2521.unr, %.lr.ph2524.prol.loopexit ] ; 9 uses
  %i.eay = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 1
  %i.eaz = load i8, ptr %.220.i2522, align 1, !tbaa !100
  %i.eba = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 1
  store i8 %i.eaz, ptr %.223.i2521, align 1, !tbaa !100
  %i.ebb = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 2
  %i.ebc = load i8, ptr %i.eay, align 1, !tbaa !100
  %i.ebd = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 2
  store i8 %i.ebc, ptr %i.eba, align 1, !tbaa !100
  %i.ebe = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 3
  %i.ebf = load i8, ptr %i.ebb, align 1, !tbaa !100
  %i.ebg = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 3
  store i8 %i.ebf, ptr %i.ebd, align 1, !tbaa !100
  %i.ebh = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 4
  %i.ebi = load i8, ptr %i.ebe, align 1, !tbaa !100
  %i.ebj = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 4
  store i8 %i.ebi, ptr %i.ebg, align 1, !tbaa !100
  %i.ebk = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 5
  %i.ebl = load i8, ptr %i.ebh, align 1, !tbaa !100
  %i.ebm = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 5
  store i8 %i.ebl, ptr %i.ebj, align 1, !tbaa !100
  %i.ebn = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 6
  %i.ebo = load i8, ptr %i.ebk, align 1, !tbaa !100
  %i.ebp = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 6
  store i8 %i.ebo, ptr %i.ebm, align 1, !tbaa !100
  %i.ebq = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 7
  %i.ebr = load i8, ptr %i.ebn, align 1, !tbaa !100
  %i.ebs = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 7
  store i8 %i.ebr, ptr %i.ebp, align 1, !tbaa !100
  %i.ebt = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 8
  %i.ebu = load i8, ptr %i.ebq, align 1, !tbaa !100
  %i.ebv = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 8 ; 2 uses
  store i8 %i.ebu, ptr %i.ebs, align 1, !tbaa !100
  %i.ebw = add nsw i64 %.2.i692523, -8            ; 2 uses
  %.not.i70.7 = icmp eq i64 %i.ebw, 0
  br i1 %.not.i70.7, label %write_str.exit209, label %.lr.ph2524, !llvm.loop !396

write_str.exit209:                                ; preds = %.preheader1353, %.lr.ph2524.prol.loopexit, %.lr.ph2524, %.preheader1339, %bb.nv, %.lr.ph2501.prol.loopexit, %bb.oi, %bb.ok, %bb.qd, %.lr.ph2552.prol.loopexit, %bb.qq, %bb.qs, %middle.block5205, %vec.epilog.middle.block5220, %.preheader1366
  %.3248.i118.lcssa.sink4531 = phi ptr [ %.122.i.lcssa, %.preheader1366 ], [ %.8253.i124, %bb.oi ], [ %.lcssa5656.unr, %.lr.ph2552.prol.loopexit ], [ %i.eal, %vec.epilog.middle.block5220 ], [ %i.ebv, %.lr.ph2524 ], [ %i.eaf, %middle.block5205 ], [ %.lcssa5573.unr, %.lr.ph2501.prol.loopexit ], [ %.2247.i.lcssa, %.preheader1339 ], [ %.8253.i, %bb.qq ], [ %.8253.i, %bb.qs ], [ %i.drw, %bb.qd ], [ %.8253.i124, %bb.ok ], [ %i.den, %bb.nv ], [ %.lcssa5586.unr, %.lr.ph2524.prol.loopexit ], [ %.2247.i116.lcssa, %.preheader1353 ] ; 3 uses
  %i.ebx = getelementptr inbounds nuw i8, ptr %.3248.i118.lcssa.sink4531, i64 1
  store i8 34, ptr %.3248.i118.lcssa.sink4531, align 1, !tbaa !100
  %i.eby = select i1 %.not439.i, i8 44, i8 58
  %i.ebz = getelementptr inbounds nuw i8, ptr %.3248.i118.lcssa.sink4531, i64 2
  store i8 %i.eby, ptr %i.ebx, align 1, !tbaa !100
  br label %bb.tc

bb.rp:                                            ; preds = %bb.mw
  %i.eca = getelementptr inbounds nuw i8, ptr %.0385.i, i64 40
  %.not435.i = icmp ult ptr %i.eca, %.0363.i
  br i1 %.not435.i, label %bb.rq, label %size_align_up.exit465.i, !prof !62

size_align_up.exit465.i:                          ; preds = %bb.rp
  %i.ecb = lshr i64 %.0356.i, 1
  %i.ecc = tail call i64 @llvm.umax.i64(i64 %i.ecb, i64 40)
  %i.ecd = add nuw i64 %i.ecc, 7
  %i.ece = and i64 %i.ecd, -8
  %i.ecf = add i64 %i.ece, %.0356.i               ; 4 uses
  %i.ecg = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0400.i, i64 noundef %.0356.i, i64 noundef %i.ecf) #33, !inline_history !388 ; 6 uses
  %.not436.i = icmp eq ptr %i.ecg, null
  br i1 %.not436.i, label %.loopexit1368, label %.thread1239, !prof !45

.thread1239:                                      ; preds = %size_align_up.exit465.i
  %i.ech = ptrtoint ptr %.0371.i to i64
  %i.eci = ptrtoint ptr %.0363.i to i64           ; 2 uses
  %i.ecj = sub i64 %i.ech, %i.eci                 ; 2 uses
  %i.eck = ptrtoint ptr %.0385.i to i64
  %i.ecl = ptrtoint ptr %.0400.i to i64           ; 2 uses
  %i.ecm = sub i64 %i.eck, %i.ecl
  %i.ecn = sub i64 %i.eci, %i.ecl
  %i.eco = sub i64 %i.ecf, %i.ecj
  %i.ecp = getelementptr inbounds nuw i8, ptr %i.ecg, i64 %i.eco ; 2 uses
  %i.ecq = getelementptr inbounds nuw i8, ptr %i.ecg, i64 %i.ecn
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ecp, ptr nonnull align 1 %i.ecq, i64 %i.ecj, i1 false)
  %i.ecr = getelementptr inbounds nuw i8, ptr %i.ecg, i64 %i.ecm
  %i.ecs = getelementptr inbounds nuw i8, ptr %i.ecg, i64 %i.ecf
  %.pre3171 = load i64, ptr %.0418.i, align 8, !tbaa !99
  br label %bb.rq

bb.rq:                                            ; preds = %.thread1239, %bb.rp
  %i.ect = phi i64 [ %.pre3171, %.thread1239 ], [ %i.cxm, %bb.rp ] ; 3 uses
  %.4404.i = phi ptr [ %i.ecg, %.thread1239 ], [ %.0400.i, %bb.rp ] ; 2 uses
  %.5390.i = phi ptr [ %i.ecr, %.thread1239 ], [ %.0385.i, %bb.rp ] ; 6 uses
  %.4375.i = phi ptr [ %i.ecs, %.thread1239 ], [ %.0371.i, %bb.rp ]
  %.4367.i = phi ptr [ %i.ecp, %.thread1239 ], [ %.0363.i, %bb.rp ]
  %.2358.i = phi i64 [ %i.ecf, %.thread1239 ], [ %.0356.i, %bb.rp ]
  %i.ecu = and i64 %i.ect, 16
  %.not.i606 = icmp eq i64 %i.ecu, 0
  %i.ecv = getelementptr inbounds nuw i8, ptr %.0418.i, i64 8
  %i.ecw = load i64, ptr %i.ecv, align 8, !tbaa !100 ; 7 uses
  br i1 %.not.i606, label %bb.rr, label %bb.sk

bb.rr:                                            ; preds = %bb.rq
  %i.ecx = sub i64 0, %i.ecw
  %i.ecy = lshr i64 %i.ect, 3
end_hunk_1
begin_hunk_2_@yyjson_mut_write_opts_impl:bb.a
    i32 8205, label %.thread775
    i32 0, label %.thread775
  ], !prof !152

.critedge321.i.i131:                              ; preds = %bb.km
  %i.bsc = zext i16 %.sroa.0.0.copyload.i.i.i126 to i64
  %i.bsd = shl nuw nsw i64 %i.bsc, 12
  %i.bse = lshr i16 %.sroa.0.0.copyload.i.i.i126, 2
  %i.bsf = and i16 %i.bse, 4032                   ; 2 uses
  %i.bsg = zext nneg i16 %i.bsf to i64
  %i.bsh = and i8 %i.bry, 63
  store i16 30044, ptr %.8253.i.i110, align 1
  %i.bsi = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 2
  %.masked.i.i136 = or disjoint i64 %i.bsd, %i.bsg
  %i.bsj = lshr i64 %.masked.i.i136, 7
  %i.bsk = and i64 %i.bsj, 510
  %i.bsl = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bsk
  %i.bsm = load i16, ptr %i.bsl, align 2
  store i16 %i.bsm, ptr %i.bsi, align 1
  %i.bsn = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 4
  %.tr294.i.i137 = trunc i16 %i.bsf to i8
  %.narrow295.i.i138 = or disjoint i8 %i.bsh, %.tr294.i.i137
  %i.bso = zext i8 %.narrow295.i.i138 to i64
  %i.bsp = shl nuw nsw i64 %i.bso, 1
  %i.bsq = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bsp
  %i.bsr = load i16, ptr %i.bsq, align 2
  store i16 %i.bsr, ptr %i.bsn, align 1
  %i.bss = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 6
  %i.bst = getelementptr inbounds nuw i8, ptr %.8.i.i111, i64 3
  br label %.preheader1020.backedge

bb.kn:                                            ; preds = %bb.jw
  %.sroa.0.0.copyload.i333.i.i116 = load i32, ptr %.8.i.i111, align 1 ; 9 uses
  %i.bsu = and i32 %.sroa.0.0.copyload.i333.i.i116, -1061109512
  %i.bsv = icmp ne i32 %i.bsu, -2139062032
  %i.bsw = and i32 %.sroa.0.0.copyload.i333.i.i116, 12295
  %.not288.i.i117 = icmp eq i32 %i.bsw, 0
  %or.cond323.i.i118 = or i1 %i.bsv, %.not288.i.i117
  %i.bsx = lshr i32 %.sroa.0.0.copyload.i333.i.i116, 24
  br i1 %or.cond323.i.i118, label %.thread775, label %bb.ko, !prof !140

bb.ko:                                            ; preds = %bb.kn
  %i.bsy = and i32 %.sroa.0.0.copyload.i333.i.i116, 4
  %i.bsz = icmp ne i32 %i.bsy, 0
  %i.bta = and i32 %.sroa.0.0.copyload.i333.i.i116, 12291
  %i.btb = icmp ne i32 %i.bta, 0
  %.not291.i.i119 = and i1 %i.bsz, %i.btb
  br i1 %.not291.i.i119, label %.thread775, label %.critedge325.i.i122, !prof !45

.critedge325.i.i122:                              ; preds = %bb.ko
  %i.btc = shl i32 %.sroa.0.0.copyload.i333.i.i116, 18
  %i.btd = and i32 %i.btc, 1835008
  %i.bte = shl i32 %.sroa.0.0.copyload.i333.i.i116, 4
  %i.btf = and i32 %i.bte, 258048
  %i.btg = lshr i32 %.sroa.0.0.copyload.i333.i.i116, 10 ; 2 uses
  %i.bth = and i32 %i.btg, 3072
  %i.bti = and i32 %i.bsx, 63
  %i.btj = add nsw i32 %i.btd, -65536
  %i.btk = add nsw i32 %i.btj, %i.btf             ; 2 uses
  %i.btl = or disjoint i32 %i.btk, %i.bth
  %i.btm = lshr exact i32 %i.btk, 10
  %i.btn = add nuw nsw i32 %i.btm, 55296
  store i16 30044, ptr %.8253.i.i110, align 1
  %i.bto = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 2
  %i.btp = lshr i32 %i.btn, 7
  %i.btq = and i32 %i.btp, 65534
  %i.btr = zext nneg i32 %i.btq to i64
  %i.bts = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.btr
  %i.btt = load i16, ptr %i.bts, align 2
  store i16 %i.btt, ptr %i.bto, align 1
  %i.btu = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 4
  %i.btv = lshr exact i32 %i.btl, 9
  %i.btw = and i32 %i.btv, 510
  %i.btx = zext nneg i32 %i.btw to i64
  %i.bty = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.btx
  %i.btz = load i16, ptr %i.bty, align 2
  store i16 %i.btz, ptr %i.btu, align 1
  %i.bua = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 6
  store i16 30044, ptr %i.bua, align 1
  %i.bub = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 8
  %i.buc = lshr i32 %.sroa.0.0.copyload.i333.i.i116, 17
  %i.bud = and i32 %i.buc, 6
  %i.bue = zext nneg i32 %i.bud to i64
  %i.buf = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bue
  %i.bug = getelementptr inbounds nuw i8, ptr %i.buf, i64 440
  %i.buh = load i16, ptr %i.bug, align 2
  store i16 %i.buh, ptr %i.bub, align 1
  %i.bui = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 10
  %.masked2948 = and i32 %i.btg, 192
  %i.buj = or disjoint i32 %i.bti, %.masked2948
  %i.buk = shl nuw nsw i32 %i.buj, 1
  %i.bul = zext nneg i32 %i.buk to i64
  %i.bum = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bul
  %i.bun = load i16, ptr %i.bum, align 2
  store i16 %i.bun, ptr %i.bui, align 1
  %i.buo = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 12
  br label %.preheader1020.backedge

bb.kp:                                            ; preds = %bb.jw, %bb.jv
  %i.bup = phi i8 [ %i.bpk, %bb.jw ], [ %i.bpc, %bb.jv ]
  br i1 %.not942, label %.thread765, label %.thread775

.thread765:                                       ; preds = %bb.kf, %bb.kg, %bb.kd, %bb.kb, %bb.ke, %bb.ke, %bb.kc, %bb.kc, %bb.jy, %bb.kp
  %i.buq = phi i8 [ %i.bqj, %bb.kf ], [ %i.bqj, %bb.kg ], [ %i.bqc, %bb.kd ], [ %i.bpw, %bb.kb ], [ %i.bqc, %bb.ke ], [ %i.bqc, %bb.ke ], [ %i.bpw, %bb.kc ], [ %i.bpw, %bb.kc ], [ %i.bpr, %bb.jy ], [ %i.bup, %bb.kp ]
  br i1 %.not937, label %.loopexit1021, label %bb.kq

bb.kq:                                            ; preds = %.thread765
  %i.bur = getelementptr inbounds nuw i8, ptr %.8.i.i111, i64 1
  %i.bus = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 1
  store i8 %i.buq, ptr %.8253.i.i110, align 1, !tbaa !100
  br label %.preheader1020.backedge

.thread775:                                       ; preds = %bb.kn, %bb.ko, %bb.kl, %bb.km, %bb.km, %bb.kj, %bb.kp
  br i1 %.not937, label %.loopexit1021, label %bb.kr

bb.kr:                                            ; preds = %.thread775
  store i16 30044, ptr %.8253.i.i110, align 1
  %i.but = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 2
  store i32 1145456198, ptr %i.but, align 1
  %i.buu = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 6
  %i.buv = getelementptr inbounds nuw i8, ptr %.8.i.i111, i64 1
  br label %.preheader1020.backedge

bb.ks:                                            ; preds = %bb.ik
  %i.buw = getelementptr inbounds nuw i8, ptr %.0.i774.i.lcssa, i64 1 ; 2 uses
  %i.bux = icmp ugt i64 %i.aso, 4095
  br i1 %i.bux, label %.lr.ph2044, label %.preheader1052

.preheader1052:                                   ; preds = %.lr.ph2044, %bb.ks
  %.021.i.i87.lcssa = phi ptr [ %i.buw, %bb.ks ], [ %i.bvm, %.lr.ph2044 ] ; 5 uses
  %.018.i.i88.lcssa = phi ptr [ %i.asx, %bb.ks ], [ %i.bvn, %.lr.ph2044 ] ; 5 uses
  %.0.i641.i.lcssa = phi i64 [ %i.asv, %bb.ks ], [ %i.bvo, %.lr.ph2044 ] ; 5 uses
  %i.buy = icmp samesign ugt i64 %.0.i641.i.lcssa, 3
  br i1 %i.buy, label %.lr.ph2051.preheader, label %.preheader1051

.lr.ph2051.preheader:                             ; preds = %.preheader1052
  %.018.i.i88.lcssa4834 = ptrtoaddr ptr %.018.i.i88.lcssa to i64
  %.021.i.i87.lcssa4833 = ptrtoaddr ptr %.021.i.i87.lcssa to i64
  %i.buz = add nsw i64 %.0.i641.i.lcssa, -4       ; 2 uses
  %i.bva = lshr i64 %i.buz, 2
  %i.bvb = add nuw nsw i64 %i.bva, 1              ; 2 uses
  %min.iters.check4836 = icmp ult i64 %i.buz, 28
  %i.bvc = sub i64 %.018.i.i88.lcssa4834, %.021.i.i87.lcssa4833
  %diff.check4835 = icmp ugt i64 %i.bvc, -32
  %or.cond4975 = select i1 %min.iters.check4836, i1 true, i1 %diff.check4835
  br i1 %or.cond4975, label %.lr.ph2051.preheader5373, label %vector.ph4837

vector.ph4837:                                    ; preds = %.lr.ph2051.preheader
  %n.vec4838 = and i64 %i.bvb, 9223372036854775800 ; 4 uses
  %i.bvd = shl i64 %n.vec4838, 2
  %i.bve = sub i64 %.0.i641.i.lcssa, %i.bvd       ; 2 uses
  %i.bvf = shl i64 %n.vec4838, 2                  ; 2 uses
  %i.bvg = getelementptr i8, ptr %.018.i.i88.lcssa, i64 %i.bvf ; 2 uses
  %i.bvh = getelementptr i8, ptr %.021.i.i87.lcssa, i64 %i.bvf ; 2 uses
  br label %vector.body4839

vector.body4839:                                  ; preds = %vector.body4839, %vector.ph4837
  %index4840 = phi i64 [ 0, %vector.ph4837 ], [ %index.next4845, %vector.body4839 ] ; 2 uses
  %i.bvi = shl i64 %index4840, 2                  ; 2 uses
  %next.gep4841 = getelementptr i8, ptr %.018.i.i88.lcssa, i64 %i.bvi ; 2 uses
  %next.gep4842 = getelementptr i8, ptr %.021.i.i87.lcssa, i64 %i.bvi ; 2 uses
  %i.bvj = getelementptr i8, ptr %next.gep4841, i64 16
  %wide.load4843 = load <4 x i32>, ptr %next.gep4841, align 1
  %wide.load4844 = load <4 x i32>, ptr %i.bvj, align 1
  %i.bvk = getelementptr i8, ptr %next.gep4842, i64 16
  store <4 x i32> %wide.load4843, ptr %next.gep4842, align 1
  store <4 x i32> %wide.load4844, ptr %i.bvk, align 1
  %index.next4845 = add nuw i64 %index4840, 8     ; 2 uses
  %i.bvl = icmp eq i64 %index.next4845, %n.vec4838
  br i1 %i.bvl, label %middle.block4846, label %vector.body4839, !llvm.loop !413

middle.block4846:                                 ; preds = %vector.body4839
  %cmp.n4847 = icmp eq i64 %i.bvb, %n.vec4838
  br i1 %cmp.n4847, label %.preheader1051, label %.lr.ph2051.preheader5373

.lr.ph2051.preheader5373:                         ; preds = %.lr.ph2051.preheader, %middle.block4846
  %.1.i.i912050.ph = phi i64 [ %.0.i641.i.lcssa, %.lr.ph2051.preheader ], [ %i.bve, %middle.block4846 ]
  %.119.i.i902049.ph = phi ptr [ %.018.i.i88.lcssa, %.lr.ph2051.preheader ], [ %i.bvg, %middle.block4846 ]
  %.122.i.i892048.ph = phi ptr [ %.021.i.i87.lcssa, %.lr.ph2051.preheader ], [ %i.bvh, %middle.block4846 ]
  br label %.lr.ph2051

.lr.ph2044:                                       ; preds = %bb.ks, %.lr.ph2044
  %.0.i641.i2042 = phi i64 [ %i.bvo, %.lr.ph2044 ], [ %i.asv, %bb.ks ]
  %.018.i.i882041 = phi ptr [ %i.bvn, %.lr.ph2044 ], [ %i.asx, %bb.ks ] ; 2 uses
  %.021.i.i872040 = phi ptr [ %i.bvm, %.lr.ph2044 ], [ %i.buw, %bb.ks ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i.i872040, ptr noundef nonnull align 1 dereferenceable(16) %.018.i.i882041, i64 16, i1 false)
  %i.bvm = getelementptr inbounds nuw i8, ptr %.021.i.i872040, i64 16 ; 2 uses
  %i.bvn = getelementptr inbounds nuw i8, ptr %.018.i.i882041, i64 16 ; 2 uses
  %i.bvo = add nsw i64 %.0.i641.i2042, -16        ; 3 uses
  %i.bvp = icmp ugt i64 %i.bvo, 15
  br i1 %i.bvp, label %.lr.ph2044, label %.preheader1052, !llvm.loop !26

.preheader1051:                                   ; preds = %.lr.ph2051, %middle.block4846, %.preheader1052
  %.122.i.i89.lcssa = phi ptr [ %.021.i.i87.lcssa, %.preheader1052 ], [ %i.bvh, %middle.block4846 ], [ %i.bwj, %.lr.ph2051 ] ; 7 uses
  %.119.i.i90.lcssa = phi ptr [ %.018.i.i88.lcssa, %.preheader1052 ], [ %i.bvg, %middle.block4846 ], [ %i.bwk, %.lr.ph2051 ] ; 6 uses
  %.1.i.i91.lcssa = phi i64 [ %.0.i641.i.lcssa, %.preheader1052 ], [ %i.bve, %middle.block4846 ], [ %i.bwl, %.lr.ph2051 ] ; 11 uses
  %.not.i.i952055 = icmp eq i64 %.1.i.i91.lcssa, 0
  br i1 %.not.i.i952055, label %write_str.exit744.i, label %iter.check

iter.check:                                       ; preds = %.preheader1051
  %.119.i.i90.lcssa4819 = ptrtoaddr ptr %.122.i.i89.lcssa to i64
  %.122.i.i89.lcssa4818 = ptrtoaddr ptr %.119.i.i90.lcssa to i64
  %min.iters.check = icmp ult i64 %.1.i.i91.lcssa, 4
  %i.bvq = sub i64 %.122.i.i89.lcssa4818, %.119.i.i90.lcssa4819
  %diff.check = icmp ugt i64 %i.bvq, -32
  %or.cond4976 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond4976, label %.lr.ph2059.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check4820 = icmp ult i64 %.1.i.i91.lcssa, 32
  br i1 %min.iters.check4820, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bvr = and i64 %.1.i.i91.lcssa, 28
  %n.vec = and i64 %.1.i.i91.lcssa, -32           ; 5 uses
  %i.bvs = and i64 %.1.i.i91.lcssa, 31
  %i.bvt = getelementptr i8, ptr %.119.i.i90.lcssa, i64 %n.vec
  %i.bvu = getelementptr i8, ptr %.122.i.i89.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.119.i.i90.lcssa, i64 %index ; 2 uses
  %next.gep4821 = getelementptr i8, ptr %.122.i.i89.lcssa, i64 %index ; 2 uses
  %i.bvv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !100
  %wide.load4822 = load <16 x i8>, ptr %i.bvv, align 1, !tbaa !100
  %i.bvw = getelementptr i8, ptr %next.gep4821, i64 16
  store <16 x i8> %wide.load, ptr %next.gep4821, align 1, !tbaa !100
  store <16 x i8> %wide.load4822, ptr %i.bvw, align 1, !tbaa !100
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bvx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bvx, label %middle.block, label %vector.body, !llvm.loop !414

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.1.i.i91.lcssa, %n.vec
  br i1 %cmp.n, label %write_str.exit744.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bvr, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2059.preheader, label %vec.epilog.ph, !prof !153

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4823 = and i64 %.1.i.i91.lcssa, -4        ; 4 uses
  %i.bvy = and i64 %.1.i.i91.lcssa, 3
  %i.bvz = getelementptr i8, ptr %.119.i.i90.lcssa, i64 %n.vec4823
  %i.bwa = getelementptr i8, ptr %.122.i.i89.lcssa, i64 %n.vec4823 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4824 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next4828, %vec.epilog.vector.body ] ; 3 uses
  %next.gep4825 = getelementptr i8, ptr %.119.i.i90.lcssa, i64 %index4824
  %next.gep4826 = getelementptr i8, ptr %.122.i.i89.lcssa, i64 %index4824
  %wide.load4827 = load <4 x i8>, ptr %next.gep4825, align 1, !tbaa !100
  store <4 x i8> %wide.load4827, ptr %next.gep4826, align 1, !tbaa !100
  %index.next4828 = add nuw i64 %index4824, 4     ; 2 uses
  %i.bwb = icmp eq i64 %index.next4828, %n.vec4823
  br i1 %i.bwb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !415

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n4829 = icmp eq i64 %.1.i.i91.lcssa, %n.vec4823
  br i1 %cmp.n4829, label %write_str.exit744.i, label %.lr.ph2059.preheader

.lr.ph2059.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2.i.i942058.ph = phi i64 [ %.1.i.i91.lcssa, %iter.check ], [ %i.bvs, %vec.epilog.iter.check ], [ %i.bvy, %vec.epilog.middle.block ] ; 4 uses
  %.220.i.i932057.ph = phi ptr [ %.119.i.i90.lcssa, %iter.check ], [ %i.bvt, %vec.epilog.iter.check ], [ %i.bvz, %vec.epilog.middle.block ] ; 2 uses
  %.223.i.i922056.ph = phi ptr [ %.122.i.i89.lcssa, %iter.check ], [ %i.bvu, %vec.epilog.iter.check ], [ %i.bwa, %vec.epilog.middle.block ] ; 2 uses
  %i.bwc = add nsw i64 %.2.i.i942058.ph, -1
  %xtraiter5617 = and i64 %.2.i.i942058.ph, 7     ; 2 uses
  %lcmp.mod5618.not = icmp eq i64 %xtraiter5617, 0
  br i1 %lcmp.mod5618.not, label %.lr.ph2059.prol.loopexit, label %.lr.ph2059.prol

.lr.ph2059.prol:                                  ; preds = %.lr.ph2059.preheader, %.lr.ph2059.prol
  %.2.i.i942058.prol = phi i64 [ %i.bwg, %.lr.ph2059.prol ], [ %.2.i.i942058.ph, %.lr.ph2059.preheader ]
  %.220.i.i932057.prol = phi ptr [ %i.bwd, %.lr.ph2059.prol ], [ %.220.i.i932057.ph, %.lr.ph2059.preheader ] ; 2 uses
  %.223.i.i922056.prol = phi ptr [ %i.bwf, %.lr.ph2059.prol ], [ %.223.i.i922056.ph, %.lr.ph2059.preheader ] ; 2 uses
  %prol.iter5619 = phi i64 [ %prol.iter5619.next, %.lr.ph2059.prol ], [ 0, %.lr.ph2059.preheader ]
  %i.bwd = getelementptr inbounds nuw i8, ptr %.220.i.i932057.prol, i64 1 ; 2 uses
  %i.bwe = load i8, ptr %.220.i.i932057.prol, align 1, !tbaa !100
  %i.bwf = getelementptr inbounds nuw i8, ptr %.223.i.i922056.prol, i64 1 ; 3 uses
  store i8 %i.bwe, ptr %.223.i.i922056.prol, align 1, !tbaa !100
  %i.bwg = add nsw i64 %.2.i.i942058.prol, -1     ; 2 uses
  %prol.iter5619.next = add i64 %prol.iter5619, 1 ; 2 uses
  %prol.iter5619.cmp.not = icmp eq i64 %prol.iter5619.next, %xtraiter5617
  br i1 %prol.iter5619.cmp.not, label %.lr.ph2059.prol.loopexit, label %.lr.ph2059.prol, !llvm.loop !416

.lr.ph2059.prol.loopexit:                         ; preds = %.lr.ph2059.prol, %.lr.ph2059.preheader
  %.lcssa5461.unr = phi ptr [ poison, %.lr.ph2059.preheader ], [ %i.bwf, %.lr.ph2059.prol ]
  %.2.i.i942058.unr = phi i64 [ %.2.i.i942058.ph, %.lr.ph2059.preheader ], [ %i.bwg, %.lr.ph2059.prol ]
  %.220.i.i932057.unr = phi ptr [ %.220.i.i932057.ph, %.lr.ph2059.preheader ], [ %i.bwd, %.lr.ph2059.prol ]
  %.223.i.i922056.unr = phi ptr [ %.223.i.i922056.ph, %.lr.ph2059.preheader ], [ %i.bwf, %.lr.ph2059.prol ]
  %i.bwh = icmp ult i64 %i.bwc, 7
  br i1 %i.bwh, label %write_str.exit744.i, label %.lr.ph2059

.lr.ph2051:                                       ; preds = %.lr.ph2051.preheader5373, %.lr.ph2051
  %.1.i.i912050 = phi i64 [ %i.bwl, %.lr.ph2051 ], [ %.1.i.i912050.ph, %.lr.ph2051.preheader5373 ]
  %.119.i.i902049 = phi ptr [ %i.bwk, %.lr.ph2051 ], [ %.119.i.i902049.ph, %.lr.ph2051.preheader5373 ] ; 2 uses
  %.122.i.i892048 = phi ptr [ %i.bwj, %.lr.ph2051 ], [ %.122.i.i892048.ph, %.lr.ph2051.preheader5373 ] ; 2 uses
  %i.bwi = load i32, ptr %.119.i.i902049, align 1
  store i32 %i.bwi, ptr %.122.i.i892048, align 1
  %i.bwj = getelementptr inbounds nuw i8, ptr %.122.i.i892048, i64 4 ; 2 uses
  %i.bwk = getelementptr inbounds nuw i8, ptr %.119.i.i902049, i64 4 ; 2 uses
  %i.bwl = add nsw i64 %.1.i.i912050, -4          ; 3 uses
  %i.bwm = icmp ugt i64 %i.bwl, 3
  br i1 %i.bwm, label %.lr.ph2051, label %.preheader1051, !llvm.loop !417

.lr.ph2059:                                       ; preds = %.lr.ph2059.prol.loopexit, %.lr.ph2059
  %.2.i.i942058 = phi i64 [ %i.bxl, %.lr.ph2059 ], [ %.2.i.i942058.unr, %.lr.ph2059.prol.loopexit ]
  %.220.i.i932057 = phi ptr [ %i.bxi, %.lr.ph2059 ], [ %.220.i.i932057.unr, %.lr.ph2059.prol.loopexit ] ; 9 uses
  %.223.i.i922056 = phi ptr [ %i.bxk, %.lr.ph2059 ], [ %.223.i.i922056.unr, %.lr.ph2059.prol.loopexit ] ; 9 uses
  %i.bwn = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 1
  %i.bwo = load i8, ptr %.220.i.i932057, align 1, !tbaa !100
  %i.bwp = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 1
  store i8 %i.bwo, ptr %.223.i.i922056, align 1, !tbaa !100
  %i.bwq = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 2
  %i.bwr = load i8, ptr %i.bwn, align 1, !tbaa !100
  %i.bws = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 2
  store i8 %i.bwr, ptr %i.bwp, align 1, !tbaa !100
  %i.bwt = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 3
  %i.bwu = load i8, ptr %i.bwq, align 1, !tbaa !100
  %i.bwv = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 3
  store i8 %i.bwu, ptr %i.bws, align 1, !tbaa !100
  %i.bww = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 4
  %i.bwx = load i8, ptr %i.bwt, align 1, !tbaa !100
  %i.bwy = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 4
  store i8 %i.bwx, ptr %i.bwv, align 1, !tbaa !100
  %i.bwz = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 5
  %i.bxa = load i8, ptr %i.bww, align 1, !tbaa !100
  %i.bxb = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 5
  store i8 %i.bxa, ptr %i.bwy, align 1, !tbaa !100
  %i.bxc = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 6
  %i.bxd = load i8, ptr %i.bwz, align 1, !tbaa !100
  %i.bxe = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 6
  store i8 %i.bxd, ptr %i.bxb, align 1, !tbaa !100
  %i.bxf = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 7
  %i.bxg = load i8, ptr %i.bxc, align 1, !tbaa !100
  %i.bxh = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 7
  store i8 %i.bxg, ptr %i.bxe, align 1, !tbaa !100
  %i.bxi = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 8
  %i.bxj = load i8, ptr %i.bxf, align 1, !tbaa !100
  %i.bxk = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 8 ; 2 uses
  store i8 %i.bxj, ptr %i.bxh, align 1, !tbaa !100
  %i.bxl = add nsw i64 %.2.i.i942058, -8          ; 2 uses
  %.not.i.i95.7 = icmp eq i64 %i.bxl, 0
  br i1 %.not.i.i95.7, label %write_str.exit744.i, label %.lr.ph2059, !llvm.loop !418

write_str.exit744.i:                              ; preds = %.preheader1037, %.lr.ph2059.prol.loopexit, %.lr.ph2059, %.preheader1023, %bb.gz, %.lr.ph2037.prol.loopexit, %bb.hm, %bb.ho, %bb.jh, %.lr.ph2087.prol.loopexit, %bb.ju, %bb.jw, %middle.block, %vec.epilog.middle.block, %.preheader1051
  %.8253.i659.i.lcssa.sink4191 = phi ptr [ %.8253.i659.i, %bb.hm ], [ %.122.i.i89.lcssa, %.preheader1051 ], [ %i.bwa, %vec.epilog.middle.block ], [ %.lcssa5531.unr, %.lr.ph2087.prol.loopexit ], [ %i.bxk, %.lr.ph2059 ], [ %i.bvu, %middle.block ], [ %.lcssa5448.unr, %.lr.ph2037.prol.loopexit ], [ %.2247.i.i102.lcssa, %.preheader1023 ], [ %.8253.i.i110, %bb.ju ], [ %.8253.i.i110, %bb.jw ], [ %i.bnl, %bb.jh ], [ %.8253.i659.i, %bb.ho ], [ %i.bac, %bb.gz ], [ %.lcssa5461.unr, %.lr.ph2059.prol.loopexit ], [ %.2247.i651.i.lcssa, %.preheader1037 ] ; 4 uses
  %i.bxm = getelementptr inbounds nuw i8, ptr %.8253.i659.i.lcssa.sink4191, i64 1
  store i8 34, ptr %.8253.i659.i.lcssa.sink4191, align 1, !tbaa !100
  %i.bxn = select i1 %.not600.i, i8 44, i8 58
  %i.bxo = getelementptr inbounds nuw i8, ptr %.8253.i659.i.lcssa.sink4191, i64 2
  store i8 %i.bxn, ptr %i.bxm, align 1, !tbaa !100
  %i.bxp = select i1 %.not600.i, i8 10, i8 32
  %i.bxq = getelementptr inbounds nuw i8, ptr %.8253.i659.i.lcssa.sink4191, i64 3
  store i8 %i.bxp, ptr %i.bxo, align 1, !tbaa !100
  br label %bb.mq

bb.kt:                                            ; preds = %bb.fz
  %i.bxr = trunc i64 %.0688 to i32
  %i.bxs = and i32 %i.asd, %i.bxr
  %.not595.i = icmp ne i32 %i.bxs, 0              ; 2 uses
  %i.bxt = select i1 %.not595.i, i64 40, i64 %i.asf ; 2 uses
  %i.bxu = getelementptr inbounds nuw i8, ptr %.0528.i, i64 %i.bxt
  %.not596.i = icmp ult ptr %i.bxu, %.0498.i
  br i1 %.not596.i, label %bb.kv, label %bb.ku, !prof !62

bb.ku:                                            ; preds = %bb.kt
  %i.bxv = lshr i64 %.0489.i, 1
  %i.bxw = tail call i64 @llvm.umax.i64(i64 %i.bxv, i64 %i.bxt)
  %i.bxx = add i64 %i.bxw, 15
  %i.bxy = and i64 %i.bxx, -16
  %i.bxz = add i64 %i.bxy, %.0489.i               ; 4 uses
  %i.bya = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0547.i, i64 noundef %.0489.i, i64 noundef %i.bxz) #33, !inline_history !409 ; 6 uses
  %.not597.i = icmp eq ptr %i.bya, null
  br i1 %.not597.i, label %.loopexit1049, label %.thread787, !prof !45

.thread787:                                       ; preds = %bb.ku
  %i.byb = ptrtoint ptr %.0509.i to i64
  %i.byc = ptrtoint ptr %.0498.i to i64           ; 2 uses
  %i.byd = sub i64 %i.byb, %i.byc                 ; 2 uses
  %i.bye = ptrtoint ptr %.0528.i to i64
  %i.byf = ptrtoint ptr %.0547.i to i64           ; 2 uses
  %i.byg = sub i64 %i.bye, %i.byf
  %i.byh = sub i64 %i.byc, %i.byf
  %i.byi = sub i64 %i.bxz, %i.byd
  %i.byj = getelementptr inbounds nuw i8, ptr %i.bya, i64 %i.byi ; 2 uses
  %i.byk = getelementptr inbounds nuw i8, ptr %i.bya, i64 %i.byh
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.byj, ptr nonnull align 1 %i.byk, i64 %i.byd, i1 false)
  %i.byl = getelementptr inbounds nuw i8, ptr %i.bya, i64 %i.byg
  %i.bym = getelementptr inbounds nuw i8, ptr %i.bya, i64 %i.bxz
  br label %bb.kv

bb.kv:                                            ; preds = %.thread787, %bb.kt
  %.4551.i = phi ptr [ %i.bya, %.thread787 ], [ %.0547.i, %bb.kt ] ; 2 uses
  %.5533.i = phi ptr [ %i.byl, %.thread787 ], [ %.0528.i, %bb.kt ] ; 3 uses
  %.4513.i = phi ptr [ %i.bym, %.thread787 ], [ %.0509.i, %bb.kt ]
  %.4502.i = phi ptr [ %i.byj, %.thread787 ], [ %.0498.i, %bb.kt ]
  %.2491.i = phi i64 [ %i.bxz, %.thread787 ], [ %.0489.i, %bb.kt ]
  %.not.i771.i2004 = select i1 %.not595.i, i1 true, i1 %.not.i771.i20042944
  br i1 %.not.i771.i2004, label %write_indent.exit772.i, label %select.unfold793.preheader

select.unfold793.preheader:                       ; preds = %bb.kv
end_hunk_2
begin_hunk_3_@yyjson_mut_write_opts_impl:bb.a
    i32 8205, label %.thread878
    i32 0, label %.thread878
  ], !prof !152

.critedge321.i.i308:                              ; preds = %bb.rz
  %i.dwy = zext i16 %.sroa.0.0.copyload.i.i.i303 to i64
  %i.dwz = shl nuw nsw i64 %i.dwy, 12
  %i.dxa = lshr i16 %.sroa.0.0.copyload.i.i.i303, 2
  %i.dxb = and i16 %i.dxa, 4032                   ; 2 uses
  %i.dxc = zext nneg i16 %i.dxb to i64
  %i.dxd = and i8 %i.dwu, 63
  store i16 30044, ptr %.8253.i.i287, align 1
  %i.dxe = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 2
  %.masked.i.i313 = or disjoint i64 %i.dwz, %i.dxc
  %i.dxf = lshr i64 %.masked.i.i313, 7
  %i.dxg = and i64 %i.dxf, 510
  %i.dxh = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dxg
  %i.dxi = load i16, ptr %i.dxh, align 2
  store i16 %i.dxi, ptr %i.dxe, align 1
  %i.dxj = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 4
  %.tr294.i.i314 = trunc i16 %i.dxb to i8
  %.narrow295.i.i315 = or disjoint i8 %i.dxd, %.tr294.i.i314
  %i.dxk = zext i8 %.narrow295.i.i315 to i64
  %i.dxl = shl nuw nsw i64 %i.dxk, 1
  %i.dxm = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dxl
  %i.dxn = load i16, ptr %i.dxm, align 2
  store i16 %i.dxn, ptr %i.dxj, align 1
  %i.dxo = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 6
  %i.dxp = getelementptr inbounds nuw i8, ptr %.8.i.i288, i64 3
  br label %.preheader987.backedge

bb.sa:                                            ; preds = %bb.rj
  %.sroa.0.0.copyload.i333.i.i293 = load i32, ptr %.8.i.i288, align 1 ; 9 uses
  %i.dxq = and i32 %.sroa.0.0.copyload.i333.i.i293, -1061109512
  %i.dxr = icmp ne i32 %i.dxq, -2139062032
  %i.dxs = and i32 %.sroa.0.0.copyload.i333.i.i293, 12295
  %.not288.i.i294 = icmp eq i32 %i.dxs, 0
  %or.cond323.i.i295 = or i1 %i.dxr, %.not288.i.i294
  %i.dxt = lshr i32 %.sroa.0.0.copyload.i333.i.i293, 24
  br i1 %or.cond323.i.i295, label %.thread878, label %bb.sb, !prof !140

bb.sb:                                            ; preds = %bb.sa
  %i.dxu = and i32 %.sroa.0.0.copyload.i333.i.i293, 4
  %i.dxv = icmp ne i32 %i.dxu, 0
  %i.dxw = and i32 %.sroa.0.0.copyload.i333.i.i293, 12291
  %i.dxx = icmp ne i32 %i.dxw, 0
  %.not291.i.i296 = and i1 %i.dxv, %i.dxx
  br i1 %.not291.i.i296, label %.thread878, label %.critedge325.i.i299, !prof !45

.critedge325.i.i299:                              ; preds = %bb.sb
  %i.dxy = shl i32 %.sroa.0.0.copyload.i333.i.i293, 18
  %i.dxz = and i32 %i.dxy, 1835008
  %i.dya = shl i32 %.sroa.0.0.copyload.i333.i.i293, 4
  %i.dyb = and i32 %i.dya, 258048
  %i.dyc = lshr i32 %.sroa.0.0.copyload.i333.i.i293, 10 ; 2 uses
  %i.dyd = and i32 %i.dyc, 3072
  %i.dye = and i32 %i.dxt, 63
  %i.dyf = add nsw i32 %i.dxz, -65536
  %i.dyg = add nsw i32 %i.dyf, %i.dyb             ; 2 uses
  %i.dyh = or disjoint i32 %i.dyg, %i.dyd
  %i.dyi = lshr exact i32 %i.dyg, 10
  %i.dyj = add nuw nsw i32 %i.dyi, 55296
  store i16 30044, ptr %.8253.i.i287, align 1
  %i.dyk = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 2
  %i.dyl = lshr i32 %i.dyj, 7
  %i.dym = and i32 %i.dyl, 65534
  %i.dyn = zext nneg i32 %i.dym to i64
  %i.dyo = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dyn
  %i.dyp = load i16, ptr %i.dyo, align 2
  store i16 %i.dyp, ptr %i.dyk, align 1
  %i.dyq = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 4
  %i.dyr = lshr exact i32 %i.dyh, 9
  %i.dys = and i32 %i.dyr, 510
  %i.dyt = zext nneg i32 %i.dys to i64
  %i.dyu = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dyt
  %i.dyv = load i16, ptr %i.dyu, align 2
  store i16 %i.dyv, ptr %i.dyq, align 1
  %i.dyw = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 6
  store i16 30044, ptr %i.dyw, align 1
  %i.dyx = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 8
  %i.dyy = lshr i32 %.sroa.0.0.copyload.i333.i.i293, 17
  %i.dyz = and i32 %i.dyy, 6
  %i.dza = zext nneg i32 %i.dyz to i64
  %i.dzb = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dza
  %i.dzc = getelementptr inbounds nuw i8, ptr %i.dzb, i64 440
  %i.dzd = load i16, ptr %i.dzc, align 2
  store i16 %i.dzd, ptr %i.dyx, align 1
  %i.dze = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 10
  %.masked2957 = and i32 %i.dyc, 192
  %i.dzf = or disjoint i32 %i.dye, %.masked2957
  %i.dzg = shl nuw nsw i32 %i.dzf, 1
  %i.dzh = zext nneg i32 %i.dzg to i64
  %i.dzi = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dzh
  %i.dzj = load i16, ptr %i.dzi, align 2
  store i16 %i.dzj, ptr %i.dze, align 1
  %i.dzk = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 12
  br label %.preheader987.backedge

bb.sc:                                            ; preds = %bb.rj, %bb.ri
  %i.dzl = phi i8 [ %i.dug, %bb.rj ], [ %i.dty, %bb.ri ]
  br i1 %.not942, label %.thread868, label %.thread878

.thread868:                                       ; preds = %bb.rs, %bb.rt, %bb.rq, %bb.ro, %bb.rr, %bb.rr, %bb.rp, %bb.rp, %bb.rl, %bb.sc
  %i.dzm = phi i8 [ %i.dvf, %bb.rs ], [ %i.dvf, %bb.rt ], [ %i.duy, %bb.rq ], [ %i.dus, %bb.ro ], [ %i.duy, %bb.rr ], [ %i.duy, %bb.rr ], [ %i.dus, %bb.rp ], [ %i.dus, %bb.rp ], [ %i.dun, %bb.rl ], [ %i.dzl, %bb.sc ]
  br i1 %.not945, label %.loopexit988, label %bb.sd

bb.sd:                                            ; preds = %.thread868
  %i.dzn = getelementptr inbounds nuw i8, ptr %.8.i.i288, i64 1
  %i.dzo = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 1
  store i8 %i.dzm, ptr %.8253.i.i287, align 1, !tbaa !100
  br label %.preheader987.backedge

.thread878:                                       ; preds = %bb.sa, %bb.sb, %bb.ry, %bb.rz, %bb.rz, %bb.rw, %bb.sc
  br i1 %.not945, label %.loopexit988, label %bb.se

bb.se:                                            ; preds = %.thread878
  store i16 30044, ptr %.8253.i.i287, align 1
  %i.dzp = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 2
  store i32 1145456198, ptr %i.dzp, align 1
  %i.dzq = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 6
  %i.dzr = getelementptr inbounds nuw i8, ptr %.8.i.i288, i64 1
  br label %.preheader987.backedge

bb.sf:                                            ; preds = %bb.px
  %i.dzs = getelementptr inbounds nuw i8, ptr %.2392.i, i64 1 ; 2 uses
  %i.dzt = icmp ugt i64 %i.cxx, 4095
  br i1 %i.dzt, label %.lr.ph2162, label %.preheader1018

.preheader1018:                                   ; preds = %.lr.ph2162, %bb.sf
  %.021.i.i264.lcssa = phi ptr [ %i.dzs, %bb.sf ], [ %i.eai, %.lr.ph2162 ] ; 5 uses
  %.018.i.i265.lcssa = phi ptr [ %i.cyf, %bb.sf ], [ %i.eaj, %.lr.ph2162 ] ; 5 uses
  %.0.i478.i.lcssa = phi i64 [ %i.cyd, %bb.sf ], [ %i.eak, %.lr.ph2162 ] ; 5 uses
  %i.dzu = icmp samesign ugt i64 %.0.i478.i.lcssa, 3
  br i1 %i.dzu, label %.lr.ph2169.preheader, label %.preheader1017

.lr.ph2169.preheader:                             ; preds = %.preheader1018
  %.018.i.i265.lcssa4890 = ptrtoaddr ptr %.018.i.i265.lcssa to i64
  %.021.i.i264.lcssa4889 = ptrtoaddr ptr %.021.i.i264.lcssa to i64
  %i.dzv = add nsw i64 %.0.i478.i.lcssa, -4       ; 2 uses
  %i.dzw = lshr i64 %i.dzv, 2
  %i.dzx = add nuw nsw i64 %i.dzw, 1              ; 2 uses
  %min.iters.check4893 = icmp ult i64 %i.dzv, 28
  %i.dzy = sub i64 %.018.i.i265.lcssa4890, %.021.i.i264.lcssa4889
  %diff.check4891 = icmp ugt i64 %i.dzy, -32
  %or.cond4977 = select i1 %min.iters.check4893, i1 true, i1 %diff.check4891
  br i1 %or.cond4977, label %.lr.ph2169.preheader5165, label %vector.ph4894

vector.ph4894:                                    ; preds = %.lr.ph2169.preheader
  %n.vec4895 = and i64 %i.dzx, 9223372036854775800 ; 4 uses
  %i.dzz = shl i64 %n.vec4895, 2
  %i.eaa = sub i64 %.0.i478.i.lcssa, %i.dzz       ; 2 uses
  %i.eab = shl i64 %n.vec4895, 2                  ; 2 uses
  %i.eac = getelementptr i8, ptr %.018.i.i265.lcssa, i64 %i.eab ; 2 uses
  %i.ead = getelementptr i8, ptr %.021.i.i264.lcssa, i64 %i.eab ; 2 uses
  br label %vector.body4896

vector.body4896:                                  ; preds = %vector.body4896, %vector.ph4894
  %index4897 = phi i64 [ 0, %vector.ph4894 ], [ %index.next4902, %vector.body4896 ] ; 2 uses
  %i.eae = shl i64 %index4897, 2                  ; 2 uses
  %next.gep4898 = getelementptr i8, ptr %.018.i.i265.lcssa, i64 %i.eae ; 2 uses
  %next.gep4899 = getelementptr i8, ptr %.021.i.i264.lcssa, i64 %i.eae ; 2 uses
  %i.eaf = getelementptr i8, ptr %next.gep4898, i64 16
  %wide.load4900 = load <4 x i32>, ptr %next.gep4898, align 1
  %wide.load4901 = load <4 x i32>, ptr %i.eaf, align 1
  %i.eag = getelementptr i8, ptr %next.gep4899, i64 16
  store <4 x i32> %wide.load4900, ptr %next.gep4899, align 1
  store <4 x i32> %wide.load4901, ptr %i.eag, align 1
  %index.next4902 = add nuw i64 %index4897, 8     ; 2 uses
  %i.eah = icmp eq i64 %index.next4902, %n.vec4895
  br i1 %i.eah, label %middle.block4903, label %vector.body4896, !llvm.loop !429

middle.block4903:                                 ; preds = %vector.body4896
  %cmp.n4904 = icmp eq i64 %i.dzx, %n.vec4895
  br i1 %cmp.n4904, label %.preheader1017, label %.lr.ph2169.preheader5165

.lr.ph2169.preheader5165:                         ; preds = %.lr.ph2169.preheader, %middle.block4903
  %.1.i.i2682168.ph = phi i64 [ %.0.i478.i.lcssa, %.lr.ph2169.preheader ], [ %i.eaa, %middle.block4903 ]
  %.119.i.i2672167.ph = phi ptr [ %.018.i.i265.lcssa, %.lr.ph2169.preheader ], [ %i.eac, %middle.block4903 ]
  %.122.i.i2662166.ph = phi ptr [ %.021.i.i264.lcssa, %.lr.ph2169.preheader ], [ %i.ead, %middle.block4903 ]
  br label %.lr.ph2169

.lr.ph2162:                                       ; preds = %bb.sf, %.lr.ph2162
  %.0.i478.i2160 = phi i64 [ %i.eak, %.lr.ph2162 ], [ %i.cyd, %bb.sf ]
  %.018.i.i2652159 = phi ptr [ %i.eaj, %.lr.ph2162 ], [ %i.cyf, %bb.sf ] ; 2 uses
  %.021.i.i2642158 = phi ptr [ %i.eai, %.lr.ph2162 ], [ %i.dzs, %bb.sf ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i.i2642158, ptr noundef nonnull align 1 dereferenceable(16) %.018.i.i2652159, i64 16, i1 false)
  %i.eai = getelementptr inbounds nuw i8, ptr %.021.i.i2642158, i64 16 ; 2 uses
  %i.eaj = getelementptr inbounds nuw i8, ptr %.018.i.i2652159, i64 16 ; 2 uses
  %i.eak = add nsw i64 %.0.i478.i2160, -16        ; 3 uses
  %i.eal = icmp ugt i64 %i.eak, 15
  br i1 %i.eal, label %.lr.ph2162, label %.preheader1018, !llvm.loop !26

.preheader1017:                                   ; preds = %.lr.ph2169, %middle.block4903, %.preheader1018
  %.122.i.i266.lcssa = phi ptr [ %.021.i.i264.lcssa, %.preheader1018 ], [ %i.ead, %middle.block4903 ], [ %i.ebf, %.lr.ph2169 ] ; 7 uses
  %.119.i.i267.lcssa = phi ptr [ %.018.i.i265.lcssa, %.preheader1018 ], [ %i.eac, %middle.block4903 ], [ %i.ebg, %.lr.ph2169 ] ; 6 uses
  %.1.i.i268.lcssa = phi i64 [ %.0.i478.i.lcssa, %.preheader1018 ], [ %i.eaa, %middle.block4903 ], [ %i.ebh, %.lr.ph2169 ] ; 11 uses
  %.not.i.i2722173 = icmp eq i64 %.1.i.i268.lcssa, 0
  br i1 %.not.i.i2722173, label %write_str.exit581.i, label %iter.check4870

iter.check4870:                                   ; preds = %.preheader1017
  %.119.i.i267.lcssa4853 = ptrtoaddr ptr %.122.i.i266.lcssa to i64
  %.122.i.i266.lcssa4852 = ptrtoaddr ptr %.119.i.i267.lcssa to i64
  %min.iters.check4856 = icmp ult i64 %.1.i.i268.lcssa, 4
  %i.eam = sub i64 %.122.i.i266.lcssa4852, %.119.i.i267.lcssa4853
  %diff.check4854 = icmp ugt i64 %i.eam, -32
  %or.cond4978 = select i1 %min.iters.check4856, i1 true, i1 %diff.check4854
  br i1 %or.cond4978, label %.lr.ph2177.preheader, label %vector.main.loop.iter.check4857

vector.main.loop.iter.check4857:                  ; preds = %iter.check4870
  %min.iters.check4858 = icmp ult i64 %.1.i.i268.lcssa, 32
  br i1 %min.iters.check4858, label %vec.epilog.ph4874, label %vector.ph4859

vector.ph4859:                                    ; preds = %vector.main.loop.iter.check4857
  %i.ean = and i64 %.1.i.i268.lcssa, 28
  %n.vec4860 = and i64 %.1.i.i268.lcssa, -32      ; 5 uses
  %i.eao = and i64 %.1.i.i268.lcssa, 31
  %i.eap = getelementptr i8, ptr %.119.i.i267.lcssa, i64 %n.vec4860
  %i.eaq = getelementptr i8, ptr %.122.i.i266.lcssa, i64 %n.vec4860 ; 2 uses
  br label %vector.body4861

vector.body4861:                                  ; preds = %vector.ph4859, %vector.body4861
  %index4862 = phi i64 [ 0, %vector.ph4859 ], [ %index.next4867, %vector.body4861 ] ; 3 uses
  %next.gep4863 = getelementptr i8, ptr %.119.i.i267.lcssa, i64 %index4862 ; 2 uses
  %next.gep4864 = getelementptr i8, ptr %.122.i.i266.lcssa, i64 %index4862 ; 2 uses
  %i.ear = getelementptr i8, ptr %next.gep4863, i64 16
  %wide.load4865 = load <16 x i8>, ptr %next.gep4863, align 1, !tbaa !100
  %wide.load4866 = load <16 x i8>, ptr %i.ear, align 1, !tbaa !100
  %i.eas = getelementptr i8, ptr %next.gep4864, i64 16
  store <16 x i8> %wide.load4865, ptr %next.gep4864, align 1, !tbaa !100
  store <16 x i8> %wide.load4866, ptr %i.eas, align 1, !tbaa !100
  %index.next4867 = add nuw i64 %index4862, 32    ; 2 uses
  %i.eat = icmp eq i64 %index.next4867, %n.vec4860
  br i1 %i.eat, label %middle.block4868, label %vector.body4861, !llvm.loop !430

middle.block4868:                                 ; preds = %vector.body4861
  %cmp.n4869 = icmp eq i64 %.1.i.i268.lcssa, %n.vec4860
  br i1 %cmp.n4869, label %write_str.exit581.i, label %vec.epilog.iter.check4871

vec.epilog.iter.check4871:                        ; preds = %middle.block4868
  %min.epilog.iters.check4873 = icmp eq i64 %i.ean, 0
  br i1 %min.epilog.iters.check4873, label %.lr.ph2177.preheader, label %vec.epilog.ph4874, !prof !153

vec.epilog.ph4874:                                ; preds = %vector.main.loop.iter.check4857, %vec.epilog.iter.check4871
  %vec.epilog.resume.val4875 = phi i64 [ %n.vec4860, %vec.epilog.iter.check4871 ], [ 0, %vector.main.loop.iter.check4857 ]
  %n.vec4876 = and i64 %.1.i.i268.lcssa, -4       ; 4 uses
  %i.eau = and i64 %.1.i.i268.lcssa, 3
  %i.eav = getelementptr i8, ptr %.119.i.i267.lcssa, i64 %n.vec4876
  %i.eaw = getelementptr i8, ptr %.122.i.i266.lcssa, i64 %n.vec4876 ; 2 uses
  br label %vec.epilog.vector.body4877

vec.epilog.vector.body4877:                       ; preds = %vec.epilog.vector.body4877, %vec.epilog.ph4874
  %index4878 = phi i64 [ %vec.epilog.resume.val4875, %vec.epilog.ph4874 ], [ %index.next4882, %vec.epilog.vector.body4877 ] ; 3 uses
  %next.gep4879 = getelementptr i8, ptr %.119.i.i267.lcssa, i64 %index4878
  %next.gep4880 = getelementptr i8, ptr %.122.i.i266.lcssa, i64 %index4878
  %wide.load4881 = load <4 x i8>, ptr %next.gep4879, align 1, !tbaa !100
  store <4 x i8> %wide.load4881, ptr %next.gep4880, align 1, !tbaa !100
  %index.next4882 = add nuw i64 %index4878, 4     ; 2 uses
  %i.eax = icmp eq i64 %index.next4882, %n.vec4876
  br i1 %i.eax, label %vec.epilog.middle.block4883, label %vec.epilog.vector.body4877, !llvm.loop !431

vec.epilog.middle.block4883:                      ; preds = %vec.epilog.vector.body4877
  %cmp.n4884 = icmp eq i64 %.1.i.i268.lcssa, %n.vec4876
  br i1 %cmp.n4884, label %write_str.exit581.i, label %.lr.ph2177.preheader

.lr.ph2177.preheader:                             ; preds = %iter.check4870, %vec.epilog.iter.check4871, %vec.epilog.middle.block4883
  %.2.i.i2712176.ph = phi i64 [ %.1.i.i268.lcssa, %iter.check4870 ], [ %i.eao, %vec.epilog.iter.check4871 ], [ %i.eau, %vec.epilog.middle.block4883 ] ; 4 uses
  %.220.i.i2702175.ph = phi ptr [ %.119.i.i267.lcssa, %iter.check4870 ], [ %i.eap, %vec.epilog.iter.check4871 ], [ %i.eav, %vec.epilog.middle.block4883 ] ; 2 uses
  %.223.i.i2692174.ph = phi ptr [ %.122.i.i266.lcssa, %iter.check4870 ], [ %i.eaq, %vec.epilog.iter.check4871 ], [ %i.eaw, %vec.epilog.middle.block4883 ] ; 2 uses
  %i.eay = add nsw i64 %.2.i.i2712176.ph, -1
  %xtraiter5652 = and i64 %.2.i.i2712176.ph, 7    ; 2 uses
  %lcmp.mod5653.not = icmp eq i64 %xtraiter5652, 0
  br i1 %lcmp.mod5653.not, label %.lr.ph2177.prol.loopexit, label %.lr.ph2177.prol

.lr.ph2177.prol:                                  ; preds = %.lr.ph2177.preheader, %.lr.ph2177.prol
  %.2.i.i2712176.prol = phi i64 [ %i.ebc, %.lr.ph2177.prol ], [ %.2.i.i2712176.ph, %.lr.ph2177.preheader ]
  %.220.i.i2702175.prol = phi ptr [ %i.eaz, %.lr.ph2177.prol ], [ %.220.i.i2702175.ph, %.lr.ph2177.preheader ] ; 2 uses
  %.223.i.i2692174.prol = phi ptr [ %i.ebb, %.lr.ph2177.prol ], [ %.223.i.i2692174.ph, %.lr.ph2177.preheader ] ; 2 uses
  %prol.iter5654 = phi i64 [ %prol.iter5654.next, %.lr.ph2177.prol ], [ 0, %.lr.ph2177.preheader ]
  %i.eaz = getelementptr inbounds nuw i8, ptr %.220.i.i2702175.prol, i64 1 ; 2 uses
  %i.eba = load i8, ptr %.220.i.i2702175.prol, align 1, !tbaa !100
  %i.ebb = getelementptr inbounds nuw i8, ptr %.223.i.i2692174.prol, i64 1 ; 3 uses
  store i8 %i.eba, ptr %.223.i.i2692174.prol, align 1, !tbaa !100
  %i.ebc = add nsw i64 %.2.i.i2712176.prol, -1    ; 2 uses
  %prol.iter5654.next = add i64 %prol.iter5654, 1 ; 2 uses
  %prol.iter5654.cmp.not = icmp eq i64 %prol.iter5654.next, %xtraiter5652
  br i1 %prol.iter5654.cmp.not, label %.lr.ph2177.prol.loopexit, label %.lr.ph2177.prol, !llvm.loop !432

.lr.ph2177.prol.loopexit:                         ; preds = %.lr.ph2177.prol, %.lr.ph2177.preheader
  %.lcssa5249.unr = phi ptr [ poison, %.lr.ph2177.preheader ], [ %i.ebb, %.lr.ph2177.prol ]
  %.2.i.i2712176.unr = phi i64 [ %.2.i.i2712176.ph, %.lr.ph2177.preheader ], [ %i.ebc, %.lr.ph2177.prol ]
  %.220.i.i2702175.unr = phi ptr [ %.220.i.i2702175.ph, %.lr.ph2177.preheader ], [ %i.eaz, %.lr.ph2177.prol ]
  %.223.i.i2692174.unr = phi ptr [ %.223.i.i2692174.ph, %.lr.ph2177.preheader ], [ %i.ebb, %.lr.ph2177.prol ]
  %i.ebd = icmp ult i64 %i.eay, 7
  br i1 %i.ebd, label %write_str.exit581.i, label %.lr.ph2177

.lr.ph2169:                                       ; preds = %.lr.ph2169.preheader5165, %.lr.ph2169
  %.1.i.i2682168 = phi i64 [ %i.ebh, %.lr.ph2169 ], [ %.1.i.i2682168.ph, %.lr.ph2169.preheader5165 ]
  %.119.i.i2672167 = phi ptr [ %i.ebg, %.lr.ph2169 ], [ %.119.i.i2672167.ph, %.lr.ph2169.preheader5165 ] ; 2 uses
  %.122.i.i2662166 = phi ptr [ %i.ebf, %.lr.ph2169 ], [ %.122.i.i2662166.ph, %.lr.ph2169.preheader5165 ] ; 2 uses
  %i.ebe = load i32, ptr %.119.i.i2672167, align 1
  store i32 %i.ebe, ptr %.122.i.i2662166, align 1
  %i.ebf = getelementptr inbounds nuw i8, ptr %.122.i.i2662166, i64 4 ; 2 uses
  %i.ebg = getelementptr inbounds nuw i8, ptr %.119.i.i2672167, i64 4 ; 2 uses
  %i.ebh = add nsw i64 %.1.i.i2682168, -4         ; 3 uses
  %i.ebi = icmp ugt i64 %i.ebh, 3
  br i1 %i.ebi, label %.lr.ph2169, label %.preheader1017, !llvm.loop !433

.lr.ph2177:                                       ; preds = %.lr.ph2177.prol.loopexit, %.lr.ph2177
  %.2.i.i2712176 = phi i64 [ %i.ech, %.lr.ph2177 ], [ %.2.i.i2712176.unr, %.lr.ph2177.prol.loopexit ]
  %.220.i.i2702175 = phi ptr [ %i.ece, %.lr.ph2177 ], [ %.220.i.i2702175.unr, %.lr.ph2177.prol.loopexit ] ; 9 uses
  %.223.i.i2692174 = phi ptr [ %i.ecg, %.lr.ph2177 ], [ %.223.i.i2692174.unr, %.lr.ph2177.prol.loopexit ] ; 9 uses
  %i.ebj = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 1
  %i.ebk = load i8, ptr %.220.i.i2702175, align 1, !tbaa !100
  %i.ebl = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 1
  store i8 %i.ebk, ptr %.223.i.i2692174, align 1, !tbaa !100
  %i.ebm = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 2
  %i.ebn = load i8, ptr %i.ebj, align 1, !tbaa !100
  %i.ebo = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 2
  store i8 %i.ebn, ptr %i.ebl, align 1, !tbaa !100
  %i.ebp = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 3
  %i.ebq = load i8, ptr %i.ebm, align 1, !tbaa !100
  %i.ebr = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 3
  store i8 %i.ebq, ptr %i.ebo, align 1, !tbaa !100
  %i.ebs = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 4
  %i.ebt = load i8, ptr %i.ebp, align 1, !tbaa !100
  %i.ebu = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 4
  store i8 %i.ebt, ptr %i.ebr, align 1, !tbaa !100
  %i.ebv = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 5
  %i.ebw = load i8, ptr %i.ebs, align 1, !tbaa !100
  %i.ebx = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 5
  store i8 %i.ebw, ptr %i.ebu, align 1, !tbaa !100
  %i.eby = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 6
  %i.ebz = load i8, ptr %i.ebv, align 1, !tbaa !100
  %i.eca = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 6
  store i8 %i.ebz, ptr %i.ebx, align 1, !tbaa !100
  %i.ecb = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 7
  %i.ecc = load i8, ptr %i.eby, align 1, !tbaa !100
  %i.ecd = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 7
  store i8 %i.ecc, ptr %i.eca, align 1, !tbaa !100
  %i.ece = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 8
  %i.ecf = load i8, ptr %i.ecb, align 1, !tbaa !100
  %i.ecg = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 8 ; 2 uses
  store i8 %i.ecf, ptr %i.ecd, align 1, !tbaa !100
  %i.ech = add nsw i64 %.2.i.i2712176, -8         ; 2 uses
  %.not.i.i272.7 = icmp eq i64 %i.ech, 0
  br i1 %.not.i.i272.7, label %write_str.exit581.i, label %.lr.ph2177, !llvm.loop !434

write_str.exit581.i:                              ; preds = %.preheader1004, %.lr.ph2177.prol.loopexit, %.lr.ph2177, %.preheader990, %bb.om, %.lr.ph2154.prol.loopexit, %bb.oz, %bb.pb, %bb.qu, %.lr.ph2205.prol.loopexit, %bb.rh, %bb.rj, %middle.block4868, %vec.epilog.middle.block4883, %.preheader1017
  %.8253.i496.i.lcssa.sink4192 = phi ptr [ %.8253.i496.i, %bb.oz ], [ %.122.i.i266.lcssa, %.preheader1017 ], [ %i.eaw, %vec.epilog.middle.block4883 ], [ %.lcssa5319.unr, %.lr.ph2205.prol.loopexit ], [ %i.ecg, %.lr.ph2177 ], [ %i.eaq, %middle.block4868 ], [ %.lcssa5236.unr, %.lr.ph2154.prol.loopexit ], [ %.2247.i.i279.lcssa, %.preheader990 ], [ %.8253.i.i287, %bb.rh ], [ %.8253.i.i287, %bb.rj ], [ %i.dsh, %bb.qu ], [ %.8253.i496.i, %bb.pb ], [ %i.dey, %bb.om ], [ %.lcssa5249.unr, %.lr.ph2177.prol.loopexit ], [ %.2247.i488.i.lcssa, %.preheader1004 ] ; 3 uses
  %i.eci = getelementptr inbounds nuw i8, ptr %.8253.i496.i.lcssa.sink4192, i64 1
  store i8 34, ptr %.8253.i496.i.lcssa.sink4192, align 1, !tbaa !100
  %i.ecj = select i1 %.not446.i, i8 44, i8 58
  %i.eck = getelementptr inbounds nuw i8, ptr %.8253.i496.i.lcssa.sink4192, i64 2
  store i8 %i.ecj, ptr %i.eci, align 1, !tbaa !100
  br label %bb.tz

bb.sg:                                            ; preds = %bb.nm
  %i.ecl = getelementptr inbounds nuw i8, ptr %.0390.i, i64 40
  %.not442.i = icmp ult ptr %i.ecl, %.0368.i
  br i1 %.not442.i, label %bb.si, label %bb.sh, !prof !62

bb.sh:                                            ; preds = %bb.sg
  %i.ecm = lshr i64 %.0361.i, 1
  %i.ecn = tail call i64 @llvm.umax.i64(i64 %i.ecm, i64 40)
  %i.eco = add nuw i64 %i.ecn, 15
  %i.ecp = and i64 %i.eco, -16
  %i.ecq = add i64 %i.ecp, %.0361.i               ; 4 uses
  %i.ecr = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0405.i, i64 noundef %.0361.i, i64 noundef %i.ecq) #33, !inline_history !426 ; 6 uses
  %.not443.i = icmp eq ptr %i.ecr, null
  br i1 %.not443.i, label %.loopexit1019, label %.thread890, !prof !45

.thread890:                                       ; preds = %bb.sh
  %i.ecs = ptrtoint ptr %.0376.i to i64
  %i.ect = ptrtoint ptr %.0368.i to i64           ; 2 uses
  %i.ecu = sub i64 %i.ecs, %i.ect                 ; 2 uses
  %i.ecv = ptrtoint ptr %.0390.i to i64
  %i.ecw = ptrtoint ptr %.0405.i to i64           ; 2 uses
  %i.ecx = sub i64 %i.ecv, %i.ecw
  %i.ecy = sub i64 %i.ect, %i.ecw
  %i.ecz = sub i64 %i.ecq, %i.ecu
  %i.eda = getelementptr inbounds nuw i8, ptr %i.ecr, i64 %i.ecz ; 2 uses
  %i.edb = getelementptr inbounds nuw i8, ptr %i.ecr, i64 %i.ecy
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eda, ptr nonnull align 1 %i.edb, i64 %i.ecu, i1 false)
  %i.edc = getelementptr inbounds nuw i8, ptr %i.ecr, i64 %i.ecx
  %i.edd = getelementptr inbounds nuw i8, ptr %i.ecr, i64 %i.ecq
  %.pre2830 = load i64, ptr %.0423.i, align 8, !tbaa !99
  br label %bb.si

bb.si:                                            ; preds = %.thread890, %bb.sg
  %i.ede = phi i64 [ %.pre2830, %.thread890 ], [ %i.cxx, %bb.sg ] ; 3 uses
  %.4409.i = phi ptr [ %i.ecr, %.thread890 ], [ %.0405.i, %bb.sg ] ; 2 uses
  %.5395.i = phi ptr [ %i.edc, %.thread890 ], [ %.0390.i, %bb.sg ] ; 6 uses
  %.4380.i = phi ptr [ %i.edd, %.thread890 ], [ %.0376.i, %bb.sg ]
  %.4372.i = phi ptr [ %i.eda, %.thread890 ], [ %.0368.i, %bb.sg ]
  %.2363.i = phi i64 [ %i.ecq, %.thread890 ], [ %.0361.i, %bb.sg ]
  %i.edf = and i64 %i.ede, 16
  %.not.i582.i = icmp eq i64 %i.edf, 0
  %i.edg = getelementptr inbounds nuw i8, ptr %.0423.i, i64 8
  %i.edh = load i64, ptr %i.edg, align 8, !tbaa !100 ; 7 uses
  br i1 %.not.i582.i, label %bb.sj, label %bb.tc

bb.sj:                                            ; preds = %bb.si
  %i.edi = sub i64 0, %i.edh
  %i.edj = lshr i64 %i.ede, 3
end_hunk_3
