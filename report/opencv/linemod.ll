Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/linemod?download=true
inline.NumInlined: 3000
inline.NumDeleted: 1203
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK2cv7linemod8Detector10matchClassERKSt6vectorIS2_IS2_INS_3MatESaIS3_EESaIS5_EESaIS7_EERKS2_INS_5Size_IiEESaISD_EEfRS2_INS0_5MatchESaISI_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS2_IS2_INS0_8TemplateESaISU_EESaISW_EE:bb.a
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bb, %.loopexit351.loopexit ], [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i ] ; 4 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.h, align 8, !tbaa !199
  %i.bd = sub i64 %.pre-phi, %.pre-phi597
  %i.be = lshr exact i64 %i.bd, 4                 ; 2 uses
  %i.bf = load ptr, ptr %i.k, align 8, !tbaa !191
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !55 ; 10 uses
  %i.bi = trunc i64 %i.be to i32
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit351
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !235
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = load ptr, ptr %i.an, align 8, !tbaa !236
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bm, %i.bo
  %i.bq = sdiv exact i64 %i.bp, 40
  %i.br = sub nsw i64 %i.bq, %i.be
  %i.bs = shl i64 %i.br, 32
  %i.bt = ashr exact i64 %i.bs, 32
  %i.bu = insertelement <2 x i32> poison, i32 %i.bh, i64 0
  %i.bv = shufflevector <2 x i32> %i.bu, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN2cv7linemodL10similarityERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEi.exit, %.loopexit351
  %.0145.lcssa = phi i32 [ 0, %.loopexit351 ], [ %i.gx, %_ZN2cv7linemodL10similarityERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEi.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %13) #28
  invoke fastcc void @_ZN2cv7linemodL15addSimilaritiesERKSt6vectorINS_3MatESaIS2_EERS2_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.o unwind label %bb.p

bb.c:                                             ; preds = %.lr.ph, %_ZN2cv7linemodL10similarityERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2cv7linemodL10similarityERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEi.exit ] ; 4 uses
  %.0145443 = phi i32 [ 0, %.lr.ph ], [ %i.gx, %_ZN2cv7linemodL10similarityERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEi.exit ]
  %i.bw = load ptr, ptr %i.an, align 8, !tbaa !236
  %i.bx = getelementptr [40 x i8], ptr %i.bw, i64 %indvars.iv
  %i.by = getelementptr [40 x i8], ptr %i.bx, i64 %i.bt ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !68
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !69
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 12                ; 2 uses
  %i.ch = load ptr, ptr %i.ap, align 8, !tbaa !209
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %indvars.iv
  %i.cj = getelementptr inbounds nuw [208 x i8], ptr %i.bc, i64 %indvars.iv ; 2 uses
  %i.ck = load ptr, ptr %i.l, align 8, !tbaa !422
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -8
  %.sroa.075.0.copyload = load i64, ptr %i.cl, align 4, !tbaa !55 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.075.0.copyload to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.075.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32 ; 2 uses
  %i.cm = icmp ult i64 %i.cg, 64
  br i1 %i.cm, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv7linemodL10similarityERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEi, ptr noundef nonnull @.str.11, i32 noundef 1170) #29
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.h:                                             ; preds = %bb.e
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %9, align 8, !tbaa !53    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !54
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.cn, %bb.g ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.co, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.body

bb.i:                                             ; preds = %bb.c
  %i.cu = sdiv i32 %.sroa.0.0.extract.trunc.i, %i.bh ; 4 uses
  %i.cv = sdiv i32 %.sroa.3.0.extract.trunc.i, %i.bh ; 3 uses
  %i.cw = load i32, ptr %i.by, align 8, !tbaa !65
  %i.cx = add nsw i32 %i.cw, -1
  %i.cy = sdiv i32 %i.cx, %i.bh                   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !66
  %i.db = add nsw i32 %i.da, -1
  %i.dc = sdiv i32 %i.db, %i.bh                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %11, i32 noundef %i.cv, i32 noundef %i.cu, i32 noundef 0)
          to label %.noexc161 unwind label %bb.n

.noexc161:                                        ; preds = %bb.i
  %i.dd = load ptr, ptr %11, align 8, !tbaa !99   ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !39
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef nonnull align 8 dereferenceable(688) %11, ptr noundef nonnull align 8 dereferenceable(208) %i.cj, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit.i unwind label %bb.j, !inline_history !3

