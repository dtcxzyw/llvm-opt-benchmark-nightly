Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/voxel?download=true
inline.NumInlined: 186
inline.NumDeleted: 98
begin_hunk_0_@_ZN16VoxelManipulator7addAreaERK9VoxelArea:bb.a
bb.h:                                             ; preds = %_ZN9VoxelArea7addAreaERKS_.exit
  %i.bn = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 noundef 150000000)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.j:                                             ; preds = %bb.i
  call void @_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  invoke void @__cxa_throw(ptr nonnull %i.bn, ptr nonnull @_ZTI13BaseException, ptr nonnull @_ZN13BaseExceptionD2Ev) #21
          to label %bb.m unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread.i: ; preds = %bb.h
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread25.i

bb.k:                                             ; preds = %bb.j
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %2, align 8, !tbaa !42    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !25
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bv = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.i
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread25.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !25
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread25.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ce = load i64, ptr %i.bw, align 8, !tbaa !25
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.cf) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread25.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread.i
  %.pn.pn18.i = phi { ptr, i32 } [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread.i ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread.i ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @__cxa_free_exception(ptr %i.bn) #20
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread25.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i
  %.pn.pn17.i = phi { ptr, i32 } [ %.pn.pn18.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread25.i ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i ]
  resume { ptr, i32 } %.pn.pn17.i

bb.m:                                             ; preds = %bb.j
  unreachable

_ZL9checkAreaRK9VoxelArea.exit:                   ; preds = %_ZN9VoxelArea7addAreaERKS_.exit
  %i.cg = mul i32 %i.bh, %.sroa.30.0
  %i.ch = mul i32 %i.cg, %i.bf
  %i.ci = zext i32 %i.ch to i64                   ; 3 uses
  %i.cj = shl nuw nsw i64 %i.ci, 2
  %i.ck = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cj) #22 ; 2 uses
  %i.cl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ci) #22 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cl, i8 1, i64 %i.ci, i1 false)
  %i.cm = load i32, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !23 ; 2 uses
  %i.cn = load i16, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !28 ; 3 uses
  %i.co = sext i16 %i.cn to i32                   ; 2 uses
  %i.cp = load i16, ptr %.sroa.18.0..sroa_idx, align 2, !tbaa !29 ; 2 uses
  %.not96 = icmp sgt i16 %i.cn, %i.cp
  br i1 %.not96, label %._crit_edge99.split, label %.lr.ph98

.lr.ph98:                                         ; preds = %_ZL9checkAreaRK9VoxelArea.exit
  %i.cq = load i16, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !27 ; 2 uses
  %i.cr = sext i16 %i.cq to i32                   ; 2 uses
  %i.cs = load i16, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !26 ; 2 uses
  %.not3092 = icmp sgt i16 %i.cq, %i.cs
  %i.ct = extractelement <4 x i16> %i.bc, i64 0
  %i.cu = sext i16 %i.ct to i32
  %i.cv = extractelement <2 x i16> %i.bd, i64 1
  %i.cw = sext i16 %i.cv to i32
  %i.cx = zext i32 %i.cm to i64                   ; 2 uses
  %i.cy = shl nuw nsw i64 %i.cx, 2
  br i1 %.not3092, label %._crit_edge99.split, label %.lr.ph98.split

.lr.ph98.split:                                   ; preds = %.lr.ph98
  %i.cz = sext i16 %i.cs to i32
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dc = extractelement <2 x i16> %i.bd, i64 0
  %i.dd = sext i16 %i.dc to i32
  %i.de = load i16, ptr %i.h, align 8, !tbaa !31
  %i.df = load i32, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !33
  %i.dg = sext i16 %i.de to i32
  %invariant.op94 = sub nsw i32 %i.dg, %i.dd
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !21
  %i.di = load ptr, ptr %i.da, align 8, !tbaa !22
  %i.dj = tail call i16 @llvm.smax.i16(i16 %i.cp, i16 %i.cn)
  %smax102 = sext i16 %i.dj to i32
  br label %.lr.ph

._crit_edge99.split:                              ; preds = %._crit_edge, %.lr.ph98, %_ZL9checkAreaRK9VoxelArea.exit
  store <2 x i16> %i.bd, ptr %i.h, align 8, !tbaa !13
  store <4 x i16> %i.bc, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !13
  store <2 x i32> %i.be, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !11
  store i32 %.sroa.30.0, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !11
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !21 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !22 ; 2 uses
  store ptr %i.ck, ptr %i.dk, align 8, !tbaa !21
  store ptr %i.cl, ptr %i.dm, align 8, !tbaa !22
  %i.do = icmp eq ptr %i.dl, null
  br i1 %i.do, label %bb.p, label %bb.o

