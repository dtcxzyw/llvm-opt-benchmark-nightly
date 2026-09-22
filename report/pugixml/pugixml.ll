Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pugixml/original/pugixml?download=true
inline.NumInlined: 2249
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm:bb.a
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = and i64 %i.q, 3
  %i.s = icmp eq i64 %i.r, 0
  %i.t = icmp ugt i64 %i.p, 3
  %or.cond7.i.i.i = and i1 %i.t, %i.s
  br i1 %or.cond7.i.i.i, label %.preheader.i.i.i, label %.critedge.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.164.i.i.i = phi ptr [ %i.al, %bb.f ], [ %i.o, %bb.e ] ; 6 uses
  %.161.i.i.i = phi i64 [ %i.am, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.1.i.i.i.idx = phi i64 [ %.1.i.i.i.add, %bb.f ], [ %.073.i.i.i.add7, %bb.e ] ; 3 uses
  %i.u = load i32, ptr %.164.i.i.i, align 4       ; 2 uses
  %i.v = and i32 %i.u, -2139062144
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %.critedge.i.i.i

bb.f:                                             ; preds = %.preheader.i.i.i
  %.1.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.1.i.i.i.idx ; 4 uses
  %i.x = trunc i32 %i.u to i16
  %i.y = and i16 %i.x, 127
  store i16 %i.y, ptr %.1.i.i.i.ptr, align 2, !tbaa !135
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i.i.ptr, i64 2
  %i.aa = getelementptr inbounds nuw i8, ptr %.164.i.i.i, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !86
  %i.ac = zext i8 %i.ab to i16
  store i16 %i.ac, ptr %i.z, align 2, !tbaa !135
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i.i.i.ptr, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.164.i.i.i, i64 2
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !86
  %i.ag = zext i8 %i.af to i16
  store i16 %i.ag, ptr %i.ad, align 2, !tbaa !135
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i.i.i.ptr, i64 6
  %i.ai = getelementptr inbounds nuw i8, ptr %.164.i.i.i, i64 3
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !86
  %i.ak = zext i8 %i.aj to i16
  store i16 %i.ak, ptr %i.ah, align 2, !tbaa !135
  %.1.i.i.i.add = add nuw nsw i64 %.1.i.i.i.idx, 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.164.i.i.i, i64 4 ; 2 uses
  %i.am = add i64 %.161.i.i.i, -4                 ; 3 uses
  %.old6.i.i.i = icmp ugt i64 %i.am, 3
  br i1 %.old6.i.i.i, label %.preheader.i.i.i, label %.critedge.i.i.i

bb.g:                                             ; preds = %.preheader
  %i.an = and i32 %i.l, 224
  %i.ao = icmp eq i32 %i.an, 192
  %i.ap = icmp ne i64 %.06072.i.i.i, 1
  %or.cond.i.i.i = and i1 %i.ap, %i.ao
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !86
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = and i32 %i.as, 192
  %i.au = icmp eq i32 %i.at, 128
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = shl nuw nsw i32 %i.l, 6
  %i.aw = and i32 %i.av, 1984
  %i.ax = and i32 %i.as, 63
  %i.ay = or disjoint i32 %i.ax, %i.aw
  %i.az = trunc nuw nsw i32 %i.ay to i16
  store i16 %i.az, ptr %.073.i.i.i.ptr, align 2, !tbaa !135
  %.073.i.i.i.add6 = add nuw nsw i64 %.073.i.i.i.idx, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 2
  %i.bb = add i64 %.06072.i.i.i, -2
  br label %.critedge.i.i.i

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.bc = and i32 %i.l, 240
  %i.bd = icmp eq i32 %i.bc, 224
  %i.be = icmp ugt i64 %.06072.i.i.i, 2
  %or.cond3.i.i.i = and i1 %i.be, %i.bd
  br i1 %or.cond3.i.i.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !86
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = and i32 %i.bh, 192
  %i.bj = icmp eq i32 %i.bi, 128
  br i1 %i.bj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 2
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !86
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = and i32 %i.bm, 192
  %i.bo = icmp eq i32 %i.bn, 128
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bp = shl nuw nsw i32 %i.l, 12
  %i.bq = shl nuw nsw i32 %i.bh, 6
  %i.br = and i32 %i.bq, 4032
  %i.bs = or disjoint i32 %i.br, %i.bp
  %i.bt = and i32 %i.bm, 63
  %i.bu = or disjoint i32 %i.bt, %i.bs
  %i.bv = trunc i32 %i.bu to i16
  store i16 %i.bv, ptr %.073.i.i.i.ptr, align 2, !tbaa !135
  %.073.i.i.i.add = add nuw nsw i64 %.073.i.i.i.idx, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 3
  %i.bx = add i64 %.06072.i.i.i, -3
  br label %.critedge.i.i.i

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.by = and i32 %i.l, 248
  %i.bz = icmp eq i32 %i.by, 240
  %i.ca = icmp ugt i64 %.06072.i.i.i, 3
  %or.cond5.i.i.i = and i1 %i.ca, %i.bz
  br i1 %or.cond5.i.i.i, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !86
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = and i32 %i.cd, 192
  %i.cf = icmp eq i32 %i.ce, 128
  br i1 %i.cf, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 2
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !86
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = and i32 %i.ci, 192
  %i.ck = icmp eq i32 %i.cj, 128
  br i1 %i.ck, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 3
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !86
  %i.cn = zext i8 %i.cm to i32                    ; 2 uses
  %i.co = and i32 %i.cn, 192
  %i.cp = icmp eq i32 %i.co, 128
  br i1 %i.cp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cq = shl nuw nsw i32 %i.l, 18
  %i.cr = and i32 %i.cq, 1835008
  %i.cs = shl nuw nsw i32 %i.cd, 12
  %i.ct = and i32 %i.cs, 258048
  %i.cu = shl nuw nsw i32 %i.ci, 6                ; 2 uses
  %i.cv = and i32 %i.cu, 3072
  %i.cw = and i32 %i.cn, 63
  %i.cx = or disjoint i32 %i.cw, %i.cu
  %i.cy = add nuw nsw i32 %i.cr, 67043328
  %i.cz = add nuw nsw i32 %i.cy, %i.ct
  %i.da = or disjoint i32 %i.cz, %i.cv
  %i.db = lshr exact i32 %i.da, 10
  %i.dc = trunc i32 %i.db to i16
  %i.dd = add nsw i16 %i.dc, -10240
  store i16 %i.dd, ptr %.073.i.i.i.ptr, align 2, !tbaa !135
  %i.de = trunc nuw nsw i32 %i.cx to i16
  %i.df = and i16 %i.de, 1023
  %i.dg = or disjoint i16 %i.df, -9216
  %i.dh = getelementptr inbounds nuw i8, ptr %.073.i.i.i.ptr, i64 2
  store i16 %i.dg, ptr %i.dh, align 2, !tbaa !135
  %.073.i.i.i.add8 = add nuw nsw i64 %.073.i.i.i.idx, 4
  %i.di = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 4
  %i.dj = add i64 %.06072.i.i.i, -4
  br label %.critedge.i.i.i

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.dk = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 1
  %i.dl = add i64 %.06072.i.i.i, -1
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.f, %.preheader.i.i.i, %bb.s, %bb.r, %bb.m, %bb.i, %bb.e
  %.265.i.i.i = phi ptr [ %i.di, %bb.r ], [ %i.dk, %bb.s ], [ %i.o, %bb.e ], [ %i.ba, %bb.i ], [ %i.bw, %bb.m ], [ %i.al, %bb.f ], [ %.164.i.i.i, %.preheader.i.i.i ]
  %.262.i.i.i = phi i64 [ %i.dj, %bb.r ], [ %i.dl, %bb.s ], [ %i.p, %bb.e ], [ %i.bb, %bb.i ], [ %i.bx, %bb.m ], [ %i.am, %bb.f ], [ %.161.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.2.i.i.i.idx = phi i64 [ %.073.i.i.i.add8, %bb.r ], [ %.073.i.i.i.idx, %bb.s ], [ %.073.i.i.i.add7, %bb.e ], [ %.073.i.i.i.add6, %bb.i ], [ %.073.i.i.i.add, %bb.m ], [ %.1.i.i.i.add, %bb.f ], [ %.1.i.i.i.idx, %.preheader.i.i.i ] ; 5 uses
  %.not.i.i.i = icmp eq i64 %.262.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf16_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i, label %.preheader, !llvm.loop !635

_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf16_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i: ; preds = %.critedge.i.i.i
  %.2.i.i.i.ptr.le = getelementptr inbounds nuw i8, ptr %0, i64 %.2.i.i.i.idx
  %i.dm = icmp ne i32 %i.c, 2
  %.not11.i.i = icmp ne i64 %.2.i.i.i.idx, 2048
  %or.cond.not.i.i = select i1 %i.dm, i1 %.not11.i.i, i1 false
  br i1 %or.cond.not.i.i, label %iter.check, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i

iter.check:                                       ; preds = %_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf16_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i
  %i.dn = add i64 %.2.i.i.i.idx, -2050            ; 3 uses
  %i.do = lshr i64 %i.dn, 1
  %i.dp = add nuw i64 %i.do, 1                    ; 5 uses
  %min.iters.check28 = icmp ult i64 %i.dn, 14
  br i1 %min.iters.check28, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check29 = icmp ult i64 %i.dn, 30
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph30

vector.ph30:                                      ; preds = %vector.main.loop.iter.check
  %i.dq = and i64 %i.dp, 8
  %n.vec31 = and i64 %i.dp, -16                   ; 4 uses
  %i.dr = shl i64 %n.vec31, 1
  %i.ds = getelementptr i8, ptr %.ptr13, i64 %i.dr
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph30
  %index33 = phi i64 [ 0, %vector.ph30 ], [ %index.next37, %vector.body32 ] ; 2 uses
  %i.dt = shl i64 %index33, 1
  %next.gep34 = getelementptr i8, ptr %.ptr13, i64 %i.dt ; 3 uses
  %i.du = getelementptr i8, ptr %next.gep34, i64 16 ; 2 uses
  %wide.load35 = load <8 x i16>, ptr %next.gep34, align 8, !tbaa !135
  %wide.load36 = load <8 x i16>, ptr %i.du, align 8, !tbaa !135
  %i.dv = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load35)
  %i.dw = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load36)
  store <8 x i16> %i.dv, ptr %next.gep34, align 8, !tbaa !135
  store <8 x i16> %i.dw, ptr %i.du, align 8, !tbaa !135
  %index.next37 = add nuw i64 %index33, 16        ; 2 uses
  %i.dx = icmp eq i64 %index.next37, %n.vec31
  br i1 %i.dx, label %middle.block38, label %vector.body32, !llvm.loop !636

