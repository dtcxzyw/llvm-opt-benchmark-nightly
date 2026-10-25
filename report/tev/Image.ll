Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Image?download=true
inline.NumInlined: 33261
inline.NumDeleted: 8209
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 139
begin_hunk_0_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeELb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb":bb.a
  %i.bs = icmp eq ptr %.021, %.024.ph             ; 2 uses
  br i1 %i.br, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  br i1 %i.bs, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread", label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %storemerge18.i = getelementptr inbounds nuw i8, ptr %.021, i64 96 ; 2 uses
  %.not19.i = icmp eq ptr %storemerge18.i, %.024.ph
  br i1 %.not19.i, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 25
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 49
  br label %bb.j

bb.j:                                             ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i", %.lr.ph.i
  %storemerge21.i = phi ptr [ %storemerge18.i, %.lr.ph.i ], [ %storemerge.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i" ] ; 6 uses
  %.pn20.i = phi ptr [ %.021, %.lr.ph.i ], [ %storemerge21.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i" ] ; 12 uses
  %i.cd = load i8, ptr %storemerge21.i, align 8   ; 2 uses
  %i.ce = trunc i8 %i.cd to i1                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 112
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 97
  %i.ci = select i1 %i.ce, ptr %i.cg, ptr %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 104
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = lshr i8 %i.cd, 1
  %i.cm = zext nneg i8 %i.cl to i64
  %i.cn = select i1 %i.ce, i64 %i.ck, i64 %i.cm   ; 2 uses
  %i.co = load i8, ptr %.pn20.i, align 8          ; 2 uses
  %i.cp = trunc i8 %i.co to i1                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 1
  %i.ct = select i1 %i.cp, ptr %i.cr, ptr %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = lshr i8 %i.co, 1
  %i.cx = zext nneg i8 %i.cw to i64
  %i.cy = select i1 %i.cp, i64 %i.cv, i64 %i.cx   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 %i.cn)
  %i.cz = tail call noundef i32 @memcmp(ptr noundef %i.ci, ptr noundef %i.ct, i64 noundef %.sroa.speculated.i.i.i.i.i) #44 ; 2 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.k, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i"

bb.k:                                             ; preds = %bb.j
  %i.db = icmp ult i64 %i.cn, %i.cy
  br i1 %i.db, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i": ; preds = %bb.j
  %i.dc = icmp slt i32 %i.cz, 0
  br i1 %i.dc, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i", %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull align 8 dereferenceable(96) %storemerge21.i, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %storemerge21.i, i8 0, i64 24, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 120 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i8 0, i64 24, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, i8 0, i64 24, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 168 ; 2 uses
  %i.dg = load <2 x ptr>, ptr %i.df, align 8, !tbaa !129
  store <2 x ptr> %i.dg, ptr %i.bv, align 8, !tbaa !129
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 184
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !129
  store ptr %i.di, ptr %i.bx, align 8, !tbaa !129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i8 0, i64 24, i1 false)
  %i.dj = load i8, ptr %9, align 8                ; 2 uses
  %i.dk = trunc i8 %i.dj to i1                    ; 2 uses
  %i.dl = load ptr, ptr %i.by, align 8
  %i.dm = select i1 %i.dk, ptr %i.dl, ptr %i.bz
  %i.dn = load i64, ptr %i.ca, align 8
  %i.do = lshr i8 %i.dj, 1
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = select i1 %i.dk, i64 %i.dn, i64 %i.dp   ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit21.i", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i"
  %.05.i = phi ptr [ %.pn20.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i" ], [ %i.fe, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit21.i" ] ; 17 uses
  %.0.i = phi ptr [ %storemerge21.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i" ], [ %.05.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit21.i" ] ; 12 uses
  %i.dr = load i8, ptr %.0.i, align 8
  %i.ds = trunc i8 %i.dr to i1
  br i1 %i.ds, label %bb.m, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !126
  %i.dv = load i64, ptr %.0.i, align 8
  %i.dw = and i64 %i.dv, -2
  tail call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dw) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i: ; preds = %bb.m, %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.0.i, ptr noundef nonnull align 8 dereferenceable(96) %.05.i, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %.05.i, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %.05.i, i64 1
  store i8 0, ptr %i.dx, align 1, !tbaa !126
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 5 uses
  %i.ea = load i8, ptr %i.dy, align 8
  %i.eb = trunc i8 %i.ea to i1
  br i1 %i.eb, label %bb.n, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i

bb.n:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !126
  %i.ee = load i64, ptr %i.dy, align 8
  %i.ef = and i64 %i.ee, -2
  tail call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.ef) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i: ; preds = %bb.n, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.dz, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.05.i, i64 25
  store i8 0, ptr %i.eg, align 1, !tbaa !126
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.05.i, i64 48 ; 5 uses
  %i.ej = load i8, ptr %i.eh, align 8
  %i.ek = trunc i8 %i.ej to i1
  br i1 %i.ek, label %bb.o, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i

bb.o:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !126
  %i.en = load i64, ptr %i.eh, align 8
  %i.eo = and i64 %i.en, -2
  tail call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eo) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i: ; preds = %bb.o, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.ei, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.05.i, i64 49
  store i8 0, ptr %i.ep, align 1, !tbaa !126
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i, i64 72 ; 4 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !130 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i.i, label %_ZN3tev13AttributeNodeaSEOS0_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i
  tail call void @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.eq, ptr noundef nonnull %i.er) #44, !inline_history !59
  %i.es = load ptr, ptr %i.eq, align 8, !tbaa !130 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i, i64 88
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !129
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = sub i64 %i.ev, %i.ew
  tail call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ex) #45
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, i8 0, i64 16, i1 false)
  br label %_ZN3tev13AttributeNodeaSEOS0_.exit.i

_ZN3tev13AttributeNodeaSEOS0_.exit.i:             ; preds = %bb.p, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.05.i, i64 72 ; 7 uses
  %i.fa = load <2 x ptr>, ptr %i.ez, align 8, !tbaa !129
  store <2 x ptr> %i.fa, ptr %i.eq, align 8, !tbaa !129
  %i.fb = getelementptr inbounds nuw i8, ptr %.05.i, i64 88
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !129
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i, i64 88
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i8 0, i64 24, i1 false)
  %.not18.i = icmp eq ptr %.05.i, %.021
  br i1 %.not18.i, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %_ZN3tev13AttributeNodeaSEOS0_.exit.i
  %i.fe = getelementptr inbounds i8, ptr %.05.i, i64 -96 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 8             ; 2 uses
  %i.fg = trunc i8 %i.ff to i1                    ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %.05.i, i64 -80
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds i8, ptr %.05.i, i64 -95
  %i.fk = select i1 %i.fg, ptr %i.fi, ptr %i.fj
  %i.fl = getelementptr inbounds i8, ptr %.05.i, i64 -88
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = lshr i8 %i.ff, 1
  %i.fo = zext nneg i8 %i.fn to i64
  %i.fp = select i1 %i.fg, i64 %i.fm, i64 %i.fo   ; 2 uses
  %.sroa.speculated.i.i.i.i19.i = tail call i64 @llvm.umin.i64(i64 %i.fp, i64 %i.dq)
  %i.fq = call noundef i32 @memcmp(ptr noundef %i.dm, ptr noundef %i.fk, i64 noundef %.sroa.speculated.i.i.i.i19.i) #44 ; 2 uses
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.r, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit21.i"

bb.r:                                             ; preds = %bb.q
  %i.fs = icmp ult i64 %i.dq, %i.fp
  br i1 %i.fs, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit21.i", label %.critedge.i

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit21.i": ; preds = %bb.r, %bb.q
  %.0.i.i.i.i20.i = phi i32 [ %i.fq, %bb.q ], [ -2147483648, %bb.r ]
  %i.ft = icmp slt i32 %.0.i.i.i.i20.i, 0
  br i1 %i.ft, label %bb.l, label %.critedge.i, !llvm.loop !3033

.critedge.i:                                      ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit21.i", %bb.r, %_ZN3tev13AttributeNodeaSEOS0_.exit.i
  %.05.lcssa.i = phi ptr [ %.05.i, %bb.r ], [ %.021, %_ZN3tev13AttributeNodeaSEOS0_.exit.i ], [ %.05.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit21.i" ] ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.05.lcssa.i, i64 80
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.lcssa.i, i64 88 ; 2 uses
  %i.fw = load i8, ptr %.05.lcssa.i, align 8
  %i.fx = trunc i8 %i.fw to i1
  br i1 %i.fx, label %bb.s, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i22.i

bb.s:                                             ; preds = %.critedge.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.05.lcssa.i, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !126
  %i.ga = load i64, ptr %.05.lcssa.i, align 8
  %i.gb = and i64 %i.ga, -2
  tail call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gb) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i22.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i22.i: ; preds = %bb.s, %.critedge.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.05.lcssa.i, ptr noundef nonnull align 8 dereferenceable(96) %9, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %9, align 8
  store i8 0, ptr %i.bz, align 1, !tbaa !126
  %i.gc = load i8, ptr %i.dz, align 8
  %i.gd = trunc i8 %i.gc to i1
  br i1 %i.gd, label %bb.t, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i23.i

bb.t:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i22.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.05.lcssa.i, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !126
  %i.gg = load i64, ptr %i.dz, align 8
  %i.gh = and i64 %i.gg, -2
  tail call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gh) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i23.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i23.i: ; preds = %bb.t, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i22.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.bt, align 8
  store i8 0, ptr %i.cb, align 1, !tbaa !126
  %i.gi = load i8, ptr %i.ei, align 8
  %i.gj = trunc i8 %i.gi to i1
  br i1 %i.gj, label %bb.u, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i24.i

bb.u:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i23.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.05.lcssa.i, i64 64
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !126
  %i.gm = load i64, ptr %i.ei, align 8
  %i.gn = and i64 %i.gm, -2
  tail call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gn) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i24.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i24.i: ; preds = %bb.u, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i23.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.bu, align 8
  store i8 0, ptr %i.cc, align 1, !tbaa !126
  %i.go = load ptr, ptr %i.ez, align 8, !tbaa !130 ; 2 uses
  %.not.i.i.i.i25.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i25.i, label %_ZN3tev13AttributeNodeD2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i24.i
  tail call void @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, ptr noundef nonnull %i.go) #44, !inline_history !59
  %i.gp = load ptr, ptr %i.ez, align 8, !tbaa !130 ; 2 uses
  %i.gq = load ptr, ptr %i.fv, align 8, !tbaa !129
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.gp to i64
  %i.gt = sub i64 %i.gr, %i.gs
  tail call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i8 0, i64 24, i1 false)
  br label %_ZN3tev13AttributeNodeD2Ev.exit.i

_ZN3tev13AttributeNodeD2Ev.exit.i:                ; preds = %bb.v, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i24.i
  %i.gu = load ptr, ptr %i.bv, align 8, !tbaa !130
  store ptr %i.gu, ptr %i.ez, align 8, !tbaa !130
  %i.gv = load ptr, ptr %i.bw, align 8, !tbaa !125
  store ptr %i.gv, ptr %i.fu, align 8, !tbaa !125
  %i.gw = load ptr, ptr %i.bx, align 8, !tbaa !129
  store ptr %i.gw, ptr %i.fv, align 8, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  br label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i": ; preds = %_ZN3tev13AttributeNodeD2Ev.exit.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i", %bb.k
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge21.i, i64 96 ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i, %.024.ph
  br i1 %.not.i, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread", label %bb.j, !llvm.loop !3034

bb.w:                                             ; preds = %bb.h
  br i1 %i.bs, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread", label %.preheader.i54

.preheader.i54:                                   ; preds = %bb.w
  %storemerge20.i = getelementptr inbounds nuw i8, ptr %.021, i64 96 ; 2 uses
  %.not21.i = icmp eq ptr %storemerge20.i, %.024.ph
  br i1 %.not21.i, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread", label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.preheader.i54
  %i.gx = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %8, i64 1 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %8, i64 25
  %i.hf = getelementptr inbounds nuw i8, ptr %8, i64 49
  br label %bb.x

bb.x:                                             ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i58", %.lr.ph.i55
  %storemerge23.i = phi ptr [ %storemerge20.i, %.lr.ph.i55 ], [ %storemerge.i59, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i58" ] ; 6 uses
  %.pn22.i = phi ptr [ %.021, %.lr.ph.i55 ], [ %storemerge23.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i58" ] ; 12 uses
  %i.hg = load i8, ptr %storemerge23.i, align 8   ; 2 uses
  %i.hh = trunc i8 %i.hg to i1                    ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 112
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 97
  %i.hl = select i1 %i.hh, ptr %i.hj, ptr %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 104
  %i.hn = load i64, ptr %i.hm, align 8
  %i.ho = lshr i8 %i.hg, 1
  %i.hp = zext nneg i8 %i.ho to i64
  %i.hq = select i1 %i.hh, i64 %i.hn, i64 %i.hp   ; 2 uses
  %i.hr = load i8, ptr %.pn22.i, align 8          ; 2 uses
  %i.hs = trunc i8 %i.hr to i1                    ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 1
  %i.hw = select i1 %i.hs, ptr %i.hu, ptr %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 8
  %i.hy = load i64, ptr %i.hx, align 8
  %i.hz = lshr i8 %i.hr, 1
  %i.ia = zext nneg i8 %i.hz to i64
  %i.ib = select i1 %i.hs, i64 %i.hy, i64 %i.ia   ; 2 uses
  %.sroa.speculated.i.i.i.i.i56 = tail call i64 @llvm.umin.i64(i64 %i.ib, i64 %i.hq)
  %i.ic = tail call noundef i32 @memcmp(ptr noundef %i.hl, ptr noundef %i.hw, i64 noundef %.sroa.speculated.i.i.i.i.i56) #44 ; 2 uses
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %bb.y, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i57"

bb.y:                                             ; preds = %bb.x
  %i.ie = icmp ult i64 %i.hq, %i.ib
  br i1 %i.ie, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i61", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i58"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i57": ; preds = %bb.x
  %i.if = icmp slt i32 %i.ic, 0
  br i1 %i.if, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i61", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i58"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i61": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i57", %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef nonnull align 8 dereferenceable(96) %storemerge23.i, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %storemerge23.i, i8 0, i64 24, i1 false)
  %i.ig = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 120 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noundef nonnull align 8 dereferenceable(24) %i.ig, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ig, i8 0, i64 24, i1 false)
  %i.ih = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gy, ptr noundef nonnull align 8 dereferenceable(24) %i.ih, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ih, i8 0, i64 24, i1 false)
  %i.ii = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 168 ; 2 uses
  %i.ij = load <2 x ptr>, ptr %i.ii, align 8, !tbaa !129
  store <2 x ptr> %i.ij, ptr %i.gz, align 8, !tbaa !129
  %i.ik = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 184
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !129
  store ptr %i.il, ptr %i.ha, align 8, !tbaa !129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ii, i8 0, i64 24, i1 false)
  %i.im = load i8, ptr %8, align 8                ; 2 uses
  %i.in = trunc i8 %i.im to i1                    ; 2 uses
  %i.io = load ptr, ptr %i.hb, align 8
  %i.ip = select i1 %i.in, ptr %i.io, ptr %i.hc
  %i.iq = load i64, ptr %i.hd, align 8
  %i.ir = lshr i8 %i.im, 1
  %i.is = zext nneg i8 %i.ir to i64
  %i.it = select i1 %i.in, i64 %i.iq, i64 %i.is   ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.i", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i61"
  %.05.i62 = phi ptr [ %.pn22.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i61" ], [ %i.kh, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.i" ] ; 21 uses
  %.0.i63 = phi ptr [ %storemerge23.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i61" ], [ %.05.i62, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.i" ] ; 12 uses
  %i.iu = load i8, ptr %.0.i63, align 8
  %i.iv = trunc i8 %i.iu to i1
  br i1 %i.iv, label %bb.aa, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i64