.lr.ph:                                           ; preds = %.lr.ph98.split, %._crit_edge
  %.02797 = phi i32 [ %i.co, %.lr.ph98.split ], [ %i.du, %._crit_edge ] ; 4 uses
  %i.dp = sub nsw i32 %.02797, %i.co
  %i.dq = mul nsw i32 %i.dp, %i.df
  %invariant.op = sub i32 %i.dq, %i.cr
  %i.dr = sub nsw i32 %.02797, %i.cu
  %i.ds = mul nsw i32 %i.dr, %i.bh
  %i.dt = sub i32 %i.ds, %i.cw
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
  %i.du = add nsw i32 %.02797, 1
  %exitcond103.not = icmp eq i32 %.02797, %smax102
  br i1 %exitcond103.not, label %._crit_edge99.split, label %.lr.ph, !llvm.loop !128

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %.093 = phi i32 [ %i.cr, %.lr.ph ], [ %i.ee, %bb.n ] ; 4 uses
  %.reass = add i32 %.093, %invariant.op
  %i.dv = mul i32 %.reass, %i.cm
  %i.dw = add i32 %i.dt, %.093
  %i.dx = mul i32 %i.dw, %i.bf
  %.reass95 = add i32 %i.dx, %invariant.op94
  %i.dy = zext i32 %.reass95 to i64               ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dy
  %i.ea = zext i32 %i.dv to i64                   ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.ea
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dz, ptr align 4 %i.eb, i64 %i.cy, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.dy
  %i.ed = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ea
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr align 1 %i.ed, i64 %i.cx, i1 false)
  %i.ee = add nsw i32 %.093, 1
  %exitcond.not = icmp eq i32 %.093, %i.cz
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !129

bb.o:                                             ; preds = %._crit_edge99.split
  tail call void @_ZdaPv(ptr noundef nonnull %i.dl) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge99.split
  %i.ef = icmp eq ptr %i.dn, null
  br i1 %i.ef, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZdaPv(ptr noundef nonnull %i.dn) #18
  br label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread

_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread:     ; preds = %bb.a, %bb.p, %bb.q, %_ZNK9VoxelArea8containsERKS_.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN16VoxelManipulator8copyFromEP7MapNodebRK9VoxelAreaN4core8vector3dIsEES7_RKS7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %3, i48 %4, i48 %5, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %6) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !43
  %i.h = icmp sgt i16 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph, label %._crit_edge57.a

.preheader.lr.ph:                                 ; preds = %bb.a
  %.sroa.7.0.extract.shift = lshr i48 %5, 32
  %.sroa.7.0.extract.trunc = trunc nuw i48 %.sroa.7.0.extract.shift to i16 ; 2 uses
  %i.i = sext i16 %.sroa.7.0.extract.trunc to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i16, ptr %i.j, align 4, !tbaa !32
  %i.l = sext i16 %i.k to i32                     ; 2 uses
  %i.m = sub nsw i32 %i.i, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !33   ; 2 uses
  %i.p = mul nsw i32 %i.m, %i.o
  %.sroa.4.0.extract.shift = lshr i48 %5, 16
  %.sroa.4.0.extract.trunc = trunc i48 %.sroa.4.0.extract.shift to i16
  %i.q = sext i16 %.sroa.4.0.extract.trunc to i32 ; 2 uses
  %i.r = add i32 %i.p, %i.q                       ; 2 uses
  %i.s = load i16, ptr %i.e, align 2, !tbaa !44   ; 4 uses
  %i.t = sext i16 %i.s to i32
  %i.u = add i16 %.sroa.7.0.extract.trunc, 1
  %i.v = sext i16 %i.u to i32
  %i.w = sub nsw i32 %i.v, %i.l
  %i.x = mul nsw i32 %i.w, %i.o
  %i.y = add i32 %i.x, %i.q
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = add i32 %i.r, %i.t
  %reass.mul58 = sub i32 %i.y, %i.ab
  %invariant.op = mul i32 %reass.mul58, %i.d
  %i.ac = icmp sgt i16 %i.s, 0
  br i1 %i.ac, label %.preheader.preheader.a, label %._crit_edge57.a