middle.block38:                                   ; preds = %vector.body32
  %cmp.n39 = icmp eq i64 %i.dp, %n.vec31
  br i1 %cmp.n39, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block38
  %min.epilog.iters.check.not.not = icmp eq i64 %i.dq, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !642

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec31, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec41 = and i64 %i.dp, -8                    ; 3 uses
  %i.dy = shl i64 %n.vec41, 1
  %i.dz = getelementptr i8, ptr %.ptr13, i64 %i.dy
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 2 uses
  %i.ea = shl i64 %index42, 1
  %next.gep43 = getelementptr i8, ptr %.ptr13, i64 %i.ea ; 2 uses
  %wide.load44 = load <8 x i16>, ptr %next.gep43, align 8, !tbaa !135
  %i.eb = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load44)
  store <8 x i16> %i.eb, ptr %next.gep43, align 8, !tbaa !135
  %index.next45 = add nuw i64 %index42, 8         ; 2 uses
  %i.ec = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.ec, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !637

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %i.dp, %n.vec41
  br i1 %cmp.n46, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.ph = phi ptr [ %.ptr13, %iter.check ], [ %i.ds, %vec.epilog.iter.check ], [ %i.dz, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.ee, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ed = load i16, ptr %.012.i.i, align 2, !tbaa !135
  %rev.i.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.ed)
  store i16 %rev.i.i.i, ptr %.012.i.i, align 2, !tbaa !135
  %i.ee = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 2 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ee, %.2.i.i.i.ptr.le
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, label %.lr.ph.i.i, !llvm.loop !638