bb.aa:                                            ; preds = %bb.z
  %i.iw = getelementptr inbounds nuw i8, ptr %.0.i63, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !126
  %i.iy = load i64, ptr %.0.i63, align 8
  %i.iz = and i64 %i.iy, -2
  tail call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.iz) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i64

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i64: ; preds = %bb.aa, %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.0.i63, ptr noundef nonnull align 8 dereferenceable(96) %.05.i62, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %.05.i62, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %.05.i62, i64 1
  store i8 0, ptr %i.ja, align 1, !tbaa !126
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.i63, i64 24 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.05.i62, i64 24 ; 5 uses
  %i.jd = load i8, ptr %i.jb, align 8
  %i.je = trunc i8 %i.jd to i1
  br i1 %i.je, label %bb.ab, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i65

bb.ab:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i64
  %i.jf = getelementptr inbounds nuw i8, ptr %.0.i63, i64 40
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !126
  %i.jh = load i64, ptr %i.jb, align 8
  %i.ji = and i64 %i.jh, -2
  tail call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.ji) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i65

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i65: ; preds = %bb.ab, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jb, ptr noundef nonnull align 8 dereferenceable(24) %i.jc, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.jc, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %.05.i62, i64 25
  store i8 0, ptr %i.jj, align 1, !tbaa !126
  %i.jk = getelementptr inbounds nuw i8, ptr %.0.i63, i64 48 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.05.i62, i64 48 ; 5 uses
  %i.jm = load i8, ptr %i.jk, align 8
  %i.jn = trunc i8 %i.jm to i1
  br i1 %i.jn, label %bb.ac, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i66

bb.ac:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i65
  %i.jo = getelementptr inbounds nuw i8, ptr %.0.i63, i64 64
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !126
  %i.jq = load i64, ptr %i.jk, align 8
  %i.jr = and i64 %i.jq, -2
  tail call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.jr) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i66

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i66: ; preds = %bb.ac, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jk, ptr noundef nonnull align 8 dereferenceable(24) %i.jl, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.jl, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %.05.i62, i64 49
  store i8 0, ptr %i.js, align 1, !tbaa !126
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.i63, i64 72 ; 4 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !130 ; 2 uses
  %.not.i.i.i.i.i67 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i.i.i67, label %_ZN3tev13AttributeNodeaSEOS0_.exit.i68, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i66
  tail call void @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.jt, ptr noundef nonnull %i.ju) #44, !inline_history !59
  %i.jv = load ptr, ptr %i.jt, align 8, !tbaa !130 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.0.i63, i64 88
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !129
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  tail call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.ka) #45
  %i.kb = getelementptr inbounds nuw i8, ptr %.0.i63, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kb, i8 0, i64 16, i1 false)
  br label %_ZN3tev13AttributeNodeaSEOS0_.exit.i68

_ZN3tev13AttributeNodeaSEOS0_.exit.i68:           ; preds = %bb.ad, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i66
  %i.kc = getelementptr inbounds nuw i8, ptr %.05.i62, i64 72 ; 7 uses
  %i.kd = load <2 x ptr>, ptr %i.kc, align 8, !tbaa !129
  store <2 x ptr> %i.kd, ptr %i.jt, align 8, !tbaa !129
  %i.ke = getelementptr inbounds nuw i8, ptr %.05.i62, i64 88
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !129
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.i63, i64 88
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kc, i8 0, i64 24, i1 false)
  %i.kh = getelementptr inbounds i8, ptr %.05.i62, i64 -96 ; 2 uses
  %i.ki = load i8, ptr %i.kh, align 8             ; 2 uses
  %i.kj = trunc i8 %i.ki to i1                    ; 2 uses
  %i.kk = getelementptr inbounds i8, ptr %.05.i62, i64 -80
  %i.kl = load ptr, ptr %i.kk, align 8
  %i.km = getelementptr inbounds i8, ptr %.05.i62, i64 -95
  %i.kn = select i1 %i.kj, ptr %i.kl, ptr %i.km
  %i.ko = getelementptr inbounds i8, ptr %.05.i62, i64 -88
  %i.kp = load i64, ptr %i.ko, align 8
  %i.kq = lshr i8 %i.ki, 1
  %i.kr = zext nneg i8 %i.kq to i64
  %i.ks = select i1 %i.kj, i64 %i.kp, i64 %i.kr   ; 2 uses
  %.sroa.speculated.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %i.ks, i64 %i.it)
  %i.kt = call noundef i32 @memcmp(ptr noundef %i.ip, ptr noundef %i.kn, i64 noundef %.sroa.speculated.i.i.i.i15.i) #44 ; 2 uses
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %bb.ae, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.i"

bb.ae:                                            ; preds = %_ZN3tev13AttributeNodeaSEOS0_.exit.i68
  %i.kv = icmp ult i64 %i.it, %i.ks
  br i1 %i.kv, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.thread.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.i": ; preds = %bb.ae, %_ZN3tev13AttributeNodeaSEOS0_.exit.i68
  %.0.i.i.i.i16.i = phi i32 [ %i.kt, %_ZN3tev13AttributeNodeaSEOS0_.exit.i68 ], [ -2147483648, %bb.ae ]
  %i.kw = icmp slt i32 %.0.i.i.i.i16.i, 0
  br i1 %i.kw, label %bb.z, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.thread.i", !llvm.loop !3035

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.thread.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.i", %bb.ae
  %i.kx = getelementptr inbounds nuw i8, ptr %.05.i62, i64 88 ; 2 uses
  %i.ky = load i8, ptr %.05.i62, align 8
  %i.kz = trunc i8 %i.ky to i1
  br i1 %i.kz, label %bb.af, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i18.i

bb.af:                                            ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.thread.i"
  %i.la = getelementptr inbounds nuw i8, ptr %.05.i62, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !126
  %i.lc = load i64, ptr %.05.i62, align 8
  %i.ld = and i64 %i.lc, -2
  tail call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.ld) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i18.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i18.i: ; preds = %bb.af, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit17.thread.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.05.i62, ptr noundef nonnull align 8 dereferenceable(96) %8, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %8, align 8
  store i8 0, ptr %i.hc, align 1, !tbaa !126
  %i.le = load i8, ptr %i.jc, align 8
  %i.lf = trunc i8 %i.le to i1
  br i1 %i.lf, label %bb.ag, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i19.i

bb.ag:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i18.i
  %i.lg = getelementptr inbounds nuw i8, ptr %.05.i62, i64 40
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !126
  %i.li = load i64, ptr %i.jc, align 8
  %i.lj = and i64 %i.li, -2
  tail call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.lj) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i19.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i19.i: ; preds = %bb.ag, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i18.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jc, ptr noundef nonnull align 8 dereferenceable(24) %i.gx, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.gx, align 8
  store i8 0, ptr %i.he, align 1, !tbaa !126
  %i.lk = load i8, ptr %i.jl, align 8
  %i.ll = trunc i8 %i.lk to i1
  br i1 %i.ll, label %bb.ah, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i20.i

bb.ah:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i19.i
  %i.lm = getelementptr inbounds nuw i8, ptr %.05.i62, i64 64
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !126
  %i.lo = load i64, ptr %i.jl, align 8
  %i.lp = and i64 %i.lo, -2
  tail call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lp) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i20.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i20.i: ; preds = %bb.ah, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i19.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jl, ptr noundef nonnull align 8 dereferenceable(24) %i.gy, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.gy, align 8
  store i8 0, ptr %i.hf, align 1, !tbaa !126
  %i.lq = load ptr, ptr %i.kc, align 8, !tbaa !130 ; 2 uses
  %.not.i.i.i.i21.i = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i.i21.i, label %_ZN3tev13AttributeNodeD2Ev.exit.i69, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i20.i
  tail call void @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.kc, ptr noundef nonnull %i.lq) #44, !inline_history !59
  %i.lr = load ptr, ptr %i.kc, align 8, !tbaa !130 ; 2 uses
  %i.ls = load ptr, ptr %i.kx, align 8, !tbaa !129
  %i.lt = ptrtoint ptr %i.ls to i64
  %i.lu = ptrtoint ptr %i.lr to i64
  %i.lv = sub i64 %i.lt, %i.lu
  tail call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lv) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kc, i8 0, i64 24, i1 false)
  br label %_ZN3tev13AttributeNodeD2Ev.exit.i69

_ZN3tev13AttributeNodeD2Ev.exit.i69:              ; preds = %bb.ai, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i20.i
  %i.lw = load <2 x ptr>, ptr %i.gz, align 8, !tbaa !129
  store <2 x ptr> %i.lw, ptr %i.kc, align 8, !tbaa !129
  %i.lx = load ptr, ptr %i.ha, align 8, !tbaa !129
  store ptr %i.lx, ptr %i.kx, align 8, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  br label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i58"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i58": ; preds = %_ZN3tev13AttributeNodeD2Ev.exit.i69, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i57", %bb.y
  %storemerge.i59 = getelementptr inbounds nuw i8, ptr %storemerge23.i, i64 96 ; 2 uses
  %.not.i60 = icmp eq ptr %storemerge.i59, %.024.ph
  br i1 %.not.i60, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread", label %bb.x, !llvm.loop !3036

bb.aj:                                            ; preds = %bb.g
  %i.ly = icmp eq i64 %.046, 0
  br i1 %i.ly, label %bb.ak, label %bb.cc

bb.ak:                                            ; preds = %bb.aj
  %i.lz = add nsw i64 %i.af, -2
  %i.ma = lshr i64 %i.lz, 1                       ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.mg = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.mh = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.al

bb.al:                                            ; preds = %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_OT0_NS_15iterator_traitsISC_E15difference_typeESC_.exit", %bb.ak
  %.01.i.i.i = phi i64 [ %i.ma, %bb.ak ], [ %i.sd, %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_OT0_NS_15iterator_traitsISC_E15difference_typeESC_.exit" ] ; 4 uses
  %i.mi = getelementptr inbounds nuw [96 x i8], ptr %.021, i64 %.01.i.i.i ; 11 uses
  %i.mj = shl nsw i64 %.01.i.i.i, 1               ; 2 uses
  %i.mk = or disjoint i64 %i.mj, 1                ; 4 uses
  %i.ml = getelementptr inbounds [96 x i8], ptr %.021, i64 %i.mk ; 11 uses
  %i.mm = add nsw i64 %i.mj, 2                    ; 2 uses
  %i.mn = icmp slt i64 %i.mm, %i.af
  br i1 %i.mn, label %bb.am, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i111"

bb.am:                                            ; preds = %bb.al
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 96 ; 2 uses
  %i.mp = load i8, ptr %i.ml, align 8             ; 2 uses
  %i.mq = trunc i8 %i.mp to i1                    ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ml, i64 1
  %i.mu = select i1 %i.mq, ptr %i.ms, ptr %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mw = load i64, ptr %i.mv, align 8
  %i.mx = lshr i8 %i.mp, 1
  %i.my = zext nneg i8 %i.mx to i64
  %i.mz = select i1 %i.mq, i64 %i.mw, i64 %i.my   ; 2 uses
  %i.na = load i8, ptr %i.mo, align 8             ; 2 uses
  %i.nb = trunc i8 %i.na to i1                    ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ml, i64 112
  %i.nd = load ptr, ptr %i.nc, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ml, i64 97
  %i.nf = select i1 %i.nb, ptr %i.nd, ptr %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ml, i64 104
  %i.nh = load i64, ptr %i.ng, align 8
  %i.ni = lshr i8 %i.na, 1
  %i.nj = zext nneg i8 %i.ni to i64
  %i.nk = select i1 %i.nb, i64 %i.nh, i64 %i.nj   ; 2 uses
  %.sroa.speculated.i.i.i.i.i120 = tail call i64 @llvm.umin.i64(i64 %i.nk, i64 %i.mz)
  %i.nl = tail call noundef i32 @memcmp(ptr noundef %i.mu, ptr noundef %i.nf, i64 noundef %.sroa.speculated.i.i.i.i.i120) #44 ; 2 uses
  %i.nm = icmp eq i32 %i.nl, 0
  br i1 %i.nm, label %bb.an, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i121"

bb.an:                                            ; preds = %bb.am
  %i.nn = icmp ult i64 %i.mz, %i.nk
  br i1 %i.nn, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread15.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i111"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i121": ; preds = %bb.am
  %i.no = icmp slt i32 %i.nl, 0
  br i1 %i.no, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread15.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i111"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread15.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i121", %bb.an
  br label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i111"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i111": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread15.i", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i121", %bb.an, %bb.al
  %.010.i = phi ptr [ %i.mo, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread15.i" ], [ %i.ml, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i121" ], [ %i.ml, %bb.al ], [ %i.ml, %bb.an ] ; 5 uses
  %.0.i112 = phi i64 [ %i.mm, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread15.i" ], [ %i.mk, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i121" ], [ %i.mk, %bb.al ], [ %i.mk, %bb.an ]
  %i.np = load i8, ptr %.010.i, align 8           ; 2 uses
  %i.nq = trunc i8 %i.np to i1                    ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %i.ns = load ptr, ptr %i.nr, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %.010.i, i64 1
  %i.nu = select i1 %i.nq, ptr %i.ns, ptr %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %i.nw = load i64, ptr %i.nv, align 8
  %i.nx = lshr i8 %i.np, 1
  %i.ny = zext nneg i8 %i.nx to i64
  %i.nz = select i1 %i.nq, i64 %i.nw, i64 %i.ny   ; 2 uses
  %i.oa = load i8, ptr %i.mi, align 8             ; 2 uses
  %i.ob = trunc i8 %i.oa to i1                    ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.mi, i64 1
  %i.of = select i1 %i.ob, ptr %i.od, ptr %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.oh = load i64, ptr %i.og, align 8
  %i.oi = lshr i8 %i.oa, 1
  %i.oj = zext nneg i8 %i.oi to i64
  %i.ok = select i1 %i.ob, i64 %i.oh, i64 %i.oj   ; 2 uses
  %.sroa.speculated.i.i.i.i28.i = tail call i64 @llvm.umin.i64(i64 %i.ok, i64 %i.nz)
  %i.ol = tail call noundef i32 @memcmp(ptr noundef %i.nu, ptr noundef %i.of, i64 noundef %.sroa.speculated.i.i.i.i28.i) #44 ; 2 uses
  %i.om = icmp eq i32 %i.ol, 0
  br i1 %i.om, label %bb.ao, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.i"

bb.ao:                                            ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i111"
  %i.on = icmp ult i64 %i.nz, %i.ok
  br i1 %i.on, label %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_OT0_NS_15iterator_traitsISC_E15difference_typeESC_.exit", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.thread.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i111"
  %i.oo = icmp slt i32 %i.ol, 0
  br i1 %i.oo, label %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_OT0_NS_15iterator_traitsISC_E15difference_typeESC_.exit", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.thread.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.thread.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.i", %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(96) %i.mi, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.mi, i8 0, i64 24, i1 false)
  %i.op = getelementptr inbounds nuw i8, ptr %i.mi, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mb, ptr noundef nonnull align 8 dereferenceable(24) %i.op, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.op, i8 0, i64 24, i1 false)
  %i.oq = getelementptr inbounds nuw i8, ptr %i.mi, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mc, ptr noundef nonnull align 8 dereferenceable(24) %i.oq, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oq, i8 0, i64 24, i1 false)
  %i.or = getelementptr inbounds nuw i8, ptr %i.mi, i64 72 ; 2 uses
  %i.os = load <2 x ptr>, ptr %i.or, align 8, !tbaa !129
  store <2 x ptr> %i.os, ptr %i.md, align 8, !tbaa !129
  %i.ot = getelementptr inbounds nuw i8, ptr %i.mi, i64 88
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !129
  store ptr %i.ou, ptr %i.me, align 8, !tbaa !129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.or, i8 0, i64 24, i1 false)
  %i.ov = load i8, ptr %4, align 8                ; 2 uses
  %i.ow = trunc i8 %i.ov to i1                    ; 2 uses
  %i.ox = load ptr, ptr %i.mf, align 8
  %i.oy = select i1 %i.ow, ptr %i.ox, ptr %i.mg
  %i.oz = load i64, ptr %i.mh, align 8
  %i.pa = lshr i8 %i.ov, 1
  %i.pb = zext nneg i8 %i.pa to i64
  %i.pc = select i1 %i.ow, i64 %i.oz, i64 %i.pb   ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread.i", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.thread.i"
  %.013.i = phi ptr [ %i.mi, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.thread.i" ], [ %.111.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread.i" ]
  %.111.i = phi ptr [ %.010.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.thread.i" ], [ %.212.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread.i" ] ; 13 uses
  %.1.i113 = phi i64 [ %.0.i112, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.thread.i" ], [ %.2.i114, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread.i" ] ; 2 uses
  %i.pd = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN3tev13AttributeNodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(96) %.013.i, ptr noundef nonnull align 8 dereferenceable(96) %.111.i) #44 ; 0 uses
  %i.pe = icmp slt i64 %i.ma, %.1.i113
  br i1 %i.pe, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit36.thread.i", label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.pf = shl nsw i64 %.1.i113, 1                 ; 2 uses
  %i.pg = or disjoint i64 %i.pf, 1                ; 4 uses
  %i.ph = getelementptr inbounds [96 x i8], ptr %.021, i64 %i.pg ; 11 uses
  %i.pi = add nsw i64 %i.pf, 2                    ; 2 uses
  %i.pj = icmp slt i64 %i.pi, %i.af
  br i1 %i.pj, label %bb.ar, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread.i"