.preheader.preheader.a:                           ; preds = %.preheader.lr.ph
  %.sroa.032.0.extract.trunc = trunc i48 %4 to i16
  %i.ad = sext i16 %.sroa.032.0.extract.trunc to i32
  %i.ae = load i16, ptr %3, align 4, !tbaa !36
  %i.af = sext i16 %i.ae to i32
  %i.ag = sub nsw i32 %i.ad, %i.af
  %i.ah = ashr i48 %4, 32
  %i.ai = trunc nsw i48 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !32
  %i.al = sext i16 %i.ak to i32
  %i.am = sub nsw i32 %i.ai, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !33
  %i.ap = mul nsw i32 %i.am, %i.ao
  %.sroa.2.0.extract.shift = lshr i48 %4, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16
  %i.aq = sext i16 %.sroa.2.0.extract.trunc to i32
  %i.ar = add i32 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 2
  %7 = load i16, ptr %i.as, align 2, !tbaa !35
  %8 = sext i16 %7 to i32
  %9 = sub i32 %i.ar, %8
  %10 = mul i32 %9, %i.b
  %11 = add nsw i32 %i.ag, %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.at = load i16, ptr %12, align 2, !tbaa !35
  %i.au = sext i16 %i.at to i32
  %i.av = sub i32 %i.r, %i.au
  %i.aw = mul i32 %i.av, %i.d
  %.sroa.0.0.extract.trunc = trunc i48 %5 to i16
  %13 = sext i16 %.sroa.0.0.extract.trunc to i32
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i16, ptr %14, align 8, !tbaa !36
  %16 = sext i16 %15 to i32
  %17 = sub nsw i32 %13, %16
  %i.ax = add nsw i32 %i.aw, %17
  %18 = sext i32 %i.d to i64                      ; 2 uses
  %19 = sext i32 %i.b to i64
  br label %.preheader.a

.preheader.a:                                     ; preds = %.preheader.preheader.a, %._crit_edge
  %i.ay = phi i16 [ %29, %._crit_edge ], [ %i.s, %.preheader.preheader.a ] ; 4 uses
  %i.az = phi i16 [ %30, %._crit_edge ], [ %i.s, %.preheader.preheader.a ] ; 2 uses
  %.03356.a = phi i16 [ %i.cd, %._crit_edge ], [ 0, %.preheader.preheader.a ]
  %.03455 = phi i32 [ %.reass, %._crit_edge ], [ %i.ax, %.preheader.preheader.a ] ; 4 uses
  %.03554.a = phi i32 [ %.136.lcssa, %._crit_edge ], [ %11, %.preheader.preheader.a ] ; 4 uses
  %i.ba = icmp sgt i16 %i.az, 0
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader.a
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %20 = sext i32 %.03455 to i64
  %21 = sext i32 %.03554.a to i64
  %.pre71 = load i16, ptr %6, align 2, !tbaa !45
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bb = load i16, ptr %6, align 2, !tbaa !45    ; 2 uses
  %i.bc = icmp slt i16 %i.bb, 1
  br i1 %i.bc, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %22 = sext i32 %.03455 to i64
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %smax = tail call i16 @llvm.smax.i16(i16 %i.ay, i16 1)
  %23 = zext nneg i16 %smax to i32                ; 2 uses
  %24 = mul i32 %i.b, %23
  %25 = add i32 %.03554.a, %24
  %26 = mul i32 %i.d, %23
  %27 = add i32 %.03455, %26
  br label %._crit_edge

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader, %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit.us
  %i.bd = phi i16 [ %i.bb, %.lr.ph.split.us.split.preheader ], [ %i.bv, %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit.us ] ; 3 uses
  %indvars.iv69 = phi i64 [ %22, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next70, %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit.us ] ; 3 uses
  %.049.us = phi i16 [ 0, %.lr.ph.split.us.split.preheader ], [ %i.bw, %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit.us ]
  %.13645.us = phi i32 [ %.03554.a, %.lr.ph.split.us.split.preheader ], [ %28, %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit.us ]
  %i.be = icmp slt i16 %i.bd, 1
  br i1 %i.be, label %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit.us, label %.lr.ph.preheader.i.i.i.i.us

