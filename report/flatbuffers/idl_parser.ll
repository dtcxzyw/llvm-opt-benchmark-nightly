Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_parser?download=true
inline.NumInlined: 13536
inline.NumDeleted: 4031
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 204
begin_hunk_0_@_ZN11flexbuffers7Builder12CreateVectorEmmmbbPKNS0_5ValueE:bb.a
  %invariant.op88 = add i64 %i.ar, -256
  %invariant.op90 = add i64 %invariant.op88, %i.at ; 2 uses
  %i.au = and i64 %i.as, 3
  %invariant.op92 = add i64 %i.ar, -65536
  %invariant.op94 = add i64 %invariant.op92, %i.au ; 2 uses
  br i1 %4, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57.us
  %.04386.us = phi i64 [ %i.bk, %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57.us ], [ %1, %.lr.ph ] ; 3 uses
  %.18084.us = phi i32 [ %.sroa.speculated.us, %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57.us ], [ %.079, %.lr.ph ]
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %.04386.us ; 3 uses
  %.reass.us = add i64 %.04386.us, %invariant.op  ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !475 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 4
  %i.az = icmp eq i32 %i.ax, 26
  %i.ba = or i1 %i.ay, %i.az
  br i1 %i.ba, label %bb.k, label %.preheader.i51.us

.preheader.i51.us:                                ; preds = %.lr.ph.split.us
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !81 ; 3 uses
  %i.bc = add i64 %i.ar, %.reass.us
  %i.bd = sub i64 %i.bc, %i.bb
  %.not.i.i52.us = icmp ult i64 %i.bd, 256
  br i1 %.not.i.i52.us, label %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57.us, label %bb.i

bb.i:                                             ; preds = %.preheader.i51.us
  %i.be = shl i64 %.reass.us, 1
  %.reass91.us = add i64 %i.be, %invariant.op90
  %i.bf = sub i64 %.reass91.us, %i.bb
  %or.cond.i53.us = icmp ult i64 %i.bf, 65280
  br i1 %or.cond.i53.us, label %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = shl i64 %.reass.us, 2
  %.reass95.us = add i64 %i.bg, %invariant.op94
  %i.bh = sub i64 %.reass95.us, %i.bb
  %or.cond34.i54.us = icmp ult i64 %i.bh, 4294901760
  %spec.select.i55.us = select i1 %or.cond34.i54.us, i32 2, i32 3
  br label %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57.us

bb.k:                                             ; preds = %.lr.ph.split.us
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !476
  br label %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57.us

_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57.us: ; preds = %bb.k, %bb.j, %bb.i, %.preheader.i51.us
  %.3.i56.us = phi i32 [ %i.bj, %bb.k ], [ 0, %.preheader.i51.us ], [ %spec.select.i55.us, %bb.j ], [ 1, %bb.i ]
  %.sroa.speculated.us = tail call i32 @llvm.smax.i32(i32 %.18084.us, i32 %.3.i56.us) ; 2 uses
  %i.bk = add i64 %.04386.us, %3                  ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.ak
  br i1 %i.bl, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !2689

._crit_edge:                                      ; preds = %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57.us, %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57, %bb.h
  %.180.lcssa = phi i32 [ %.sroa.speculated, %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57 ], [ %.079, %bb.h ], [ %.sroa.speculated.us, %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57.us ] ; 3 uses
  %.044.lcssa = phi i32 [ %spec.select, %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57 ], [ 4, %bb.h ], [ 4, %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57.us ] ; 4 uses
  %i.bm = shl nuw i32 1, %.180.lcssa              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.bo = zext i32 %i.bm to i64
  %i.bp = add nsw i64 %i.bo, -1
  %i.bq = and i64 %i.bp, %i.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store i8 0, ptr %i.d, align 1, !tbaa !81
  %i.br = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr %i.br, i64 noundef %i.bq, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  %i.bs = trunc i32 %i.bm to i8
  br i1 %.not, label %bb.p, label %bb.o

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57
  %.04386 = phi i64 [ %i.cj, %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57 ], [ %1, %.lr.ph ] ; 4 uses
  %.04485 = phi i32 [ %spec.select, %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57 ], [ 4, %.lr.ph ]
  %.18084 = phi i32 [ %.sroa.speculated, %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57 ], [ %.079, %.lr.ph ]
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %.04386 ; 3 uses
  %.reass = add i64 %.04386, %invariant.op        ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !475 ; 3 uses
  %i.bw = icmp slt i32 %i.bv, 4
  %i.bx = icmp eq i32 %i.bv, 26
  %i.by = or i1 %i.bw, %i.bx
  br i1 %i.by, label %bb.l, label %.preheader.i51

