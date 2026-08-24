Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/LR0?download=true
inline.NumInlined: 12
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@generate_states:bb.a
  %i.az = shl i64 %index186, 1                    ; 2 uses
  %next.gep187 = getelementptr i8, ptr %i.am, i64 %i.az ; 2 uses
  %next.gep188 = getelementptr i8, ptr %i.ah, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep188, i64 16
  %wide.load189 = load <8 x i16>, ptr %next.gep188, align 2, !tbaa !11
  %wide.load190 = load <8 x i16>, ptr %i.ba, align 2, !tbaa !11
  %i.bb = getelementptr i8, ptr %next.gep187, i64 16
  store <8 x i16> %wide.load189, ptr %next.gep187, align 2, !tbaa !11
  store <8 x i16> %wide.load190, ptr %i.bb, align 2, !tbaa !11
  %index.next191 = add nuw i64 %index186, 16      ; 2 uses
  %i.bc = icmp eq i64 %index.next191, %n.vec184
  br i1 %i.bc, label %middle.block192, label %vector.body185, !llvm.loop !34

middle.block192:                                  ; preds = %vector.body185
  %cmp.n193 = icmp eq i64 %i.as, %n.vec184
  br i1 %cmp.n193, label %._crit_edge33.i, label %vec.epilog.iter.check199

vec.epilog.iter.check199:                         ; preds = %middle.block192
  %min.epilog.iters.check200 = icmp eq i64 %i.av, 0
  br i1 %min.epilog.iters.check200, label %.lr.ph32.i.preheader, label %vec.epilog.ph201, !prof !37

vec.epilog.ph201:                                 ; preds = %vector.main.loop.iter.check181, %vec.epilog.iter.check199
  %vec.epilog.resume.val194 = phi i64 [ %n.vec184, %vec.epilog.iter.check199 ], [ 0, %vector.main.loop.iter.check181 ]
  %n.vec202 = and i64 %i.as, -4                   ; 3 uses
  %i.bd = shl i64 %n.vec202, 1                    ; 2 uses
  %i.be = getelementptr i8, ptr %i.am, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.ah, i64 %i.bd
  br label %vec.epilog.vector.body203

vec.epilog.vector.body203:                        ; preds = %vec.epilog.vector.body203, %vec.epilog.ph201
  %index204 = phi i64 [ %vec.epilog.resume.val194, %vec.epilog.ph201 ], [ %index.next208, %vec.epilog.vector.body203 ] ; 2 uses
  %i.bg = shl i64 %index204, 1                    ; 2 uses
  %next.gep205 = getelementptr i8, ptr %i.am, i64 %i.bg
  %next.gep206 = getelementptr i8, ptr %i.ah, i64 %i.bg
  %wide.load207 = load <4 x i16>, ptr %next.gep206, align 2, !tbaa !11
  store <4 x i16> %wide.load207, ptr %next.gep205, align 2, !tbaa !11
  %index.next208 = add nuw i64 %index204, 4       ; 2 uses
  %i.bh = icmp eq i64 %index.next208, %n.vec202
  br i1 %i.bh, label %vec.epilog.middle.block209, label %vec.epilog.vector.body203, !llvm.loop !38

vec.epilog.middle.block209:                       ; preds = %vec.epilog.vector.body203
  %cmp.n210 = icmp eq i64 %i.as, %n.vec202
  br i1 %cmp.n210, label %._crit_edge33.i, label %.lr.ph32.i.preheader

.lr.ph32.i.preheader:                             ; preds = %vector.memcheck176, %iter.check197, %vec.epilog.iter.check199, %vec.epilog.middle.block209
  %.02130.i.ph = phi ptr [ %i.am, %iter.check197 ], [ %i.am, %vector.memcheck176 ], [ %i.ax, %vec.epilog.iter.check199 ], [ %i.be, %vec.epilog.middle.block209 ]
  %.02229.i.ph = phi ptr [ %i.ah, %iter.check197 ], [ %i.ah, %vector.memcheck176 ], [ %i.ay, %vec.epilog.iter.check199 ], [ %i.bf, %vec.epilog.middle.block209 ]
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.preheader, %.lr.ph32.i
  %.02130.i = phi ptr [ %i.bk, %.lr.ph32.i ], [ %.02130.i.ph, %.lr.ph32.i.preheader ] ; 2 uses
  %.02229.i = phi ptr [ %i.bi, %.lr.ph32.i ], [ %.02229.i.ph, %.lr.ph32.i.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02229.i, i64 2 ; 2 uses
  %i.bj = load i16, ptr %.02229.i, align 2, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %.02130.i, i64 2
  store i16 %i.bj, ptr %.02130.i, align 2, !tbaa !11
  %i.bl = icmp ult ptr %i.bi, %i.ak
  br i1 %i.bl, label %.lr.ph32.i, label %._crit_edge33.i, !llvm.loop !39

._crit_edge33.i:                                  ; preds = %.lr.ph32.i, %middle.block192, %vec.epilog.middle.block209, %bb.e
  %i.bm = load ptr, ptr @last_reduction, align 8, !tbaa !40 ; 2 uses
  %.not26.i = icmp eq ptr %i.bm, null
  %first_reduction..i = select i1 %.not26.i, ptr @first_reduction, ptr %i.bm
  store ptr %i.z, ptr %first_reduction..i, align 8, !tbaa !40
  store ptr %i.z, ptr @last_reduction, align 8, !tbaa !40
  br label %save_reductions.exit

save_reductions.exit:                             ; preds = %.lr.ph, %._crit_edge.i, %._crit_edge33.i
  %i.bn = load i32, ptr @nsyms, align 4, !tbaa !4 ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i4, label %._crit_edge.i1

.lr.ph.i4:                                        ; preds = %save_reductions.exit
  %i.bp = load ptr, ptr @kernel_end, align 8, !tbaa !15
  %i.bq = zext nneg i32 %i.bn to i64
  %i.br = shl nuw nsw i64 %i.bq, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bp, i8 0, i64 %i.br, i1 false), !tbaa !8
  br label %._crit_edge.i1

._crit_edge.i1:                                   ; preds = %.lr.ph.i4, %save_reductions.exit
  %i.bs = load ptr, ptr @itemset, align 8, !tbaa !8 ; 2 uses
  %i.bt = load ptr, ptr @itemsetend, align 8, !tbaa !8 ; 2 uses
  %i.bu = icmp ult ptr %i.bs, %i.bt
  br i1 %i.bu, label %.lr.ph25.i, label %append_states.exit.thread

append_states.exit.thread:                        ; preds = %._crit_edge.i1
  store i32 0, ptr @nshifts, align 4, !tbaa !4
  br label %append_states.exit.thread70

.lr.ph25.i:                                       ; preds = %._crit_edge.i1
  %i.bv = load ptr, ptr @kernel_end, align 8
  %i.bw = load ptr, ptr @shift_symbol, align 8    ; 4 uses
  %i.bx = load ptr, ptr @kernel_base, align 8
  %.pre28.i = load ptr, ptr @ritem, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph25.i
  %i.by = phi ptr [ %i.bt, %.lr.ph25.i ], [ %i.cq, %bb.j ]
  %i.bz = phi ptr [ %.pre28.i, %.lr.ph25.i ], [ %i.cr, %bb.j ] ; 2 uses
  %.01623.i = phi ptr [ %i.bs, %.lr.ph25.i ], [ %i.ca, %bb.j ] ; 2 uses
  %.01722.i = phi i32 [ 0, %.lr.ph25.i ], [ %.pr, %bb.j ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.01623.i, i64 2 ; 2 uses
  %i.cb = load i16, ptr %.01623.i, align 2, !tbaa !11 ; 2 uses
  %i.cc = sext i16 %i.cb to i64
  %i.cd = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !11 ; 3 uses
  %i.cf = icmp sgt i16 %i.ce, 0
  br i1 %i.cf, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.cg = zext nneg i16 %i.ce to i64              ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cg ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !8  ; 2 uses
  %.not.i2 = icmp eq ptr %i.ci, null
  br i1 %.not.i2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cj = add nsw i32 %.01722.i, 1
  %i.ck = sext i32 %.01722.i to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.ck
  store i16 %i.ce, ptr %i.cl, align 2, !tbaa !11
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cg
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i3 = phi i32 [ %.01722.i, %bb.g ], [ %i.cj, %bb.h ]
  %.0.i = phi ptr [ %i.ci, %bb.g ], [ %i.cn, %bb.h ] ; 2 uses
  %i.co = add i16 %i.cb, 1
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i16 %i.co, ptr %.0.i, align 2, !tbaa !11
  store ptr %i.cp, ptr %i.ch, align 8, !tbaa !8
  %.pre.i = load ptr, ptr @ritem, align 8, !tbaa !8
  %.pre29.i = load ptr, ptr @itemsetend, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.cq = phi ptr [ %.pre29.i, %bb.i ], [ %i.by, %bb.f ] ; 2 uses
  %i.cr = phi ptr [ %.pre.i, %bb.i ], [ %i.bz, %bb.f ]
  %.pr = phi i32 [ %.1.i3, %bb.i ], [ %.01722.i, %bb.f ] ; 5 uses
  %i.cs = icmp ult ptr %i.ca, %i.cq
  br i1 %i.cs, label %bb.f, label %new_itemsets.exit, !llvm.loop !41

new_itemsets.exit:                                ; preds = %bb.j
  store i32 %.pr, ptr @nshifts, align 4, !tbaa !4
  %i.ct = icmp sgt i32 %.pr, 1
  br i1 %i.ct, label %.lr.ph.i6, label %.preheader.i

.lr.ph.i6:                                        ; preds = %new_itemsets.exit
  %wide.trip.count.i = zext nneg i32 %.pr to i64
  br label %bb.k

.preheader.i:                                     ; preds = %.critedge.i, %new_itemsets.exit
  %i.cu = icmp sgt i32 %.pr, 0
  br i1 %i.cu, label %.lr.ph21.i, label %append_states.exit.thread70

bb.k:                                             ; preds = %.critedge.i, %.lr.ph.i6
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i6 ], [ %indvars.iv.next.i, %.critedge.i ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv.i
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !11 ; 2 uses
  %i.cx = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.018.i = phi i32 [ %i.cx, %bb.k ], [ %i.dd, %bb.m ] ; 4 uses
  %i.cy = zext nneg i32 %.018.i to i64
  %i.cz = getelementptr [2 x i8], ptr %i.bw, i64 %i.cy ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 -2
  %i.db = load i16, ptr %i.da, align 2, !tbaa !11 ; 2 uses
  %i.dc = icmp sgt i16 %i.db, %i.cw
  br i1 %i.dc, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  store i16 %i.db, ptr %i.cz, align 2, !tbaa !11
  %i.dd = add nsw i32 %.018.i, -1
  %i.de = icmp sgt i32 %.018.i, 1
  br i1 %i.de, label %bb.l, label %.critedge.i, !llvm.loop !42

.critedge.i:                                      ; preds = %bb.m, %bb.l
  %.0.lcssa.i = phi i32 [ 0, %bb.m ], [ %.018.i, %bb.l ]
  %i.df = sext i32 %.0.lcssa.i to i64
  %i.dg = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.df
  store i16 %i.cw, ptr %i.dg, align 2, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.k, !llvm.loop !43

.lr.ph21.i:                                       ; preds = %.preheader.i, %get_state.exit
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i, %get_state.exit ], [ 0, %.preheader.i ] ; 3 uses
  %i.dh = load ptr, ptr @shift_symbol, align 8, !tbaa !8
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv23.i
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !11 ; 3 uses
  %i.dk = load ptr, ptr @kernel_base, align 8, !tbaa !15
  %i.dl = sext i16 %i.dj to i64                   ; 6 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !8  ; 8 uses
  %i.do = load ptr, ptr @kernel_end, align 8, !tbaa !15
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dl
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !8  ; 6 uses
  %i.dr = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.ds = ptrtoint ptr %i.dn to i64               ; 3 uses
  %i.dt = sub i64 %i.dr, %i.ds                    ; 3 uses
  %i.du = lshr exact i64 %i.dt, 1                 ; 3 uses
  %i.dv = trunc i64 %i.du to i32                  ; 2 uses
  %i.dw = icmp ult ptr %i.dn, %i.dq
  br i1 %i.dw, label %.lr.ph.i15.preheader, label %._crit_edge.i11.thread