.lr.ph.preheader.i.i.i.i.us:                      ; preds = %.lr.ph.split.us.split
  %i.bf = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv69 ; 4 uses
  %i.bh = zext nneg i16 %i.bd to i64
  %.idx.i.i.us = shl nuw nsw i64 %i.bh, 2         ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.i.i.us
  %.pre.i.i.i.i.us = load i32, ptr %1, align 4    ; 2 uses
  %i.bj = add nsw i64 %.idx.i.i.us, -4            ; 2 uses
  %i.bk = lshr exact i64 %i.bj, 2
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i.us
  %n.vec = and i64 %i.bl, 9223372036854775800     ; 3 uses
  %i.bm = shl i64 %n.vec, 2
  %i.bn = getelementptr i8, ptr %i.bg, i64 %i.bm
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.us, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bp, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit.loopexit.us, label %.lr.ph.i.i.i.i.us.preheader

.lr.ph.i.i.i.i.us.preheader:                      ; preds = %.lr.ph.preheader.i.i.i.i.us, %middle.block
  %.06.i.i.i.i.us.ph = phi ptr [ %i.bg, %.lr.ph.preheader.i.i.i.i.us ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i.i.i.i.us

.lr.ph.i.i.i.i.us:                                ; preds = %.lr.ph.i.i.i.i.us.preheader, %.lr.ph.i.i.i.i.us
  %.06.i.i.i.i.us = phi ptr [ %i.br, %.lr.ph.i.i.i.i.us ], [ %.06.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.us.preheader ] ; 2 uses
  store i32 %.pre.i.i.i.i.us, ptr %.06.i.i.i.i.us, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.us, i64 4 ; 2 uses
  %.not.i.i.i.i.us = icmp eq ptr %i.br, %i.bi
  br i1 %.not.i.i.i.i.us, label %_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit.loopexit.us, label %.lr.ph.i.i.i.i.us, !llvm.loop !132

.lr.ph.i.i.i.i38.us:                              ; preds = %_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit.loopexit.us
  %i.bs = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %indvars.iv69
  %i.bu = zext nneg i16 %.pr.us to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bt, i8 0, i64 %i.bu, i1 false), !tbaa !25
  %.pre72.a = load i16, ptr %6, align 2, !tbaa !45
  br label %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit.us

_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit.us:           ; preds = %.lr.ph.i.i.i.i38.us, %_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit.loopexit.us, %.lr.ph.split.us.split
  %i.bv = phi i16 [ %.pre72.a, %.lr.ph.i.i.i.i38.us ], [ %.pr.us, %_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit.loopexit.us ], [ %i.bd, %.lr.ph.split.us.split ]
  %28 = add nsw i32 %.13645.us, %i.b              ; 2 uses
  %indvars.iv.next70 = add nsw i64 %indvars.iv69, %18 ; 2 uses
  %i.bw = add nuw nsw i16 %.049.us, 1             ; 2 uses
  %i.bx = load i16, ptr %i.e, align 2, !tbaa !44  ; 3 uses
  %i.by = icmp slt i16 %i.bw, %i.bx
  br i1 %i.by, label %.lr.ph.split.us.split, label %._crit_edge.loopexit59, !llvm.loop !133

_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit.loopexit.us: ; preds = %.lr.ph.i.i.i.i.us, %middle.block
  %.pr.us = load i16, ptr %6, align 2, !tbaa !45  ; 3 uses
  %i.bz = icmp slt i16 %.pr.us, 1
  br i1 %i.bz, label %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit.us, label %.lr.ph.i.i.i.i38.us

._crit_edge57.a:                                  ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge.loopexit59:                           ; preds = %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit.us
  %i.ca = trunc nsw i64 %indvars.iv.next70 to i32
  br label %._crit_edge