.preheader.i51:                                   ; preds = %.lr.ph.split
  %i.bz = load i64, ptr %i.bt, align 8, !tbaa !81 ; 3 uses
  %i.ca = add i64 %i.ar, %.reass
  %i.cb = sub i64 %i.ca, %i.bz
  %.not.i.i52 = icmp ult i64 %i.cb, 256
  br i1 %.not.i.i52, label %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57, label %bb.n

bb.l:                                             ; preds = %.lr.ph.split
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !476
  br label %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57

bb.m:                                             ; preds = %bb.n
  %i.ce = shl i64 %.reass, 2
  %.reass95 = add i64 %i.ce, %invariant.op94
  %i.cf = sub i64 %.reass95, %i.bz
  %or.cond34.i54 = icmp ult i64 %i.cf, 4294901760
  %spec.select.i55 = select i1 %or.cond34.i54, i32 2, i32 3
  br label %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57

bb.n:                                             ; preds = %.preheader.i51
  %i.cg = shl i64 %.reass, 1
  %.reass91 = add i64 %i.cg, %invariant.op90
  %i.ch = sub i64 %.reass91, %i.bz
  %or.cond.i53 = icmp ult i64 %i.ch, 65280
  br i1 %or.cond.i53, label %_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57, label %bb.m

_ZNK11flexbuffers7Builder5Value9ElemWidthEmm.exit57: ; preds = %.preheader.i51, %bb.l, %bb.m, %bb.n
  %.3.i56 = phi i32 [ %i.cd, %bb.l ], [ 0, %.preheader.i51 ], [ %spec.select.i55, %bb.m ], [ 1, %bb.n ]
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.18084, i32 %.3.i56) ; 2 uses
  %i.ci = icmp eq i64 %.04386, %1
  %spec.select = select i1 %i.ci, i32 %i.bv, i32 %.04485 ; 2 uses
  %i.cj = add i64 %.04386, %3                     ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ak
  br i1 %i.ck, label %.lr.ph.split, label %._crit_edge, !llvm.loop !2689

bb.o:                                             ; preds = %._crit_edge
  %i.cl = load i64, ptr %6, align 8, !tbaa !81
  %i.cm = load ptr, ptr %i.bn, align 8, !tbaa !373
  %i.cn = load ptr, ptr %0, align 8, !tbaa !368   ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp                    ; 2 uses
  %i.cr = sub i64 %i.cq, %i.cl
  %.mask = and i32 %i.bm, 255
  %i.cs = zext nneg i32 %.mask to i64             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.cr, ptr %i.c, align 8, !tbaa !93
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cs
  %i.cu = getelementptr inbounds i8, ptr %i.cn, i64 %i.cq
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr %i.cu, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !476
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = shl nuw i64 1, %i.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.cy, ptr %i.b, align 8, !tbaa !93
  %i.cz = load ptr, ptr %i.bn, align 8, !tbaa !219
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cs
  %i.db = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = getelementptr inbounds i8, ptr %i.db, i64 %i.de
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr %i.df, ptr noundef nonnull %i.b, ptr noundef nonnull %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  br i1 %5, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.mask81 = and i32 %i.bm, 255
  %i.dg = zext nneg i32 %.mask81 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !93
  %i.dh = load ptr, ptr %i.bn, align 8, !tbaa !219
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dg
  %i.dj = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = getelementptr inbounds i8, ptr %i.dj, i64 %i.dm
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr %i.dn, ptr noundef nonnull %i.a, ptr noundef nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.do = load ptr, ptr %i.bn, align 8, !tbaa !373
  %i.dp = load ptr, ptr %0, align 8, !tbaa !368
  %i.dq = load ptr, ptr %i.ae, align 8, !tbaa !469 ; 2 uses
  %i.dr = load ptr, ptr %i.ad, align 8, !tbaa !376 ; 3 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 4
  %i.dw = icmp ult i64 %1, %i.dv
  br i1 %i.dw, label %.lr.ph99, label %._crit_edge100