_ZN2cv3MataSERKNS_7MatExprE.exit.i:               ; preds = %.noexc161
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.m) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.n) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.o) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !102 ; 9 uses
  %i.dj = load ptr, ptr %i.ca, align 8, !tbaa !68 ; 2 uses
  %i.dk = load ptr, ptr %i.bz, align 8, !tbaa !69 ; 2 uses
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = sdiv exact i64 %i.dn, 12
  %i.dp = trunc i64 %i.do to i32
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph60.i, label %_ZN2cv7linemodL10similarityERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEi.exit

.lr.ph60.i:                                       ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i
  %.neg.i = sub i32 %i.dc, %i.cv
  %.neg67.i = mul i32 %.neg.i, %i.cu
  %i.dr = add i32 %.neg67.i, %i.cy
  %.not5057.i = icmp sgt i32 %i.dr, -1
  %i.ds = sub i32 %i.cv, %i.dc
  %i.dt = mul i32 %i.ds, %i.cu
  %i.du = sub i32 %i.dt, %i.cy                    ; 3 uses
  %wide.trip.count.i = zext i32 %i.du to i64      ; 10 uses
  %scevgep = getelementptr i8, ptr %i.di, i64 %wide.trip.count.i
  %min.iters.check = icmp ult i32 %i.du, 4
  %min.iters.check829 = icmp ult i32 %i.du, 32
  %i.dv = and i64 %wide.trip.count.i, 28
  %n.vec = and i64 %wide.trip.count.i, 4294967264 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %min.epilog.iters.check = icmp eq i64 %i.dv, 0
  %n.vec833 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  %cmp.n838 = icmp eq i64 %n.vec833, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.k

bb.j:                                             ; preds = %.noexc161
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %.body