.lr.ph.i15.preheader:                             ; preds = %.lr.ph21.i
  %0 = add i64 %i.ds, 2
  %1 = tail call i64 @llvm.umax.i64(i64 %i.dr, i64 %0)
  %i.dx = xor i64 %i.ds, -1
  %i.dy = add i64 %1, %i.dx                       ; 2 uses
  %i.dz = lshr i64 %i.dy, 1
  %i.ea = add nuw i64 %i.dz, 1                    ; 2 uses
  %min.iters.check164 = icmp ult i64 %i.dy, 14
  br i1 %min.iters.check164, label %.lr.ph.i15.preheader213, label %vector.ph165

vector.ph165:                                     ; preds = %.lr.ph.i15.preheader
  %n.vec166 = and i64 %i.ea, -8                   ; 3 uses
  %i.eb = shl i64 %n.vec166, 1
  %i.ec = getelementptr i8, ptr %i.dn, i64 %i.eb
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph165
  %index168 = phi i64 [ 0, %vector.ph165 ], [ %index.next173, %vector.body167 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph165 ], [ %i.eh, %vector.body167 ]
  %vec.phi169 = phi <4 x i32> [ zeroinitializer, %vector.ph165 ], [ %i.ei, %vector.body167 ]
  %i.ed = shl i64 %index168, 1
  %next.gep170 = getelementptr i8, ptr %i.dn, i64 %i.ed ; 2 uses
  %i.ee = getelementptr i8, ptr %next.gep170, i64 8
  %wide.load171 = load <4 x i16>, ptr %next.gep170, align 2, !tbaa !11
  %wide.load172 = load <4 x i16>, ptr %i.ee, align 2, !tbaa !11
  %i.ef = sext <4 x i16> %wide.load171 to <4 x i32>
  %i.eg = sext <4 x i16> %wide.load172 to <4 x i32>
  %i.eh = add <4 x i32> %vec.phi, %i.ef           ; 2 uses
  %i.ei = add <4 x i32> %vec.phi169, %i.eg        ; 2 uses
  %index.next173 = add nuw i64 %index168, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next173, %n.vec166
  br i1 %i.ej, label %middle.block174, label %vector.body167, !llvm.loop !44

middle.block174:                                  ; preds = %vector.body167
  %bin.rdx = add <4 x i32> %i.ei, %i.eh
  %i.ek = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n175 = icmp eq i64 %i.ea, %n.vec166
  br i1 %cmp.n175, label %._crit_edge.i11, label %.lr.ph.i15.preheader213

.lr.ph.i15.preheader213:                          ; preds = %.lr.ph.i15.preheader, %middle.block174
  %.03250.i.ph = phi ptr [ %i.dn, %.lr.ph.i15.preheader ], [ %i.ec, %middle.block174 ]
  %.03449.i.ph = phi i32 [ 0, %.lr.ph.i15.preheader ], [ %i.ek, %middle.block174 ]
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.lr.ph.i15.preheader213, %.lr.ph.i15
  %.03250.i = phi ptr [ %i.el, %.lr.ph.i15 ], [ %.03250.i.ph, %.lr.ph.i15.preheader213 ] ; 2 uses
  %.03449.i = phi i32 [ %i.eo, %.lr.ph.i15 ], [ %.03449.i.ph, %.lr.ph.i15.preheader213 ]
  %i.el = getelementptr inbounds nuw i8, ptr %.03250.i, i64 2 ; 2 uses
  %i.em = load i16, ptr %.03250.i, align 2, !tbaa !11
  %i.en = sext i16 %i.em to i32
  %i.eo = add nsw i32 %.03449.i, %i.en            ; 2 uses
  %i.ep = icmp ult ptr %i.el, %i.dq
  br i1 %i.ep, label %.lr.ph.i15, label %._crit_edge.i11, !llvm.loop !45

._crit_edge.i11:                                  ; preds = %.lr.ph.i15, %middle.block174
  %.lcssa = phi i32 [ %i.ek, %middle.block174 ], [ %i.eo, %.lr.ph.i15 ]
  %i.eq = srem i32 %.lcssa, 1009
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %i.es = load ptr, ptr @state_table, align 8, !tbaa !22
  %i.et = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.er
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !24 ; 2 uses
  %.not.i12 = icmp eq ptr %i.eu, null
  br i1 %.not.i12, label %bb.p, label %.preheader.i13.us

._crit_edge.i11.thread:                           ; preds = %.lr.ph21.i
  %i.ev = load ptr, ptr @state_table, align 8, !tbaa !22
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !24 ; 2 uses
  %.not.i1268 = icmp eq ptr %i.ew, null
  br i1 %.not.i1268, label %bb.p, label %.preheader.i13

.preheader.i13.us:                                ; preds = %._crit_edge.i11, %.thread.i.us
  %.02857.i.us = phi ptr [ %i.fj, %.thread.i.us ], [ %i.eu, %._crit_edge.i11 ] ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.02857.i.us, i64 20
  %i.ey = load i16, ptr %i.ex, align 4, !tbaa !26
  %i.ez = sext i16 %i.ey to i32
  %i.fa = icmp eq i32 %i.ez, %i.dv
  br i1 %i.fa, label %.lr.ph54.preheader.i.us, label %.thread.i.us

.lr.ph54.preheader.i.us:                          ; preds = %.preheader.i13.us
  %i.fb = getelementptr inbounds nuw i8, ptr %.02857.i.us, i64 22
  br label %.lr.ph54.i.us