._crit_edge100:                                   ; preds = %.lr.ph99, %bb.r
  %i.dx = phi ptr [ %i.dr, %bb.r ], [ %i.ej, %.lr.ph99 ] ; 2 uses
  %i.dy = phi ptr [ %i.dq, %bb.r ], [ %i.ei, %.lr.ph99 ]
  br i1 %4, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge100
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 4
  %i.ed = icmp ult i64 %1, %i.ec
  br i1 %i.ed, label %.lr.ph102, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.preheader
  %.mux125 = select i1 %.not, i32 10, i32 9
  br label %_ZN11flexbuffers13ToTypedVectorENS_4TypeEm.exit

.lr.ph102:                                        ; preds = %.preheader
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pre105 = load ptr, ptr %i.bn, align 8, !tbaa !373
  %.pre107 = load ptr, ptr %i.ee, align 8, !tbaa !369
  br label %bb.s

.lr.ph99:                                         ; preds = %bb.r, %.lr.ph99
  %i.ef = phi ptr [ %i.ej, %.lr.ph99 ], [ %i.dr, %bb.r ]
  %.04297 = phi i64 [ %i.eh, %.lr.ph99 ], [ %1, %bb.r ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %.04297
  call void @_ZN11flexbuffers7Builder8WriteAnyERKNS0_5ValueEh(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i8 noundef zeroext %i.bs)
  %i.eh = add i64 %.04297, %3                     ; 2 uses
  %i.ei = load ptr, ptr %i.ae, align 8, !tbaa !469 ; 2 uses
  %i.ej = load ptr, ptr %i.ad, align 8, !tbaa !376 ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 4
  %i.eo = icmp ult i64 %i.eh, %i.en
  br i1 %i.eo, label %.lr.ph99, label %._crit_edge100, !llvm.loop !2690

bb.s:                                             ; preds = %.lr.ph102, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %7 = phi ptr [ %.pre107, %.lr.ph102 ], [ %8, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 2 uses
  %i.ep = phi ptr [ %.pre105, %.lr.ph102 ], [ %i.ft, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 2 uses
  %i.eq = phi ptr [ %i.dx, %.lr.ph102 ], [ %i.fw, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ]
  %.0101 = phi i64 [ %1, %.lr.ph102 ], [ %i.fu, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 2 uses
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %.0101 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i32, ptr %i.es, align 8, !tbaa !475 ; 3 uses
  %i.eu = icmp slt i32 %i.et, 4
  %i.ev = icmp eq i32 %i.et, 26
  %i.ew = or i1 %i.eu, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.ey = load i32, ptr %i.ex, align 4            ; 2 uses
  %i.ez = call i32 @llvm.smax.i32(i32 %i.ey, i32 %.180.lcssa)
  %.0.i.i = select i1 %i.ew, i32 %i.ez, i32 %i.ey
  %i.fa = shl i32 %i.et, 2
  %i.fb = or i32 %.0.i.i, %i.fa
  %i.fc = trunc i32 %i.fb to i8                   ; 2 uses
  %.not.i.i59 = icmp eq ptr %i.ep, %7
  br i1 %.not.i.i59, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 %i.fc, ptr %i.ep, align 1, !tbaa !81
  %i.fd = load ptr, ptr %i.bn, align 8, !tbaa !373
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1 ; 2 uses
  store ptr %i.fe, ptr %i.bn, align 8, !tbaa !373
  %.pre106 = load ptr, ptr %i.ee, align 8, !tbaa !369
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.u:                                             ; preds = %bb.s
  %i.ff = load ptr, ptr %0, align 8, !tbaa !368   ; 4 uses
  %i.fg = ptrtoint ptr %7 to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh                    ; 8 uses
  %i.fj = icmp eq i64 %i.fi, 9223372036854775807
  br i1 %i.fj, label %bb.v, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.324) #31
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.u
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fi, i64 1)
  %i.fk = add i64 %.sroa.speculated.i.i.i.i, %i.fi ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fi
  %i.fm = call i64 @llvm.umin.i64(i64 %i.fk, i64 9223372036854775807)
  %i.fn = select i1 %i.fl, i64 9223372036854775807, i64 %i.fm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.fn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #36 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fi ; 2 uses
  store i8 %i.fc, ptr %i.fp, align 1, !tbaa !81
  %i.fq = icmp sgt i64 %i.fi, 0
  br i1 %i.fq, label %bb.w, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.w:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fo, ptr align 1 %i.ff, i64 %i.fi, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.w, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 1 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fi) #33
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.fo, ptr %0, align 8, !tbaa !368
  store ptr %i.fr, ptr %i.bn, align 8, !tbaa !373
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fn ; 2 uses
  store ptr %i.fs, ptr %i.ee, align 8, !tbaa !369
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %bb.t, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  %8 = phi ptr [ %.pre106, %bb.t ], [ %i.fs, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ]
  %i.ft = phi ptr [ %i.fe, %bb.t ], [ %i.fr, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ]
  %i.fu = add i64 %.0101, %3                      ; 2 uses
  %i.fv = load ptr, ptr %i.ae, align 8, !tbaa !469
  %i.fw = load ptr, ptr %i.ad, align 8, !tbaa !376 ; 2 uses
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = ashr exact i64 %i.fz, 4
  %i.gb = icmp ult i64 %i.fu, %i.ga
  br i1 %i.gb, label %bb.s, label %.loopexit, !llvm.loop !2691

.loopexit:                                        ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit, %._crit_edge100
  %brmerge.not = and i1 %4, %.not
  %.mux = select i1 %.not, i32 10, i32 9
  br i1 %brmerge.not, label %bb.y, label %_ZN11flexbuffers13ToTypedVectorENS_4TypeEm.exit

bb.y:                                             ; preds = %.loopexit
  %i.gc = select i1 %5, i64 %2, i64 0
  switch i64 %i.gc, label %_ZN11flexbuffers13ToTypedVectorENS_4TypeEm.exit [
    i64 0, label %bb.z
    i64 2, label %bb.aa
    i64 3, label %bb.ab
    i64 4, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y
  %i.gd = add nsw i32 %.044.lcssa, 10
  br label %_ZN11flexbuffers13ToTypedVectorENS_4TypeEm.exit

bb.aa:                                            ; preds = %bb.y
  %i.ge = add nsw i32 %.044.lcssa, 15
  br label %_ZN11flexbuffers13ToTypedVectorENS_4TypeEm.exit

bb.ab:                                            ; preds = %bb.y
  %i.gf = add nsw i32 %.044.lcssa, 18
  br label %_ZN11flexbuffers13ToTypedVectorENS_4TypeEm.exit

bb.ac:                                            ; preds = %bb.y
  %i.gg = add nsw i32 %.044.lcssa, 21
  br label %_ZN11flexbuffers13ToTypedVectorENS_4TypeEm.exit

_ZN11flexbuffers13ToTypedVectorENS_4TypeEm.exit:  ; preds = %.loopexit.thread, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %.loopexit
  %i.gh = phi i32 [ %.mux, %.loopexit ], [ %i.gg, %bb.ac ], [ %i.gd, %bb.z ], [ %i.ge, %bb.aa ], [ %i.gf, %bb.ab ], [ 0, %bb.y ], [ %.mux125, %.loopexit.thread ]
  %i.gi = ptrtoint ptr %i.do to i64
  %i.gj = ptrtoint ptr %i.dp to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.gk, 0
  %.sroa.4.8.insert.ext = zext nneg i32 %.180.lcssa to i64
  %.sroa.4.8.insert.shift = shl nuw nsw i64 %.sroa.4.8.insert.ext, 32
  %.sroa.2.8.insert.ext = zext i32 %i.gh to i64
  %.sroa.2.8.insert.insert = or disjoint i64 %.sroa.4.8.insert.shift, %.sroa.2.8.insert.ext
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.2.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_SB_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #4 comdat {
bb.a:
  %.sroa.5.i.i.i = alloca [24 x i8], align 8      ; 4 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %_ZSt22__final_insertion_sortIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_SB_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 5
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = xor i64 %i.f, 126
  tail call void @_ZSt16__introsort_loopIPZN11flexbuffers7Builder6EndMapEmE8TwoValuelN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_SB_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %i.g, ptr %2)
  %i.h = icmp sgt i64 %i.c, 512
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  tail call void @_ZSt16__insertion_sortIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_SB_T0_(ptr noundef %0, ptr noundef nonnull %i.i, ptr %2)
  %.not9.i.i = icmp eq ptr %i.i, %1
  br i1 %.not9.i.i, label %_ZSt22__final_insertion_sortIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_SB_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 49
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_T0_.exit.i.i, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.w, %_ZSt25__unguarded_linear_insertIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_T0_.exit.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.010.i.i, align 8, !tbaa !81 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i, i64 24, i1 false), !tbaa.struct !537
  %.012.i.i.i = getelementptr inbounds i8, ptr %.010.i.i, i64 -32 ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !368    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.0.copyload.i.i.i
  %i.m = load i64, ptr %.012.i.i.i, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(1) %i.n) #37 ; 2 uses
  %.not.i.i.not13.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.not13.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIS4_PS4_EEbRT_T0_.exit.thread.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIS4_PS4_EEbRT_T0_.exit.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIS4_PS4_EEbRT_T0_.exit.thread.i.i.i: ; preds = %bb.e, %bb.d
  %.09.lcssa.i.i.i = phi ptr [ %.010.i.i, %bb.d ], [ %.015.i.i.i, %bb.e ]
  store i8 1, ptr %i.j, align 1, !tbaa !473
  br label %_ZSt25__unguarded_linear_insertIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIS4_PS4_EEbRT_T0_.exit.i.i.i: ; preds = %bb.d, %bb.e
  %i.p = phi i32 [ %i.v, %bb.e ], [ %i.o, %bb.d ]
  %.015.i.i.i = phi ptr [ %.0.i.i.i, %bb.e ], [ %.012.i.i.i, %bb.d ] ; 4 uses
  %.0914.i.i.i = phi ptr [ %.015.i.i.i, %bb.e ], [ %.010.i.i, %bb.d ] ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %_ZSt25__unguarded_linear_insertIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_T0_.exit.i.i

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIS4_PS4_EEbRT_T0_.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0914.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.015.i.i.i, i64 32, i1 false), !tbaa.struct !538
  %.0.i.i.i = getelementptr inbounds i8, ptr %.015.i.i.i, i64 -32 ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !368    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.copyload.i.i.i
  %i.t = load i64, ptr %.0.i.i.i, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(1) %i.u) #37 ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.not.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIS4_PS4_EEbRT_T0_.exit.thread.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIS4_PS4_EEbRT_T0_.exit.i.i.i, !llvm.loop !39