_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i: ; preds = %.lr.ph.i.i, %middle.block38, %vec.epilog.middle.block, %_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf16_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i
  %gepdiff = add nsw i64 %.2.i.i.i.idx, -2048
  br label %_ZN4pugi4impl12_GLOBAL__N_121convert_buffer_outputEPcPhPtPjPKcmNS_12xml_encodingE.exit

bb.t:                                             ; preds = %bb.d
  %i.ef = add i32 %i.c, -5
  %or.cond3.i = icmp ult i32 %i.ef, 2
  br i1 %or.cond3.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eg = icmp ne i32 %i.c, 5
  %i.eh = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf32_writerEEENT_10value_typeEPKhmS6_S5_(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef nonnull %.ptr13) ; 4 uses
  %.not11.i22.i = icmp ne ptr %.ptr13, %i.eh
  %or.cond.not.i23.i = and i1 %i.eg, %.not11.i22.i
  br i1 %or.cond.not.i23.i, label %.lr.ph.i24.i.preheader, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf32_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i

.lr.ph.i24.i.preheader:                           ; preds = %bb.u
  %i.ei = ptrtoaddr ptr %i.eh to i64
  %i.ej = ptrtoaddr ptr %0 to i64
  %i.ek = add i64 %i.ei, -2052
  %i.el = sub i64 %i.ek, %i.ej                    ; 2 uses
  %i.em = lshr i64 %i.el, 2
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.el, 28
  br i1 %min.iters.check, label %.lr.ph.i24.i.preheader48, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i24.i.preheader
  %n.vec = and i64 %i.en, 9223372036854775800     ; 3 uses
  %i.eo = shl i64 %n.vec, 2
  %i.ep = getelementptr i8, ptr %.ptr13, i64 %i.eo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.ptr13, i64 %i.eq ; 3 uses
  %i.er = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 8, !tbaa !136
  %wide.load26 = load <4 x i32>, ptr %i.er, align 8, !tbaa !136
  %i.es = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.et = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load26)
  store <4 x i32> %i.es, ptr %next.gep, align 8, !tbaa !136
  store <4 x i32> %i.et, ptr %i.er, align 8, !tbaa !136
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !639

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.en, %n.vec
  br i1 %cmp.n, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf32_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, label %.lr.ph.i24.i.preheader48