bb.ar:                                            ; preds = %bb.aq
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 96 ; 2 uses
  %i.pl = load i8, ptr %i.ph, align 8             ; 2 uses
  %i.pm = trunc i8 %i.pl to i1                    ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %i.po = load ptr, ptr %i.pn, align 8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ph, i64 1
  %i.pq = select i1 %i.pm, ptr %i.po, ptr %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.ps = load i64, ptr %i.pr, align 8
  %i.pt = lshr i8 %i.pl, 1
  %i.pu = zext nneg i8 %i.pt to i64
  %i.pv = select i1 %i.pm, i64 %i.ps, i64 %i.pu   ; 2 uses
  %i.pw = load i8, ptr %i.pk, align 8             ; 2 uses
  %i.px = trunc i8 %i.pw to i1                    ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.ph, i64 112
  %i.pz = load ptr, ptr %i.py, align 8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ph, i64 97
  %i.qb = select i1 %i.px, ptr %i.pz, ptr %i.qa
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ph, i64 104
  %i.qd = load i64, ptr %i.qc, align 8
  %i.qe = lshr i8 %i.pw, 1
  %i.qf = zext nneg i8 %i.qe to i64
  %i.qg = select i1 %i.px, i64 %i.qd, i64 %i.qf   ; 2 uses
  %.sroa.speculated.i.i.i.i31.i = tail call i64 @llvm.umin.i64(i64 %i.qg, i64 %i.pv)
  %i.qh = tail call noundef i32 @memcmp(ptr noundef %i.pq, ptr noundef %i.qb, i64 noundef %.sroa.speculated.i.i.i.i31.i) #44 ; 2 uses
  %i.qi = icmp eq i32 %i.qh, 0
  br i1 %i.qi, label %bb.as, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.i"

bb.as:                                            ; preds = %bb.ar
  %i.qj = icmp ult i64 %i.pv, %i.qg
  br i1 %i.qj, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread23.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.i": ; preds = %bb.ar
  %i.qk = icmp slt i32 %i.qh, 0
  br i1 %i.qk, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread23.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread23.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.i", %bb.as
  br label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread23.i", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.i", %bb.as, %bb.aq
  %.212.i = phi ptr [ %i.pk, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread23.i" ], [ %i.ph, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.i" ], [ %i.ph, %bb.aq ], [ %i.ph, %bb.as ] ; 5 uses
  %.2.i114 = phi i64 [ %i.pi, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread23.i" ], [ %i.pg, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.i" ], [ %i.pg, %bb.aq ], [ %i.pg, %bb.as ]
  %i.ql = load i8, ptr %.212.i, align 8           ; 2 uses
  %i.qm = trunc i8 %i.ql to i1                    ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.212.i, i64 16
  %i.qo = load ptr, ptr %i.qn, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %.212.i, i64 1
  %i.qq = select i1 %i.qm, ptr %i.qo, ptr %i.qp
  %i.qr = getelementptr inbounds nuw i8, ptr %.212.i, i64 8
  %i.qs = load i64, ptr %i.qr, align 8
  %i.qt = lshr i8 %i.ql, 1
  %i.qu = zext nneg i8 %i.qt to i64
  %i.qv = select i1 %i.qm, i64 %i.qs, i64 %i.qu   ; 2 uses
  %.sroa.speculated.i.i.i.i34.i = tail call i64 @llvm.umin.i64(i64 %i.pc, i64 %i.qv)
  %i.qw = call noundef i32 @memcmp(ptr noundef %i.qq, ptr noundef %i.oy, i64 noundef %.sroa.speculated.i.i.i.i34.i) #44 ; 2 uses
  %i.qx = icmp eq i32 %i.qw, 0
  %10 = icmp ult i64 %i.qv, %i.pc
  %or.cond.i114 = select i1 %i.qx, i1 %10, i1 false
  %11 = icmp slt i32 %i.qw, 0
  %or.cond39.i = or i1 %11, %or.cond.i114
  br i1 %or.cond39.i, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit36.thread.i", label %bb.ap, !llvm.loop !3037

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit36.thread.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit33.thread.i", %bb.ap
  %i.qy = load i8, ptr %.111.i, align 8
  %i.qz = trunc i8 %i.qy to i1
  br i1 %i.qz, label %bb.at, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i115

bb.at:                                            ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit36.thread.i"
  %i.ra = getelementptr inbounds nuw i8, ptr %.111.i, i64 16
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !126
  %i.rc = load i64, ptr %.111.i, align 8
  %i.rd = and i64 %i.rc, -2
  tail call void @_ZdlPvm(ptr noundef %i.rb, i64 noundef %i.rd) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i115

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i115: ; preds = %bb.at, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit36.thread.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.111.i, ptr noundef nonnull align 8 dereferenceable(96) %4, i64 24, i1 false), !tbaa.struct !431
  %i.re = getelementptr inbounds nuw i8, ptr %.111.i, i64 24 ; 3 uses
  %i.rf = load i8, ptr %i.re, align 8
  %i.rg = trunc i8 %i.rf to i1
  br i1 %i.rg, label %bb.au, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i116

bb.au:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i115
  %i.rh = getelementptr inbounds nuw i8, ptr %.111.i, i64 40
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !126
  %i.rj = load i64, ptr %i.re, align 8
  %i.rk = and i64 %i.rj, -2
  tail call void @_ZdlPvm(ptr noundef %i.ri, i64 noundef %i.rk) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i116

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i116: ; preds = %bb.au, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.re, ptr noundef nonnull align 8 dereferenceable(24) %i.mb, i64 24, i1 false), !tbaa.struct !431
  %i.rl = getelementptr inbounds nuw i8, ptr %.111.i, i64 48 ; 3 uses
  %i.rm = load i8, ptr %i.rl, align 8
  %i.rn = trunc i8 %i.rm to i1
  br i1 %i.rn, label %bb.av, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i117

bb.av:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i116
  %i.ro = getelementptr inbounds nuw i8, ptr %.111.i, i64 64
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !126
  %i.rq = load i64, ptr %i.rl, align 8
  %i.rr = and i64 %i.rq, -2
  tail call void @_ZdlPvm(ptr noundef %i.rp, i64 noundef %i.rr) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i117

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i117: ; preds = %bb.av, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rl, ptr noundef nonnull align 8 dereferenceable(24) %i.mc, i64 24, i1 false), !tbaa.struct !431
  %i.rs = getelementptr inbounds nuw i8, ptr %.111.i, i64 72 ; 5 uses
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !130 ; 2 uses
  %.not.i.i.i.i.i118 = icmp eq ptr %i.rt, null
  br i1 %.not.i.i.i.i.i118, label %_ZN3tev13AttributeNodeD2Ev.exit.i119, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i117
  tail call void @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.rs, ptr noundef nonnull %i.rt) #44, !inline_history !59
  %i.ru = load ptr, ptr %i.rs, align 8, !tbaa !130 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.111.i, i64 88
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !129
  %i.rx = ptrtoint ptr %i.rw to i64
  %i.ry = ptrtoint ptr %i.ru to i64
  %i.rz = sub i64 %i.rx, %i.ry
  tail call void @_ZdlPvm(ptr noundef %i.ru, i64 noundef %i.rz) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rs, i8 0, i64 24, i1 false)
  br label %_ZN3tev13AttributeNodeD2Ev.exit.i119

_ZN3tev13AttributeNodeD2Ev.exit.i119:             ; preds = %bb.aw, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i117
  %i.sa = load <2 x ptr>, ptr %i.md, align 8, !tbaa !129
  store <2 x ptr> %i.sa, ptr %i.rs, align 8, !tbaa !129
  %i.sb = load ptr, ptr %i.me, align 8, !tbaa !129
  %i.sc = getelementptr inbounds nuw i8, ptr %.111.i, i64 88
  store ptr %i.sb, ptr %i.sc, align 8, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_OT0_NS_15iterator_traitsISC_E15difference_typeESC_.exit"

"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_OT0_NS_15iterator_traitsISC_E15difference_typeESC_.exit": ; preds = %bb.ao, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit30.i", %_ZN3tev13AttributeNodeD2Ev.exit.i119
  %i.sd = add nsw i64 %.01.i.i.i, -1
  %.not.i.i.i = icmp eq i64 %.01.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %bb.al, !llvm.loop !3038

.lr.ph.i.i.i:                                     ; preds = %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_OT0_NS_15iterator_traitsISC_E15difference_typeESC_.exit"
  %i.se = udiv exact i64 %i.ae, 96
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.021, i64 1
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.021, i64 2
  %i.sf = getelementptr inbounds nuw i8, ptr %.021, i64 24 ; 2 uses
  %.sroa.11.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.021, i64 25
  %.sroa.12.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.021, i64 26
  %i.sg = getelementptr inbounds nuw i8, ptr %.021, i64 48 ; 2 uses
  %.sroa.16.48..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.021, i64 49
  %.sroa.17.48..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.021, i64 50
  %i.sh = getelementptr inbounds nuw i8, ptr %.021, i64 72 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.021, i64 80
  %i.sj = getelementptr inbounds nuw i8, ptr %.021, i64 88
  %i.sk = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.sn = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.so = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.sp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.sq = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.sr = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.ax

bb.ax:                                            ; preds = %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE.exit.i.i.i", %.lr.ph.i.i.i
  %.042.i.i.i = phi i64 [ %i.se, %.lr.ph.i.i.i ], [ %i.acy, %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE.exit.i.i.i" ] ; 4 uses
  %.01341.i.i.i = phi ptr [ %.024.ph, %.lr.ph.i.i.i ], [ %i.vw, %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE.exit.i.i.i" ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i.i.i)
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %.021, align 8 ; 2 uses
  %.sroa.6.0.copyload.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx.i.i.i, align 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.7.i.i.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.7.0..sroa_idx.i.i.i, i64 22, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.021, i8 0, i64 24, i1 false)
  %.sroa.77.24.copyload.i.i.i = load i8, ptr %i.sf, align 8 ; 2 uses
  %.sroa.11.24.copyload.i.i.i = load i8, ptr %.sroa.11.24..sroa_idx.i.i.i, align 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.12.i.i.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.12.24..sroa_idx.i.i.i, i64 22, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sf, i8 0, i64 24, i1 false)
  %.sroa.1216.48.copyload.i.i.i = load i8, ptr %i.sg, align 8 ; 2 uses
  %.sroa.16.48.copyload.i.i.i = load i8, ptr %.sroa.16.48..sroa_idx.i.i.i, align 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.17.i.i.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.17.48..sroa_idx.i.i.i, i64 22, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sg, i8 0, i64 24, i1 false)
  %i.ss = load ptr, ptr %i.sh, align 8, !tbaa !130 ; 2 uses
  %i.st = load ptr, ptr %i.si, align 8, !tbaa !125 ; 2 uses
  %i.su = load ptr, ptr %i.sj, align 8, !tbaa !129 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sh, i8 0, i64 24, i1 false)
  %i.sv = add nsw i64 %.042.i.i.i, -2
  %i.sw = lshr i64 %i.sv, 1
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN3tev13AttributeNodeaSEOS0_.exit18.i.i.i, %bb.ax
  %.04.i.i.i.i.i = phi ptr [ %.021, %bb.ax ], [ %.15.i.i.i.i.i, %_ZN3tev13AttributeNodeaSEOS0_.exit18.i.i.i ] ; 12 uses
  %.0.i.i.i.i.i = phi i64 [ 0, %bb.ax ], [ %.1.i.i.i.i.i, %_ZN3tev13AttributeNodeaSEOS0_.exit18.i.i.i ] ; 2 uses
  %i.sx = getelementptr [96 x i8], ptr %.04.i.i.i.i.i, i64 %.0.i.i.i.i.i ; 8 uses
  %i.sy = getelementptr i8, ptr %i.sx, i64 96     ; 4 uses
  %i.sz = shl nsw i64 %.0.i.i.i.i.i, 1            ; 2 uses
  %i.ta = or disjoint i64 %i.sz, 1                ; 3 uses
  %i.tb = add nsw i64 %i.sz, 2                    ; 2 uses
  %i.tc = icmp slt i64 %i.tb, %.042.i.i.i
  br i1 %i.tc, label %bb.az, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i.i.i.i.i"

bb.az:                                            ; preds = %bb.ay
  %i.td = getelementptr i8, ptr %i.sx, i64 192    ; 2 uses
  %i.te = load i8, ptr %i.sy, align 8             ; 2 uses
  %i.tf = trunc i8 %i.te to i1                    ; 2 uses
  %i.tg = getelementptr i8, ptr %i.sx, i64 112
  %i.th = load ptr, ptr %i.tg, align 8
  %i.ti = getelementptr i8, ptr %i.sx, i64 97
  %i.tj = select i1 %i.tf, ptr %i.th, ptr %i.ti
  %i.tk = getelementptr i8, ptr %i.sx, i64 104
  %i.tl = load i64, ptr %i.tk, align 8
  %i.tm = lshr i8 %i.te, 1
  %i.tn = zext nneg i8 %i.tm to i64
  %i.to = select i1 %i.tf, i64 %i.tl, i64 %i.tn   ; 2 uses
  %i.tp = load i8, ptr %i.td, align 8             ; 2 uses
  %i.tq = trunc i8 %i.tp to i1                    ; 2 uses
  %i.tr = getelementptr i8, ptr %i.sx, i64 208
  %i.ts = load ptr, ptr %i.tr, align 8
  %i.tt = getelementptr i8, ptr %i.sx, i64 193
  %i.tu = select i1 %i.tq, ptr %i.ts, ptr %i.tt
  %i.tv = getelementptr i8, ptr %i.sx, i64 200
  %i.tw = load i64, ptr %i.tv, align 8
  %i.tx = lshr i8 %i.tp, 1
  %i.ty = zext nneg i8 %i.tx to i64
  %i.tz = select i1 %i.tq, i64 %i.tw, i64 %i.ty   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.tz, i64 %i.to)
  %i.ua = tail call noundef i32 @memcmp(ptr noundef %i.tj, ptr noundef %i.tu, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #44 ; 2 uses
  %i.ub = icmp eq i32 %i.ua, 0
  br i1 %i.ub, label %bb.ba, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i.i.i.i.i"

bb.ba:                                            ; preds = %bb.az
  %i.uc = icmp ult i64 %i.to, %i.tz
  br i1 %i.uc, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i.i.i.i.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i.i.i.i.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i.i.i.i.i": ; preds = %bb.az
  %i.ud = icmp slt i32 %i.ua, 0
  br i1 %i.ud, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i.i.i.i.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i.i.i.i.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i.i.i.i.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i.i.i.i.i", %bb.ba
  br label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i.i.i.i.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i.i.i.i.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i.i.i.i.i", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i.i.i.i.i", %bb.ba, %bb.ay
  %.15.i.i.i.i.i = phi ptr [ %i.td, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i.i.i.i.i" ], [ %i.sy, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i.i.i.i.i" ], [ %i.sy, %bb.ay ], [ %i.sy, %bb.ba ] ; 33 uses
  %.1.i.i.i.i.i = phi i64 [ %i.tb, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread7.i.i.i.i.i" ], [ %i.ta, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i.i.i.i.i" ], [ %i.ta, %bb.ay ], [ %i.ta, %bb.ba ] ; 2 uses
  %i.ue = load i8, ptr %.04.i.i.i.i.i, align 8
  %i.uf = trunc i8 %i.ue to i1
  br i1 %i.uf, label %bb.bb, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i14.i.i.i

bb.bb:                                            ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i.i.i.i.i"
  %i.ug = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 16
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !126
  %i.ui = load i64, ptr %.04.i.i.i.i.i, align 8
  %i.uj = and i64 %i.ui, -2
  tail call void @_ZdlPvm(ptr noundef %i.uh, i64 noundef %i.uj) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i14.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i14.i.i.i: ; preds = %bb.bb, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i.i.i.i.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.04.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.15.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %.15.i.i.i.i.i, align 8
  %i.uk = getelementptr inbounds nuw i8, ptr %.15.i.i.i.i.i, i64 1
  store i8 0, ptr %i.uk, align 1, !tbaa !126
  %i.ul = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 24 ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %.15.i.i.i.i.i, i64 24 ; 7 uses
  %i.un = load i8, ptr %i.ul, align 8
  %i.uo = trunc i8 %i.un to i1
  br i1 %i.uo, label %bb.bc, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i15.i.i.i
end_hunk_0
begin_hunk_1_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeELb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb":bb.a

bb.bo:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i15.i.i.i.i
  tail call void @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.xs, ptr noundef nonnull %i.xt) #44, !inline_history !59
  %i.xu = load ptr, ptr %i.xs, align 8, !tbaa !130 ; 2 uses
  %i.xv = getelementptr inbounds i8, ptr %.01341.i.i.i, i64 -8
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !129
  %i.xx = ptrtoint ptr %i.xw to i64
  %i.xy = ptrtoint ptr %i.xu to i64
  %i.xz = sub i64 %i.xx, %i.xy
  tail call void @_ZdlPvm(ptr noundef %i.xu, i64 noundef %i.xz) #45
  br label %_ZN3tev13AttributeNodeaSEOS0_.exit17.i.i.i.i