_ZSt25__unguarded_linear_insertIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_T0_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIS4_PS4_EEbRT_T0_.exit.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIS4_PS4_EEbRT_T0_.exit.thread.i.i.i
  %.0911.i.i.i = phi ptr [ %.09.lcssa.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIS4_PS4_EEbRT_T0_.exit.thread.i.i.i ], [ %.0914.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIS4_PS4_EEbRT_T0_.exit.i.i.i ] ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.0911.i.i.i, align 8, !tbaa !81
  %.sroa.5.0..0911.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..0911.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i, i64 24, i1 false), !tbaa.struct !537
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.w = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %1
  br i1 %.not.i.i, label %_ZSt22__final_insertion_sortIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_SB_T0_.exit, label %bb.d, !llvm.loop !2692

bb.f:                                             ; preds = %bb.b
  tail call void @_ZSt16__insertion_sortIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_SB_T0_(ptr noundef %0, ptr noundef %1, ptr %2)
  br label %_ZSt22__final_insertion_sortIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_SB_T0_.exit

_ZSt22__final_insertion_sortIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_SB_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_T0_.exit.i.i, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPZN11flexbuffers7Builder6EndMapEmE8TwoValuelN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_SB_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #1 comdat {
bb.a:
  %4 = alloca %struct.TwoValue, align 8           ; 4 uses
  %5 = alloca %struct.TwoValue, align 8           ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 512
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_SB_SB_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 49 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph56

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEET_SB_SB_T0_.exit
  %i.h = icmp eq i64 %i.ak, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph56, !llvm.loop !2693

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa52 = phi i64 [ %i.c, %.lr.ph ], [ %i.am, %bb.b ]
  %.027.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  %i.i = lshr exact i64 %.lcssa52, 5              ; 2 uses
  %i.j = add nsw i64 %i.i, -2
  %i.k = lshr i64 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.013.i.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.013.i.i.i
  tail call void @_ZSt13__adjust_heapIPZN11flexbuffers7Builder6EndMapEmE8TwoValuelS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_T0_SC_T1_T2_(ptr noundef %0, i64 noundef %.013.i.i.i, i64 noundef %i.i, ptr noundef nonnull byval(%struct.TwoValue) align 8 %i.l, ptr %3)
  %.not.i.i.i = icmp eq i64 %.013.i.i.i, 0
  %i.m = add nsw i64 %.013.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i, label %bb.c, !llvm.loop !2694