._crit_edge.loopexit60:                           ; preds = %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit
  %i.cb = trunc nsw i64 %indvars.iv.next68 to i32
  %i.cc = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit60, %._crit_edge.loopexit59, %.lr.ph.split.us.split.us, %.preheader.a
  %29 = phi i16 [ %i.ay, %.preheader.a ], [ %i.ay, %.lr.ph.split.us.split.us ], [ %i.bx, %._crit_edge.loopexit59 ], [ %i.cs, %._crit_edge.loopexit60 ]
  %30 = phi i16 [ %i.az, %.preheader.a ], [ %i.ay, %.lr.ph.split.us.split.us ], [ %i.bx, %._crit_edge.loopexit59 ], [ %i.cs, %._crit_edge.loopexit60 ]
  %.136.lcssa = phi i32 [ %.03554.a, %.preheader.a ], [ %25, %.lr.ph.split.us.split.us ], [ %28, %._crit_edge.loopexit59 ], [ %i.cb, %._crit_edge.loopexit60 ]
  %.1.lcssa = phi i32 [ %.03455, %.preheader.a ], [ %27, %.lr.ph.split.us.split.us ], [ %i.ca, %._crit_edge.loopexit59 ], [ %i.cc, %._crit_edge.loopexit60 ]
  %.reass = add i32 %.1.lcssa, %invariant.op
  %i.cd = add nuw nsw i16 %.03356.a, 1            ; 2 uses
  %31 = load i16, ptr %i.f, align 2, !tbaa !43
  %i.ce = icmp slt i16 %i.cd, %31
  br i1 %i.ce, label %.preheader.a, label %._crit_edge57.a, !llvm.loop !134

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit
  %i.cf = phi i16 [ %.pre71, %.lr.ph.split.preheader ], [ %i.cq, %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit ] ; 3 uses
  %indvars.iv67 = phi i64 [ %21, %.lr.ph.split.preheader ], [ %indvars.iv.next68, %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %20, %.lr.ph.split.preheader ], [ %indvars.iv.next, %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit ] ; 3 uses
  %.049 = phi i16 [ 0, %.lr.ph.split.preheader ], [ %i.cr, %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit ]
  %i.cg = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv67 ; 2 uses
  %i.ch = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %indvars.iv ; 2 uses
  %i.cj = icmp slt i16 %i.cf, 1
  br i1 %i.cj, label %_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %.not.i = icmp eq i16 %i.cf, 1
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !138

bb.c:                                             ; preds = %bb.b
  %i.ck = zext nneg i16 %i.cf to i64
  %.idx.i.i37 = shl nuw nsw i64 %i.ck, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ci, ptr align 4 %i.cg, i64 %.idx.i.i37, i1 false)
  br label %_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit

bb.d:                                             ; preds = %bb.b
  %i.cl = load i32, ptr %i.cg, align 4
  store i32 %i.cl, ptr %i.ci, align 4
  br label %_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit

_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit:     ; preds = %.lr.ph.split, %bb.d, %bb.c
  %.pr = load i16, ptr %6, align 2, !tbaa !45     ; 3 uses
  %i.cm = icmp slt i16 %.pr, 1
  br i1 %i.cm, label %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i38

.lr.ph.i.i.i.i38:                                 ; preds = %_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit
  %i.cn = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %indvars.iv
  %i.cp = zext nneg i16 %.pr to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.co, i8 0, i64 %i.cp, i1 false), !tbaa !25
  %.pre = load i16, ptr %6, align 2, !tbaa !45
  br label %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit

_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit:              ; preds = %_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit, %.lr.ph.i.i.i.i38
  %i.cq = phi i16 [ %.pr, %_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit ], [ %.pre, %.lr.ph.i.i.i.i38 ]
  %indvars.iv.next68 = add nsw i64 %indvars.iv67, %19 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, %18 ; 2 uses
  %i.cr = add nuw nsw i16 %.049, 1                ; 2 uses
  %i.cs = load i16, ptr %i.e, align 2, !tbaa !44  ; 3 uses
  %i.ct = icmp slt i16 %i.cr, %i.cs
  br i1 %i.ct, label %.lr.ph.split, label %._crit_edge.loopexit60, !llvm.loop !135
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK16VoxelManipulator6copyToEP7MapNodeRK9VoxelAreaN4core8vector3dIsEES7_RKS7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %2, i48 %3, i48 %4, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %5) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.221.0.extract.shift = lshr i48 %3, 16
  %.sroa.221.0.extract.trunc = trunc i48 %.sroa.221.0.extract.shift to i16
  %.sroa.2.0.extract.shift = lshr i48 %4, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !43   ; 2 uses
  %i.c = icmp sgt i16 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge39

