Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matrix_iterator?download=true
inline.NumInlined: 101
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK2cv16MatConstIterator4lposEv:bb.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv16MatConstIterator4seekElb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 8 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %i.c = and i32 %i.b, 16384
  %.not69 = icmp eq i32 %i.c, 0
  br i1 %.not69, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.d, align 8
  %.val70 = load ptr, ptr %i.e, align 8           ; 3 uses
  %i.f = select i1 %2, ptr %.val, ptr %.val70
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45
  %i.i = mul i64 %i.h, %1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i ; 3 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !44
  %i.k = icmp ult ptr %i.j, %.val70
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %.val70, ptr %i.d, align 8, !tbaa !44
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90   ; 2 uses
  %i.n = icmp ugt ptr %i.j, %i.m
  br i1 %i.n, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  store ptr %i.m, ptr %i.d, align 8, !tbaa !44
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !36   ; 4 uses
  %i.q = icmp eq i32 %i.p, 2
  br i1 %i.q, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  br i1 %2, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre76 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !47
  %.pre80 = load i64, ptr %i.t, align 8, !tbaa !40
  %.phi.trans.insert81 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre82 = load i64, ptr %.phi.trans.insert81, align 8, !tbaa !45
  %.pre83 = sext i32 %.pre76 to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = load i64, ptr %i.t, align 8, !tbaa !40   ; 4 uses
  %i.aa = udiv i64 %i.y, %i.z                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !47
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = mul nsw i64 %i.aa, %i.ad
  %i.af = mul i64 %i.aa, %i.z                     ; 0 uses
  %.recomposed = urem i64 %i.y, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !45 ; 2 uses
  %i.ai = udiv i64 %.recomposed, %i.ah
  %i.aj = add i64 %i.ai, %1
  %i.ak = add i64 %i.aj, %i.ae
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.pre-phi = phi i64 [ %.pre83, %._crit_edge ], [ %i.ad, %bb.h ] ; 4 uses
  %i.al = phi i64 [ %.pre82, %._crit_edge ], [ %i.ah, %bb.h ] ; 2 uses
  %i.am = phi i64 [ %.pre80, %._crit_edge ], [ %i.z, %bb.h ]
  %.041 = phi i64 [ %1, %._crit_edge ], [ %i.ak, %bb.h ] ; 2 uses
  %i.an = sdiv i64 %.041, %.pre-phi               ; 4 uses
  %.recomposed96 = srem i64 %.041, %.pre-phi
  %i.ao = trunc i64 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !91 ; 2 uses
  %i.ar = add nsw i32 %i.aq, -1
  %.sroa.speculated62 = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 0)
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %.sroa.speculated62)
  %i.as = sext i32 %.sroa.speculated to i64
  %i.at = mul i64 %i.am, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.at ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.au, ptr %i.av, align 8, !tbaa !46
  %i.aw = mul i64 %i.al, %.pre-phi
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !90
  %i.az = icmp slt i64 %i.an, 0
  br i1 %i.az, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = sext i32 %i.aq to i64
  %.not = icmp slt i64 %i.an, %i.ba
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = mul nsw i64 %i.an, %.pre-phi            ; 0 uses
  %i.bc = mul i64 %i.al, %.recomposed96
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bc
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %i.be = phi ptr [ %i.ax, %bb.j ], [ %i.bd, %bb.k ], [ %i.au, %bb.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !44
  br label %bb.s

bb.m:                                             ; preds = %bb.f
  br i1 %2, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = tail call noundef i64 @_ZNK2cv16MatConstIterator4lposEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.bh = add nsw i64 %i.bg, %1
  %.pre = load ptr, ptr %0, align 8, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bi = phi ptr [ %.pre, %bb.n ], [ %i.a, %bb.m ] ; 4 uses
  %.1 = phi i64 [ %i.bh, %bb.n ], [ %1, %bb.m ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.bk = add nsw i32 %i.p, -1                    ; 2 uses
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !37
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 1)
  %i.bm = icmp ult i32 %i.bk, %narrow.i
  br i1 %i.bm, label %_ZNK2cv8MatShapeixEm.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.8, i32 noundef 103) #14
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !20
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %i.bn

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.o
  %i.bt = zext nneg i32 %i.bk to i64
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %.1, i64 0) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 84 ; 4 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !38
  %i.bx = sext i32 %i.bw to i64                   ; 4 uses
  %i.by = sdiv i64 %spec.store.select, %i.bx      ; 5 uses
  %i.bz = mul nsw i64 %i.by, %i.bx                ; 0 uses
  %.recomposed97 = srem i64 %spec.store.select, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !34 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 128 ; 3 uses
  %sext = shl i64 %.recomposed97, 32
  %i.cd = ashr exact i64 %sext, 32
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !45 ; 2 uses
  %i.cg = mul i64 %i.cd, %i.cf                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !44
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.cb, ptr %i.cj, align 8, !tbaa !46
  %i.ck = icmp samesign ugt i32 %i.p, 1
  br i1 %i.ck, label %_ZNK2cv8MatShapeixEm.exit60.lr.ph, label %_ZNK2cv8MatShapeixEm.exit54