bb.k:                                             ; preds = %.loopexit.i, %.lr.ph60.i
  %i.dx = phi ptr [ %i.dk, %.lr.ph60.i ], [ %i.gn, %.loopexit.i ] ; 4 uses
  %i.dy = phi ptr [ %i.dj, %.lr.ph60.i ], [ %i.go, %.loopexit.i ] ; 3 uses
  %indvars.iv62.i = phi i64 [ 0, %.lr.ph60.i ], [ %indvars.iv.next63.i, %.loopexit.i ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [12 x i8], ptr %i.dx, i64 %indvars.iv62.i ; 2 uses
  %i.ea = load <2 x i32>, ptr %i.dz, align 4, !tbaa !55 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !55
  %i.eb = extractelement <2 x i32> %i.ea, i64 0   ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ed = icmp slt i32 %i.eb, %.sroa.0.0.extract.trunc.i
  %i.ee = extractelement <2 x i32> %i.ea, i64 1   ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, -1
  %or.cond.not56.i = select i1 %i.ed, i1 %i.ef, i1 false
  %.not.i = icmp slt i32 %i.ee, %.sroa.3.0.extract.trunc.i
  %or.cond51.i = select i1 %or.cond.not56.i, i1 %.not.i, i1 false
  br i1 %or.cond51.i, label %bb.m, label %.loopexit.i

bb.m:                                             ; preds = %bb.l
  %.val.i = load ptr, ptr %i.ci, align 8, !tbaa !200
  %i.eg = sext i32 %.sroa.7.0.copyload.i to i64
  %i.eh = getelementptr inbounds nuw [208 x i8], ptr %.val.i, i64 %i.eg ; 2 uses
  %.frozen = freeze <2 x i32> %i.ea               ; 2 uses
  %.frozen1005.a = freeze <2 x i32> %i.bv         ; 2 uses
  %i.ei = sdiv <2 x i32> %.frozen, %.frozen1005.a ; 3 uses
  %i.ej = mul <2 x i32> %i.ei, %.frozen1005.a
  %.decomposed = sub <2 x i32> %.frozen, %i.ej    ; 2 uses
  %i.ek = extractelement <2 x i32> %.decomposed, i64 1
  %i.el = mul i32 %i.ek, %i.bh
  %i.em = extractelement <2 x i32> %.decomposed, i64 0
  %i.en = add i32 %i.el, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !102 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 128
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !57
  %i.es = sext i32 %i.en to i64
  %i.et = mul i64 %i.er, %i.es                    ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.et
  %i.ev = extractelement <2 x i32> %i.ei, i64 1
  %i.ew = mul i32 %i.ev, %i.cu
  %i.ex = extractelement <2 x i32> %i.ei, i64 0
  %i.ey = add i32 %i.ew, %i.ex
  %i.ez = sext i32 %i.ey to i64                   ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %i.eu, i64 %i.ez ; 7 uses
  br i1 %.not5057.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %bb.m
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %17 = add i64 %i.et, %i.ez                      ; 2 uses
  %scevgep826 = getelementptr i8, ptr %i.ep, i64 %17
  %scevgep827.a = getelementptr i8, ptr %i.ep, i64 %wide.trip.count.i
  %scevgep828 = getelementptr i8, ptr %scevgep827.a, i64 %17
  %bound0 = icmp ult ptr %i.di, %scevgep828
  %bound1 = icmp ult ptr %scevgep826, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check829, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.di, i64 %index ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.fb, align 1, !tbaa !54, !alias.scope !423, !noalias !424
  %wide.load830.a = load <16 x i8>, ptr %i.fc, align 1, !tbaa !54, !alias.scope !423, !noalias !424
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load831.a = load <16 x i8>, ptr %i.fd, align 1, !tbaa !54, !alias.scope !424
  %wide.load832 = load <16 x i8>, ptr %i.fe, align 1, !tbaa !54, !alias.scope !424
  %i.ff = add <16 x i8> %wide.load831.a, %wide.load
  %i.fg = add <16 x i8> %wide.load832, %wide.load830.a
  store <16 x i8> %i.ff, ptr %i.fb, align 1, !tbaa !54, !alias.scope !423, !noalias !424
  store <16 x i8> %i.fg, ptr %i.fc, align 1, !tbaa !54, !alias.scope !423, !noalias !424
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !399

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !218

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index834 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next837, %vec.epilog.vector.body ] ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.di, i64 %index834 ; 2 uses
  %wide.load835.a = load <4 x i8>, ptr %i.fi, align 1, !tbaa !54, !alias.scope !423, !noalias !424
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 %index834
  %wide.load836 = load <4 x i8>, ptr %i.fj, align 1, !tbaa !54, !alias.scope !424
  %i.fk = add <4 x i8> %wide.load836, %wide.load835.a
  store <4 x i8> %i.fk, ptr %i.fi, align 1, !tbaa !54, !alias.scope !423, !noalias !424
  %index.next837 = add nuw i64 %index834, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next837, %n.vec833
  br i1 %i.fl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !400

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n838, label %.loopexit.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec833, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.i.prol ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !54
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv.i.prol
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !54
  %i.fq = add i8 %i.fp, %i.fn
  store i8 %i.fq, ptr %i.fm, align 1, !tbaa !54
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !401

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.fr = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.fs = icmp ugt i64 %i.fr, -4
  br i1 %i.fs, label %.loopexit.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.i ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !54
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv.i
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !54
  %i.fx = add i8 %i.fw, %i.fu
  store i8 %i.fx, ptr %i.ft, align 1, !tbaa !54
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next.i ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !54
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv.next.i
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !54
  %i.gc = add i8 %i.gb, %i.fz
  store i8 %i.gc, ptr %i.fy, align 1, !tbaa !54
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !54
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv.next.i.1
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !54
  %i.gh = add i8 %i.gg, %i.ge
  store i8 %i.gh, ptr %i.gd, align 1, !tbaa !54
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !54
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv.next.i.2
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !54
  %i.gm = add i8 %i.gl, %i.gj
  store i8 %i.gm, ptr %i.gi, align 1, !tbaa !54
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.loopexit.loopexit.i, label %.lr.ph.i, !llvm.loop !402

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %i.ca, align 8, !tbaa !68
  %.pre65.i = load ptr, ptr %i.bz, align 8, !tbaa !69
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.m, %bb.l, %bb.k
  %i.gn = phi ptr [ %.pre65.i, %.loopexit.loopexit.i ], [ %i.dx, %bb.m ], [ %i.dx, %bb.k ], [ %i.dx, %bb.l ] ; 2 uses
  %i.go = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %i.dy, %bb.m ], [ %i.dy, %bb.k ], [ %i.dy, %bb.l ] ; 2 uses
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.gn to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = sdiv exact i64 %i.gr, 12
  %i.gt = shl i64 %i.gs, 32
  %i.gu = ashr exact i64 %i.gt, 32
  %i.gv = icmp slt i64 %indvars.iv.next63.i, %i.gu
  br i1 %i.gv, label %bb.k, label %_ZN2cv7linemodL10similarityERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEi.exit, !llvm.loop !403