.lr.ph.i5.i:                                      ; preds = %bb.c, %.lr.ph.i5.i
  %.07.i.i = phi ptr [ %i.n, %.lr.ph.i5.i ], [ %.027.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.07.i.i, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !538
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 5
  tail call void @_ZSt13__adjust_heapIPZN11flexbuffers7Builder6EndMapEmE8TwoValuelS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_T0_SC_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.q, ptr noundef nonnull byval(%struct.TwoValue) align 8 %5, ptr %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.r = icmp sgt i64 %i.p, 32
  br i1 %i.r, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_SB_SB_T0_.exit, !llvm.loop !2695

.lr.ph56:                                         ; preds = %.lr.ph, %bb.b
  %.0152655 = phi i64 [ %i.ak, %bb.b ], [ %2, %.lr.ph ]
  %.02754 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.s = phi i64 [ %i.am, %bb.b ], [ %i.c, %.lr.ph ]
  %i.t = lshr i64 %i.s, 6
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %.02754, i64 -32
  tail call void @_ZSt22__move_median_to_firstIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_SB_SB_SB_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.u, ptr noundef nonnull %i.v, ptr %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph56
  %.013.i.i = phi ptr [ %.02754, %.lr.ph56 ], [ %.114.i.i, %bb.g ]
  %.0.i.i = phi ptr [ %i.e, %.lr.ph56 ], [ %8, %bb.g ]
  %i.w = load ptr, ptr %3, align 8, !tbaa !368    ; 4 uses
  %i.x = load i64, ptr %0, align 8, !tbaa !81     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit.i.i, %bb.d
  %.1.i.i = phi ptr [ %.0.i.i, %bb.d ], [ %7, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit.i.i ] ; 11 uses
  %i.z = load i64, ptr %.1.i.i, align 8, !tbaa !81
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(1) %i.y) #37 ; 2 uses
  %.not.i.i.i.i = icmp ne i32 %i.ab, 0
  %.not8.i.i.i.i = icmp eq ptr %.1.i.i, %0
  %or.cond.i.i.i.i = or i1 %.not8.i.i.i.i, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit.thread.i.i: ; preds = %bb.e
  store i8 1, ptr %i.f, align 1, !tbaa !473
  %.pre.i = load i64, ptr %0, align 8, !tbaa !81
  %6 = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  br label %.preheader.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit.i.i: ; preds = %bb.e
  %i.ac = icmp slt i32 %i.ab, 0
  %7 = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  br i1 %i.ac, label %bb.e, label %.preheader.i.i, !llvm.loop !2696