_ZN3tev13AttributeNodeaSEOS0_.exit17.i.i.i.i:     ; preds = %bb.bo, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i15.i.i.i.i
  store ptr %i.ss, ptr %i.xs, align 8, !tbaa !130
  %i.ya = getelementptr inbounds i8, ptr %.01341.i.i.i, i64 -16
  store ptr %i.st, ptr %i.ya, align 8, !tbaa !125
  %i.yb = getelementptr inbounds i8, ptr %.01341.i.i.i, i64 -8
  store ptr %i.su, ptr %i.yb, align 8, !tbaa !129
  %i.yc = ptrtoint ptr %i.wx to i64
  %i.yd = sub i64 %i.yc, %i.ad                    ; 2 uses
  %i.ye = icmp sgt i64 %i.yd, 96
  br i1 %i.ye, label %bb.bp, label %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE.exit.i.i.i"

bb.bp:                                            ; preds = %_ZN3tev13AttributeNodeaSEOS0_.exit17.i.i.i.i
  %i.yf = udiv exact i64 %i.yd, 96
  %i.yg = add nsw i64 %i.yf, -2
  %i.yh = lshr i64 %i.yg, 1                       ; 2 uses
  %i.yi = getelementptr inbounds nuw [96 x i8], ptr %.021, i64 %i.yh ; 5 uses
  %i.yj = load i8, ptr %i.yi, align 8             ; 2 uses
  %i.yk = trunc i8 %i.yj to i1                    ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  %i.ym = load ptr, ptr %i.yl, align 8
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yi, i64 1
  %i.yo = select i1 %i.yk, ptr %i.ym, ptr %i.yn
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  %i.yq = load i64, ptr %i.yp, align 8
  %i.yr = lshr i8 %i.yj, 1
  %i.ys = zext nneg i8 %i.yr to i64
  %i.yt = select i1 %i.yk, i64 %i.yq, i64 %i.ys   ; 2 uses
  %i.yu = load i8, ptr %.15.i.i.i.i.i, align 8    ; 2 uses
  %i.yv = trunc i8 %i.yu to i1                    ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.15.i.i.i.i.i, i64 16
  %i.yx = load ptr, ptr %i.yw, align 8
  %i.yy = select i1 %i.yv, ptr %i.yx, ptr %i.vr
  %i.yz = getelementptr inbounds nuw i8, ptr %.15.i.i.i.i.i, i64 8
  %i.za = load i64, ptr %i.yz, align 8
  %i.zb = lshr i8 %i.yu, 1
  %i.zc = zext nneg i8 %i.zb to i64
  %i.zd = select i1 %i.yv, i64 %i.za, i64 %i.zc   ; 2 uses
  %.sroa.speculated.i.i.i.i.i19.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.zd, i64 %i.yt)
  %i.ze = tail call noundef i32 @memcmp(ptr noundef %i.yo, ptr noundef %i.yy, i64 noundef %.sroa.speculated.i.i.i.i.i19.i.i.i.i) #44 ; 2 uses
  %i.zf = icmp eq i32 %i.ze, 0
  br i1 %i.zf, label %bb.bq, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i20.i.i.i.i"

bb.bq:                                            ; preds = %bb.bp
  %i.zg = icmp ult i64 %i.yt, %i.zd
  br i1 %i.zg, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread9.i.i.i.i.i", label %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE.exit.i.i.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i20.i.i.i.i": ; preds = %bb.bp
  %i.zh = icmp slt i32 %i.ze, 0
  br i1 %i.zh, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread9.i.i.i.i.i", label %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE.exit.i.i.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread9.i.i.i.i.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i20.i.i.i.i", %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(96) %.15.i.i.i.i.i, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.15.i.i.i.i.i, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sk, ptr noundef nonnull align 8 dereferenceable(24) %i.um, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.um, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sl, ptr noundef nonnull align 8 dereferenceable(24) %i.uv, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uv, i8 0, i64 24, i1 false)
  %i.zi = load ptr, ptr %i.vl, align 8, !tbaa !130 ; 2 uses
  store ptr %i.zi, ptr %i.sm, align 8, !tbaa !130
  %i.zj = load ptr, ptr %i.vu, align 8, !tbaa !125 ; 2 uses
  store ptr %i.zj, ptr %i.sn, align 8, !tbaa !125
  %i.zk = load ptr, ptr %i.vv, align 8, !tbaa !129 ; 2 uses
  store ptr %i.zk, ptr %i.so, align 8, !tbaa !129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vl, i8 0, i64 24, i1 false)
  %i.zl = load i8, ptr %7, align 8                ; 2 uses
  %i.zm = trunc i8 %i.zl to i1                    ; 2 uses
  %i.zn = load ptr, ptr %i.sp, align 8
  %i.zo = select i1 %i.zm, ptr %i.zn, ptr %i.sq
  %i.zp = load i64, ptr %i.sr, align 8
  %i.zq = lshr i8 %i.zl, 1
  %i.zr = zext nneg i8 %i.zq to i64
  %i.zs = select i1 %i.zm, i64 %i.zp, i64 %i.zr   ; 2 uses
  br label %bb.br

bb.br:                                            ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.i.i.i.i.i", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread9.i.i.i.i.i"
  %.07.i.i.i.i.i = phi ptr [ %.15.i.i.i.i.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread9.i.i.i.i.i" ], [ %.06.i.i.i.i.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.i.i.i.i.i" ] ; 11 uses
  %.06.i.i.i.i.i = phi ptr [ %i.yi, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread9.i.i.i.i.i" ], [ %i.abi, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.i.i.i.i.i" ] ; 18 uses
  %.0.i21.i.i.i.i = phi i64 [ %i.yh, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread9.i.i.i.i.i" ], [ %i.abh, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.i.i.i.i.i" ] ; 2 uses
  %i.zt = load i8, ptr %.07.i.i.i.i.i, align 8
  %i.zu = trunc i8 %i.zt to i1
  br i1 %i.zu, label %bb.bs, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i

bb.bs:                                            ; preds = %bb.br
  %i.zv = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 16
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !126
  %i.zx = load i64, ptr %.07.i.i.i.i.i, align 8
  %i.zy = and i64 %i.zx, -2
  tail call void @_ZdlPvm(ptr noundef %i.zw, i64 noundef %i.zy) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i: ; preds = %bb.bs, %bb.br
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.07.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.06.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %.06.i.i.i.i.i, align 8
  %i.zz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 1
  store i8 0, ptr %i.zz, align 1, !tbaa !126
  %i.aaa = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 24 ; 3 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 5 uses
  %i.aac = load i8, ptr %i.aaa, align 8
  %i.aad = trunc i8 %i.aac to i1
  br i1 %i.aad, label %bb.bt, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i.i.i

bb.bt:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i
  %i.aae = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 40
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !126
  %i.aag = load i64, ptr %i.aaa, align 8
  %i.aah = and i64 %i.aag, -2
  tail call void @_ZdlPvm(ptr noundef %i.aaf, i64 noundef %i.aah) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i.i.i: ; preds = %bb.bt, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aaa, ptr noundef nonnull align 8 dereferenceable(24) %i.aab, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.aab, align 8
  %i.aai = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 25
  store i8 0, ptr %i.aai, align 1, !tbaa !126
  %i.aaj = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 48 ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 48 ; 5 uses
  %i.aal = load i8, ptr %i.aaj, align 8
  %i.aam = trunc i8 %i.aal to i1
  br i1 %i.aam, label %bb.bu, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i.i.i

bb.bu:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i.i.i
  %i.aan = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 64
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !126
  %i.aap = load i64, ptr %i.aaj, align 8
  %i.aaq = and i64 %i.aap, -2
  tail call void @_ZdlPvm(ptr noundef %i.aao, i64 noundef %i.aaq) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i.i.i: ; preds = %bb.bu, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aaj, ptr noundef nonnull align 8 dereferenceable(24) %i.aak, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.aak, align 8
  %i.aar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 49
  store i8 0, ptr %i.aar, align 1, !tbaa !126
  %i.aas = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 72 ; 5 uses
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !130 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aat, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN3tev13AttributeNodeaSEOS0_.exit.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i.i.i
  tail call void @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.aas, ptr noundef nonnull %i.aat) #44, !inline_history !59
  %i.aau = load ptr, ptr %i.aas, align 8, !tbaa !130 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 88
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !129
  %i.aax = ptrtoint ptr %i.aaw to i64
  %i.aay = ptrtoint ptr %i.aau to i64
  %i.aaz = sub i64 %i.aax, %i.aay
  tail call void @_ZdlPvm(ptr noundef %i.aau, i64 noundef %i.aaz) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aas, i8 0, i64 24, i1 false)
  br label %_ZN3tev13AttributeNodeaSEOS0_.exit.i.i.i

_ZN3tev13AttributeNodeaSEOS0_.exit.i.i.i:         ; preds = %bb.bv, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i.i.i
  %i.aba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 72 ; 6 uses
  %i.abb = load <2 x ptr>, ptr %i.aba, align 8, !tbaa !129
  store <2 x ptr> %i.abb, ptr %i.aas, align 8, !tbaa !129
  %i.abc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 88
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !129
  %i.abe = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 88
  store ptr %i.abd, ptr %i.abe, align 8, !tbaa !129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aba, i8 0, i64 24, i1 false)
  %i.abf = icmp eq i64 %.0.i21.i.i.i.i, 0
  br i1 %i.abf, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.thread.i.i.i.i.i", label %bb.bw

bb.bw:                                            ; preds = %_ZN3tev13AttributeNodeaSEOS0_.exit.i.i.i
  %i.abg = add nsw i64 %.0.i21.i.i.i.i, -1
  %i.abh = lshr i64 %i.abg, 1                     ; 2 uses
  %i.abi = getelementptr inbounds nuw [96 x i8], ptr %.021, i64 %i.abh ; 5 uses
  %i.abj = load i8, ptr %i.abi, align 8           ; 2 uses
  %i.abk = trunc i8 %i.abj to i1                  ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abi, i64 16
  %i.abm = load ptr, ptr %i.abl, align 8
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abi, i64 1
  %i.abo = select i1 %i.abk, ptr %i.abm, ptr %i.abn
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abi, i64 8
  %i.abq = load i64, ptr %i.abp, align 8
  %i.abr = lshr i8 %i.abj, 1
  %i.abs = zext nneg i8 %i.abr to i64
  %i.abt = select i1 %i.abk, i64 %i.abq, i64 %i.abs ; 2 uses
  %.sroa.speculated.i.i.i.i12.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.zs, i64 %i.abt)
  %i.abu = call noundef i32 @memcmp(ptr noundef %i.abo, ptr noundef %i.zo, i64 noundef %.sroa.speculated.i.i.i.i12.i.i.i.i.i) #44 ; 2 uses
  %i.abv = icmp eq i32 %i.abu, 0
  br i1 %i.abv, label %bb.bx, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.i.i.i.i.i"

bb.bx:                                            ; preds = %bb.bw
  %i.abw = icmp ult i64 %i.abt, %i.zs
  br i1 %i.abw, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.i.i.i.i.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.thread.i.i.i.i.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.i.i.i.i.i": ; preds = %bb.bx, %bb.bw
  %.0.i.i.i.i13.i.i.i.i.i = phi i32 [ %i.abu, %bb.bw ], [ -2147483648, %bb.bx ]
  %i.abx = icmp slt i32 %.0.i.i.i.i13.i.i.i.i.i, 0
  br i1 %i.abx, label %bb.br, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.thread.i.i.i.i.i", !llvm.loop !3040

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.thread.i.i.i.i.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.i.i.i.i.i", %bb.bx, %_ZN3tev13AttributeNodeaSEOS0_.exit.i.i.i
  %i.aby = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 80
  %i.abz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 88 ; 2 uses
  %i.aca = load i8, ptr %.06.i.i.i.i.i, align 8
  %i.acb = trunc i8 %i.aca to i1
  br i1 %i.acb, label %bb.by, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i

bb.by:                                            ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.thread.i.i.i.i.i"
  %i.acc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !126
  %i.ace = load i64, ptr %.06.i.i.i.i.i, align 8
  %i.acf = and i64 %i.ace, -2
  tail call void @_ZdlPvm(ptr noundef %i.acd, i64 noundef %i.acf) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i: ; preds = %bb.by, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit14.thread.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.06.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %7, i64 24, i1 false), !tbaa.struct !431
  %i.acg = load i8, ptr %i.aab, align 8
  %i.ach = trunc i8 %i.acg to i1
  br i1 %i.ach, label %bb.bz, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i.i.i.i.i

bb.bz:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i
  %i.aci = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !126
  %i.ack = load i64, ptr %i.aab, align 8
  %i.acl = and i64 %i.ack, -2
  tail call void @_ZdlPvm(ptr noundef %i.acj, i64 noundef %i.acl) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i.i.i.i.i: ; preds = %bb.bz, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aab, ptr noundef nonnull align 8 dereferenceable(24) %i.sk, i64 24, i1 false), !tbaa.struct !431
  %i.acm = load i8, ptr %i.aak, align 8
  %i.acn = trunc i8 %i.acm to i1
  br i1 %i.acn, label %bb.ca, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i.i.i.i.i

bb.ca:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i.i.i.i.i
  %i.aco = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 64
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !126
  %i.acq = load i64, ptr %i.aak, align 8
  %i.acr = and i64 %i.acq, -2
  tail call void @_ZdlPvm(ptr noundef %i.acp, i64 noundef %i.acr) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i.i.i.i.i: ; preds = %bb.ca, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aak, ptr noundef nonnull align 8 dereferenceable(24) %i.sl, i64 24, i1 false), !tbaa.struct !431
  %i.acs = load ptr, ptr %i.aba, align 8, !tbaa !130 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.acs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN3tev13AttributeNodeD2Ev.exit.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i.i.i.i.i
  tail call void @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.aba, ptr noundef nonnull %i.acs) #44, !inline_history !59
  %i.act = load ptr, ptr %i.aba, align 8, !tbaa !130 ; 2 uses
  %i.acu = load ptr, ptr %i.abz, align 8, !tbaa !129
  %i.acv = ptrtoint ptr %i.acu to i64
  %i.acw = ptrtoint ptr %i.act to i64
  %i.acx = sub i64 %i.acv, %i.acw
  tail call void @_ZdlPvm(ptr noundef %i.act, i64 noundef %i.acx) #45
  br label %_ZN3tev13AttributeNodeD2Ev.exit.i.i.i.i.i