.preheader.lr.ph:                                 ; preds = %bb.a
  %.sroa.0.0.extract.trunc = trunc i48 %4 to i16
  %.sroa.020.0.extract.trunc = trunc i48 %3 to i16
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = sext i16 %.sroa.020.0.extract.trunc to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.o = sext i16 %.sroa.0.0.extract.trunc to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i16, ptr %i.d, align 2, !tbaa !44   ; 3 uses
  %i.r = icmp sgt i16 %i.q, 0
  br i1 %i.r, label %.preheader.preheader, label %._crit_edge39

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.s = lshr i48 %4, 32
  %i.t = trunc nuw i48 %i.s to i16
  %i.u = lshr i48 %3, 32
  %i.v = trunc nuw i48 %i.u to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge37
  %i.w = phi i16 [ %i.b, %.preheader.preheader ], [ %i.ac, %._crit_edge37 ]
  %i.x = phi i16 [ %i.q, %.preheader.preheader ], [ %i.ad, %._crit_edge37 ] ; 2 uses
  %i.y = phi i16 [ %i.q, %.preheader.preheader ], [ %i.ae, %._crit_edge37 ] ; 2 uses
  %indvars.iv45 = phi i16 [ %i.v, %.preheader.preheader ], [ %indvars.iv.next46, %._crit_edge37 ] ; 2 uses
  %indvars.iv = phi i16 [ %i.t, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge37 ] ; 2 uses
  %.02638 = phi i16 [ 0, %.preheader.preheader ], [ %i.af, %._crit_edge37 ]
  %i.z = sext i16 %indvars.iv to i32
  %i.aa = sext i16 %indvars.iv45 to i32
  %i.ab = icmp sgt i16 %i.y, 0
  br i1 %i.ab, label %.lr.ph36, label %._crit_edge37

.lr.ph36:                                         ; preds = %.preheader
  %.pre = load i16, ptr %5, align 2, !tbaa !45    ; 2 uses
  br label %bb.b

._crit_edge39:                                    ; preds = %._crit_edge37, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge37.loopexit:                           ; preds = %._crit_edge
  %.pre55 = load i16, ptr %i.a, align 2, !tbaa !43
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit, %.preheader
  %i.ac = phi i16 [ %.pre55, %._crit_edge37.loopexit ], [ %i.w, %.preheader ] ; 2 uses
  %i.ad = phi i16 [ %i.bt, %._crit_edge37.loopexit ], [ %i.x, %.preheader ]
  %i.ae = phi i16 [ %i.bt, %._crit_edge37.loopexit ], [ %i.y, %.preheader ]
  %i.af = add nuw nsw i16 %.02638, 1              ; 2 uses
  %i.ag = icmp slt i16 %i.af, %i.ac
  %indvars.iv.next = add i16 %indvars.iv, 1
  %indvars.iv.next46 = add i16 %indvars.iv45, 1
  br i1 %i.ag, label %.preheader, label %._crit_edge39, !llvm.loop !139