.preheader.i.i:                                   ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit.thread.i.i
  %8 = phi ptr [ %6, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit.thread.i.i ], [ %7, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit.i.i ]
  %i.ad = phi i64 [ %.pre.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit.thread.i.i ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ad
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit18.i.i, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit18.i.i ], [ %.013.i.i, %.preheader.i.i ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -32 ; 7 uses
  %i.af = load i64, ptr %.114.i.i, align 8, !tbaa !81
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.af
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(1) %i.ag) #37 ; 2 uses
  %.not.i.i15.i.i = icmp ne i32 %i.ah, 0
  %.not8.i.i16.i.i = icmp eq ptr %0, %.114.i.i
  %or.cond.i.i17.i.i = or i1 %.not8.i.i16.i.i, %.not.i.i15.i.i
  br i1 %or.cond.i.i17.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit18.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit18.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit18.thread.i.i: ; preds = %bb.f
  store i8 1, ptr %i.f, align 1, !tbaa !473
  br label %.loopexit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit18.i.i: ; preds = %bb.f
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %.loopexit.i.i, !llvm.loop !2697

.loopexit.i.i:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit18.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit18.thread.i.i
  %i.aj = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.aj, label %bb.g, label %_ZSt27__unguarded_partition_pivotIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEET_SB_SB_T0_.exit