.lr.ph54.i.us:                                    ; preds = %.lr.ph54.i.us, %.lr.ph54.preheader.i.us
  %.03152.i.us = phi ptr [ %i.fe, %.lr.ph54.i.us ], [ %i.fb, %.lr.ph54.preheader.i.us ] ; 2 uses
  %.13351.i.us = phi ptr [ %i.fc, %.lr.ph54.i.us ], [ %i.dn, %.lr.ph54.preheader.i.us ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.13351.i.us, i64 2 ; 2 uses
  %i.fd = load i16, ptr %.13351.i.us, align 2, !tbaa !11
  %i.fe = getelementptr inbounds nuw i8, ptr %.03152.i.us, i64 2
  %i.ff = load i16, ptr %.03152.i.us, align 2, !tbaa !11
  %.not41.i.us = icmp eq i16 %i.fd, %i.ff         ; 2 uses
  %i.fg = icmp ult ptr %i.fc, %i.dq
  %i.fh = select i1 %.not41.i.us, i1 %i.fg, i1 false
  br i1 %i.fh, label %.lr.ph54.i.us, label %._crit_edge55.i.us, !llvm.loop !46

._crit_edge55.i.us:                               ; preds = %.lr.ph54.i.us
  br i1 %.not41.i.us, label %get_state.exit, label %.thread.i.us

.thread.i.us:                                     ; preds = %._crit_edge55.i.us, %.preheader.i13.us
  %i.fi = getelementptr inbounds nuw i8, ptr %.02857.i.us, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !47 ; 2 uses
  %.not40.i.us = icmp eq ptr %i.fj, null
  br i1 %.not40.i.us, label %.split.us, label %.preheader.i13.us, !llvm.loop !48

.preheader.i13:                                   ; preds = %._crit_edge.i11.thread, %.thread.i
  %.02857.i = phi ptr [ %i.fp, %.thread.i ], [ %i.ew, %._crit_edge.i11.thread ] ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.02857.i, i64 20
  %i.fl = load i16, ptr %i.fk, align 4, !tbaa !26
  %i.fm = sext i16 %i.fl to i32
  %i.fn = icmp eq i32 %i.fm, %i.dv
  br i1 %i.fn, label %get_state.exit, label %.thread.i

.thread.i:                                        ; preds = %.preheader.i13
  %i.fo = getelementptr inbounds nuw i8, ptr %.02857.i, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !47 ; 2 uses
  %.not40.i = icmp eq ptr %i.fp, null
  br i1 %.not40.i, label %.split.us, label %.preheader.i13, !llvm.loop !48

.split.us:                                        ; preds = %.thread.i, %.thread.i.us
  %.us-phi23 = phi ptr [ %.02857.i.us, %.thread.i.us ], [ %.02857.i, %.thread.i ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.us-phi23, i64 8
  %i.fr = load i32, ptr @nstates, align 4, !tbaa !4
  %i.fs = icmp sgt i32 %i.fr, 32766
  br i1 %i.fs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.split.us
  tail call void @toomany(ptr noundef nonnull @.str) #8
  %.pre = load ptr, ptr @kernel_base, align 8, !tbaa !15
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.dl
  %.pre32 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8 ; 2 uses
  %.pre33 = load ptr, ptr @kernel_end, align 8, !tbaa !15
  %.phi.trans.insert34 = getelementptr inbounds [8 x i8], ptr %.pre33, i64 %i.dl
  %.pre35 = load ptr, ptr %.phi.trans.insert34, align 8, !tbaa !8 ; 2 uses
  %.pre36 = ptrtoint ptr %.pre35 to i64
  %.pre37 = ptrtoint ptr %.pre32 to i64
  %.pre39 = sub i64 %.pre36, %.pre37              ; 2 uses
  %.pre41 = lshr exact i64 %.pre39, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.split.us
  %.pre-phi42 = phi i64 [ %.pre41, %bb.n ], [ %i.du, %.split.us ]
  %.pre-phi40 = phi i64 [ %.pre39, %bb.n ], [ %i.dt, %.split.us ]
  %i.ft = phi ptr [ %.pre35, %bb.n ], [ %i.dq, %.split.us ] ; 3 uses
  %i.fu = phi ptr [ %.pre32, %bb.n ], [ %i.dn, %.split.us ] ; 8 uses
  %i.fv = ptrtoaddr ptr %i.fu to i64              ; 3 uses
  %i.fw = trunc i64 %.pre-phi40 to i32
  %i.fx = and i32 %i.fw, -2
  %i.fy = add i32 %i.fx, 22
  %i.fz = tail call ptr (i32, ...) @mallocate(i32 noundef %i.fy) #8 ; 9 uses
  %i.ga = ptrtoaddr ptr %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 18
  store i16 %i.dj, ptr %i.gb, align 2, !tbaa !49
  %i.gc = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.gd = trunc i32 %i.gc to i16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i16 %i.gd, ptr %i.ge, align 8, !tbaa !29
  %i.gf = trunc i64 %.pre-phi42 to i16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 20
  store i16 %i.gf, ptr %i.gg, align 4, !tbaa !26
  %i.gh = icmp ult ptr %i.fu, %i.ft
  br i1 %i.gh, label %iter.check148, label %new_state.exit.i

iter.check148:                                    ; preds = %bb.o
  %i.gi = ptrtoaddr ptr %i.ft to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fz, i64 22 ; 6 uses
  %2 = add i64 %i.fv, 2
  %umax131 = tail call i64 @llvm.umax.i64(i64 %i.gi, i64 %2)
  %i.gk = xor i64 %i.fv, -1
  %i.gl = add i64 %umax131, %i.gk                 ; 3 uses
  %i.gm = lshr i64 %i.gl, 1
  %i.gn = add nuw i64 %i.gm, 1                    ; 5 uses
  %min.iters.check132.a = icmp ult i64 %i.gl, 6
  br i1 %min.iters.check132.a, label %.lr.ph.i.i.preheader, label %vector.memcheck129

vector.memcheck129:                               ; preds = %iter.check148
  %i.go = sub i64 %i.ga, %i.fv
  %i.gp = add i64 %i.go, 21
  %diff.check130 = icmp ult i64 %i.gp, 31
  br i1 %diff.check130, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check133

vector.main.loop.iter.check133:                   ; preds = %vector.memcheck129
  %min.iters.check134 = icmp ult i64 %i.gl, 30
  br i1 %min.iters.check134, label %vec.epilog.ph152, label %vector.ph135

vector.ph135:                                     ; preds = %vector.main.loop.iter.check133
  %i.gq = and i64 %i.gn, 12
  %n.vec136 = and i64 %i.gn, -16                  ; 4 uses
  %i.gr = shl i64 %n.vec136, 1                    ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gj, i64 %i.gr
  %i.gt = getelementptr i8, ptr %i.fu, i64 %i.gr
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph135
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next143, %vector.body137 ] ; 2 uses
  %i.gu = shl i64 %index138, 1                    ; 2 uses
  %next.gep139 = getelementptr i8, ptr %i.gj, i64 %i.gu ; 2 uses
  %next.gep140 = getelementptr i8, ptr %i.fu, i64 %i.gu ; 2 uses
  %i.gv = getelementptr i8, ptr %next.gep140, i64 16
  %wide.load141 = load <8 x i16>, ptr %next.gep140, align 2, !tbaa !11
  %wide.load142 = load <8 x i16>, ptr %i.gv, align 2, !tbaa !11
  %i.gw = getelementptr i8, ptr %next.gep139, i64 16
  store <8 x i16> %wide.load141, ptr %next.gep139, align 2, !tbaa !11
  store <8 x i16> %wide.load142, ptr %i.gw, align 2, !tbaa !11
  %index.next143 = add nuw i64 %index138, 16      ; 2 uses
  %i.gx = icmp eq i64 %index.next143, %n.vec136
  br i1 %i.gx, label %middle.block144, label %vector.body137, !llvm.loop !50

middle.block144:                                  ; preds = %vector.body137
  %cmp.n145 = icmp eq i64 %i.gn, %n.vec136
  br i1 %cmp.n145, label %new_state.exit.i, label %vec.epilog.iter.check150

vec.epilog.iter.check150:                         ; preds = %middle.block144
  %min.epilog.iters.check151 = icmp eq i64 %i.gq, 0
  br i1 %min.epilog.iters.check151, label %.lr.ph.i.i.preheader, label %vec.epilog.ph152, !prof !37

vec.epilog.ph152:                                 ; preds = %vector.main.loop.iter.check133, %vec.epilog.iter.check150
  %vec.epilog.resume.val146 = phi i64 [ %n.vec136, %vec.epilog.iter.check150 ], [ 0, %vector.main.loop.iter.check133 ]
  %n.vec153 = and i64 %i.gn, -4                   ; 3 uses
  %i.gy = shl i64 %n.vec153, 1                    ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gj, i64 %i.gy
  %i.ha = getelementptr i8, ptr %i.fu, i64 %i.gy
  br label %vec.epilog.vector.body154

vec.epilog.vector.body154:                        ; preds = %vec.epilog.vector.body154, %vec.epilog.ph152
  %index155 = phi i64 [ %vec.epilog.resume.val146, %vec.epilog.ph152 ], [ %index.next159, %vec.epilog.vector.body154 ] ; 2 uses
  %i.hb = shl i64 %index155, 1                    ; 2 uses
  %next.gep156 = getelementptr i8, ptr %i.gj, i64 %i.hb
  %next.gep157 = getelementptr i8, ptr %i.fu, i64 %i.hb
  %wide.load158 = load <4 x i16>, ptr %next.gep157, align 2, !tbaa !11
  store <4 x i16> %wide.load158, ptr %next.gep156, align 2, !tbaa !11
  %index.next159 = add nuw i64 %index155, 4       ; 2 uses
  %i.hc = icmp eq i64 %index.next159, %n.vec153
  br i1 %i.hc, label %vec.epilog.middle.block160, label %vec.epilog.vector.body154, !llvm.loop !51

vec.epilog.middle.block160:                       ; preds = %vec.epilog.vector.body154
  %cmp.n161 = icmp eq i64 %i.gn, %n.vec153
  br i1 %cmp.n161, label %new_state.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck129, %iter.check148, %vec.epilog.iter.check150, %vec.epilog.middle.block160
  %.019.i.i.ph = phi ptr [ %i.gj, %iter.check148 ], [ %i.gj, %vector.memcheck129 ], [ %i.gs, %vec.epilog.iter.check150 ], [ %i.gz, %vec.epilog.middle.block160 ]
  %.01718.i.i.ph = phi ptr [ %i.fu, %iter.check148 ], [ %i.fu, %vector.memcheck129 ], [ %i.gt, %vec.epilog.iter.check150 ], [ %i.ha, %vec.epilog.middle.block160 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.019.i.i = phi ptr [ %i.hf, %.lr.ph.i.i ], [ %.019.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01718.i.i = phi ptr [ %i.hd, %.lr.ph.i.i ], [ %.01718.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.01718.i.i, i64 2 ; 2 uses
  %i.he = load i16, ptr %.01718.i.i, align 2, !tbaa !11
  %i.hf = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2
  store i16 %i.he, ptr %.019.i.i, align 2, !tbaa !11
  %i.hg = icmp ult ptr %i.hd, %i.ft
  br i1 %i.hg, label %.lr.ph.i.i, label %new_state.exit.i, !llvm.loop !52

new_state.exit.i:                                 ; preds = %.lr.ph.i.i, %middle.block144, %vec.epilog.middle.block160, %bb.o
  %i.hh = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.fz, ptr %i.hh, align 8, !tbaa !53
  store ptr %i.fz, ptr @last_state, align 8, !tbaa !24
  %i.hi = add nsw i32 %i.gc, 1
  store i32 %i.hi, ptr @nstates, align 4, !tbaa !4
  store ptr %i.fz, ptr %i.fq, align 8, !tbaa !47
  br label %get_state.exit

bb.p:                                             ; preds = %._crit_edge.i11.thread, %._crit_edge.i11
  %.034.lcssa.i69 = phi i64 [ 0, %._crit_edge.i11.thread ], [ %i.er, %._crit_edge.i11 ]
  %i.hj = load i32, ptr @nstates, align 4, !tbaa !4
  %i.hk = icmp sgt i32 %i.hj, 32766
  br i1 %i.hk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @toomany(ptr noundef nonnull @.str) #8
  %.pre.i14 = load ptr, ptr @kernel_base, align 8, !tbaa !15
  %.phi.trans.insert.i = getelementptr inbounds [8 x i8], ptr %.pre.i14, i64 %i.dl
  %.pre59.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !8 ; 2 uses
  %.pre60.i = load ptr, ptr @kernel_end, align 8, !tbaa !15
  %.phi.trans.insert61.i = getelementptr inbounds [8 x i8], ptr %.pre60.i, i64 %i.dl
  %.pre62.i = load ptr, ptr %.phi.trans.insert61.i, align 8, !tbaa !8 ; 2 uses
  %.pre63.i = ptrtoint ptr %.pre62.i to i64
  %.pre64.i = ptrtoint ptr %.pre59.i to i64
  %.pre66.i = sub i64 %.pre63.i, %.pre64.i        ; 2 uses
  %.pre68.i = lshr exact i64 %.pre66.i, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre-phi69.i = phi i64 [ %.pre68.i, %bb.q ], [ %i.du, %bb.p ]
  %.pre-phi67.i = phi i64 [ %.pre66.i, %bb.q ], [ %i.dt, %bb.p ]
  %i.hl = phi ptr [ %.pre62.i, %bb.q ], [ %i.dq, %bb.p ] ; 3 uses
  %i.hm = phi ptr [ %.pre59.i, %bb.q ], [ %i.dn, %bb.p ] ; 8 uses
  %i.hn = ptrtoaddr ptr %i.hm to i64              ; 3 uses
  %i.ho = trunc i64 %.pre-phi67.i to i32
  %i.hp = and i32 %i.ho, -2
  %i.hq = add i32 %i.hp, 22
  %i.hr = tail call ptr (i32, ...) @mallocate(i32 noundef %i.hq) #8 ; 9 uses
  %i.hs = ptrtoaddr ptr %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 18
  store i16 %i.dj, ptr %i.ht, align 2, !tbaa !49
  %i.hu = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.hv = trunc i32 %i.hu to i16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store i16 %i.hv, ptr %i.hw, align 8, !tbaa !29
  %i.hx = trunc i64 %.pre-phi69.i to i16
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 20
  store i16 %i.hx, ptr %i.hy, align 4, !tbaa !26
  %i.hz = icmp ult ptr %i.hm, %i.hl
  br i1 %i.hz, label %iter.check113, label %new_state.exit46.i

iter.check113:                                    ; preds = %bb.r
  %i.ia = ptrtoaddr ptr %i.hl to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hr, i64 22 ; 6 uses
  %3 = add i64 %i.hn, 2
  %umax96 = tail call i64 @llvm.umax.i64(i64 %i.ia, i64 %3)
  %i.ic = xor i64 %i.hn, -1
  %i.id = add i64 %umax96, %i.ic                  ; 3 uses
  %i.ie = lshr i64 %i.id, 1
  %i.if = add nuw i64 %i.ie, 1                    ; 5 uses
  %min.iters.check97 = icmp ult i64 %i.id, 6
  br i1 %min.iters.check97, label %.lr.ph.i43.i.preheader, label %vector.memcheck94

vector.memcheck94:                                ; preds = %iter.check113
  %i.ig = sub i64 %i.hs, %i.hn
  %i.ih = add i64 %i.ig, 21
  %diff.check95 = icmp ult i64 %i.ih, 31
  br i1 %diff.check95, label %.lr.ph.i43.i.preheader, label %vector.main.loop.iter.check98

vector.main.loop.iter.check98:                    ; preds = %vector.memcheck94
  %min.iters.check99 = icmp ult i64 %i.id, 30
  br i1 %min.iters.check99, label %vec.epilog.ph117, label %vector.ph100

vector.ph100:                                     ; preds = %vector.main.loop.iter.check98
  %i.ii = and i64 %i.if, 12
  %n.vec101 = and i64 %i.if, -16                  ; 4 uses
  %i.ij = shl i64 %n.vec101, 1                    ; 2 uses
  %i.ik = getelementptr i8, ptr %i.ib, i64 %i.ij
  %i.il = getelementptr i8, ptr %i.hm, i64 %i.ij
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph100
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next108, %vector.body102 ] ; 2 uses
  %i.im = shl i64 %index103, 1                    ; 2 uses
  %next.gep104.a = getelementptr i8, ptr %i.ib, i64 %i.im ; 2 uses
  %next.gep105 = getelementptr i8, ptr %i.hm, i64 %i.im ; 2 uses
  %i.in = getelementptr i8, ptr %next.gep105, i64 16
  %wide.load106.a = load <8 x i16>, ptr %next.gep105, align 2, !tbaa !11
  %wide.load107 = load <8 x i16>, ptr %i.in, align 2, !tbaa !11
  %i.io = getelementptr i8, ptr %next.gep104.a, i64 16
  store <8 x i16> %wide.load106.a, ptr %next.gep104.a, align 2, !tbaa !11
  store <8 x i16> %wide.load107, ptr %i.io, align 2, !tbaa !11
  %index.next108 = add nuw i64 %index103, 16      ; 2 uses
  %i.ip = icmp eq i64 %index.next108, %n.vec101
  br i1 %i.ip, label %middle.block109, label %vector.body102, !llvm.loop !54

middle.block109:                                  ; preds = %vector.body102
  %cmp.n110 = icmp eq i64 %i.if, %n.vec101
  br i1 %cmp.n110, label %new_state.exit46.i, label %vec.epilog.iter.check115

vec.epilog.iter.check115:                         ; preds = %middle.block109
  %min.epilog.iters.check116 = icmp eq i64 %i.ii, 0
  br i1 %min.epilog.iters.check116, label %.lr.ph.i43.i.preheader, label %vec.epilog.ph117, !prof !37

vec.epilog.ph117:                                 ; preds = %vector.main.loop.iter.check98, %vec.epilog.iter.check115
  %vec.epilog.resume.val111 = phi i64 [ %n.vec101, %vec.epilog.iter.check115 ], [ 0, %vector.main.loop.iter.check98 ]
  %n.vec118 = and i64 %i.if, -4                   ; 3 uses
  %i.iq = shl i64 %n.vec118, 1                    ; 2 uses
  %i.ir = getelementptr i8, ptr %i.ib, i64 %i.iq
  %i.is = getelementptr i8, ptr %i.hm, i64 %i.iq
  br label %vec.epilog.vector.body119

vec.epilog.vector.body119:                        ; preds = %vec.epilog.vector.body119, %vec.epilog.ph117
  %index120 = phi i64 [ %vec.epilog.resume.val111, %vec.epilog.ph117 ], [ %index.next124, %vec.epilog.vector.body119 ] ; 2 uses
  %i.it = shl i64 %index120, 1                    ; 2 uses
  %next.gep121.a = getelementptr i8, ptr %i.ib, i64 %i.it
  %next.gep122 = getelementptr i8, ptr %i.hm, i64 %i.it
  %wide.load123 = load <4 x i16>, ptr %next.gep122, align 2, !tbaa !11
  store <4 x i16> %wide.load123, ptr %next.gep121.a, align 2, !tbaa !11
  %index.next124 = add nuw i64 %index120, 4       ; 2 uses
  %i.iu = icmp eq i64 %index.next124, %n.vec118
  br i1 %i.iu, label %vec.epilog.middle.block125, label %vec.epilog.vector.body119, !llvm.loop !55

vec.epilog.middle.block125:                       ; preds = %vec.epilog.vector.body119
  %cmp.n126 = icmp eq i64 %i.if, %n.vec118
  br i1 %cmp.n126, label %new_state.exit46.i, label %.lr.ph.i43.i.preheader

.lr.ph.i43.i.preheader:                           ; preds = %vector.memcheck94, %iter.check113, %vec.epilog.iter.check115, %vec.epilog.middle.block125
  %.019.i44.i.ph = phi ptr [ %i.ib, %iter.check113 ], [ %i.ib, %vector.memcheck94 ], [ %i.ik, %vec.epilog.iter.check115 ], [ %i.ir, %vec.epilog.middle.block125 ]
  %.01718.i45.i.ph = phi ptr [ %i.hm, %iter.check113 ], [ %i.hm, %vector.memcheck94 ], [ %i.il, %vec.epilog.iter.check115 ], [ %i.is, %vec.epilog.middle.block125 ]
  br label %.lr.ph.i43.i

.lr.ph.i43.i:                                     ; preds = %.lr.ph.i43.i.preheader, %.lr.ph.i43.i
  %.019.i44.i = phi ptr [ %i.ix, %.lr.ph.i43.i ], [ %.019.i44.i.ph, %.lr.ph.i43.i.preheader ] ; 2 uses
  %.01718.i45.i = phi ptr [ %i.iv, %.lr.ph.i43.i ], [ %.01718.i45.i.ph, %.lr.ph.i43.i.preheader ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.01718.i45.i, i64 2 ; 2 uses
  %i.iw = load i16, ptr %.01718.i45.i, align 2, !tbaa !11
  %i.ix = getelementptr inbounds nuw i8, ptr %.019.i44.i, i64 2
  store i16 %i.iw, ptr %.019.i44.i, align 2, !tbaa !11
  %i.iy = icmp ult ptr %i.iv, %i.hl
  br i1 %i.iy, label %.lr.ph.i43.i, label %new_state.exit46.i, !llvm.loop !56

new_state.exit46.i:                               ; preds = %.lr.ph.i43.i, %middle.block109, %vec.epilog.middle.block125, %bb.r
  %i.iz = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.hr, ptr %i.iz, align 8, !tbaa !53
  store ptr %i.hr, ptr @last_state, align 8, !tbaa !24
  %i.ja = add nsw i32 %i.hu, 1
  store i32 %i.ja, ptr @nstates, align 4, !tbaa !4
  %i.jb = load ptr, ptr @state_table, align 8, !tbaa !22
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %.034.lcssa.i69
  store ptr %i.hr, ptr %i.jc, align 8, !tbaa !24
  br label %get_state.exit

get_state.exit:                                   ; preds = %.preheader.i13, %._crit_edge55.i.us, %new_state.exit.i, %new_state.exit46.i
  %.230.i = phi ptr [ %i.hr, %new_state.exit46.i ], [ %i.fz, %new_state.exit.i ], [ %.02857.i.us, %._crit_edge55.i.us ], [ %.02857.i, %.preheader.i13 ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.230.i, i64 16
  %i.je = load i16, ptr %i.jd, align 8, !tbaa !29
  %i.jf = load ptr, ptr @shiftset, align 8, !tbaa !8
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.jf, i64 %indvars.iv23.i
  store i16 %i.je, ptr %i.jg, align 2, !tbaa !11
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %i.jh = load i32, ptr @nshifts, align 4, !tbaa !4 ; 3 uses
  %i.ji = sext i32 %i.jh to i64
  %i.jj = icmp slt i64 %indvars.iv.next24.i, %i.ji
  br i1 %i.jj, label %.lr.ph21.i, label %append_states.exit, !llvm.loop !57

append_states.exit:                               ; preds = %get_state.exit
  %i.jk = icmp sgt i32 %i.jh, 0
  br i1 %i.jk, label %bb.s, label %append_states.exit.thread70

bb.s:                                             ; preds = %append_states.exit
  %i.jl = shl nuw i32 %i.jh, 1
  %i.jm = add i32 %i.jl, 14
  %i.jn = tail call ptr (i32, ...) @mallocate(i32 noundef %i.jm) #8 ; 6 uses
  %i.jo = ptrtoaddr ptr %i.jn to i64
  %i.jp = load ptr, ptr @this_state, align 8, !tbaa !24
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = load i16, ptr %i.jq, align 8, !tbaa !29
  %i.js = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store i16 %i.jr, ptr %i.js, align 8, !tbaa !58
  %i.jt = load i32, ptr @nshifts, align 4, !tbaa !4 ; 3 uses
  %i.ju = trunc i32 %i.jt to i16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jn, i64 10
  store i16 %i.ju, ptr %i.jv, align 2, !tbaa !61
  %i.jw = load ptr, ptr @shiftset, align 8, !tbaa !8 ; 8 uses
  %i.jx = ptrtoaddr ptr %i.jw to i64              ; 4 uses
  %i.jy = sext i32 %i.jt to i64
  %.idx.i7 = shl nsw i64 %i.jy, 1                 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.idx.i7
  %i.ka = icmp sgt i32 %i.jt, 0
  br i1 %i.ka, label %iter.check, label %save_shifts.exit

iter.check:                                       ; preds = %bb.s
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jn, i64 12 ; 6 uses
  %i.kc = add i64 %.idx.i7, %i.jx
  %i.kd = add i64 %i.jx, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.kc, i64 %i.kd)
  %i.ke = xor i64 %i.jx, -1
  %i.kf = add i64 %umax, %i.ke                    ; 3 uses
  %i.kg = lshr i64 %i.kf, 1
  %i.kh = add nuw i64 %i.kg, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.kf, 6
  br i1 %min.iters.check, label %.lr.ph.i10.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ki = sub i64 %i.jo, %i.jx
  %i.kj = add i64 %i.ki, 11
  %diff.check = icmp ult i64 %i.kj, 31
  br i1 %diff.check, label %.lr.ph.i10.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check81 = icmp ult i64 %i.kf, 30
  br i1 %min.iters.check81, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kk = and i64 %i.kh, 12
  %n.vec = and i64 %i.kh, -16                     ; 4 uses
  %i.kl = shl i64 %n.vec, 1                       ; 2 uses
  %i.km = getelementptr i8, ptr %i.kb, i64 %i.kl
  %i.kn = getelementptr i8, ptr %i.jw, i64 %i.kl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ko = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.kb, i64 %i.ko ; 2 uses
  %next.gep82 = getelementptr i8, ptr %i.jw, i64 %i.ko ; 2 uses
  %i.kp = getelementptr i8, ptr %next.gep82, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep82, align 2, !tbaa !11
  %wide.load83 = load <8 x i16>, ptr %i.kp, align 2, !tbaa !11
  %i.kq = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !11
  store <8 x i16> %wide.load83, ptr %i.kq, align 2, !tbaa !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.kr = icmp eq i64 %index.next, %n.vec
  br i1 %i.kr, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kh, %n.vec
  br i1 %cmp.n, label %save_shifts.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i10.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec85 = and i64 %i.kh, -4                    ; 3 uses
  %i.ks = shl i64 %n.vec85, 1                     ; 2 uses
  %i.kt = getelementptr i8, ptr %i.kb, i64 %i.ks
  %i.ku = getelementptr i8, ptr %i.jw, i64 %i.ks
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index86 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next90, %vec.epilog.vector.body ] ; 2 uses
  %i.kv = shl i64 %index86, 1                     ; 2 uses
  %next.gep87 = getelementptr i8, ptr %i.kb, i64 %i.kv
  %next.gep88 = getelementptr i8, ptr %i.jw, i64 %i.kv
end_hunk_0
begin_hunk_1_@augment_automaton:bb.a
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !82

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.i
  %i.di = load i32, ptr @nstates, align 4, !tbaa !4
  %i.dj = trunc i32 %i.di to i16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.by, i64 12 ; 2 uses
  %i.dl = sext i16 %i.s to i64                    ; 2 uses
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.dk, i64 %i.dl
  store i16 %i.dj, ptr %i.dm, align 2, !tbaa !11
  %i.dn = load i16, ptr %i.f, align 2, !tbaa !61
  %i.do = icmp slt i16 %i.s, %i.dn
  br i1 %i.do, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %._crit_edge
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph103, %bb.j
  %indvars.iv119 = phi i64 [ %i.dl, %.lr.ph103 ], [ %indvars.iv.next120, %bb.j ] ; 2 uses
  %i.dq = getelementptr inbounds [2 x i8], ptr %i.dp, i64 %indvars.iv119
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !11
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 3 uses
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.dk, i64 %indvars.iv.next120
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !11
  %i.dt = load i16, ptr %i.f, align 2, !tbaa !61
  %i.du = sext i16 %i.dt to i64
  %i.dv = icmp slt i64 %indvars.iv.next120, %i.du
  br i1 %i.dv, label %bb.j, label %._crit_edge104, !llvm.loop !83

._crit_edge104:                                   ; preds = %bb.j, %._crit_edge
  store ptr %i.by, ptr @first_shift, align 8, !tbaa !65
  %i.dw = load ptr, ptr @last_shift, align 8, !tbaa !65
  %i.dx = icmp eq ptr %i.dw, %i.a
  br i1 %i.dx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge104
  store ptr %i.by, ptr @last_shift, align 8, !tbaa !65
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge104, %bb.k
  tail call void @free(ptr noundef nonnull %i.a) #8
  %i.dy = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 4 uses
  %i.dz = load i32, ptr @nstates, align 4, !tbaa !4
  %i.ea = trunc i32 %i.dz to i16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store i16 %i.ea, ptr %i.eb, align 8, !tbaa !29
  %i.ec = load i32, ptr @start_symbol, align 4, !tbaa !4
  %i.ed = trunc i32 %i.ec to i16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 18
  store i16 %i.ed, ptr %i.ee, align 2, !tbaa !49
  %i.ef = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.dy, ptr %i.ef, align 8, !tbaa !53
  store ptr %i.dy, ptr @last_state, align 8, !tbaa !24
  %i.eg = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #8 ; 5 uses
  %i.eh = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.ei = add nsw i32 %i.eh, 1                    ; 2 uses
  store i32 %i.ei, ptr @nstates, align 4, !tbaa !4
  %i.ej = trunc i32 %i.eh to i16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i16 %i.ej, ptr %i.ek, align 8, !tbaa !58
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 10
  store i16 1, ptr %i.el, align 2, !tbaa !61
  %i.em = trunc i32 %i.ei to i16
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  store i16 %i.em, ptr %i.en, align 4, !tbaa !11
  %i.eo = load ptr, ptr @last_shift, align 8, !tbaa !65
  store ptr %i.eg, ptr %i.eo, align 8, !tbaa !74
  store ptr %i.eg, ptr @last_shift, align 8, !tbaa !65
  br label %bb.o

bb.m:                                             ; preds = %bb.b
  %i.ep = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #8 ; 4 uses
  %i.eq = load ptr, ptr @first_shift, align 8, !tbaa !65
  store ptr %i.eq, ptr %i.ep, align 8, !tbaa !74
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 10
  store i16 1, ptr %i.er, align 2, !tbaa !61
  %i.es = load i32, ptr @nstates, align 4, !tbaa !4
  %i.et = trunc i32 %i.es to i16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i16 %i.et, ptr %i.eu, align 4, !tbaa !11
  store ptr %i.ep, ptr @first_shift, align 8, !tbaa !65
  %i.ev = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 4 uses
  %i.ew = load i32, ptr @nstates, align 4, !tbaa !4
  %i.ex = trunc i32 %i.ew to i16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store i16 %i.ex, ptr %i.ey, align 8, !tbaa !29
  %i.ez = load i32, ptr @start_symbol, align 4, !tbaa !4
  %i.fa = trunc i32 %i.ez to i16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 18
  store i16 %i.fa, ptr %i.fb, align 2, !tbaa !49
  %i.fc = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.ev, ptr %i.fc, align 8, !tbaa !53
  store ptr %i.ev, ptr @last_state, align 8, !tbaa !24
  %i.fd = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #8 ; 5 uses
  %i.fe = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.ff = add nsw i32 %i.fe, 1                    ; 2 uses
  store i32 %i.ff, ptr @nstates, align 4, !tbaa !4
  %i.fg = trunc i32 %i.fe to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i16 %i.fg, ptr %i.fh, align 8, !tbaa !58
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 10
  store i16 1, ptr %i.fi, align 2, !tbaa !61
  %i.fj = trunc i32 %i.ff to i16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  store i16 %i.fj, ptr %i.fk, align 4, !tbaa !11
  %i.fl = load ptr, ptr @last_shift, align 8, !tbaa !65
  store ptr %i.fd, ptr %i.fl, align 8, !tbaa !74
  store ptr %i.fd, ptr @last_shift, align 8, !tbaa !65
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.fm = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #8 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 10
  store i16 1, ptr %i.fn, align 2, !tbaa !61
  %i.fo = load i32, ptr @nstates, align 4, !tbaa !4
  %i.fp = trunc i32 %i.fo to i16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i16 %i.fp, ptr %i.fq, align 4, !tbaa !11
  store ptr %i.fm, ptr @first_shift, align 8, !tbaa !65
  store ptr %i.fm, ptr @last_shift, align 8, !tbaa !65
  %i.fr = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 4 uses
  %i.fs = load i32, ptr @nstates, align 4, !tbaa !4
  %i.ft = trunc i32 %i.fs to i16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store i16 %i.ft, ptr %i.fu, align 8, !tbaa !29
  %i.fv = load i32, ptr @start_symbol, align 4, !tbaa !4
  %i.fw = trunc i32 %i.fv to i16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 18
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !49
  %i.fy = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.fr, ptr %i.fy, align 8, !tbaa !53
  store ptr %i.fr, ptr @last_state, align 8, !tbaa !24
  %i.fz = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #8 ; 5 uses
  %i.ga = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.gb = add nsw i32 %i.ga, 1                    ; 2 uses
  store i32 %i.gb, ptr @nstates, align 4, !tbaa !4
  %i.gc = trunc i32 %i.ga to i16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i16 %i.gc, ptr %i.gd, align 8, !tbaa !58
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 10
  store i16 1, ptr %i.ge, align 2, !tbaa !61
  %i.gf = trunc i32 %i.gb to i16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i16 %i.gf, ptr %i.gg, align 4, !tbaa !11
  %i.gh = load ptr, ptr @last_shift, align 8, !tbaa !65
  store ptr %i.fz, ptr %i.gh, align 8, !tbaa !74
  store ptr %i.fz, ptr @last_shift, align 8, !tbaa !65
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.m, %._crit_edge114, %bb.l, %bb.n
  %i.gi = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 3 uses
  %i.gj = load i32, ptr @nstates, align 4, !tbaa !4
  %i.gk = trunc i32 %i.gj to i16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store i16 %i.gk, ptr %i.gl, align 8, !tbaa !29
  %i.gm = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.gi, ptr %i.gm, align 8, !tbaa !53
  store ptr %i.gi, ptr @last_state, align 8, !tbaa !24
  %i.gn = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #8 ; 5 uses
  %i.go = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.gp = add nsw i32 %i.go, 1                    ; 3 uses
  store i32 %i.gp, ptr @nstates, align 4, !tbaa !4
  %i.gq = trunc i32 %i.go to i16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i16 %i.gq, ptr %i.gr, align 8, !tbaa !58
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 10
  store i16 1, ptr %i.gs, align 2, !tbaa !61
  %i.gt = trunc i32 %i.gp to i16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  store i16 %i.gt, ptr %i.gu, align 4, !tbaa !11
  %i.gv = load ptr, ptr @last_shift, align 8, !tbaa !65
  store ptr %i.gn, ptr %i.gv, align 8, !tbaa !74
  store ptr %i.gn, ptr @last_shift, align 8, !tbaa !65
  store i32 %i.gp, ptr @final_state, align 4, !tbaa !4
  %i.gw = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 3 uses
  %i.gx = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.gy = add nsw i32 %i.gx, 1
  store i32 %i.gy, ptr @nstates, align 4, !tbaa !4
  %i.gz = trunc i32 %i.gx to i16
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store i16 %i.gz, ptr %i.ha, align 8, !tbaa !29
  %i.hb = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.gw, ptr %i.hb, align 8, !tbaa !53
  store ptr %i.gw, ptr @last_state, align 8, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -32768, 32768) i32 @get_state(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @kernel_base, align 8, !tbaa !15
  %i.b = sext i32 %0 to i64                       ; 7 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 6 uses
  %i.e = load ptr, ptr @kernel_end, align 8, !tbaa !15
  %i.f = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 6 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = lshr exact i64 %i.j, 1                   ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp ult ptr %i.d, %i.g
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %1 = add i64 %i.i, 2
  %2 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %1)
  %i.n = xor i64 %i.i, -1
  %i.o = add i64 %2, %i.n                         ; 2 uses
  %i.p = lshr i64 %i.o, 1
  %i.q = add nuw i64 %i.p, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 14
  br i1 %min.iters.check, label %.lr.ph.preheader152, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.q, -8                       ; 3 uses
  %i.r = shl i64 %n.vec, 1
  %i.s = getelementptr i8, ptr %i.d, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi87 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %i.t = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !11
  %wide.load88 = load <4 x i16>, ptr %i.u, align 2, !tbaa !11
  %i.v = sext <4 x i16> %wide.load to <4 x i32>
  %i.w = sext <4 x i16> %wide.load88 to <4 x i32>
  %i.x = add <4 x i32> %vec.phi, %i.v             ; 2 uses
  %i.y = add <4 x i32> %vec.phi87, %i.w           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.y, %i.x
  %i.aa = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader152

.lr.ph.preheader152:                              ; preds = %.lr.ph.preheader, %middle.block
  %.03250.ph = phi ptr [ %i.d, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  %.03449.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader152, %.lr.ph
  %.03250 = phi ptr [ %i.ab, %.lr.ph ], [ %.03250.ph, %.lr.ph.preheader152 ] ; 2 uses
  %.03449 = phi i32 [ %i.ae, %.lr.ph ], [ %.03449.ph, %.lr.ph.preheader152 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.03250, i64 2 ; 2 uses
  %i.ac = load i16, ptr %.03250, align 2, !tbaa !11
  %i.ad = sext i16 %i.ac to i32
  %i.ae = add nsw i32 %.03449, %i.ad              ; 2 uses
  %i.af = icmp ult ptr %i.ab, %i.g
  br i1 %i.af, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !85

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.aa, %middle.block ], [ %i.ae, %.lr.ph ]
  %i.ag = srem i32 %.lcssa, 1009
  %i.ah = sext i32 %i.ag to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.034.lcssa = phi i64 [ 0, %bb.a ], [ %i.ah, %._crit_edge.loopexit ] ; 2 uses
  %i.ai = load ptr, ptr @state_table, align 8, !tbaa !22
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %.034.lcssa
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !24 ; 2 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.al = trunc i32 %0 to i16
  %i.am = load ptr, ptr @kernel_base, align 8
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.b
  br label %bb.b

bb.b:                                             ; preds = %.thread, %.preheader
  %.02857 = phi ptr [ %i.ak, %.preheader ], [ %i.bc, %.thread ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.02857, i64 20
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !26
  %i.aq = sext i16 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, %i.l
  br i1 %i.ar, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !8  ; 2 uses
  %i.at = icmp ult ptr %i.as, %i.g
  br i1 %i.at, label %.lr.ph54.preheader, label %.loopexit

.lr.ph54.preheader:                               ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %.02857, i64 22
  br label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %.lr.ph54
  %.03152 = phi ptr [ %i.ax, %.lr.ph54 ], [ %i.au, %.lr.ph54.preheader ] ; 2 uses
  %.13351 = phi ptr [ %i.av, %.lr.ph54 ], [ %i.as, %.lr.ph54.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.13351, i64 2 ; 2 uses
  %i.aw = load i16, ptr %.13351, align 2, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %.03152, i64 2
  %i.ay = load i16, ptr %.03152, align 2, !tbaa !11
  %.not41 = icmp eq i16 %i.aw, %i.ay              ; 2 uses
  %i.az = icmp ult ptr %i.av, %i.g
  %i.ba = select i1 %.not41, i1 %i.az, i1 false
  br i1 %i.ba, label %.lr.ph54, label %._crit_edge55, !llvm.loop !46

._crit_edge55:                                    ; preds = %.lr.ph54
  br i1 %.not41, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.b, %._crit_edge55
  %i.bb = getelementptr inbounds nuw i8, ptr %.02857, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !47 ; 2 uses
  %.not40 = icmp eq ptr %i.bc, null
  br i1 %.not40, label %bb.d, label %bb.b, !llvm.loop !48

bb.d:                                             ; preds = %.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %.02857, i64 8
  %i.be = load i32, ptr @nstates, align 4, !tbaa !4
  %i.bf = icmp sgt i32 %i.be, 32766
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @toomany(ptr noundef nonnull @.str) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bg = load ptr, ptr @kernel_base, align 8, !tbaa !15
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.b
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !8  ; 8 uses
  %i.bj = load ptr, ptr @kernel_end, align 8, !tbaa !15
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.b
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !8  ; 3 uses
  %i.bm = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 4 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = lshr exact i64 %i.bo, 1
  %i.bq = trunc i64 %i.bo to i32
  %i.br = and i32 %i.bq, -2
  %i.bs = add i32 %i.br, 22
  %i.bt = tail call ptr (i32, ...) @mallocate(i32 noundef %i.bs) #8 ; 9 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 18
  store i16 %i.al, ptr %i.bv, align 2, !tbaa !49
  %i.bw = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.bx = trunc i32 %i.bw to i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i16 %i.bx, ptr %i.by, align 8, !tbaa !29
  %i.bz = trunc i64 %i.bp to i16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  store i16 %i.bz, ptr %i.ca, align 4, !tbaa !26
  %i.cb = icmp ult ptr %i.bi, %i.bl
  br i1 %i.cb, label %iter.check, label %new_state.exit

iter.check:                                       ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 22 ; 6 uses
  %3 = add i64 %i.bn, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %3)
  %i.cd = xor i64 %i.bn, -1
  %i.ce = add i64 %umax, %i.cd                    ; 3 uses
  %i.cf = lshr i64 %i.ce, 1
  %i.cg = add nuw i64 %i.cf, 1                    ; 5 uses
  %min.iters.check90 = icmp ult i64 %i.ce, 6
  br i1 %min.iters.check90, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ch = sub i64 %i.bu, %i.bn
  %i.ci = add i64 %i.ch, 21
  %diff.check = icmp ult i64 %i.ci, 31
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check91 = icmp ult i64 %i.ce, 30
  br i1 %min.iters.check91, label %vec.epilog.ph, label %vector.ph92

vector.ph92:                                      ; preds = %vector.main.loop.iter.check
  %i.cj = and i64 %i.cg, 12
  %n.vec93 = and i64 %i.cg, -16                   ; 4 uses
  %i.ck = shl i64 %n.vec93, 1                     ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cc, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.bi, i64 %i.ck
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph92
  %index95 = phi i64 [ 0, %vector.ph92 ], [ %index.next100, %vector.body94 ] ; 2 uses
  %i.cn = shl i64 %index95, 1                     ; 2 uses
  %next.gep96 = getelementptr i8, ptr %i.cc, i64 %i.cn ; 2 uses
  %next.gep97 = getelementptr i8, ptr %i.bi, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep97, i64 16
  %wide.load98 = load <8 x i16>, ptr %next.gep97, align 2, !tbaa !11
  %wide.load99 = load <8 x i16>, ptr %i.co, align 2, !tbaa !11
  %i.cp = getelementptr i8, ptr %next.gep96, i64 16
  store <8 x i16> %wide.load98, ptr %next.gep96, align 2, !tbaa !11
  store <8 x i16> %wide.load99, ptr %i.cp, align 2, !tbaa !11
  %index.next100 = add nuw i64 %index95, 16       ; 2 uses
  %i.cq = icmp eq i64 %index.next100, %n.vec93
  br i1 %i.cq, label %middle.block101, label %vector.body94, !llvm.loop !86

middle.block101:                                  ; preds = %vector.body94
  %cmp.n102 = icmp eq i64 %i.cg, %n.vec93
  br i1 %cmp.n102, label %new_state.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block101
  %min.epilog.iters.check = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec93, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec105 = and i64 %i.cg, -4                   ; 3 uses
  %i.cr = shl i64 %n.vec105, 1                    ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cc, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.bi, i64 %i.cr
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index106 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next110, %vec.epilog.vector.body ] ; 2 uses
  %i.cu = shl i64 %index106, 1                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.cc, i64 %i.cu
  %next.gep108 = getelementptr i8, ptr %i.bi, i64 %i.cu
  %wide.load109 = load <4 x i16>, ptr %next.gep108, align 2, !tbaa !11
  store <4 x i16> %wide.load109, ptr %next.gep107, align 2, !tbaa !11
  %index.next110 = add nuw i64 %index106, 4       ; 2 uses
  %i.cv = icmp eq i64 %index.next110, %n.vec105
  br i1 %i.cv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !87

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n111 = icmp eq i64 %i.cg, %n.vec105
  br i1 %cmp.n111, label %new_state.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.i.ph = phi ptr [ %i.cc, %iter.check ], [ %i.cc, %vector.memcheck ], [ %i.cl, %vec.epilog.iter.check ], [ %i.cs, %vec.epilog.middle.block ]
  %.01718.i.ph = phi ptr [ %i.bi, %iter.check ], [ %i.bi, %vector.memcheck ], [ %i.cm, %vec.epilog.iter.check ], [ %i.ct, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.019.i = phi ptr [ %i.cy, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01718.i = phi ptr [ %i.cw, %.lr.ph.i ], [ %.01718.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.01718.i, i64 2 ; 2 uses
  %i.cx = load i16, ptr %.01718.i, align 2, !tbaa !11
  %i.cy = getelementptr inbounds nuw i8, ptr %.019.i, i64 2
  store i16 %i.cx, ptr %.019.i, align 2, !tbaa !11
  %i.cz = icmp ult ptr %i.cw, %i.bl
  br i1 %i.cz, label %.lr.ph.i, label %new_state.exit, !llvm.loop !88

new_state.exit:                                   ; preds = %.lr.ph.i, %middle.block101, %vec.epilog.middle.block, %bb.f
  %i.da = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.bt, ptr %i.da, align 8, !tbaa !53
  store ptr %i.bt, ptr @last_state, align 8, !tbaa !24
  %i.db = add nsw i32 %i.bw, 1
  store i32 %i.db, ptr @nstates, align 4, !tbaa !4
  store ptr %i.bt, ptr %i.bd, align 8, !tbaa !47
  br label %.loopexit

bb.g:                                             ; preds = %._crit_edge
  %i.dc = load i32, ptr @nstates, align 4, !tbaa !4
  %i.dd = icmp sgt i32 %i.dc, 32766
  br i1 %i.dd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @toomany(ptr noundef nonnull @.str) #8
  %.pre = load ptr, ptr @kernel_base, align 8, !tbaa !15
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.b
  %.pre59 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8 ; 2 uses
  %.pre60 = load ptr, ptr @kernel_end, align 8, !tbaa !15
  %.phi.trans.insert61 = getelementptr inbounds [8 x i8], ptr %.pre60, i64 %i.b
  %.pre62 = load ptr, ptr %.phi.trans.insert61, align 8, !tbaa !8 ; 2 uses
  %.pre63 = ptrtoint ptr %.pre62 to i64
  %.pre64 = ptrtoint ptr %.pre59 to i64
  %.pre66 = sub i64 %.pre63, %.pre64              ; 2 uses
  %.pre68 = lshr exact i64 %.pre66, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi69 = phi i64 [ %.pre68, %bb.h ], [ %i.k, %bb.g ]
  %.pre-phi67 = phi i64 [ %.pre66, %bb.h ], [ %i.j, %bb.g ]
  %i.de = phi ptr [ %.pre62, %bb.h ], [ %i.g, %bb.g ] ; 3 uses
  %i.df = phi ptr [ %.pre59, %bb.h ], [ %i.d, %bb.g ] ; 8 uses
  %i.dg = ptrtoaddr ptr %i.df to i64              ; 3 uses
  %i.dh = trunc i64 %.pre-phi67 to i32
  %i.di = and i32 %i.dh, -2
  %i.dj = add i32 %i.di, 22
  %i.dk = tail call ptr (i32, ...) @mallocate(i32 noundef %i.dj) #8 ; 9 uses
  %i.dl = ptrtoaddr ptr %i.dk to i64
  %i.dm = trunc i32 %0 to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 18
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !49
  %i.do = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.dp = trunc i32 %i.do to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i16 %i.dp, ptr %i.dq, align 8, !tbaa !29
  %i.dr = trunc i64 %.pre-phi69 to i16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  store i16 %i.dr, ptr %i.ds, align 4, !tbaa !26
  %i.dt = icmp ult ptr %i.df, %i.de
  br i1 %i.dt, label %iter.check135, label %new_state.exit46

iter.check135:                                    ; preds = %bb.i
  %i.du = ptrtoaddr ptr %i.de to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dk, i64 22 ; 6 uses
  %4 = add i64 %i.dg, 2
  %umax116 = tail call i64 @llvm.umax.i64(i64 %i.du, i64 %4)
  %i.dw = xor i64 %i.dg, -1
  %i.dx = add i64 %umax116, %i.dw                 ; 3 uses
  %i.dy = lshr i64 %i.dx, 1
  %i.dz = add nuw i64 %i.dy, 1                    ; 5 uses
  %min.iters.check118 = icmp ult i64 %i.dx, 6
  br i1 %min.iters.check118, label %.lr.ph.i43.preheader, label %vector.memcheck114

vector.memcheck114:                               ; preds = %iter.check135
  %i.ea = sub i64 %i.dl, %i.dg
  %i.eb = add i64 %i.ea, 21
  %diff.check115 = icmp ult i64 %i.eb, 31
  br i1 %diff.check115, label %.lr.ph.i43.preheader, label %vector.main.loop.iter.check119

vector.main.loop.iter.check119:                   ; preds = %vector.memcheck114
  %min.iters.check120 = icmp ult i64 %i.dx, 30
  br i1 %min.iters.check120, label %vec.epilog.ph139, label %vector.ph121

vector.ph121:                                     ; preds = %vector.main.loop.iter.check119
  %i.ec = and i64 %i.dz, 12
  %n.vec122 = and i64 %i.dz, -16                  ; 4 uses
  %i.ed = shl i64 %n.vec122, 1                    ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dv, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.df, i64 %i.ed
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph121
  %index124 = phi i64 [ 0, %vector.ph121 ], [ %index.next129, %vector.body123 ] ; 2 uses
  %i.eg = shl i64 %index124, 1                    ; 2 uses
  %next.gep125.a = getelementptr i8, ptr %i.dv, i64 %i.eg ; 2 uses
  %next.gep126 = getelementptr i8, ptr %i.df, i64 %i.eg ; 2 uses
  %i.eh = getelementptr i8, ptr %next.gep126, i64 16
  %wide.load127.a = load <8 x i16>, ptr %next.gep126, align 2, !tbaa !11
  %wide.load128 = load <8 x i16>, ptr %i.eh, align 2, !tbaa !11
  %i.ei = getelementptr i8, ptr %next.gep125.a, i64 16
  store <8 x i16> %wide.load127.a, ptr %next.gep125.a, align 2, !tbaa !11
  store <8 x i16> %wide.load128, ptr %i.ei, align 2, !tbaa !11
  %index.next129 = add nuw i64 %index124, 16      ; 2 uses
  %i.ej = icmp eq i64 %index.next129, %n.vec122
  br i1 %i.ej, label %middle.block130, label %vector.body123, !llvm.loop !89

middle.block130:                                  ; preds = %vector.body123
  %cmp.n131 = icmp eq i64 %i.dz, %n.vec122
  br i1 %cmp.n131, label %new_state.exit46, label %vec.epilog.iter.check137

vec.epilog.iter.check137:                         ; preds = %middle.block130
  %min.epilog.iters.check138 = icmp eq i64 %i.ec, 0
  br i1 %min.epilog.iters.check138, label %.lr.ph.i43.preheader, label %vec.epilog.ph139, !prof !37

vec.epilog.ph139:                                 ; preds = %vector.main.loop.iter.check119, %vec.epilog.iter.check137
  %vec.epilog.resume.val132 = phi i64 [ %n.vec122, %vec.epilog.iter.check137 ], [ 0, %vector.main.loop.iter.check119 ]
  %n.vec140 = and i64 %i.dz, -4                   ; 3 uses
  %i.ek = shl i64 %n.vec140, 1                    ; 2 uses
  %i.el = getelementptr i8, ptr %i.dv, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.df, i64 %i.ek
  br label %vec.epilog.vector.body141

vec.epilog.vector.body141:                        ; preds = %vec.epilog.vector.body141, %vec.epilog.ph139
  %index142 = phi i64 [ %vec.epilog.resume.val132, %vec.epilog.ph139 ], [ %index.next146, %vec.epilog.vector.body141 ] ; 2 uses
  %i.en = shl i64 %index142, 1                    ; 2 uses
  %next.gep143.a = getelementptr i8, ptr %i.dv, i64 %i.en
  %next.gep144 = getelementptr i8, ptr %i.df, i64 %i.en
  %wide.load145 = load <4 x i16>, ptr %next.gep144, align 2, !tbaa !11
  store <4 x i16> %wide.load145, ptr %next.gep143.a, align 2, !tbaa !11
  %index.next146 = add nuw i64 %index142, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next146, %n.vec140
  br i1 %i.eo, label %vec.epilog.middle.block147, label %vec.epilog.vector.body141, !llvm.loop !90

vec.epilog.middle.block147:                       ; preds = %vec.epilog.vector.body141
  %cmp.n148 = icmp eq i64 %i.dz, %n.vec140
  br i1 %cmp.n148, label %new_state.exit46, label %.lr.ph.i43.preheader

.lr.ph.i43.preheader:                             ; preds = %vector.memcheck114, %iter.check135, %vec.epilog.iter.check137, %vec.epilog.middle.block147
  %.019.i44.ph = phi ptr [ %i.dv, %iter.check135 ], [ %i.dv, %vector.memcheck114 ], [ %i.ee, %vec.epilog.iter.check137 ], [ %i.el, %vec.epilog.middle.block147 ]
  %.01718.i45.ph = phi ptr [ %i.df, %iter.check135 ], [ %i.df, %vector.memcheck114 ], [ %i.ef, %vec.epilog.iter.check137 ], [ %i.em, %vec.epilog.middle.block147 ]
  br label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.lr.ph.i43.preheader, %.lr.ph.i43
  %.019.i44 = phi ptr [ %i.er, %.lr.ph.i43 ], [ %.019.i44.ph, %.lr.ph.i43.preheader ] ; 2 uses
  %.01718.i45 = phi ptr [ %i.ep, %.lr.ph.i43 ], [ %.01718.i45.ph, %.lr.ph.i43.preheader ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.01718.i45, i64 2 ; 2 uses
  %i.eq = load i16, ptr %.01718.i45, align 2, !tbaa !11
  %i.er = getelementptr inbounds nuw i8, ptr %.019.i44, i64 2
  store i16 %i.eq, ptr %.019.i44, align 2, !tbaa !11
  %i.es = icmp ult ptr %i.ep, %i.de
  br i1 %i.es, label %.lr.ph.i43, label %new_state.exit46, !llvm.loop !91

new_state.exit46:                                 ; preds = %.lr.ph.i43, %middle.block130, %vec.epilog.middle.block147, %bb.i
  %i.et = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.dk, ptr %i.et, align 8, !tbaa !53
  store ptr %i.dk, ptr @last_state, align 8, !tbaa !24
  %i.eu = add nsw i32 %i.do, 1
  store i32 %i.eu, ptr @nstates, align 4, !tbaa !4
  %i.ev = load ptr, ptr @state_table, align 8, !tbaa !22
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %.034.lcssa
  store ptr %i.dk, ptr %i.ew, align 8, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %._crit_edge55, %new_state.exit, %new_state.exit46
  %.230 = phi ptr [ %i.dk, %new_state.exit46 ], [ %i.bt, %new_state.exit ], [ %.02857, %._crit_edge55 ], [ %.02857, %bb.c ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.230, i64 16
  %i.ey = load i16, ptr %i.ex, align 8, !tbaa !29
  %i.ez = sext i16 %i.ey to i32
  ret i32 %i.ez
}

; Function Attrs: nounwind uwtable
define dso_local ptr @new_state(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @nstates, align 4, !tbaa !4
  %i.b = icmp sgt i32 %i.a, 32766
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @toomany(ptr noundef nonnull @.str) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr @kernel_base, align 8, !tbaa !15
  %i.d = sext i32 %0 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 8 uses
  %i.g = load ptr, ptr @kernel_end, align 8, !tbaa !15
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.d
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = lshr exact i64 %i.l, 1
  %i.n = trunc i64 %i.l to i32
  %i.o = and i32 %i.n, -2
  %i.p = add i32 %i.o, 22
  %i.q = tail call ptr (i32, ...) @mallocate(i32 noundef %i.p) #8 ; 8 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = trunc i32 %0 to i16
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 18
  store i16 %i.s, ptr %i.t, align 2, !tbaa !49
  %i.u = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.v = trunc i32 %i.u to i16
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i16 %i.v, ptr %i.w, align 8, !tbaa !29
  %i.x = trunc i64 %i.m to i16
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i16 %i.x, ptr %i.y, align 4, !tbaa !26
  %i.z = icmp ult ptr %i.f, %i.i
  br i1 %i.z, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 22 ; 6 uses
  %1 = add i64 %i.k, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %1)
  %i.ab = xor i64 %i.k, -1
  %i.ac = add i64 %umax, %i.ab                    ; 3 uses
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = add nuw i64 %i.ad, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ac, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.af = sub i64 %i.r, %i.k
  %i.ag = add i64 %i.af, 21
  %diff.check = icmp ult i64 %i.ag, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check21 = icmp ult i64 %i.ac, 30
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ah = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, -16                     ; 4 uses
  %i.ai = shl i64 %n.vec, 1                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.aa, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.f, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.al ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.f, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep22, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep22, align 2, !tbaa !11
  %wide.load23 = load <8 x i16>, ptr %i.am, align 2, !tbaa !11
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !11
  store <8 x i16> %wide.load23, ptr %i.an, align 2, !tbaa !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %i.ae, -4                    ; 3 uses
  %i.ap = shl i64 %n.vec25, 1                     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.aa, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.f, i64 %i.ap
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl i64 %index26, 1                     ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.aa, i64 %i.as
  %next.gep28 = getelementptr i8, ptr %i.f, i64 %i.as
  %wide.load29 = load <4 x i16>, ptr %next.gep28, align 2, !tbaa !11
  store <4 x i16> %wide.load29, ptr %next.gep27, align 2, !tbaa !11
  %index.next30 = add nuw i64 %index26, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next30, %n.vec25
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !93

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n31 = icmp eq i64 %i.ae, %n.vec25
  br i1 %cmp.n31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.ph = phi ptr [ %i.aa, %iter.check ], [ %i.aa, %vector.memcheck ], [ %i.aj, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  %.01718.ph = phi ptr [ %i.f, %iter.check ], [ %i.f, %vector.memcheck ], [ %i.ak, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.019 = phi ptr [ %i.aw, %.lr.ph ], [ %.019.ph, %.lr.ph.preheader ] ; 2 uses
  %.01718 = phi ptr [ %i.au, %.lr.ph ], [ %.01718.ph, %.lr.ph.preheader ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01718, i64 2 ; 2 uses
  %i.av = load i16, ptr %.01718, align 2, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %.019, i64 2
  store i16 %i.av, ptr %.019, align 2, !tbaa !11
  %i.ax = icmp ult ptr %i.au, %i.i
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !94

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %i.ay = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.q, ptr %i.ay, align 8, !tbaa !53
  store ptr %i.q, ptr @last_state, align 8, !tbaa !24
  %i.az = add nsw i32 %i.u, 1
  store i32 %i.az, ptr @nstates, align 4, !tbaa !4
  ret ptr %i.q
}

declare void @toomany(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @insert_start_shift() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 4 uses
  %i.b = load i32, ptr @nstates, align 4, !tbaa !4
  %i.c = trunc i32 %i.b to i16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.c, ptr %i.d, align 8, !tbaa !29
  %i.e = load i32, ptr @start_symbol, align 4, !tbaa !4
  %i.f = trunc i32 %i.e to i16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 %i.f, ptr %i.g, align 2, !tbaa !49
  %i.h = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.a, ptr %i.h, align 8, !tbaa !53
  store ptr %i.a, ptr @last_state, align 8, !tbaa !24
  %i.i = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #8 ; 5 uses
  %i.j = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.k = add nsw i32 %i.j, 1                      ; 2 uses
  store i32 %i.k, ptr @nstates, align 4, !tbaa !4
  %i.l = trunc i32 %i.j to i16
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i16 %i.l, ptr %i.m, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  store i16 1, ptr %i.n, align 2, !tbaa !61
  %i.o = trunc i32 %i.k to i16
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i16 %i.o, ptr %i.p, align 4, !tbaa !11
  %i.q = load ptr, ptr @last_shift, align 8, !tbaa !65
  store ptr %i.i, ptr %i.q, align 8, !tbaa !74
  store ptr %i.i, ptr @last_shift, align 8, !tbaa !65
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 short", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"p2 short", !17, i64 0}
!17 = !{!"any p2 pointer", !10, i64 0}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !20}
!22 = !{!23, !23, i64 0}
!23 = !{!"p2 _ZTS4core", !17, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTS4core", !10, i64 0}
!26 = !{!27, !12, i64 20}
!27 = !{!"core", !25, i64 0, !25, i64 8, !12, i64 16, !12, i64 18, !12, i64 20, !6, i64 22}
!28 = distinct !{!28, !14}
!29 = !{!27, !12, i64 16}
!30 = !{!31, !12, i64 8}
!31 = !{!"reductions", !32, i64 0, !12, i64 8, !12, i64 10, !6, i64 12}
!32 = !{!"p1 _ZTS10reductions", !10, i64 0}
!33 = !{!31, !12, i64 10}
!34 = distinct !{!34, !14, !35, !36}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = !{!"branch_weights", i32 4, i32 12}
!38 = distinct !{!38, !14, !35, !36}
!39 = distinct !{!39, !14, !35}
!40 = !{!32, !32, i64 0}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14, !35, !36}
!45 = distinct !{!45, !14, !36, !35}
end_hunk_1