_ZN3tev13AttributeNodeD2Ev.exit.i.i.i.i.i:        ; preds = %bb.cb, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i.i.i.i.i
  store ptr %i.zi, ptr %i.aba, align 8, !tbaa !130
  store ptr %i.zj, ptr %i.aby, align 8, !tbaa !125
  store ptr %i.zk, ptr %i.abz, align 8, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  br label %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE.exit.i.i.i"

"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE.exit.i.i.i": ; preds = %_ZN3tev13AttributeNodeD2Ev.exit.i.i.i.i.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i20.i.i.i.i", %bb.bq, %_ZN3tev13AttributeNodeaSEOS0_.exit17.i.i.i.i, %_ZN3tev13AttributeNodeaSEOS0_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.i.i)
  %i.acy = add nsw i64 %.042.i.i.i, -1
  %i.acz = icmp sgt i64 %.042.i.i.i, 2
  br i1 %i.acz, label %bb.ax, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread", !llvm.loop !3041

bb.cc:                                            ; preds = %bb.aj
  %i.ada = add nsw i64 %.046, -1                  ; 4 uses
  %i.adb = lshr i64 %i.af, 1
  %i.adc = icmp samesign ugt i64 %i.ae, 12288
  %i.add = getelementptr [96 x i8], ptr %.021, i64 %i.adb ; 6 uses
  br i1 %i.adc, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEjT1_SC_SC_T0_"(ptr noundef %.021, ptr noundef %i.add, ptr noundef nonnull %i.v)
  %i.ade = getelementptr inbounds nuw i8, ptr %.021, i64 96
  %i.adf = getelementptr i8, ptr %i.add, i64 -96  ; 2 uses
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEjT1_SC_SC_T0_"(ptr noundef nonnull %i.ade, ptr noundef %i.adf, ptr noundef nonnull %i.w)
  %i.adg = getelementptr inbounds nuw i8, ptr %.021, i64 192
  %i.adh = getelementptr inbounds nuw i8, ptr %i.add, i64 96 ; 2 uses
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEjT1_SC_SC_T0_"(ptr noundef nonnull %i.adg, ptr noundef nonnull %i.adh, ptr noundef nonnull %i.x)
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEjT1_SC_SC_T0_"(ptr noundef %i.adf, ptr noundef %i.add, ptr noundef nonnull %i.adh)
  tail call void @_ZNSt3__14swapB8ne180100IN3tev13AttributeNodeEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(96) %.021, ptr noundef nonnull align 8 dereferenceable(96) %i.add) #44
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEjT1_SC_SC_T0_"(ptr noundef %i.add, ptr noundef %.021, ptr noundef nonnull %i.v)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  br i1 %i.ac, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73.thread33", label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.adi = getelementptr inbounds i8, ptr %.021, i64 -96
  %i.adj = load i8, ptr %i.adi, align 8           ; 2 uses
  %i.adk = trunc i8 %i.adj to i1                  ; 2 uses
  %i.adl = getelementptr inbounds i8, ptr %.021, i64 -80
  %i.adm = load ptr, ptr %i.adl, align 8
  %i.adn = getelementptr inbounds i8, ptr %.021, i64 -95
  %i.ado = select i1 %i.adk, ptr %i.adm, ptr %i.adn
  %i.adp = getelementptr inbounds i8, ptr %.021, i64 -88
  %i.adq = load i64, ptr %i.adp, align 8
  %i.adr = lshr i8 %i.adj, 1
  %i.ads = zext nneg i8 %i.adr to i64
  %i.adt = select i1 %i.adk, i64 %i.adq, i64 %i.ads ; 2 uses
  %i.adu = load i8, ptr %.021, align 8            ; 2 uses
  %i.adv = trunc i8 %i.adu to i1                  ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.adx = load ptr, ptr %i.adw, align 8
  %i.ady = getelementptr inbounds nuw i8, ptr %.021, i64 1
  %i.adz = select i1 %i.adv, ptr %i.adx, ptr %i.ady
  %i.aea = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %i.aeb = load i64, ptr %i.aea, align 8
  %i.aec = lshr i8 %i.adu, 1
  %i.aed = zext nneg i8 %i.aec to i64
  %i.aee = select i1 %i.adv, i64 %i.aeb, i64 %i.aed ; 2 uses
  %.sroa.speculated.i.i.i.i71 = tail call i64 @llvm.umin.i64(i64 %i.aee, i64 %i.adt)
  %i.aef = tail call noundef i32 @memcmp(ptr noundef %i.ado, ptr noundef %i.adz, i64 noundef %.sroa.speculated.i.i.i.i71) #44 ; 2 uses
  %i.aeg = icmp eq i32 %i.aef, 0
  br i1 %i.aeg, label %bb.ch, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73"

bb.ch:                                            ; preds = %bb.cg
  %i.aeh = icmp ult i64 %i.adt, %i.aee
  br i1 %i.aeh, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73.thread33", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73.thread"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73": ; preds = %bb.cg
  %i.aei = icmp slt i32 %i.aef, 0
  br i1 %i.aei, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73.thread33", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73.thread"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73.thread": ; preds = %bb.ch, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73"
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(96) %.021, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.021, i8 0, i64 24, i1 false)
  %i.aej = getelementptr inbounds nuw i8, ptr %.021, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.aej, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aej, i8 0, i64 24, i1 false)
  %i.aek = getelementptr inbounds nuw i8, ptr %.021, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.aek, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aek, i8 0, i64 24, i1 false)
  %i.ael = getelementptr inbounds nuw i8, ptr %.021, i64 72 ; 2 uses
  %i.aem = load <2 x ptr>, ptr %i.ael, align 8, !tbaa !129
  store <2 x ptr> %i.aem, ptr %i.d, align 8, !tbaa !129
  %i.aen = getelementptr inbounds nuw i8, ptr %.021, i64 88
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !129
  store ptr %i.aeo, ptr %i.e, align 8, !tbaa !129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ael, i8 0, i64 24, i1 false)
  %i.aep = load i8, ptr %6, align 8               ; 2 uses
  %i.aeq = trunc i8 %i.aep to i1                  ; 2 uses
  %i.aer = load ptr, ptr %i.f, align 8
  %i.aes = select i1 %i.aeq, ptr %i.aer, ptr %i.g ; 6 uses
  %i.aet = load i64, ptr %i.h, align 8
  %i.aeu = lshr i8 %i.aep, 1
  %i.aev = zext nneg i8 %i.aeu to i64
  %i.aew = select i1 %i.aeq, i64 %i.aet, i64 %i.aev ; 12 uses
  %i.aex = load i8, ptr %i.y, align 8             ; 2 uses
  %i.aey = trunc i8 %i.aex to i1                  ; 2 uses
  %i.aez = load ptr, ptr %i.z, align 8
  %i.afa = select i1 %i.aey, ptr %i.aez, ptr %i.aa
  %i.afb = load i64, ptr %i.ab, align 8
  %i.afc = lshr i8 %i.aex, 1
  %i.afd = zext nneg i8 %i.afc to i64
  %i.afe = select i1 %i.aey, i64 %i.afb, i64 %i.afd ; 2 uses
  %.sroa.speculated.i.i.i.i.i74 = tail call i64 @llvm.umin.i64(i64 %i.afe, i64 %i.aew)
  %i.aff = call noundef i32 @memcmp(ptr noundef %i.aes, ptr noundef %i.afa, i64 noundef %.sroa.speculated.i.i.i.i.i74) #44 ; 2 uses
  %i.afg = icmp eq i32 %i.aff, 0
  br i1 %i.afg, label %bb.ci, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i75"

bb.ci:                                            ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73.thread"
  %i.afh = icmp ult i64 %i.aew, %i.afe
  br i1 %i.afh, label %.preheader34.i.preheader, label %.preheader35.i.preheader.a

.preheader35.i.preheader.a:                       ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i75", %bb.ci
  br label %.preheader35.i

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i75": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73.thread"
  %i.afi = icmp slt i32 %i.aff, 0
  br i1 %i.afi, label %.preheader34.i.preheader, label %.preheader35.i.preheader.a

.preheader34.i.preheader:                         ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i75", %bb.ci
  br label %.preheader34.i.a

.preheader34.i.a:                                 ; preds = %.preheader34.i.preheader, %.preheader34.i.a
  %.018.i = phi ptr [ %i.afj, %.preheader34.i.a ], [ %.021, %.preheader34.i.preheader ] ; 4 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %.018.i, i64 96 ; 3 uses
  %i.afk = load i8, ptr %i.afj, align 8           ; 2 uses
  %i.afl = trunc i8 %i.afk to i1                  ; 2 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %.018.i, i64 112
  %i.afn = load ptr, ptr %i.afm, align 8
  %i.afo = getelementptr inbounds nuw i8, ptr %.018.i, i64 97
  %i.afp = select i1 %i.afl, ptr %i.afn, ptr %i.afo
  %i.afq = getelementptr inbounds nuw i8, ptr %.018.i, i64 104
  %i.afr = load i64, ptr %i.afq, align 8
  %i.afs = lshr i8 %i.afk, 1
  %i.aft = zext nneg i8 %i.afs to i64
  %i.afu = select i1 %i.afl, i64 %i.afr, i64 %i.aft ; 2 uses
  %.sroa.speculated.i.i.i.i10.i = tail call i64 @llvm.umin.i64(i64 %i.afu, i64 %i.aew)
  %i.afv = call noundef i32 @memcmp(ptr noundef %i.aes, ptr noundef %i.afp, i64 noundef %.sroa.speculated.i.i.i.i10.i) #44 ; 2 uses
  %i.afw = icmp eq i32 %i.afv, 0
  %12 = icmp ult i64 %i.aew, %i.afu
  %or.cond77.i = and i1 %i.afw, %12
  %13 = icmp slt i32 %i.afv, 0
  %or.cond78.i = or i1 %13, %or.cond77.i
  br i1 %or.cond78.i, label %.critedge.i76, label %.preheader34.i.a, !llvm.loop !3042

.preheader35.i:                                   ; preds = %.preheader35.i.preheader.a, %bb.cj
  %.119.i = phi ptr [ %i.afx, %bb.cj ], [ %.021, %.preheader35.i.preheader.a ] ; 4 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %.119.i, i64 96 ; 5 uses
  %i.afy = icmp ult ptr %i.afx, %.024.ph
  br i1 %i.afy, label %bb.cj, label %.critedge.i76

bb.cj:                                            ; preds = %.preheader35.i
  %i.afz = load i8, ptr %i.afx, align 8           ; 2 uses
  %i.aga = trunc i8 %i.afz to i1                  ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %.119.i, i64 112
  %i.agc = load ptr, ptr %i.agb, align 8
  %i.agd = getelementptr inbounds nuw i8, ptr %.119.i, i64 97
  %i.age = select i1 %i.aga, ptr %i.agc, ptr %i.agd
  %i.agf = getelementptr inbounds nuw i8, ptr %.119.i, i64 104
  %i.agg = load i64, ptr %i.agf, align 8
  %i.agh = lshr i8 %i.afz, 1
  %i.agi = zext nneg i8 %i.agh to i64
  %i.agj = select i1 %i.aga, i64 %i.agg, i64 %i.agi ; 2 uses
  %.sroa.speculated.i.i.i.i13.i = tail call i64 @llvm.umin.i64(i64 %i.agj, i64 %i.aew)
  %i.agk = call noundef i32 @memcmp(ptr noundef %i.aes, ptr noundef %i.age, i64 noundef %.sroa.speculated.i.i.i.i13.i) #44 ; 2 uses
  %i.agl = icmp eq i32 %i.agk, 0
  %14 = icmp ult i64 %i.aew, %i.agj
  %or.cond.i = and i1 %i.agl, %14
  %15 = icmp slt i32 %i.agk, 0
  %or.cond75.i = or i1 %15, %or.cond.i
  br i1 %or.cond75.i, label %.critedge.i76, label %.preheader35.i, !llvm.loop !3043

.critedge.i76:                                    ; preds = %bb.cj, %.preheader35.i, %.preheader34.i.a
  %.220.i = phi ptr [ %i.afj, %.preheader34.i.a ], [ %i.afx, %.preheader35.i ], [ %i.afx, %bb.cj ] ; 4 uses
  %i.agm = icmp ult ptr %.220.i, %.024.ph
  br i1 %i.agm, label %.preheader33.i, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit18.thread.i"