bb.g:                                             ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %.1.i.i, i64 32, i1 false), !tbaa.struct !538
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.114.i.i, i64 32, i1 false), !tbaa.struct !538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.114.i.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !538
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.d, !llvm.loop !2698

_ZSt27__unguarded_partition_pivotIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEET_SB_SB_T0_.exit: ; preds = %.loopexit.i.i
  %i.ak = add nsw i64 %.0152655, -1               ; 3 uses
  tail call void @_ZSt16__introsort_loopIPZN11flexbuffers7Builder6EndMapEmE8TwoValuelN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_SB_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02754, i64 noundef %i.ak, ptr nonnull %3)
  %i.al = ptrtoint ptr %.1.i.i to i64
  %i.am = sub i64 %i.al, %i.a                     ; 3 uses
  %i.an = icmp sgt i64 %i.am, 512
  br i1 %i.an, label %bb.b, label %_ZSt14__partial_sortIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_SB_SB_T0_.exit, !llvm.loop !2693

_ZSt14__partial_sortIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_SB_SB_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEET_SB_SB_T0_.exit, %.lr.ph.i5.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPZN11flexbuffers7Builder6EndMapEmE8TwoValuelS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_T0_SC_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%struct.TwoValue) align 8 %3, ptr %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 49
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit
  %.031 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit ] ; 3 uses
  %i.e = shl i64 %.031, 1                         ; 2 uses
  %i.f = add i64 %i.e, 2                          ; 2 uses
  %.idx = shl nsw i64 %i.f, 5
  %i.g = getelementptr inbounds i8, ptr %0, i64 %.idx
  %.idx29 = shl i64 %.031, 6
  %i.h = getelementptr i8, ptr %0, i64 %.idx29
  %i.i = getelementptr i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %4, align 8, !tbaa !368    ; 2 uses
  %i.k = load i64, ptr %i.g, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i64, ptr %i.i, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(1) %i.n) #37 ; 2 uses
  %.not.i.i.not = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.not, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 1, !tbaa !473
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit: ; preds = %bb.b, %bb.c
  %i.p = icmp slt i32 %i.o, 0
  %i.q = or disjoint i64 %i.e, 1
  %spec.select = select i1 %i.p, i64 %i.q, i64 %i.f ; 4 uses
  %i.r = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select
  %i.s = getelementptr inbounds [32 x i8], ptr %0, i64 %.031
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !tbaa.struct !538
  %i.t = icmp slt i64 %spec.select, %i.b
  br i1 %i.t, label %bb.b, label %._crit_edge, !llvm.loop !2699

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit ] ; 5 uses
  %i.u = and i64 %2, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.w = add nsw i64 %2, -2
  %i.x = ashr exact i64 %i.w, 1
  %i.y = icmp eq i64 %.0.lcssa, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = shl nsw i64 %.0.lcssa, 1
  %i.aa = or disjoint i64 %i.z, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [32 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false), !tbaa.struct !538
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.127 = phi i64 [ %i.aa, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.035.0.copyload = load i64, ptr %3, align 8, !tbaa !81 ; 2 uses
  %i.ad = icmp sgt i64 %.127, %1
  br i1 %i.ad, label %.lr.ph.i, label %_ZSt11__push_heapIPZN11flexbuffers7Builder6EndMapEmE8TwoValuelS2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_T0_SC_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.01318.i = phi i64 [ %.019.i, %bb.g ], [ %.127, %bb.f ] ; 4 uses
  %.019.in.i = add nsw i64 %.01318.i, -1
  %.019.i = sdiv i64 %.019.in.i, 2                ; 4 uses
  %i.ae = getelementptr inbounds [32 x i8], ptr %0, i64 %.019.i ; 2 uses
  %i.af = load ptr, ptr %4, align 8, !tbaa !368   ; 2 uses
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !81
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.035.0.copyload
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(1) %i.ai) #37 ; 2 uses
  %.not.i.i.i.not = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.not, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_S4_EEbT_RT0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_S4_EEbT_RT0_.exit.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_S4_EEbT_RT0_.exit.thread.i: ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 49
  store i8 1, ptr %i.ak, align 1, !tbaa !473
  br label %_ZSt11__push_heapIPZN11flexbuffers7Builder6EndMapEmE8TwoValuelS2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_T0_SC_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_S4_EEbT_RT0_.exit.i: ; preds = %.lr.ph.i
  %i.al = icmp slt i32 %i.aj, 0
  br i1 %i.al, label %bb.g, label %_ZSt11__push_heapIPZN11flexbuffers7Builder6EndMapEmE8TwoValuelS2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_T0_SC_T1_RT2_.exit

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_S4_EEbT_RT0_.exit.i
  %i.am = getelementptr inbounds [32 x i8], ptr %0, i64 %.01318.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !tbaa.struct !538
  %i.an = icmp sgt i64 %.019.i, %1
  br i1 %i.an, label %.lr.ph.i, label %_ZSt11__push_heapIPZN11flexbuffers7Builder6EndMapEmE8TwoValuelS2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_T0_SC_T1_RT2_.exit, !llvm.loop !2700