_ZNK2cv8MatShapeixEm.exit60.lr.ph:                ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.cl = add nsw i32 %i.p, -2                    ; 2 uses
  %i.cm = zext i32 %i.cl to i64                   ; 5 uses
  %i.cn = and i64 %i.cm, 1
  %lcmp.mod.not.not = icmp eq i64 %i.cn, 0
  br i1 %lcmp.mod.not.not, label %_ZNK2cv8MatShapeixEm.exit60.prol, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit

_ZNK2cv8MatShapeixEm.exit60.prol:                 ; preds = %_ZNK2cv8MatShapeixEm.exit60.lr.ph
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.cm
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !38
  %i.cq = sext i32 %i.cp to i64                   ; 3 uses
  %i.cr = sdiv i64 %i.by, %i.cq                   ; 3 uses
  %i.cs = mul nsw i64 %i.cr, %i.cq                ; 0 uses
  %.recomposed98 = srem i64 %i.by, %i.cq
  %sext47.prol = shl i64 %.recomposed98, 32
  %i.ct = ashr exact i64 %sext47.prol, 32
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cm
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !40
  %i.cw = mul i64 %i.ct, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cw ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %i.cm, -1
  br label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit

_ZNK2cv8MatShapeixEm.exit60.prol.loopexit:        ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol, %_ZNK2cv8MatShapeixEm.exit60.lr.ph
  %.lcssa93.unr = phi i64 [ poison, %_ZNK2cv8MatShapeixEm.exit60.lr.ph ], [ %i.cr, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %.lcssa.unr = phi ptr [ poison, %_ZNK2cv8MatShapeixEm.exit60.lr.ph ], [ %i.cx, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %indvars.iv.unr = phi i64 [ %i.cm, %_ZNK2cv8MatShapeixEm.exit60.lr.ph ], [ %indvars.iv.next.prol, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %.unr = phi ptr [ %i.cb, %_ZNK2cv8MatShapeixEm.exit60.lr.ph ], [ %i.cx, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %.272.unr = phi i64 [ %i.by, %_ZNK2cv8MatShapeixEm.exit60.lr.ph ], [ %i.cr, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %5 = icmp eq i32 %i.cl, 0
  br i1 %5, label %._ZNK2cv8MatShapeixEm.exit54_crit_edge, label %_ZNK2cv8MatShapeixEm.exit60

._ZNK2cv8MatShapeixEm.exit54_crit_edge:           ; preds = %_ZNK2cv8MatShapeixEm.exit60, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit
  %.lcssa93 = phi i64 [ %.lcssa93.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ], [ %i.ds, %_ZNK2cv8MatShapeixEm.exit60 ]
  %.lcssa = phi ptr [ %.lcssa.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ], [ %i.dy, %_ZNK2cv8MatShapeixEm.exit60 ] ; 2 uses
  store ptr %.lcssa, ptr %i.cj, align 8, !tbaa !46
  br label %_ZNK2cv8MatShapeixEm.exit54

_ZNK2cv8MatShapeixEm.exit54:                      ; preds = %._ZNK2cv8MatShapeixEm.exit54_crit_edge, %_ZNK2cv8MatShapeixEm.exit
  %i.cy = phi ptr [ %.lcssa, %._ZNK2cv8MatShapeixEm.exit54_crit_edge ], [ %i.cb, %_ZNK2cv8MatShapeixEm.exit ] ; 2 uses
  %.2.lcssa = phi i64 [ %.lcssa93, %._ZNK2cv8MatShapeixEm.exit54_crit_edge ], [ %i.by, %_ZNK2cv8MatShapeixEm.exit ]
  %i.cz = mul i64 %i.cf, %i.bx
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.da, ptr %i.db, align 8, !tbaa !90
  %i.dc = icmp sgt i64 %.2.lcssa, 0
  %i.dd = getelementptr inbounds i8, ptr %i.cy, i64 %i.cg
  %storemerge = select i1 %i.dc, ptr %i.da, ptr %i.dd
  store ptr %storemerge, ptr %i.ci, align 8, !tbaa !44
  br label %bb.s

_ZNK2cv8MatShapeixEm.exit60:                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %_ZNK2cv8MatShapeixEm.exit60 ], [ %indvars.iv.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ] ; 4 uses
  %i.de = phi ptr [ %i.dy, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %.272 = phi i64 [ %i.ds, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.272.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ] ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !38
  %i.dh = sext i32 %i.dg to i64                   ; 3 uses
  %i.di = sdiv i64 %.272, %i.dh                   ; 3 uses
  %i.dj = mul nsw i64 %i.di, %i.dh                ; 0 uses
  %.recomposed99 = srem i64 %.272, %i.dh
  %sext47 = shl i64 %.recomposed99, 32
  %i.dk = ashr exact i64 %sext47, 32
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !40
  %i.dn = mul i64 %i.dk, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dn
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !38
  %i.dr = sext i32 %i.dq to i64                   ; 3 uses
  %i.ds = sdiv i64 %i.di, %i.dr                   ; 3 uses
  %i.dt = mul nsw i64 %i.ds, %i.dr                ; 0 uses
  %.recomposed100 = srem i64 %i.di, %i.dr
  %sext47.1 = shl i64 %.recomposed100, 32
  %i.du = ashr exact i64 %sext47.1, 32
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.next
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !40
  %i.dx = mul i64 %i.du, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dx ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %.not91.1 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not91.1, label %._ZNK2cv8MatShapeixEm.exit54_crit_edge, label %_ZNK2cv8MatShapeixEm.exit60, !llvm.loop !89

bb.s:                                             ; preds = %bb.l, %_ZNK2cv8MatShapeixEm.exit54, %bb.c, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv16MatConstIterator4seekEPKib(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(address_is_null) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !36   ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37
  %narrow.i16 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 84 ; 5 uses
  %i.i = zext nneg i32 %i.c to i64                ; 2 uses
  %i.j = add nsw i32 %i.c, -1
  %.not31.not = icmp samesign ugt i32 %narrow.i16, %i.j
  br i1 %.not31.not, label %_ZNK2cv8MatShapeixEm.exit21.preheader, label %bb.g

_ZNK2cv8MatShapeixEm.exit21.preheader:            ; preds = %.lr.ph
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.k = icmp ult i32 %i.c, 4
  br i1 %i.k, label %_ZNK2cv8MatShapeixEm.exit21.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit21.preheader.new

_ZNK2cv8MatShapeixEm.exit21.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit21.preheader
  %unroll_iter = and i64 %i.i, 2147483644
  br label %_ZNK2cv8MatShapeixEm.exit21

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.m = load i32, ptr %i.l, align 4, !tbaa !37
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %_ZNK2cv8MatShapeixEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.8, i32 noundef 103) #14
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %5, align 8, !tbaa !19     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.s = load i64, ptr %i.q, align 8, !tbaa !20
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.c
  %i.u = load i32, ptr %1, align 4, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.w = load i32, ptr %i.v, align 4, !tbaa !38
  %i.x = mul nsw i32 %i.w, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !38
  %i.aa = add nsw i32 %i.x, %i.z
  %i.ab = sext i32 %i.aa to i64
  br label %.loopexit

_ZNK2cv8MatShapeixEm.exit21:                      ; preds = %_ZNK2cv8MatShapeixEm.exit21, %_ZNK2cv8MatShapeixEm.exit21.preheader.new
  %indvars.iv = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit21.preheader.new ], [ %indvars.iv.next.3, %_ZNK2cv8MatShapeixEm.exit21 ] ; 6 uses
  %.01323 = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit21.preheader.new ], [ %i.bh, %_ZNK2cv8MatShapeixEm.exit21 ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit21.preheader.new ], [ %niter.next.3, %_ZNK2cv8MatShapeixEm.exit21 ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !38
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul nsw i64 %.01323, %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !38
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add nsw i64 %i.af, %i.ai
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !38
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.aj, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !38
  %i.aq = sext i32 %i.ap to i64
  %i.ar = add nsw i64 %i.an, %i.aq
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.1
  %i.at = load i32, ptr %i.as, align 4, !tbaa !38
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.ar, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !38
  %i.ay = sext i32 %i.ax to i64
  %i.az = add nsw i64 %i.av, %i.ay
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.2
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !38
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul nsw i64 %i.az, %i.bc
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !38
  %i.bg = sext i32 %i.bf to i64
  %i.bh = add nsw i64 %i.bd, %i.bg                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit21, !llvm.loop !92

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.8, i32 noundef 103) #14
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %bb.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !20
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %common.resume

.loopexit.loopexit.unr-lcssa:                     ; preds = %_ZNK2cv8MatShapeixEm.exit21
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK2cv8MatShapeixEm.exit21.epil.preheader

_ZNK2cv8MatShapeixEm.exit21.epil.preheader:       ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit21.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit21.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %.01323.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit21.preheader ], [ %i.bh, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod33 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod33)
  br label %_ZNK2cv8MatShapeixEm.exit21.epil

_ZNK2cv8MatShapeixEm.exit21.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit21.epil, %_ZNK2cv8MatShapeixEm.exit21.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %_ZNK2cv8MatShapeixEm.exit21.epil ], [ %indvars.iv.epil.init, %_ZNK2cv8MatShapeixEm.exit21.epil.preheader ] ; 3 uses
  %.01323.epil = phi i64 [ %i.bv, %_ZNK2cv8MatShapeixEm.exit21.epil ], [ %.01323.epil.init, %_ZNK2cv8MatShapeixEm.exit21.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit21.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit21.epil.preheader ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.epil
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !38
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul nsw i64 %.01323.epil, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !38
  %i.bu = sext i32 %i.bt to i64
  %i.bv = add nsw i64 %i.br, %i.bu                ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %_ZNK2cv8MatShapeixEm.exit21.epil, !llvm.loop !93

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit21.epil, %.preheader, %_ZNK2cv8MatShapeixEm.exit, %bb.a
end_hunk_0