.preheader33.i:                                   ; preds = %.critedge.i76, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit18.i"
  %.0.i88 = phi ptr [ %i.agn, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit18.i" ], [ %.024.ph, %.critedge.i76 ] ; 4 uses
  %i.agn = getelementptr inbounds i8, ptr %.0.i88, i64 -96 ; 4 uses
  %i.ago = load i8, ptr %i.agn, align 8           ; 2 uses
  %i.agp = trunc i8 %i.ago to i1                  ; 2 uses
  %i.agq = getelementptr inbounds i8, ptr %.0.i88, i64 -80
  %i.agr = load ptr, ptr %i.agq, align 8
  %i.ags = getelementptr inbounds i8, ptr %.0.i88, i64 -95
  %i.agt = select i1 %i.agp, ptr %i.agr, ptr %i.ags
  %i.agu = getelementptr inbounds i8, ptr %.0.i88, i64 -88
  %i.agv = load i64, ptr %i.agu, align 8
  %i.agw = lshr i8 %i.ago, 1
  %i.agx = zext nneg i8 %i.agw to i64
  %i.agy = select i1 %i.agp, i64 %i.agv, i64 %i.agx ; 2 uses
  %.sroa.speculated.i.i.i.i16.i = tail call i64 @llvm.umin.i64(i64 %i.agy, i64 %i.aew)
  %i.agz = call noundef i32 @memcmp(ptr noundef %i.aes, ptr noundef %i.agt, i64 noundef %.sroa.speculated.i.i.i.i16.i) #44 ; 2 uses
  %i.aha = icmp eq i32 %i.agz, 0
  br i1 %i.aha, label %bb.ck, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit18.i"

bb.ck:                                            ; preds = %.preheader33.i
  %i.ahb = icmp ult i64 %i.aew, %i.agy
  br i1 %i.ahb, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit18.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit18.thread.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit18.i": ; preds = %bb.ck, %.preheader33.i
  %.0.i.i.i.i17.i = phi i32 [ %i.agz, %.preheader33.i ], [ -2147483648, %bb.ck ]
  %i.ahc = icmp slt i32 %.0.i.i.i.i17.i, 0
  br i1 %i.ahc, label %.preheader33.i, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit18.thread.i", !llvm.loop !3044

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit18.thread.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit18.i", %bb.ck, %.critedge.i76
  %.1.i = phi ptr [ %.024.ph, %.critedge.i76 ], [ %i.agn, %bb.ck ], [ %i.agn, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit18.i" ] ; 2 uses
  %i.ahd = icmp ult ptr %.220.i, %.1.i
  br i1 %i.ahd, label %.lr.ph.i83, label %._crit_edge.i

.lr.ph.i83:                                       ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit18.thread.i", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit24.thread.i"
  %.244.i = phi ptr [ %i.ahs, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit24.thread.i" ], [ %.1.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit18.thread.i" ] ; 2 uses
  %.32143.i = phi ptr [ %i.ahe, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit24.thread.i" ], [ %.220.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit18.thread.i" ] ; 2 uses
  tail call void @_ZNSt3__14swapB8ne180100IN3tev13AttributeNodeEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(96) %.32143.i, ptr noundef nonnull align 8 dereferenceable(96) %.244.i) #44
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %.lr.ph.i83
  %.4.i = phi ptr [ %.32143.i, %.lr.ph.i83 ], [ %i.ahe, %bb.cl ] ; 4 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %.4.i, i64 96 ; 5 uses
  %i.ahf = load i8, ptr %i.ahe, align 8           ; 2 uses
  %i.ahg = trunc i8 %i.ahf to i1                  ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %.4.i, i64 112
  %i.ahi = load ptr, ptr %i.ahh, align 8
  %i.ahj = getelementptr inbounds nuw i8, ptr %.4.i, i64 97
  %i.ahk = select i1 %i.ahg, ptr %i.ahi, ptr %i.ahj
  %i.ahl = getelementptr inbounds nuw i8, ptr %.4.i, i64 104
  %i.ahm = load i64, ptr %i.ahl, align 8
  %i.ahn = lshr i8 %i.ahf, 1
  %i.aho = zext nneg i8 %i.ahn to i64
  %i.ahp = select i1 %i.ahg, i64 %i.ahm, i64 %i.aho ; 2 uses
  %.sroa.speculated.i.i.i.i19.i84 = tail call i64 @llvm.umin.i64(i64 %i.ahp, i64 %i.aew)
  %i.ahq = call noundef i32 @memcmp(ptr noundef %i.aes, ptr noundef %i.ahk, i64 noundef %.sroa.speculated.i.i.i.i19.i84) #44 ; 2 uses
  %i.ahr = icmp eq i32 %i.ahq, 0
  %16 = icmp ult i64 %i.aew, %i.ahp
  %or.cond54 = and i1 %i.ahr, %16
  %17 = icmp slt i32 %i.ahq, 0
  %or.cond55 = or i1 %17, %or.cond54
  br i1 %or.cond55, label %.preheader.i87, label %bb.cl, !llvm.loop !3045

.preheader.i87:                                   ; preds = %bb.cl, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit24.i"
  %.3.i = phi ptr [ %i.ahs, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit24.i" ], [ %.244.i, %bb.cl ] ; 4 uses
  %i.ahs = getelementptr inbounds i8, ptr %.3.i, i64 -96 ; 4 uses
  %i.aht = load i8, ptr %i.ahs, align 8           ; 2 uses
  %i.ahu = trunc i8 %i.aht to i1                  ; 2 uses
  %i.ahv = getelementptr inbounds i8, ptr %.3.i, i64 -80
  %i.ahw = load ptr, ptr %i.ahv, align 8
  %i.ahx = getelementptr inbounds i8, ptr %.3.i, i64 -95
  %i.ahy = select i1 %i.ahu, ptr %i.ahw, ptr %i.ahx
  %i.ahz = getelementptr inbounds i8, ptr %.3.i, i64 -88
  %i.aia = load i64, ptr %i.ahz, align 8
  %i.aib = lshr i8 %i.aht, 1
  %i.aic = zext nneg i8 %i.aib to i64
  %i.aid = select i1 %i.ahu, i64 %i.aia, i64 %i.aic ; 2 uses
  %.sroa.speculated.i.i.i.i22.i = tail call i64 @llvm.umin.i64(i64 %i.aid, i64 %i.aew)
  %i.aie = call noundef i32 @memcmp(ptr noundef %i.aes, ptr noundef %i.ahy, i64 noundef %.sroa.speculated.i.i.i.i22.i) #44 ; 2 uses
  %i.aif = icmp eq i32 %i.aie, 0
  br i1 %i.aif, label %bb.cm, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit24.i"

bb.cm:                                            ; preds = %.preheader.i87
  %i.aig = icmp ult i64 %i.aew, %i.aid
  br i1 %i.aig, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit24.i", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit24.thread.i"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit24.i": ; preds = %bb.cm, %.preheader.i87
  %.0.i.i.i.i23.i = phi i32 [ %i.aie, %.preheader.i87 ], [ -2147483648, %bb.cm ]
  %i.aih = icmp slt i32 %.0.i.i.i.i23.i, 0
  br i1 %i.aih, label %.preheader.i87, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit24.thread.i", !llvm.loop !3046

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit24.thread.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit24.i", %bb.cm
  %i.aii = icmp ult ptr %i.ahe, %i.ahs
  br i1 %i.aii, label %.lr.ph.i83, label %._crit_edge.i, !llvm.loop !3047

._crit_edge.i:                                    ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit24.thread.i", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit18.thread.i"
  %.321.lcssa.i = phi ptr [ %.220.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit18.thread.i" ], [ %i.ahe, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit24.thread.i" ] ; 10 uses
  %i.aij = getelementptr inbounds i8, ptr %.321.lcssa.i, i64 -96 ; 5 uses
  %.not.i77 = icmp eq ptr %.021, %i.aij
  br i1 %.not.i77, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %._crit_edge.i
  %i.aik = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN3tev13AttributeNodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(96) %.021, ptr noundef nonnull align 8 dereferenceable(96) %i.aij) #44 ; 0 uses
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %._crit_edge.i
  %i.ail = load i8, ptr %i.aij, align 8
  %i.aim = trunc i8 %i.ail to i1
  br i1 %i.aim, label %bb.cp, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i78

bb.cp:                                            ; preds = %bb.co
  %i.ain = getelementptr inbounds i8, ptr %.321.lcssa.i, i64 -80
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !126
  %i.aip = load i64, ptr %i.aij, align 8
  %i.aiq = and i64 %i.aip, -2
  tail call void @_ZdlPvm(ptr noundef %i.aio, i64 noundef %i.aiq) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i78

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i78: ; preds = %bb.cp, %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aij, ptr noundef nonnull align 8 dereferenceable(96) %6, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %6, align 8
  store i8 0, ptr %i.g, align 1, !tbaa !126
  %i.air = getelementptr inbounds i8, ptr %.321.lcssa.i, i64 -72 ; 3 uses
  %i.ais = load i8, ptr %i.air, align 8
  %i.ait = trunc i8 %i.ais to i1
  br i1 %i.ait, label %bb.cq, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i79

bb.cq:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i78
  %i.aiu = getelementptr inbounds i8, ptr %.321.lcssa.i, i64 -56
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !126
  %i.aiw = load i64, ptr %i.air, align 8
  %i.aix = and i64 %i.aiw, -2
  tail call void @_ZdlPvm(ptr noundef %i.aiv, i64 noundef %i.aix) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i79

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i79: ; preds = %bb.cq, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.air, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.b, align 8
  store i8 0, ptr %i.i, align 1, !tbaa !126
  %i.aiy = getelementptr inbounds i8, ptr %.321.lcssa.i, i64 -48 ; 3 uses
  %i.aiz = load i8, ptr %i.aiy, align 8
  %i.aja = trunc i8 %i.aiz to i1
  br i1 %i.aja, label %bb.cr, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i80

bb.cr:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i79
  %i.ajb = getelementptr inbounds i8, ptr %.321.lcssa.i, i64 -32
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !126
  %i.ajd = load i64, ptr %i.aiy, align 8
  %i.aje = and i64 %i.ajd, -2
  tail call void @_ZdlPvm(ptr noundef %i.ajc, i64 noundef %i.aje) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i80

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i80: ; preds = %bb.cr, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aiy, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.c, align 8
  store i8 0, ptr %i.j, align 1, !tbaa !126
  %i.ajf = getelementptr inbounds i8, ptr %.321.lcssa.i, i64 -24 ; 5 uses
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !130 ; 2 uses
  %.not.i.i.i.i.i81 = icmp eq ptr %i.ajg, null
  br i1 %.not.i.i.i.i.i81, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE16__destroy_vectorclB8ne180100Ev.exit.i.i, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i80
  tail call void @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.ajf, ptr noundef nonnull %i.ajg) #44, !inline_history !59
  %i.ajh = load ptr, ptr %i.ajf, align 8, !tbaa !130 ; 2 uses
  %i.aji = getelementptr inbounds i8, ptr %.321.lcssa.i, i64 -8
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !129
  %i.ajk = ptrtoint ptr %i.ajj to i64
  %i.ajl = ptrtoint ptr %i.ajh to i64
  %i.ajm = sub i64 %i.ajk, %i.ajl
  tail call void @_ZdlPvm(ptr noundef %i.ajh, i64 noundef %i.ajm) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajf, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE16__destroy_vectorclB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE16__destroy_vectorclB8ne180100Ev.exit.i.i: ; preds = %bb.cs, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i80
  %i.ajn = load <2 x ptr>, ptr %i.d, align 8, !tbaa !129
  store <2 x ptr> %i.ajn, ptr %i.ajf, align 8, !tbaa !129
  %i.ajo = load ptr, ptr %i.e, align 8, !tbaa !129
  %i.ajp = getelementptr inbounds i8, ptr %.321.lcssa.i, i64 -8
  store ptr %i.ajo, ptr %i.ajp, align 8, !tbaa !129
  %i.ajq = load i8, ptr %i.c, align 8
  %i.ajr = trunc i8 %i.ajq to i1
  br i1 %i.ajr, label %bb.ct, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i

bb.ct:                                            ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE16__destroy_vectorclB8ne180100Ev.exit.i.i
  %i.ajs = load ptr, ptr %i.k, align 8, !tbaa !126
  %i.ajt = load i64, ptr %i.c, align 8
  %i.aju = and i64 %i.ajt, -2
  tail call void @_ZdlPvm(ptr noundef %i.ajs, i64 noundef %i.aju) #45, !inline_history !131
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i: ; preds = %bb.ct, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE16__destroy_vectorclB8ne180100Ev.exit.i.i
  %i.ajv = load i8, ptr %i.b, align 8
  %i.ajw = trunc i8 %i.ajv to i1
  br i1 %i.ajw, label %bb.cu, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit1.i.i

bb.cu:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i
  %i.ajx = load ptr, ptr %i.l, align 8, !tbaa !126
  %i.ajy = load i64, ptr %i.b, align 8
  %i.ajz = and i64 %i.ajy, -2
  tail call void @_ZdlPvm(ptr noundef %i.ajx, i64 noundef %i.ajz) #45, !inline_history !131
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit1.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit1.i.i: ; preds = %bb.cu, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i
  %i.aka = load i8, ptr %6, align 8
  %i.akb = trunc i8 %i.aka to i1
  br i1 %i.akb, label %bb.cv, label %"_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN3tev13AttributeNodeERZNS2_9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0EET0_SC_SC_T1_.exit"

bb.cv:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit1.i.i
  %i.akc = load ptr, ptr %i.f, align 8, !tbaa !126
  %i.akd = load i64, ptr %6, align 8
  %i.ake = and i64 %i.akd, -2
  tail call void @_ZdlPvm(ptr noundef %i.akc, i64 noundef %i.ake) #45, !inline_history !131
  br label %"_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN3tev13AttributeNodeERZNS2_9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0EET0_SC_SC_T1_.exit"

"_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN3tev13AttributeNodeERZNS2_9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0EET0_SC_SC_T1_.exit": ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit1.i.i, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer426.backedge"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73.thread33": ; preds = %bb.ch, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73", %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull align 8 dereferenceable(96) %.021, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.021, i8 0, i64 24, i1 false)
  %i.akf = getelementptr inbounds nuw i8, ptr %.021, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.akf, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.akf, i8 0, i64 24, i1 false)
  %i.akg = getelementptr inbounds nuw i8, ptr %.021, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.akg, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.akg, i8 0, i64 24, i1 false)
  %i.akh = getelementptr inbounds nuw i8, ptr %.021, i64 72 ; 2 uses
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !130 ; 2 uses
  store ptr %i.aki, ptr %i.o, align 8, !tbaa !130
  %i.akj = getelementptr inbounds nuw i8, ptr %.021, i64 80
  %i.akk = load ptr, ptr %i.akj, align 8, !tbaa !125 ; 2 uses
  store ptr %i.akk, ptr %i.p, align 8, !tbaa !125
  %i.akl = getelementptr inbounds nuw i8, ptr %.021, i64 88
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !129 ; 2 uses
  store ptr %i.akm, ptr %i.q, align 8, !tbaa !129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.akh, i8 0, i64 24, i1 false)
  %i.akn = load i8, ptr %5, align 8               ; 2 uses
  %i.ako = trunc i8 %i.akn to i1                  ; 2 uses
  %i.akp = load ptr, ptr %i.r, align 8
  %i.akq = select i1 %i.ako, ptr %i.akp, ptr %i.s ; 5 uses
  %i.akr = load i64, ptr %i.t, align 8
  %i.aks = lshr i8 %i.akn, 1
  %i.akt = zext nneg i8 %i.aks to i64
  %i.aku = select i1 %i.ako, i64 %i.akr, i64 %i.akt ; 10 uses
  br label %bb.cw

bb.cw:                                            ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i91", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73.thread33"
  %.018.i89 = phi ptr [ %.021, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit73.thread33" ], [ %i.akv, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i91" ] ; 5 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %.018.i89, i64 96 ; 6 uses
  %i.akw = load i8, ptr %i.akv, align 8           ; 2 uses
  %i.akx = trunc i8 %i.akw to i1                  ; 2 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %.018.i89, i64 112
  %i.akz = load ptr, ptr %i.aky, align 8
  %i.ala = getelementptr inbounds nuw i8, ptr %.018.i89, i64 97
  %i.alb = select i1 %i.akx, ptr %i.akz, ptr %i.ala
  %i.alc = getelementptr inbounds nuw i8, ptr %.018.i89, i64 104
  %i.ald = load i64, ptr %i.alc, align 8
  %i.ale = lshr i8 %i.akw, 1
  %i.alf = zext nneg i8 %i.ale to i64
  %i.alg = select i1 %i.akx, i64 %i.ald, i64 %i.alf ; 2 uses
  %.sroa.speculated.i.i.i.i.i90 = tail call i64 @llvm.umin.i64(i64 %i.aku, i64 %i.alg)
  %i.alh = call noundef i32 @memcmp(ptr noundef %i.alb, ptr noundef %i.akq, i64 noundef %.sroa.speculated.i.i.i.i.i90) #44 ; 2 uses
  %i.ali = icmp eq i32 %i.alh, 0
  br i1 %i.ali, label %bb.cx, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i91"

bb.cx:                                            ; preds = %bb.cw
  %i.alj = icmp ult i64 %i.alg, %i.aku
  br i1 %i.alj, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i91", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i93"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i91": ; preds = %bb.cx, %bb.cw
  %.0.i.i.i.i.i92 = phi i32 [ %i.alh, %bb.cw ], [ -2147483648, %bb.cx ]
  %i.alk = icmp slt i32 %.0.i.i.i.i.i92, 0
  br i1 %i.alk, label %bb.cw, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i93", !llvm.loop !3048

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i93": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i91", %bb.cx
  %i.all = icmp eq ptr %.021, %.018.i89
  br i1 %i.all, label %.preheader29.i, label %.preheader30.i