_ZSt11__push_heapIPZN11flexbuffers7Builder6EndMapEmE8TwoValuelS2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_T0_SC_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_S4_EEbT_RT0_.exit.i, %bb.g, %bb.f, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_S4_EEbT_RT0_.exit.thread.i
  %.01315.i = phi i64 [ %.01318.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_S4_EEbT_RT0_.exit.thread.i ], [ %.127, %bb.f ], [ %.019.i, %bb.g ], [ %.01318.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_S4_EEbT_RT0_.exit.i ]
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = getelementptr inbounds [32 x i8], ptr %0, i64 %.01315.i ; 2 uses
  store i64 %.sroa.035.0.copyload, ptr %i.ao, align 8, !tbaa !81
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIPZN11flexbuffers7Builder6EndMapEmE8TwoValueN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6EndMapEmEUlRKS2_S8_E_EEEvT_SB_SB_SB_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #1 comdat {
bb.a:
  %5 = alloca %struct.TwoValue, align 8           ; 4 uses
  %6 = alloca %struct.TwoValue, align 8           ; 4 uses
  %7 = alloca %struct.TwoValue, align 8           ; 4 uses
  %8 = alloca %struct.TwoValue, align 8           ; 4 uses
  %9 = alloca %struct.TwoValue, align 8           ; 4 uses
  %10 = alloca %struct.TwoValue, align 8          ; 4 uses
  %i.a = load ptr, ptr %4, align 8, !tbaa !368    ; 9 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !81     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  %i.d = load i64, ptr %2, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d ; 2 uses
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.e) #37 ; 2 uses
  %.not.i.i = icmp ne i32 %i.f, 0
  %.not8.i.i = icmp eq ptr %1, %2
  %or.cond.i.i = or i1 %.not8.i.i, %.not.i.i
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit.thread: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 49
  store i8 1, ptr %i.g, align 1, !tbaa !473
  %.pre = load i64, ptr %1, align 8, !tbaa !81
  br label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit: ; preds = %bb.a
  %i.h = icmp slt i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit
  %i.i = load i64, ptr %3, align 8, !tbaa !81     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.i
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) %i.j) #37 ; 2 uses
  %.not.i.i22 = icmp ne i32 %i.k, 0
  %.not8.i.i23 = icmp eq ptr %2, %3
  %or.cond.i.i24 = or i1 %.not8.i.i23, %.not.i.i22
  br i1 %or.cond.i.i24, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit25, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit25.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN11flexbuffers7Builder6EndMapEmEUlRKZNS3_6EndMapEmE8TwoValueS6_E_EclIPS4_SA_EEbT_T0_.exit25.thread: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 49
  store i8 1, ptr %i.l, align 1, !tbaa !473
  %.pre43 = load i64, ptr %1, align 8, !tbaa !81
  %.pre44 = load i64, ptr %3, align 8, !tbaa !81
  br label %bb.d
end_hunk_0