bb.b:                                             ; preds = %.lr.ph36, %._crit_edge
  %i.ah = phi i16 [ %i.x, %.lr.ph36 ], [ %i.bt, %._crit_edge ]
  %i.ai = phi i16 [ %.pre, %.lr.ph36 ], [ %i.bu, %._crit_edge ] ; 2 uses
  %i.aj = phi i16 [ %.pre, %.lr.ph36 ], [ %i.bv, %._crit_edge ] ; 2 uses
  %indvars.iv47 = phi i16 [ %.sroa.221.0.extract.trunc, %.lr.ph36 ], [ %indvars.iv.next48, %._crit_edge ] ; 2 uses
  %indvars.iv41 = phi i16 [ %.sroa.2.0.extract.trunc, %.lr.ph36 ], [ %indvars.iv.next42, %._crit_edge ] ; 2 uses
  %.02535 = phi i16 [ 0, %.lr.ph36 ], [ %i.bw, %._crit_edge ]
  %i.ak = icmp sgt i16 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.al = load i16, ptr %i.j, align 8, !tbaa !36
  %i.am = sext i16 %i.al to i32
  %i.an = load i16, ptr %i.n, align 2, !tbaa !35
  %i.ao = sext i16 %i.an to i32
  %i.ap = load i32, ptr %i.l, align 4, !tbaa !34
  %i.aq = load i32, ptr %i.m, align 8, !tbaa !33
  %i.ar = load i16, ptr %i.k, align 4, !tbaa !32
  %i.as = sext i16 %i.ar to i32
  %i.at = load i16, ptr %2, align 4, !tbaa !36
  %i.au = sext i16 %i.at to i32
  %i.av = load i16, ptr %i.h, align 2, !tbaa !35
  %i.aw = sext i16 %i.av to i32
  %i.ax = load i32, ptr %i.f, align 4, !tbaa !34
  %i.ay = load i32, ptr %i.g, align 4, !tbaa !33
  %i.az = load i16, ptr %i.e, align 4, !tbaa !32
  %i.ba = sext i16 %i.az to i32
  %i.bb = sext i16 %indvars.iv47 to i32
  %i.bc = sext i16 %indvars.iv41 to i32
  %i.bd = sub nsw i32 %i.z, %i.as
  %i.be = mul i32 %i.aq, %i.bd
  %i.bf = add i32 %i.be, %i.bc
  %i.bg = sub i32 %i.bf, %i.ao
  %i.bh = mul i32 %i.ap, %i.bg
  %i.bi = add i32 %i.bh, %i.o
  %i.bj = sub i32 %i.bi, %i.am
  %i.bk = sext i32 %i.bj to i64
  %i.bl = sub nsw i32 %i.aa, %i.ba
  %i.bm = mul i32 %i.ay, %i.bl
  %i.bn = add i32 %i.bm, %i.bb
  %i.bo = sub i32 %i.bn, %i.aw
  %i.bp = mul i32 %i.ax, %i.bo
  %i.bq = add i32 %i.bp, %i.i
  %i.br = sub i32 %i.bq, %i.au
  %i.bs = sext i32 %i.br to i64
  %.pre52 = load ptr, ptr %i.p, align 8, !tbaa !21
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre54 = load i16, ptr %i.d, align 2, !tbaa !44
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.bt = phi i16 [ %.pre54, %._crit_edge.loopexit ], [ %i.ah, %bb.b ] ; 4 uses
  %i.bu = phi i16 [ %i.ce, %._crit_edge.loopexit ], [ %i.ai, %bb.b ]
  %i.bv = phi i16 [ %i.ce, %._crit_edge.loopexit ], [ %i.aj, %bb.b ]
  %i.bw = add nuw nsw i16 %.02535, 1              ; 2 uses
  %i.bx = icmp slt i16 %i.bw, %i.bt
  %indvars.iv.next42 = add i16 %indvars.iv41, 1
  %indvars.iv.next48 = add i16 %indvars.iv47, 1
  br i1 %i.bx, label %bb.b, label %._crit_edge37.loopexit, !llvm.loop !140

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %i.by = phi i16 [ %i.ai, %.lr.ph.preheader ], [ %i.ce, %bb.d ]
  %i.bz = phi ptr [ %.pre52, %.lr.ph.preheader ], [ %i.cf, %bb.d ] ; 2 uses
  %indvars.iv49 = phi i64 [ %i.bs, %.lr.ph.preheader ], [ %indvars.iv.next50, %bb.d ] ; 2 uses
  %indvars.iv43 = phi i64 [ %i.bk, %.lr.ph.preheader ], [ %indvars.iv.next44, %bb.d ] ; 2 uses
  %.034 = phi i16 [ 0, %.lr.ph.preheader ], [ %i.cg, %bb.d ]
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %indvars.iv43 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 4, !tbaa !143
  %.not = icmp eq i16 %i.cb, 127
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv49
  %i.cd = load i32, ptr %i.ca, align 4
  store i32 %i.cd, ptr %i.cc, align 4
  %.pre51 = load ptr, ptr %i.p, align 8, !tbaa !21
  %.pre53 = load i16, ptr %5, align 2, !tbaa !45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.ce = phi i16 [ %.pre53, %bb.c ], [ %i.by, %.lr.ph ] ; 4 uses
  %i.cf = phi ptr [ %.pre51, %bb.c ], [ %i.bz, %.lr.ph ]
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, 1
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, 1
  %i.cg = add nuw nsw i16 %.034, 1                ; 2 uses
  %i.ch = icmp slt i16 %i.cg, %i.ce
  br i1 %i.ch, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !141
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN16VoxelManipulator8setFlagsERK9VoxelAreah(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %1, i8 noundef zeroext %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 3 uses
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 4
  %.not1.i = icmp eq i32 %i.d, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %.not2.i = icmp eq i32 %i.f, 0
  %or.cond = select i1 %or.cond.i, i1 true, i1 %.not2.i
  br i1 %or.cond, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i16, ptr %i.g, align 4, !tbaa !32   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !41   ; 2 uses
  %.not30 = icmp sgt i16 %i.h, %i.j
  br i1 %.not30, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.b
  %i.k = sext i16 %i.h to i32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
end_hunk_0