.preheader29.i:                                   ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i93", %bb.cy
  %.0.i110 = phi ptr [ %i.aln, %bb.cy ], [ %.024.ph, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i93" ] ; 6 uses
  %i.alm = icmp ult ptr %i.akv, %.0.i110
  br i1 %i.alm, label %bb.cy, label %.critedge.i98

bb.cy:                                            ; preds = %.preheader29.i
  %i.aln = getelementptr inbounds i8, ptr %.0.i110, i64 -96 ; 3 uses
  %i.alo = load i8, ptr %i.aln, align 8           ; 2 uses
  %i.alp = trunc i8 %i.alo to i1                  ; 2 uses
  %i.alq = getelementptr inbounds i8, ptr %.0.i110, i64 -80
  %i.alr = load ptr, ptr %i.alq, align 8
  %i.als = getelementptr inbounds i8, ptr %.0.i110, i64 -95
  %i.alt = select i1 %i.alp, ptr %i.alr, ptr %i.als
  %i.alu = getelementptr inbounds i8, ptr %.0.i110, i64 -88
  %i.alv = load i64, ptr %i.alu, align 8
  %i.alw = lshr i8 %i.alo, 1
  %i.alx = zext nneg i8 %i.alw to i64
  %i.aly = select i1 %i.alp, i64 %i.alv, i64 %i.alx ; 2 uses
  %.sroa.speculated.i.i.i.i12.i = tail call i64 @llvm.umin.i64(i64 %i.aku, i64 %i.aly)
  %i.alz = call noundef i32 @memcmp(ptr noundef %i.alt, ptr noundef %i.akq, i64 noundef %.sroa.speculated.i.i.i.i12.i) #44 ; 2 uses
  %i.ama = icmp eq i32 %i.alz, 0
  %18 = icmp ult i64 %i.aly, %i.aku
  %or.cond69.i = and i1 %i.ama, %18
  %19 = icmp slt i32 %i.alz, 0
  %or.cond70.i = or i1 %19, %or.cond69.i
  br i1 %or.cond70.i, label %.critedge.i98, label %.preheader29.i, !llvm.loop !3049

.preheader30.i:                                   ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i93", %.preheader30.i
  %.1.i94 = phi ptr [ %i.amb, %.preheader30.i ], [ %.024.ph, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i93" ] ; 4 uses
  %i.amb = getelementptr inbounds i8, ptr %.1.i94, i64 -96 ; 3 uses
  %i.amc = load i8, ptr %i.amb, align 8           ; 2 uses
  %i.amd = trunc i8 %i.amc to i1                  ; 2 uses
  %i.ame = getelementptr inbounds i8, ptr %.1.i94, i64 -80
  %i.amf = load ptr, ptr %i.ame, align 8
  %i.amg = getelementptr inbounds i8, ptr %.1.i94, i64 -95
  %i.amh = select i1 %i.amd, ptr %i.amf, ptr %i.amg
  %i.ami = getelementptr inbounds i8, ptr %.1.i94, i64 -88
  %i.amj = load i64, ptr %i.ami, align 8
  %i.amk = lshr i8 %i.amc, 1
  %i.aml = zext nneg i8 %i.amk to i64
  %i.amm = select i1 %i.amd, i64 %i.amj, i64 %i.aml ; 2 uses
  %.sroa.speculated.i.i.i.i15.i95 = tail call i64 @llvm.umin.i64(i64 %i.aku, i64 %i.amm)
  %i.amn = call noundef i32 @memcmp(ptr noundef %i.amh, ptr noundef %i.akq, i64 noundef %.sroa.speculated.i.i.i.i15.i95) #44 ; 2 uses
  %i.amo = icmp eq i32 %i.amn, 0
  %20 = icmp ult i64 %i.amm, %i.aku
  %or.cond72.i = and i1 %i.amo, %20
  %21 = icmp slt i32 %i.amn, 0
  %or.cond73.i = or i1 %21, %or.cond72.i
  br i1 %or.cond73.i, label %.critedge.i98, label %.preheader30.i, !llvm.loop !3050

.critedge.i98:                                    ; preds = %.preheader30.i, %bb.cy, %.preheader29.i
  %.2.i = phi ptr [ %.0.i110, %.preheader29.i ], [ %i.aln, %bb.cy ], [ %i.amb, %.preheader30.i ] ; 2 uses
  %.not = icmp ult ptr %i.akv, %.2.i              ; 2 uses
  br i1 %.not, label %.lr.ph.i99, label %._crit_edge.i103

.lr.ph.i99:                                       ; preds = %.critedge.i98, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.thread.i"
  %.343.i = phi ptr [ %i.anf, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.thread.i" ], [ %.2.i, %.critedge.i98 ] ; 2 uses
  %.11942.i = phi ptr [ %i.amp, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.thread.i" ], [ %i.akv, %.critedge.i98 ] ; 2 uses
  tail call void @_ZNSt3__14swapB8ne180100IN3tev13AttributeNodeEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(96) %.11942.i, ptr noundef nonnull align 8 dereferenceable(96) %.343.i) #44
  br label %bb.cz

bb.cz:                                            ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit20.i", %.lr.ph.i99
  %.220.i100 = phi ptr [ %.11942.i, %.lr.ph.i99 ], [ %i.amp, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit20.i" ] ; 4 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %.220.i100, i64 96 ; 5 uses
  %i.amq = load i8, ptr %i.amp, align 8           ; 2 uses
  %i.amr = trunc i8 %i.amq to i1                  ; 2 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %.220.i100, i64 112
  %i.amt = load ptr, ptr %i.ams, align 8
  %i.amu = getelementptr inbounds nuw i8, ptr %.220.i100, i64 97
  %i.amv = select i1 %i.amr, ptr %i.amt, ptr %i.amu
  %i.amw = getelementptr inbounds nuw i8, ptr %.220.i100, i64 104
  %i.amx = load i64, ptr %i.amw, align 8
  %i.amy = lshr i8 %i.amq, 1
  %i.amz = zext nneg i8 %i.amy to i64
  %i.ana = select i1 %i.amr, i64 %i.amx, i64 %i.amz ; 2 uses
  %.sroa.speculated.i.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 %i.aku, i64 %i.ana)
  %i.anb = call noundef i32 @memcmp(ptr noundef %i.amv, ptr noundef %i.akq, i64 noundef %.sroa.speculated.i.i.i.i18.i) #44 ; 2 uses
  %i.anc = icmp eq i32 %i.anb, 0
  br i1 %i.anc, label %bb.da, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit20.i"

bb.da:                                            ; preds = %bb.cz
  %i.and = icmp ult i64 %i.ana, %i.aku
  br i1 %i.and, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit20.i", label %.preheader.i101.preheader

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit20.i": ; preds = %bb.da, %bb.cz
  %.0.i.i.i.i19.i = phi i32 [ %i.anb, %bb.cz ], [ -2147483648, %bb.da ]
  %i.ane = icmp slt i32 %.0.i.i.i.i19.i, 0
  br i1 %i.ane, label %bb.cz, label %.preheader.i101.preheader, !llvm.loop !3051

.preheader.i101.preheader:                        ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit20.i", %bb.da
  br label %.preheader.i101

.preheader.i101:                                  ; preds = %.preheader.i101.preheader, %.preheader.i101
  %.4.i102 = phi ptr [ %i.anf, %.preheader.i101 ], [ %.343.i, %.preheader.i101.preheader ] ; 4 uses
  %i.anf = getelementptr inbounds i8, ptr %.4.i102, i64 -96 ; 4 uses
  %i.ang = load i8, ptr %i.anf, align 8           ; 2 uses
  %i.anh = trunc i8 %i.ang to i1                  ; 2 uses
  %i.ani = getelementptr inbounds i8, ptr %.4.i102, i64 -80
  %i.anj = load ptr, ptr %i.ani, align 8
  %i.ank = getelementptr inbounds i8, ptr %.4.i102, i64 -95
  %i.anl = select i1 %i.anh, ptr %i.anj, ptr %i.ank
  %i.anm = getelementptr inbounds i8, ptr %.4.i102, i64 -88
  %i.ann = load i64, ptr %i.anm, align 8
  %i.ano = lshr i8 %i.ang, 1
  %i.anp = zext nneg i8 %i.ano to i64
  %i.anq = select i1 %i.anh, i64 %i.ann, i64 %i.anp ; 2 uses
  %.sroa.speculated.i.i.i.i21.i = tail call i64 @llvm.umin.i64(i64 %i.aku, i64 %i.anq)
  %i.anr = call noundef i32 @memcmp(ptr noundef %i.anl, ptr noundef %i.akq, i64 noundef %.sroa.speculated.i.i.i.i21.i) #44 ; 2 uses
  %i.ans = icmp eq i32 %i.anr, 0
  %22 = icmp ult i64 %i.anq, %i.aku
  %or.cond.i101 = and i1 %i.ans, %22
  %23 = icmp slt i32 %i.anr, 0
  %or.cond67.i = or i1 %23, %or.cond.i101
  br i1 %or.cond67.i, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.thread.i", label %.preheader.i101, !llvm.loop !3052

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.thread.i": ; preds = %.preheader.i101
  %i.ant = icmp ult ptr %i.amp, %i.anf
  br i1 %i.ant, label %.lr.ph.i99, label %._crit_edge.i103, !llvm.loop !3053

._crit_edge.i103:                                 ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.thread.i", %.critedge.i98
  %.119.lcssa.i = phi ptr [ %i.akv, %.critedge.i98 ], [ %i.amp, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit23.thread.i" ] ; 13 uses
  %i.anu = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -96 ; 8 uses
  %.not.i104 = icmp eq ptr %.021, %i.anu
  br i1 %.not.i104, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %._crit_edge.i103
  %i.anv = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN3tev13AttributeNodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(96) %.021, ptr noundef nonnull align 8 dereferenceable(96) %i.anu) #44 ; 0 uses
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %._crit_edge.i103
  %i.anw = load i8, ptr %i.anu, align 8
  %i.anx = trunc i8 %i.anw to i1
  br i1 %i.anx, label %bb.dd, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i105

bb.dd:                                            ; preds = %bb.dc
  %i.any = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -80
  %i.anz = load ptr, ptr %i.any, align 8, !tbaa !126
  %i.aoa = load i64, ptr %i.anu, align 8
  %i.aob = and i64 %i.aoa, -2
  tail call void @_ZdlPvm(ptr noundef %i.anz, i64 noundef %i.aob) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i105

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i105: ; preds = %bb.dd, %bb.dc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.anu, ptr noundef nonnull align 8 dereferenceable(96) %5, i64 24, i1 false), !tbaa.struct !431
  %i.aoc = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -72 ; 3 uses
  %i.aod = load i8, ptr %i.aoc, align 8
  %i.aoe = trunc i8 %i.aod to i1
  br i1 %i.aoe, label %bb.de, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i106

bb.de:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i105
  %i.aof = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -56
  %i.aog = load ptr, ptr %i.aof, align 8, !tbaa !126
  %i.aoh = load i64, ptr %i.aoc, align 8
  %i.aoi = and i64 %i.aoh, -2
  tail call void @_ZdlPvm(ptr noundef %i.aog, i64 noundef %i.aoi) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i106

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i106: ; preds = %bb.de, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aoc, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !431
  %i.aoj = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -48 ; 3 uses
  %i.aok = load i8, ptr %i.aoj, align 8
  %i.aol = trunc i8 %i.aok to i1
  br i1 %i.aol, label %bb.df, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i107

bb.df:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i106
  %i.aom = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -32
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !126
  %i.aoo = load i64, ptr %i.aoj, align 8
  %i.aop = and i64 %i.aoo, -2
  tail call void @_ZdlPvm(ptr noundef %i.aon, i64 noundef %i.aop) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i107

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i107: ; preds = %bb.df, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i.i106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aoj, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !tbaa.struct !431
  %i.aoq = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -24 ; 4 uses
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !130 ; 2 uses
  %.not.i.i.i.i.i108 = icmp eq ptr %i.aor, null
  br i1 %.not.i.i.i.i.i108, label %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev13AttributeNodeERZNS2_9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0EENS_4pairIT0_bEESD_SD_T1_.exit", label %bb.dg

bb.dg:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i107
  tail call void @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.aoq, ptr noundef nonnull %i.aor) #44, !inline_history !59
  %i.aos = load ptr, ptr %i.aoq, align 8, !tbaa !130 ; 2 uses
  %i.aot = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -8
  %i.aou = load ptr, ptr %i.aot, align 8, !tbaa !129
  %i.aov = ptrtoint ptr %i.aou to i64
  %i.aow = ptrtoint ptr %i.aos to i64
  %i.aox = sub i64 %i.aov, %i.aow
  tail call void @_ZdlPvm(ptr noundef %i.aos, i64 noundef %i.aox) #45
  br label %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev13AttributeNodeERZNS2_9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0EENS_4pairIT0_bEESD_SD_T1_.exit"

"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev13AttributeNodeERZNS2_9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0EENS_4pairIT0_bEESD_SD_T1_.exit": ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i.i107, %bb.dg
  store ptr %i.aki, ptr %i.aoq, align 8, !tbaa !130
  %i.aoy = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -16
  store ptr %i.akk, ptr %i.aoy, align 8, !tbaa !125
  %i.aoz = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -8
  store ptr %i.akm, ptr %i.aoz, align 8, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br i1 %.not, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev13AttributeNodeERZNS2_9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0EENS_4pairIT0_bEESD_SD_T1_.exit"
  %i.apa = tail call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEbT1_SC_T0_"(ptr noundef %.021, ptr noundef nonnull %i.anu) ; 2 uses
  %i.apb = tail call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEbT1_SC_T0_"(ptr noundef nonnull %.119.lcssa.i, ptr noundef %.024.ph)
  br i1 %i.apb, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  br i1 %i.apa, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread", label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer", !llvm.loop !3054

bb.dj:                                            ; preds = %bb.dh
  br i1 %i.apa, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit", label %bb.dk, !llvm.loop !3054

bb.dk:                                            ; preds = %bb.dj, %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev13AttributeNodeERZNS2_9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0EENS_4pairIT0_bEESD_SD_T1_.exit"
  tail call fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeELb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb"(ptr noundef %.021, ptr noundef nonnull %i.anu, i64 noundef %i.ada, i1 noundef zeroext %i.ac)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer426.backedge"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer426.backedge": ; preds = %bb.dk, %"_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN3tev13AttributeNodeERZNS2_9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0EET0_SC_SC_T1_.exit"
  %.021.ph427.be = phi ptr [ %.321.lcssa.i, %"_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN3tev13AttributeNodeERZNS2_9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0EET0_SC_SC_T1_.exit" ], [ %.119.lcssa.i, %bb.dk ]
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.outer426", !llvm.loop !3054

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit.thread": ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit", %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_T0_.exit", %bb.di, %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE.exit.i.i.i", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i58", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.i", %bb.c, %.preheader.i54, %bb.w, %.preheader.i, %bb.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread29", %bb.e, %bb.d, %bb.f, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit"
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZNSt3__124__sort5_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSE_SE_SE_SE_SE_SD_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call fastcc void @"_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_SC_SC_T0_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.a = load i8, ptr %4, align 8                 ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.f = select i1 %i.b, ptr %i.d, ptr %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = lshr i8 %i.a, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 2 uses
  %i.l = load i8, ptr %3, align 8                 ; 2 uses
  %i.m = trunc i8 %i.l to i1                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.q = select i1 %i.m, ptr %i.o, ptr %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = lshr i8 %i.l, 1
  %i.u = zext nneg i8 %i.t to i64
  %i.v = select i1 %i.m, i64 %i.s, i64 %i.u       ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.k)
  %i.w = tail call noundef i32 @memcmp(ptr noundef %i.f, ptr noundef %i.q, i64 noundef %.sroa.speculated.i.i.i.i.i) #44 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i"

bb.b:                                             ; preds = %bb.a
  %i.y = icmp ult i64 %i.k, %i.v
  br i1 %i.y, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread17.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_SC_SC_SC_T0_.exit"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i": ; preds = %bb.a
  %i.z = icmp slt i32 %i.w, 0
  br i1 %i.z, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread17.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_SC_SC_SC_T0_.exit"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread17.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.i", %bb.b
  tail call void @_ZNSt3__14swapB8ne180100IN3tev13AttributeNodeEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(96) %4) #44
  %i.aa = load i8, ptr %3, align 8                ; 2 uses
  %i.ab = trunc i8 %i.aa to i1                    ; 2 uses
  %i.ac = load ptr, ptr %i.n, align 8
  %i.ad = select i1 %i.ab, ptr %i.ac, ptr %i.p
  %i.ae = load i64, ptr %i.r, align 8
  %i.af = lshr i8 %i.aa, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = select i1 %i.ab, i64 %i.ae, i64 %i.ag   ; 2 uses
  %i.ai = load i8, ptr %2, align 8                ; 2 uses
  %i.aj = trunc i8 %i.ai to i1                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.an = select i1 %i.aj, ptr %i.al, ptr %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = lshr i8 %i.ai, 1
  %i.ar = zext nneg i8 %i.aq to i64
  %i.as = select i1 %i.aj, i64 %i.ap, i64 %i.ar   ; 2 uses
  %.sroa.speculated.i.i.i.i5.i = tail call i64 @llvm.umin.i64(i64 %i.as, i64 %i.ah)
  %i.at = tail call noundef i32 @memcmp(ptr noundef %i.ad, ptr noundef %i.an, i64 noundef %.sroa.speculated.i.i.i.i5.i) #44 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.c, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit7.i"