.lr.ph.i24.i.preheader48:                         ; preds = %.lr.ph.i24.i.preheader, %middle.block
  %.012.i25.i.ph = phi ptr [ %.ptr13, %.lr.ph.i24.i.preheader ], [ %i.ep, %middle.block ]
  br label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader48, %.lr.ph.i24.i
  %.012.i25.i = phi ptr [ %i.ex, %.lr.ph.i24.i ], [ %.012.i25.i.ph, %.lr.ph.i24.i.preheader48 ] ; 3 uses
  %i.ev = load i32, ptr %.012.i25.i, align 4, !tbaa !136
  %i.ew = tail call noundef i32 @llvm.bswap.i32(i32 %i.ev)
  store i32 %i.ew, ptr %.012.i25.i, align 4, !tbaa !136
  %i.ex = getelementptr inbounds nuw i8, ptr %.012.i25.i, i64 4 ; 2 uses
  %.not.i26.i = icmp eq ptr %i.ex, %i.eh
  br i1 %.not.i26.i, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf32_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, label %.lr.ph.i24.i, !llvm.loop !640

_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf32_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i: ; preds = %.lr.ph.i24.i, %middle.block, %bb.u
  %i.ey = ptrtoint ptr %i.eh to i64
  %i.ez = ptrtoint ptr %.ptr13 to i64
  %i.fa = sub i64 %i.ey, %i.ez
  br label %_ZN4pugi4impl12_GLOBAL__N_121convert_buffer_outputEPcPhPtPjPKcmNS_12xml_encodingE.exit

bb.v:                                             ; preds = %bb.t
  %i.fb = icmp eq i32 %i.c, 9
  br i1 %i.fb, label %.preheader.i, label %_ZN4pugi4impl12_GLOBAL__N_121convert_buffer_outputEPcPhPtPjPKcmNS_12xml_encodingE.exit