_ZN2cv7linemodL10similarityERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEi.exit: ; preds = %.loopexit.i, %_ZN2cv3MataSERKNS_7MatExprE.exit.i
  %i.gw = trunc nuw nsw i64 %i.cg to i32
  %i.gx = add nuw nsw i32 %.0145443, %i.gw        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gy = load ptr, ptr %i.g, align 8, !tbaa !169
  %i.gz = load ptr, ptr %0, align 8, !tbaa !170
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb
  %i.hd = shl i64 %i.hc, 28
  %i.he = ashr i64 %i.hd, 32
  %i.hf = icmp slt i64 %indvars.iv.next, %i.he
  br i1 %i.hf, label %bb.c, label %._crit_edge, !llvm.loop !404

bb.n:                                             ; preds = %bb.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %._crit_edge
  %i.hh = shl nsw i32 %.0145.lcssa, 1
  %i.hi = sitofp i32 %i.hh to float               ; 2 uses
  %i.hj = call float @llvm.fmuladd.f32(float %i.p, float %i.hi, float %i.hi)
  %i.hk = fadd float %i.hj, 5.000000e-01
  %i.hl = fptosi float %i.hk to i32
  %i.hm = load i32, ptr %i.q, align 8, !tbaa !100 ; 2 uses
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %.lr.ph460, label %._crit_edge461

.lr.ph460:                                        ; preds = %bb.o
  %i.ho = sdiv i32 %i.bh, 2
  %i.hp = srem i32 %i.bh, 2
  %i.hq = add nsw i32 %i.hp, -1
  %i.hr = add nsw i32 %i.hq, %i.ho                ; 2 uses
  %i.hs = shl nsw i32 %.0145.lcssa, 2
  %i.ht = sitofp i32 %i.hs to float
  %i.hu = trunc i64 %.0506 to i32
  %.pre588 = load i32, ptr %i.t, align 4, !tbaa !101 ; 2 uses
  br label %bb.q

._crit_edge461:                                   ; preds = %._crit_edge451, %bb.o
  %.sroa.29.0.lcssa = phi ptr [ null, %bb.o ], [ %.sroa.29.1.lcssa, %._crit_edge451 ] ; 3 uses
  %.sroa.15.0.lcssa = phi ptr [ null, %bb.o ], [ %.sroa.15.1.lcssa, %._crit_edge451 ] ; 2 uses
  %.sroa.0319.0.lcssa = phi ptr [ null, %bb.o ], [ %.sroa.0319.1.lcssa, %._crit_edge451 ] ; 14 uses
  %i.hv = load i32, ptr %i.ab, align 8, !tbaa !189 ; 2 uses
  %i.hw = icmp sgt i32 %i.hv, 1
  br i1 %i.hw, label %.lr.ph503, label %._crit_edge504

.lr.ph503:                                        ; preds = %._crit_edge461
  %i.hx = add nsw i32 %i.hv, -2
  %i.hy = ptrtoint ptr %.sroa.0319.0.lcssa to i64 ; 2 uses
  %i.hz = zext nneg i32 %i.hx to i64
  br label %bb.ag

bb.p:                                             ; preds = %._crit_edge
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EED2Ev.exit246

bb.q:                                             ; preds = %.lr.ph460, %._crit_edge451
  %i.ib = phi i32 [ %i.hm, %.lr.ph460 ], [ %i.im, %._crit_edge451 ]
  %i.ic = phi i32 [ %.pre588, %.lr.ph460 ], [ %i.in, %._crit_edge451 ] ; 2 uses
  %i.id = phi i32 [ %.pre588, %.lr.ph460 ], [ %i.io, %._crit_edge451 ] ; 2 uses
  %indvars.iv565 = phi i64 [ 0, %.lr.ph460 ], [ %indvars.iv.next566, %._crit_edge451 ] ; 3 uses
  %.sroa.0319.0457 = phi ptr [ null, %.lr.ph460 ], [ %.sroa.0319.1.lcssa, %._crit_edge451 ] ; 2 uses
  %.sroa.15.0456 = phi ptr [ null, %.lr.ph460 ], [ %.sroa.15.1.lcssa, %._crit_edge451 ] ; 2 uses
  %.sroa.29.0455 = phi ptr [ null, %.lr.ph460 ], [ %.sroa.29.1.lcssa, %._crit_edge451 ] ; 2 uses
  %i.ie = load ptr, ptr %i.r, align 8, !tbaa !102
  %i.if = load i64, ptr %i.s, align 8, !tbaa !57
  %i.ig = mul i64 %i.if, %indvars.iv565
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ig
  %i.ii = icmp sgt i32 %i.id, 0
  br i1 %i.ii, label %.lr.ph450, label %._crit_edge451

.lr.ph450:                                        ; preds = %bb.q
  %i.ij = trunc i64 %indvars.iv565 to i32
end_hunk_0