bb.c:                                             ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread17.i"
  %i.av = icmp ult i64 %i.ah, %i.as
  br i1 %i.av, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit7.thread21.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_SC_SC_SC_T0_.exit"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit7.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread17.i"
  %i.aw = icmp slt i32 %i.at, 0
  br i1 %i.aw, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit7.thread21.i", label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_SC_SC_SC_T0_.exit"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit7.thread21.i": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit7.i", %bb.c
  tail call void @_ZNSt3__14swapB8ne180100IN3tev13AttributeNodeEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %3) #44
  %i.ax = load i8, ptr %2, align 8                ; 2 uses
  %i.ay = trunc i8 %i.ax to i1                    ; 2 uses
  %i.az = load ptr, ptr %i.ak, align 8
  %i.ba = select i1 %i.ay, ptr %i.az, ptr %i.am
  %i.bb = load i64, ptr %i.ao, align 8
  %i.bc = lshr i8 %i.ax, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = select i1 %i.ay, i64 %i.bb, i64 %i.bd   ; 2 uses
  %i.bf = load i8, ptr %1, align 8                ; 2 uses
  %i.bg = trunc i8 %i.bf to i1                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.bk = select i1 %i.bg, ptr %i.bi, ptr %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = lshr i8 %i.bf, 1
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = select i1 %i.bg, i64 %i.bm, i64 %i.bo   ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEjT1_SC_SC_T0_":bb.a

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit12.thread": ; preds = %bb.f, %bb.d, %bb.c, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit21", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit21.thread36", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit15", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit15.thread28", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit12", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit18.thread32"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEbT1_SC_T0_"(ptr noundef %0, ptr noundef %1) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.tev::AttributeNode", align 8 ; 15 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 96
  switch i64 %i.d, label %bb.g [
    i64 0, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread"
    i64 1, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread"
    i64 2, label %bb.b
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %1, i64 -96 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8               ; 2 uses
  %i.g = trunc i8 %i.f to i1                      ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -80
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 -95
  %i.k = select i1 %i.g, ptr %i.i, ptr %i.j
  %i.l = getelementptr inbounds i8, ptr %1, i64 -88
  %i.m = load i64, ptr %i.l, align 8
  %i.n = lshr i8 %i.f, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = select i1 %i.g, i64 %i.m, i64 %i.o       ; 2 uses
  %i.q = load i8, ptr %0, align 8                 ; 2 uses
  %i.r = trunc i8 %i.q to i1                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.v = select i1 %i.r, ptr %i.t, ptr %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = lshr i8 %i.q, 1
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = select i1 %i.r, i64 %i.x, i64 %i.z      ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.p)
  %i.ab = tail call noundef i32 @memcmp(ptr noundef %i.k, ptr noundef %i.v, i64 noundef %.sroa.speculated.i.i.i.i) #44 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit"

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp ult i64 %i.p, %i.aa
  br i1 %i.ad, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread16", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit": ; preds = %bb.b
  %i.ae = icmp slt i32 %i.ab, 0
  br i1 %i.ae, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread16", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread16": ; preds = %bb.c, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit"
  tail call void @_ZNSt3__14swapB8ne180100IN3tev13AttributeNodeEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.e) #44
  br label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread"

bb.d:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ag = getelementptr inbounds i8, ptr %1, i64 -96
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEjT1_SC_SC_T0_"(ptr noundef %0, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag)
  br label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread"

bb.e:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aj = getelementptr inbounds i8, ptr %1, i64 -96
  tail call fastcc void @"_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEvT1_SC_SC_SC_T0_"(ptr noundef %0, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj)
  br label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread"

bb.f:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.an = getelementptr inbounds i8, ptr %1, i64 -96
  tail call fastcc void @"_ZNSt3__124__sort5_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSE_SE_SE_SE_SE_SD_"(ptr noundef %0, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, ptr noundef nonnull %i.an)
  br label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread"

bb.g:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev9ImageData11ensureValidENS_17basic_string_viewIcNS_11char_traitsIcEEEEiE3$_0PNS2_13AttributeNodeEEEjT1_SC_SC_T0_"(ptr noundef %0, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %.not26 = icmp eq ptr %i.aq, %1
  br i1 %.not26, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread", label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 49
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit32.thread"
  %.02029 = phi ptr [ %i.ao, %.lr.ph ], [ %storemerge27, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit32.thread" ] ; 6 uses
  %.02428 = phi i32 [ 0, %.lr.ph ], [ %.125, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit32.thread" ] ; 3 uses
  %storemerge27 = phi ptr [ %i.aq, %.lr.ph ], [ %i.em, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit32.thread" ] ; 14 uses
  %i.ba = load i8, ptr %storemerge27, align 8     ; 2 uses
  %i.bb = trunc i8 %i.ba to i1                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge27, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %storemerge27, i64 1
  %i.bf = select i1 %i.bb, ptr %i.bd, ptr %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge27, i64 8
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = lshr i8 %i.ba, 1
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = select i1 %i.bb, i64 %i.bh, i64 %i.bj   ; 2 uses
  %i.bl = load i8, ptr %.02029, align 8           ; 2 uses
  %i.bm = trunc i8 %i.bl to i1                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.02029, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.02029, i64 1
  %i.bq = select i1 %i.bm, ptr %i.bo, ptr %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.02029, i64 8
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = lshr i8 %i.bl, 1
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = select i1 %i.bm, i64 %i.bs, i64 %i.bu   ; 2 uses
  %.sroa.speculated.i.i.i.i30 = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bk)
  %i.bw = tail call noundef i32 @memcmp(ptr noundef %i.bf, ptr noundef %i.bq, i64 noundef %.sroa.speculated.i.i.i.i30) #44 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.i, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit32"

bb.i:                                             ; preds = %bb.h
  %i.by = icmp ult i64 %i.bk, %i.bv
  br i1 %i.by, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit32.thread20", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit32.thread"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit32": ; preds = %bb.h
  %i.bz = icmp slt i32 %i.bw, 0
  br i1 %i.bz, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit32.thread20", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit32.thread"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit32.thread20": ; preds = %bb.i, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit32"
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %storemerge27, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %storemerge27, i8 0, i64 24, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %storemerge27, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i8 0, i64 24, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %storemerge27, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i8 0, i64 24, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %storemerge27, i64 72 ; 2 uses
  %i.cd = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !129
  store <2 x ptr> %i.cd, ptr %i.at, align 8, !tbaa !129
  %i.ce = getelementptr inbounds nuw i8, ptr %storemerge27, i64 88
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !129
  store ptr %i.cf, ptr %i.au, align 8, !tbaa !129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  %i.cg = load i8, ptr %2, align 8                ; 2 uses
  %i.ch = trunc i8 %i.cg to i1                    ; 2 uses
  %i.ci = load ptr, ptr %i.av, align 8
  %i.cj = select i1 %i.ch, ptr %i.ci, ptr %i.aw
  %i.ck = load i64, ptr %i.ax, align 8
  %i.cl = lshr i8 %i.cg, 1
  %i.cm = zext nneg i8 %i.cl to i64
  %i.cn = select i1 %i.ch, i64 %i.ck, i64 %i.cm   ; 2 uses
  %i.co = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN3tev13AttributeNodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(96) %storemerge27, ptr noundef nonnull align 8 dereferenceable(96) %.02029) #44 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit35"
  %i.cp = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN3tev13AttributeNodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(96) %.01243, ptr noundef nonnull align 8 dereferenceable(96) %i.cq) #44 ; 0 uses
  %.not28 = icmp eq ptr %i.cq, %0
  br i1 %.not28, label %.critedge, label %bb.k, !llvm.loop !3056

bb.k:                                             ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit32.thread20", %bb.j
  %.01243 = phi ptr [ %.02029, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit32.thread20" ], [ %i.cq, %bb.j ] ; 7 uses
  %i.cq = getelementptr inbounds i8, ptr %.01243, i64 -96 ; 4 uses
  %i.cr = load i8, ptr %i.cq, align 8             ; 2 uses
  %i.cs = trunc i8 %i.cr to i1                    ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %.01243, i64 -80
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds i8, ptr %.01243, i64 -95
  %i.cw = select i1 %i.cs, ptr %i.cu, ptr %i.cv
  %i.cx = getelementptr inbounds i8, ptr %.01243, i64 -88
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = lshr i8 %i.cr, 1
  %i.da = zext nneg i8 %i.cz to i64
  %i.db = select i1 %i.cs, i64 %i.cy, i64 %i.da   ; 2 uses
  %.sroa.speculated.i.i.i.i33 = tail call i64 @llvm.umin.i64(i64 %i.db, i64 %i.cn)
  %i.dc = call noundef i32 @memcmp(ptr noundef %i.cj, ptr noundef %i.cw, i64 noundef %.sroa.speculated.i.i.i.i33) #44 ; 2 uses
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.l, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit35"

bb.l:                                             ; preds = %bb.k
  %i.de = icmp ult i64 %i.cn, %i.db
  br i1 %i.de, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit35", label %.critedge

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit35": ; preds = %bb.l, %bb.k
  %.0.i.i.i.i34 = phi i32 [ %i.dc, %bb.k ], [ -2147483648, %bb.l ]
  %i.df = icmp slt i32 %.0.i.i.i.i34, 0
  br i1 %i.df, label %bb.j, label %.critedge, !llvm.loop !3056

.critedge:                                        ; preds = %bb.l, %bb.j, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit35"
  %.012.lcssa = phi ptr [ %.01243, %bb.l ], [ %0, %bb.j ], [ %.01243, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit35" ] ; 11 uses
  %i.dg = load i8, ptr %.012.lcssa, align 8
  %i.dh = trunc i8 %i.dg to i1
  br i1 %i.dh, label %bb.m, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i

bb.m:                                             ; preds = %.critedge
  %i.di = getelementptr inbounds nuw i8, ptr %.012.lcssa, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !126
  %i.dk = load i64, ptr %.012.lcssa, align 8
  %i.dl = and i64 %i.dk, -2
  tail call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dl) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i: ; preds = %bb.m, %.critedge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.lcssa, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %2, align 8
  store i8 0, ptr %i.aw, align 1, !tbaa !126
  %i.dm = getelementptr inbounds nuw i8, ptr %.012.lcssa, i64 24 ; 3 uses
  %i.dn = load i8, ptr %i.dm, align 8
  %i.do = trunc i8 %i.dn to i1
  br i1 %i.do, label %bb.n, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i

bb.n:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.lcssa, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !126
  %i.dr = load i64, ptr %i.dm, align 8
  %i.ds = and i64 %i.dr, -2
  tail call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.ds) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i: ; preds = %bb.n, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.ar, align 8
  store i8 0, ptr %i.ay, align 1, !tbaa !126
  %i.dt = getelementptr inbounds nuw i8, ptr %.012.lcssa, i64 48 ; 3 uses
  %i.du = load i8, ptr %i.dt, align 8
  %i.dv = trunc i8 %i.du to i1
  br i1 %i.dv, label %bb.o, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i

bb.o:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.lcssa, i64 64
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !126
  %i.dy = load i64, ptr %i.dt, align 8
  %i.dz = and i64 %i.dy, -2
  tail call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.dz) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i: ; preds = %bb.o, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %i.as, align 8
  store i8 0, ptr %i.az, align 1, !tbaa !126
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.lcssa, i64 72 ; 5 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !130 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i, label %_ZN3tev13AttributeNodeD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i
  tail call void @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull %i.eb) #44, !inline_history !59
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !130 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.012.lcssa, i64 88
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !129
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ec to i64
  %i.eh = sub i64 %i.ef, %i.eg
  tail call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eh) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i8 0, i64 24, i1 false)
  br label %_ZN3tev13AttributeNodeD2Ev.exit

_ZN3tev13AttributeNodeD2Ev.exit:                  ; preds = %bb.p, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i
  %i.ei = load <2 x ptr>, ptr %i.at, align 8, !tbaa !129
  store <2 x ptr> %i.ei, ptr %i.ea, align 8, !tbaa !129
  %i.ej = load ptr, ptr %i.au, align 8, !tbaa !129
  %i.ek = getelementptr inbounds nuw i8, ptr %.012.lcssa, i64 88
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !129
  %i.el = add i32 %.02428, 1                      ; 2 uses
  %.not29 = icmp eq i32 %i.el, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br i1 %.not29, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.loopexit.split.loop.exit", label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit32.thread"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit32.thread": ; preds = %bb.i, %_ZN3tev13AttributeNodeD2Ev.exit, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit32"
  %.125 = phi i32 [ %i.el, %_ZN3tev13AttributeNodeD2Ev.exit ], [ %.02428, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit32" ], [ %.02428, %bb.i ]
  %i.em = getelementptr inbounds nuw i8, ptr %storemerge27, i64 96 ; 2 uses
  %.not = icmp eq ptr %i.em, %1
  br i1 %.not, label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread", label %bb.h, !llvm.loop !3057

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.loopexit.split.loop.exit": ; preds = %_ZN3tev13AttributeNodeD2Ev.exit
  %i.en = getelementptr inbounds nuw i8, ptr %storemerge27, i64 96
  %i.eo = icmp eq ptr %i.en, %1
  br label %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread"

"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread": ; preds = %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit32.thread", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.loopexit.split.loop.exit", %bb.g, %bb.c, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit", %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread16", %bb.a, %bb.a, %bb.f, %bb.e, %bb.d
  %.5 = phi i1 [ true, %bb.c ], [ true, %bb.f ], [ true, %bb.a ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.a ], [ true, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread16" ], [ true, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit" ], [ true, %bb.g ], [ %i.eo, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit.thread.loopexit.split.loop.exit" ], [ true, %"_ZZN3tev9ImageData11ensureValidENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEiENK3$_0clERKNS_13AttributeNodeES9_.exit32.thread" ]
  ret i1 %.5
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__14swapB8ne180100IN3tev13AttributeNodeEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x i64>, ptr %0, align 8
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.88.0.copyload = load ptr, ptr %.sroa.88.0..sroa_idx, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load <2 x i64>, ptr %i.b, align 8
  %.sroa.1515.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.1515.24.copyload = load ptr, ptr %.sroa.1515.24..sroa_idx, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load <2 x i64>, ptr %i.d, align 8
  %.sroa.2222.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.2222.48.copyload = load ptr, ptr %.sroa.2222.48..sroa_idx, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !129
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.j = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN3tev13AttributeNodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #44 ; 0 uses
  %i.k = load i8, ptr %1, align 8
  %i.l = trunc i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !126
  %i.o = load i64, ptr %1, align 8
  %i.p = and i64 %i.o, -2
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.p) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i: ; preds = %bb.b, %bb.a
  store <2 x i64> %i.a, ptr %1, align 8
  %.sroa.88.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.88.0.copyload, ptr %.sroa.88.0..sroa_idx9, align 8, !tbaa !126
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.r = load i8, ptr %i.q, align 8
  %i.s = trunc i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i

bb.c:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !126
  %i.v = load i64, ptr %i.q, align 8
  %i.w = and i64 %i.v, -2
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.w) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i: ; preds = %bb.c, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i
  store <2 x i64> %i.c, ptr %i.q, align 8
  %.sroa.1515.24..sroa_idx16 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %.sroa.1515.24.copyload, ptr %.sroa.1515.24..sroa_idx16, align 8, !tbaa !126
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.y = load i8, ptr %i.x, align 8
  %i.z = trunc i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i

bb.d:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !126
  %i.ac = load i64, ptr %i.x, align 8
  %i.ad = and i64 %i.ac, -2
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ad) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i: ; preds = %bb.d, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i
  store <2 x i64> %i.e, ptr %i.x, align 8
  %.sroa.2222.48..sroa_idx23 = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %.sroa.2222.48.copyload, ptr %.sroa.2222.48..sroa_idx23, align 8, !tbaa !126
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !130 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_ZN3tev13AttributeNodeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i
  tail call void @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE22__base_destruct_at_endB8ne180100EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull %i.af) #44, !inline_history !59
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !130 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !129
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.al) #45
  br label %_ZN3tev13AttributeNodeD2Ev.exit

_ZN3tev13AttributeNodeD2Ev.exit:                  ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i, %bb.e
  store <2 x ptr> %i.g, ptr %i.ae, align 8, !tbaa !129
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.i, ptr %i.am, align 8, !tbaa !129
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN3tev13AttributeNodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = trunc i8 %i.a to i1
end_hunk_2