.preheader.i:                                     ; preds = %bb.v, %.critedge.i.i30.i
  %.074.i.i.i = phi ptr [ %.2.i.i33.i, %.critedge.i.i30.i ], [ %.ptr13, %bb.v ] ; 9 uses
  %.06073.i.i.i = phi i64 [ %.262.i.i32.i, %.critedge.i.i30.i ], [ %2, %bb.v ] ; 8 uses
  %.06372.i.i.i = phi ptr [ %.265.i.i31.i, %.critedge.i.i30.i ], [ %1, %bb.v ] ; 12 uses
  %i.fc = load i8, ptr %.06372.i.i.i, align 1, !tbaa !86 ; 4 uses
  %i.fd = zext i8 %i.fc to i32                    ; 5 uses
  %i.fe = icmp sgt i8 %i.fc, -1
  br i1 %i.fe, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.preheader.i
  store i8 %i.fc, ptr %.074.i.i.i, align 1, !tbaa !86
  %i.ff = getelementptr inbounds nuw i8, ptr %.074.i.i.i, i64 1 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 1 ; 3 uses
  %i.fh = add i64 %.06073.i.i.i, -1               ; 3 uses
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = and i64 %i.fi, 3
  %i.fk = icmp eq i64 %i.fj, 0
  %i.fl = icmp ugt i64 %i.fh, 3
  %or.cond7.i.i35.i = and i1 %i.fl, %i.fk
  br i1 %or.cond7.i.i35.i, label %.preheader.i.i36.i, label %.critedge.i.i30.i

.preheader.i.i36.i:                               ; preds = %bb.w, %bb.x
  %.164.i.i37.i = phi ptr [ %i.ga, %bb.x ], [ %i.fg, %bb.w ] ; 6 uses
  %.161.i.i38.i = phi i64 [ %i.gb, %bb.x ], [ %i.fh, %bb.w ] ; 2 uses
  %.1.i.i39.i = phi ptr [ %i.fz, %bb.x ], [ %i.ff, %bb.w ] ; 6 uses
  %i.fm = load i32, ptr %.164.i.i37.i, align 4    ; 2 uses
  %i.fn = and i32 %i.fm, -2139062144
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.x, label %.critedge.i.i30.i

bb.x:                                             ; preds = %.preheader.i.i36.i
  %i.fp = trunc i32 %i.fm to i8
  store i8 %i.fp, ptr %.1.i.i39.i, align 1, !tbaa !86
  %i.fq = getelementptr inbounds nuw i8, ptr %.1.i.i39.i, i64 1
  %i.fr = getelementptr inbounds nuw i8, ptr %.164.i.i37.i, i64 1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !86
  store i8 %i.fs, ptr %i.fq, align 1, !tbaa !86
  %i.ft = getelementptr inbounds nuw i8, ptr %.1.i.i39.i, i64 2
  %i.fu = getelementptr inbounds nuw i8, ptr %.164.i.i37.i, i64 2
  %i.fv = load i8, ptr %i.fu, align 2, !tbaa !86
  store i8 %i.fv, ptr %i.ft, align 1, !tbaa !86
  %i.fw = getelementptr inbounds nuw i8, ptr %.1.i.i39.i, i64 3
  %i.fx = getelementptr inbounds nuw i8, ptr %.164.i.i37.i, i64 3
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !86
  store i8 %i.fy, ptr %i.fw, align 1, !tbaa !86
  %i.fz = getelementptr inbounds nuw i8, ptr %.1.i.i39.i, i64 4 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.164.i.i37.i, i64 4 ; 2 uses
  %i.gb = add i64 %.161.i.i38.i, -4               ; 3 uses
  %.old6.i.i40.i = icmp ugt i64 %i.gb, 3
  br i1 %.old6.i.i40.i, label %.preheader.i.i36.i, label %.critedge.i.i30.i

bb.y:                                             ; preds = %.preheader.i
  %i.gc = and i32 %i.fd, 224
  %i.gd = icmp eq i32 %i.gc, 192
  %i.ge = icmp ne i64 %.06073.i.i.i, 1
  %or.cond.i.i27.i = and i1 %i.ge, %i.gd
  br i1 %or.cond.i.i27.i, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.gf = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 1
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !86  ; 2 uses
  %i.gh = icmp slt i8 %i.gg, -64
  br i1 %i.gh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gi = shl i8 %i.fc, 6
  %i.gj = and i8 %i.gg, 63
  %i.gk = or disjoint i8 %i.gj, %i.gi
  %i.gl = and i32 %i.fd, 28
end_hunk_0
