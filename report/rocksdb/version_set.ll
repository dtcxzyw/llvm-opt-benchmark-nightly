Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_set?download=true
inline.NumInlined: 15221
inline.NumDeleted: 6435
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN7rocksdb18VersionStorageInfo18CalculateBaseBytesERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsE:bb.a
  %i.hr = phi i32 [ %.pre177, %bb.y ], [ %i.bv, %bb.x ], [ %i.bv, %bb.ab ], [ %i.bv, %bb.aa ], [ %i.bv, %._crit_edge142 ] ; 2 uses
  %i.hs = phi i32 [ %.pre176, %bb.y ], [ %.070.lcssa, %bb.x ], [ %i.hq, %bb.ab ], [ %.070.lcssa, %bb.aa ], [ %i.hi, %._crit_edge142 ] ; 2 uses
  %i.ht = phi double [ %.pre175, %bb.y ], [ %i.fk, %bb.x ], [ %i.fk, %bb.ab ], [ %i.fk, %bb.aa ], [ %i.fk, %._crit_edge142 ]
  %.064 = phi i64 [ %i.gx, %bb.y ], [ %i.gx, %bb.x ], [ %.1105.lcssa194, %bb.ab ], [ %i.fh, %bb.aa ], [ %i.fh, %._crit_edge142 ]
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 2808 ; 2 uses
  store double %i.ht, ptr %i.hu, align 8, !tbaa !852
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.hw = icmp slt i32 %i.hs, %i.hr
  br i1 %i.hw, label %.lr.ph149.preheader, label %.loopexit

.lr.ph149.preheader:                              ; preds = %bb.ac
  %i.hx = sext i32 %i.hs to i64
  br label %.lr.ph149

.lr.ph149:                                        ; preds = %.lr.ph149.preheader, %bb.ae
  %i.hy = phi i32 [ %i.hr, %.lr.ph149.preheader ], [ %i.ie, %bb.ae ]
  %indvars.iv168 = phi i64 [ %i.hx, %.lr.ph149.preheader ], [ %indvars.iv.next169, %bb.ae ] ; 3 uses
  %.0103146 = phi i64 [ %.064, %.lr.ph149.preheader ], [ %.1, %bb.ae ] ; 2 uses
  %i.hz = load i32, ptr %i.hv, align 16, !tbaa !850
  %i.ia = sext i32 %i.hz to i64
  %i.ib = icmp sgt i64 %indvars.iv168, %i.ia
  br i1 %i.ib, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph149
  %i.ic = load double, ptr %i.hu, align 8, !tbaa !852
  %i.id = tail call noundef i64 @_ZN7rocksdb21MultiplyCheckOverflowEmd(i64 noundef %.0103146, double noundef %i.ic)
  %.pre178 = load i32, ptr %i.bu, align 16, !tbaa !807
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph149
  %i.ie = phi i32 [ %.pre178, %bb.ad ], [ %i.hy, %.lr.ph149 ] ; 2 uses
  %.1 = phi i64 [ %i.id, %bb.ad ], [ %.0103146, %.lr.ph149 ] ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %.1, i64 %i.fh)
  %i.if = load ptr, ptr %i.bb, align 8, !tbaa !284
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv168
  store i64 %.sroa.speculated, ptr %i.ig, align 8, !tbaa !533
  %indvars.iv.next169 = add nsw i64 %indvars.iv168, 1 ; 2 uses
  %i.ih = sext i32 %i.ie to i64
  %i.ii = icmp slt i64 %indvars.iv.next169, %i.ih
  br i1 %i.ii, label %.lr.ph149, label %.loopexit, !llvm.loop !2062

.loopexit:                                        ; preds = %bb.k, %bb.ae, %bb.e, %bb.ac, %bb.m
  ret void
}

; Function Attrs: uwtable
define void @_ZN7rocksdb18VersionStorageInfo26UpdateFilesByCompactionPriERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(4288) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(875) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(736) %2) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %6 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %7 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 8 uses
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1385", align 8 ; 6 uses
  %9 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 17 uses
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1385", align 8 ; 12 uses
  %11 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 6 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %16 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %17 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %18 = alloca %"class.std::unordered_map.1359", align 8 ; 16 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %19 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %20 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %21 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %22 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %23 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.c = load i8, ptr %i.b, align 16, !tbaa !849
  %.off = add i8 %i.c, -1
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %.loopexit190, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 16, !tbaa !807
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %.lr.ph356, label %.loopexit190

.lr.ph356:                                        ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2712 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 601
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2840
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not.i.i.i.i.i.i.i.i.i143 = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null ; 4 uses
  %i.o = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE) ; 4 uses
  %.not.i3.i.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null ; 4 uses
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2848 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph356, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph356 ], [ %indvars.iv.next, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EED2Ev.exit ] ; 13 uses
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %indvars.iv ; 3 uses
  %i.am = load ptr, ptr %i.h, align 16, !tbaa !258
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %indvars.iv ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !345 ; 2 uses
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !244 ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = ashr exact i64 %i.at, 3                 ; 3 uses
  %i.av = icmp ugt i64 %i.au, 576460752303423487
  br i1 %i.av, label %.noexc, label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #44
  unreachable

_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EEC2EmRKS3_.exit, label %.noexc66

.noexc66:                                         ; preds = %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.aw = shl nuw nsw i64 %i.at, 1
  %i.ax = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #45 ; 15 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.au ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 4 uses
  %i.ba = add nsw i64 %i.au, -1                   ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EEC2EmRKS3_.exit, label %bb.c

bb.c:                                             ; preds = %.noexc66
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ba, 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx.i.i.i.i.i.i.i ; 3 uses
  %i.bd = shl i64 %i.at, 1
  %i.be = add i64 %i.bd, -32                      ; 2 uses
  %i.bf = lshr i64 %i.be, 4
  %i.bg = add nuw nsw i64 %i.bf, 1
  %xtraiter = and i64 %i.bg, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.az, %bb.c ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i.i.i.prol, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !1051
  %i.bh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !2064

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %bb.c
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.az, %bb.c ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.bi = icmp ult i64 %i.be, 112
  br i1 %i.bi, label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EEC2EmRKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !1051
  %i.bj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !1051
  %i.bk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !1051
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !1051
  %i.bm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !1051
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !1051
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !1051
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !1051
  %i.bq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.bq, %i.bc
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EEC2EmRKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !2065

_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EEC2EmRKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc66, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.sroa.29.0 = phi ptr [ null, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.ay, %.noexc66 ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.0172.0 = phi ptr [ null, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.ax, %.noexc66 ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 154 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.az, %.noexc66 ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.0.i.i.i.i.i.fr = freeze ptr %.0.i.i.i.i.i     ; 30 uses
  %i.br = load ptr, ptr %i.ao, align 8, !tbaa !345 ; 3 uses
  %i.bs = load ptr, ptr %i.al, align 8, !tbaa !244 ; 14 uses
  %.not = icmp eq ptr %i.br, %i.bs
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EEC2EmRKS3_.exit
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = ashr exact i64 %i.bv, 3                 ; 9 uses
  %min.iters.check = icmp ult i64 %i.bw, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.sroa.0172.0, i64 8
  %i.bx = shl i64 %i.bv, 1
  %scevgep936 = getelementptr i8, ptr %.sroa.0172.0, i64 %i.bx
  %bound0 = icmp ult ptr %scevgep, %i.br
  %bound1 = icmp ult ptr %i.bs, %scevgep936
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check938 = icmp ult i64 %i.bw, 16
  br i1 %min.iters.check938, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.bw, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %index
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %index
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %index
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 128
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %index
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 192
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  %wide.load = load <4 x ptr>, ptr %i.cf, align 8, !tbaa !347, !alias.scope !2100
  %wide.load939 = load <4 x ptr>, ptr %i.cg, align 8, !tbaa !347, !alias.scope !2100
  %wide.load940 = load <4 x ptr>, ptr %i.ch, align 8, !tbaa !347, !alias.scope !2100
  %wide.load941 = load <4 x ptr>, ptr %i.ci, align 8, !tbaa !347, !alias.scope !2100
  %i.cj = inttoptr <4 x i64> %vec.ind to <4 x ptr>
  %interleaved.vec = shufflevector <4 x ptr> %i.cj, <4 x ptr> %wide.load, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x ptr> %interleaved.vec, ptr %i.by, align 8, !tbaa !157
  %i.ck = inttoptr <4 x i64> %step.add to <4 x ptr>
  %interleaved.vec942 = shufflevector <4 x ptr> %i.ck, <4 x ptr> %wide.load939, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x ptr> %interleaved.vec942, ptr %i.ca, align 8, !tbaa !157
  %i.cl = inttoptr <4 x i64> %step.add.2 to <4 x ptr>
  %interleaved.vec943 = shufflevector <4 x ptr> %i.cl, <4 x ptr> %wide.load940, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x ptr> %interleaved.vec943, ptr %i.cc, align 8, !tbaa !157
  %i.cm = inttoptr <4 x i64> %step.add.3 to <4 x ptr>
  %interleaved.vec944 = shufflevector <4 x ptr> %i.cm, <4 x ptr> %wide.load941, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x ptr> %interleaved.vec944, ptr %i.ce, align 8, !tbaa !157
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !2068

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.co = and i64 %i.bv, 96
  %min.epilog.iters.check = icmp eq i64 %i.co, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !645

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec945 = and i64 %i.bw, -4                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index946 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next950, %vec.epilog.vector.body ] ; 3 uses
  %vec.ind947 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next951, %vec.epilog.vector.body ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %index946
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index946
  %wide.load948 = load <4 x ptr>, ptr %i.cq, align 8, !tbaa !347, !alias.scope !2100
  %i.cr = inttoptr <4 x i64> %vec.ind947 to <4 x ptr>
  %interleaved.vec949 = shufflevector <4 x ptr> %i.cr, <4 x ptr> %wide.load948, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x ptr> %interleaved.vec949, ptr %i.cp, align 8, !tbaa !157
  %index.next950 = add nuw i64 %index946, 4       ; 2 uses
  %vec.ind.next951 = add nuw <4 x i64> %vec.ind947, splat (i64 4)
  %i.cs = icmp eq i64 %index.next950, %n.vec945
  br i1 %i.cs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2069

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n952 = icmp eq i64 %i.bw, %n.vec945
  br i1 %cmp.n952, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.039350.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec945, %vec.epilog.middle.block ] ; 4 uses
  %i.ct = sub nsw i64 %i.bw, %.039350.ph
  %xtraiter1129 = and i64 %i.ct, 7                ; 2 uses
  %lcmp.mod1130.not = icmp eq i64 %xtraiter1129, 0
  br i1 %lcmp.mod1130.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.039350.prol = phi i64 [ %i.cy, %.lr.ph.prol ], [ %.039350.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter1131 = phi i64 [ %prol.iter1131.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %.039350.prol ; 2 uses
  store i64 %.039350.prol, ptr %i.cu, align 8, !tbaa !2101
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.039350.prol
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !347
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !1053
  %i.cy = add nuw i64 %.039350.prol, 1            ; 2 uses
  %prol.iter1131.next = add i64 %prol.iter1131, 1 ; 2 uses
  %prol.iter1131.cmp.not = icmp eq i64 %prol.iter1131.next, %xtraiter1129
  br i1 %prol.iter1131.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !2070

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.039350.unr = phi i64 [ %.039350.ph, %.lr.ph.preheader ], [ %i.cy, %.lr.ph.prol ]
  %i.cz = sub nsw i64 %.039350.ph, %i.bw
  %i.da = icmp ugt i64 %i.cz, -8
  br i1 %i.da, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EEC2EmRKS3_.exit
  %i.db = ptrtoint ptr %.0.i.i.i.i.i.fr to i64
  %i.dc = ptrtoint ptr %.sroa.0172.0 to i64       ; 8 uses
  %i.dd = sub i64 %i.db, %i.dc                    ; 7 uses
  %i.de = ashr i64 %i.dd, 4                       ; 18 uses
  %i.df = load i8, ptr %i.i, align 1, !tbaa !2102
  switch i8 %i.df, label %_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_SE_T0_.exit [
    i8 0, label %bb.d
    i8 1, label %bb.s
    i8 2, label %bb.ah
    i8 3, label %bb.aw
    i8 4, label %bb.cn
  ]

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.039350 = phi i64 [ %i.et, %.lr.ph ], [ %.039350.unr, %.lr.ph.prol.loopexit ] ; 11 uses
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %.039350 ; 2 uses
  store i64 %.039350, ptr %i.dg, align 8, !tbaa !2101
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.039350
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !347
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !1053
  %i.dk = add nuw i64 %.039350, 1                 ; 3 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %i.dk ; 2 uses
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !2101
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.dk
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !347
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !1053
  %i.dp = add nuw i64 %.039350, 2                 ; 3 uses
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %i.dp ; 2 uses
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !2101
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.dp
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !347
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !1053
  %i.du = add nuw i64 %.039350, 3                 ; 3 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %i.du ; 2 uses
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !2101
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.du
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !347
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !1053
  %i.dz = add nuw i64 %.039350, 4                 ; 3 uses
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %i.dz ; 2 uses
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !2101
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.dz
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !347
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !1053
  %i.ee = add nuw i64 %.039350, 5                 ; 3 uses
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %i.ee ; 2 uses
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !2101
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ee
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !347
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !1053
  %i.ej = add nuw i64 %.039350, 6                 ; 3 uses
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %i.ej ; 2 uses
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !2101
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ej
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !347
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.em, ptr %i.en, align 8, !tbaa !1053
  %i.eo = add nuw i64 %.039350, 7                 ; 3 uses
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %i.eo ; 2 uses
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !2101
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.eo
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !347
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
end_hunk_0
begin_hunk_1_@_ZN7rocksdb18VersionStorageInfo26UpdateFilesByCompactionPriERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsE:bb.a
  %.val2.i.i33.i.i.i.i = load ptr, ptr %i.abo, align 8, !tbaa !1053 ; 2 uses
  %.val3.i.i34.i.i.i.i = load ptr, ptr %i.abn, align 8, !tbaa !1053
  %i.abp = getelementptr i8, ptr %.val2.i.i33.i.i.i.i, i64 32 ; 2 uses
  %.val2.val.i.i35.i.i.i.i = load i64, ptr %i.abp, align 8, !tbaa !1055 ; 2 uses
  %i.abq = getelementptr i8, ptr %.val3.i.i34.i.i.i.i, i64 32
  %.val3.val.i.i36.i.i.i.i = load i64, ptr %i.abq, align 8, !tbaa !1055
  %i.abr = icmp ult i64 %.val2.val.i.i35.i.i.i.i, %.val3.val.i.i36.i.i.i.i
  br i1 %i.abr, label %bb.cx, label %bb.db

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i31.i.i.i.i, i64 16, i1 false), !tbaa.struct !1051
  %i.abs = ptrtoint ptr %.sroa.0.019.i31.i.i.i.i to i64
  %i.abt = sub i64 %i.abs, %i.dc                  ; 3 uses
  %i.abu = ashr exact i64 %i.abt, 4               ; 2 uses
  %i.abv = icmp sgt i64 %i.abu, 1
  br i1 %i.abv, label %bb.cy, label %bb.cz, !prof !923

bb.cy:                                            ; preds = %bb.cx
  %i.abw = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i.i, i64 32
  %i.abx = sub nsw i64 0, %i.abu
  %i.aby = getelementptr inbounds [16 x i8], ptr %i.abw, i64 %i.abx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aby, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0172.0, i64 %i.abt, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i50.i.i.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.abz = icmp eq i64 %i.abt, 16
  br i1 %i.abz, label %bb.da, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i50.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  %i.aca = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aca, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.0172.0, i64 16, i1 false), !tbaa.struct !1051
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i50.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i50.i.i.i.i: ; preds = %bb.da, %bb.cz, %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0172.0, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.dc

bb.db:                                            ; preds = %bb.cw
  %.sroa.06.0.copyload.i.i37.i.i.i.i = load i64, ptr %.sroa.0.019.i31.i.i.i.i, align 8, !tbaa !533
  %i.acb = getelementptr i8, ptr %.pn18.i32.i.i.i.i, i64 8
  %.val3.i11.i.i38.i.i.i.i = load ptr, ptr %i.acb, align 8, !tbaa !1053
  %i.acc = getelementptr i8, ptr %.val3.i11.i.i38.i.i.i.i, i64 32
  %.val3.val.i12.i.i39.i.i.i.i = load i64, ptr %i.acc, align 8, !tbaa !1055
  %i.acd = icmp ult i64 %.val2.val.i.i35.i.i.i.i, %.val3.val.i12.i.i39.i.i.i.i
  br i1 %i.acd, label %.lr.ph.i.i44.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_T0_.exit.i40.i.i.i.i"

.lr.ph.i.i44.i.i.i.i:                             ; preds = %bb.db, %.lr.ph.i.i44.i.i.i.i
  %.sroa.09.013.i.i45.i.i.i.i = phi ptr [ %.sroa.0.0.i.i46.i.i.i.i, %.lr.ph.i.i44.i.i.i.i ], [ %.sroa.0.019.i31.i.i.i.i, %bb.db ] ; 3 uses
  %.sroa.0.0.i.i46.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.09.013.i.i45.i.i.i.i, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.013.i.i45.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i46.i.i.i.i, i64 16, i1 false), !tbaa.struct !1051
  %.val4.val.i.i47.i.i.i.i = load i64, ptr %i.abp, align 8, !tbaa !1055
  %i.ace = getelementptr i8, ptr %.sroa.09.013.i.i45.i.i.i.i, i64 -24
  %.val3.i.i.i48.i.i.i.i = load ptr, ptr %i.ace, align 8, !tbaa !1053
  %i.acf = getelementptr i8, ptr %.val3.i.i.i48.i.i.i.i, i64 32
  %.val3.val.i.i.i49.i.i.i.i = load i64, ptr %i.acf, align 8, !tbaa !1055
  %i.acg = icmp ult i64 %.val4.val.i.i47.i.i.i.i, %.val3.val.i.i.i49.i.i.i.i
  br i1 %i.acg, label %.lr.ph.i.i44.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_T0_.exit.i40.i.i.i.i", !llvm.loop !2090

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_T0_.exit.i40.i.i.i.i": ; preds = %.lr.ph.i.i44.i.i.i.i, %bb.db
  %.sroa.09.0.lcssa.i.i41.i.i.i.i = phi ptr [ %.sroa.0.019.i31.i.i.i.i, %bb.db ], [ %.sroa.0.0.i.i46.i.i.i.i, %.lr.ph.i.i44.i.i.i.i ] ; 2 uses
  store i64 %.sroa.06.0.copyload.i.i37.i.i.i.i, ptr %.sroa.09.0.lcssa.i.i41.i.i.i.i, align 8, !tbaa !533
  %.sroa.4.0..val.sroa_idx.i.i42.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i41.i.i.i.i, i64 8
  store ptr %.val2.i.i33.i.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i42.i.i.i.i, align 8, !tbaa !347
  br label %bb.dc

bb.dc:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_T0_.exit.i40.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i50.i.i.i.i
  %.sroa.0.0.i43.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i31.i.i.i.i, i64 16 ; 2 uses
  %i.ach = icmp eq ptr %.sroa.0.0.i43.i.i.i.i, %.0.i.i.i.i.i.fr
  br i1 %i.ach, label %_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_SE_T0_.exit, label %bb.cw, !llvm.loop !2091

bb.dd:                                            ; preds = %bb.cn
  %i.aci = load ptr, ptr %i.l, align 8, !tbaa !247
  %i.acj = load ptr, ptr %i.k, align 16, !tbaa !246 ; 2 uses
  %i.ack = ptrtoint ptr %i.aci to i64
  %i.acl = ptrtoint ptr %i.acj to i64
  %i.acm = sub i64 %i.ack, %i.acl
  %i.acn = ashr exact i64 %i.acm, 5               ; 2 uses
  %.not.i.i.i141 = icmp ugt i64 %i.acn, %indvars.iv
  br i1 %.not.i.i.i141, label %_ZNSt6vectorIN7rocksdb11InternalKeyESaIS1_EE2atEm.exit.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.130, i64 noundef %indvars.iv, i64 noundef %i.acn) #44
          to label %.noexc154 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc154:                                        ; preds = %bb.de
  unreachable

_ZNSt6vectorIN7rocksdb11InternalKeyESaIS1_EE2atEm.exit.i: ; preds = %bb.dd
  %i.aco = getelementptr inbounds nuw [32 x i8], ptr %i.acj, i64 %indvars.iv ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 8 ; 2 uses
  %i.acq = load i64, ptr %i.acp, align 8, !tbaa !519
  %.not.i = icmp ne i64 %i.acq, 0
  %i.acr = icmp ugt i64 %i.dd, 16
  %or.cond32.i = and i1 %i.acr, %.not.i
  %i.acs = icmp sgt i64 %i.de, 0
  %or.cond = and i1 %i.acs, %or.cond32.i
  br i1 %or.cond, label %.lr.ph.i.i.i142, label %_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_SE_T0_.exit

.lr.ph.i.i.i142:                                  ; preds = %_ZNSt6vectorIN7rocksdb11InternalKeyESaIS1_EE2atEm.exit.i
  %i.act = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  br label %bb.df

bb.df:                                            ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb12_GLOBAL__N_120SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPSt6vectorINS2_11InternalKeyESaIS8_EEbiPS7_INS3_5FsizeESaISC_EEE3$_1EclINS_17__normal_iteratorIPSC_SE_EEKS8_EEbT_RT0_.exit.thread.i.i.i", %.lr.ph.i.i.i142
  %.021.i.i.i = phi i64 [ %i.de, %.lr.ph.i.i.i142 ], [ %.1.i.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb12_GLOBAL__N_120SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPSt6vectorINS2_11InternalKeyESaIS8_EEbiPS7_INS3_5FsizeESaISC_EEE3$_1EclINS_17__normal_iteratorIPSC_SE_EEKS8_EEbT_RT0_.exit.thread.i.i.i" ] ; 2 uses
  %.sroa.015.020.i.i.i = phi ptr [ %.sroa.0172.0, %.lr.ph.i.i.i142 ], [ %.sroa.015.1.i.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb12_GLOBAL__N_120SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPSt6vectorINS2_11InternalKeyESaIS8_EEbiPS7_INS3_5FsizeESaISC_EEE3$_1EclINS_17__normal_iteratorIPSC_SE_EEKS8_EEbT_RT0_.exit.thread.i.i.i" ] ; 3 uses
  %i.acu = lshr i64 %.021.i.i.i, 1                ; 4 uses
  %i.acv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.015.020.i.i.i, i64 %i.acu ; 2 uses
  %.val12.i.i.i = load ptr, ptr %i.aco, align 8, !tbaa !156 ; 2 uses
  %.val13.i.i.i = load i64, ptr %i.acp, align 8, !tbaa !519 ; 2 uses
  %i.acw = getelementptr i8, ptr %i.acv, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.acw, align 8, !tbaa !1053 ; 2 uses
  %i.acx = getelementptr i8, ptr %.val3.i.i.i.i, i64 48
  %.val3.val.i.i.i.i = load ptr, ptr %i.acx, align 8, !tbaa !156 ; 2 uses
  %i.acy = getelementptr i8, ptr %.val3.i.i.i.i, i64 56
  %.val3.val6.i.i.i.i = load i64, ptr %i.acy, align 8, !tbaa !519 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #42
  %i.acz = add i64 %.val13.i.i.i, -8
  store ptr %.val12.i.i.i, ptr %3, align 8
  store i64 %i.acz, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #42
  %i.ada = add i64 %.val3.val6.i.i.i.i, -8
  store ptr %.val3.val.i.i.i.i, ptr %4, align 8
  store i64 %i.ada, ptr %i.n, align 8
  br i1 %.not.i.i.i.i.i.i.i.i.i143, label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZTHN7rocksdb10perf_levelE()
          to label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.i.i.i unwind label %.loopexit

_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.i.i.i:  ; preds = %bb.dg, %bb.df
  %i.adb = load i8, ptr %i.o, align 1, !tbaa !146
  %i.adc = icmp ugt i8 %i.adb, 1
  br i1 %i.adc, label %bb.dh, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.i.i.i

bb.dh:                                            ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.i.i.i
  br i1 %.not.i3.i.i.i.i.i.i.i.i, label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.i.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZTHN7rocksdb12perf_contextE()
          to label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.i.i.i unwind label %.loopexit

_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.di, %bb.dh
  %i.add = load i64, ptr %i.p, align 8, !tbaa !148
  %i.ade = add i64 %i.add, 1
  store i64 %i.ade, ptr %i.p, align 8, !tbaa !148
  br label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.i.i.i

_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.i.i.i: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.i.i.i, %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.i.i.i
  %i.adf = load ptr, ptr %i.act, align 8, !tbaa !151
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 32 ; 2 uses
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !153
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 16
  %i.adj = load ptr, ptr %i.adi, align 8
  %i.adk = invoke noundef i32 %i.adj(ptr noundef nonnull align 8 dereferenceable(8) %i.adg, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %.noexc157 unwind label %.loopexit, !inline_history !2093 ; 2 uses

.noexc157:                                        ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  %i.adl = icmp eq i32 %i.adk, 0
  br i1 %i.adl, label %bb.dj, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb12_GLOBAL__N_120SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPSt6vectorINS2_11InternalKeyESaIS8_EEbiPS7_INS3_5FsizeESaISC_EEE3$_1EclINS_17__normal_iteratorIPSC_SE_EEKS8_EEbT_RT0_.exit.i.i.i"

bb.dj:                                            ; preds = %.noexc157
  %i.adm = getelementptr inbounds nuw i8, ptr %.val12.i.i.i, i64 %.val13.i.i.i
  %i.adn = getelementptr inbounds i8, ptr %i.adm, i64 -8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.adn, align 1 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.val3.val.i.i.i.i, i64 %.val3.val6.i.i.i.i
  %i.adp = getelementptr inbounds i8, ptr %i.ado, i64 -8
  %.0.copyload.i18.i.i.i.i.i.i.i = load i64, ptr %i.adp, align 1 ; 2 uses
  %i.adq = icmp ugt i64 %.0.copyload.i.i.i.i.i.i.i.i, %.0.copyload.i18.i.i.i.i.i.i.i
  br i1 %i.adq, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb12_GLOBAL__N_120SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPSt6vectorINS2_11InternalKeyESaIS8_EEbiPS7_INS3_5FsizeESaISC_EEE3$_1EclINS_17__normal_iteratorIPSC_SE_EEKS8_EEbT_RT0_.exit.thread.i.i.i", label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.adr = icmp ult i64 %.0.copyload.i.i.i.i.i.i.i.i, %.0.copyload.i18.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i = zext i1 %i.adr to i32
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb12_GLOBAL__N_120SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPSt6vectorINS2_11InternalKeyESaIS8_EEbiPS7_INS3_5FsizeESaISC_EEE3$_1EclINS_17__normal_iteratorIPSC_SE_EEKS8_EEbT_RT0_.exit.i.i.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb12_GLOBAL__N_120SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPSt6vectorINS2_11InternalKeyESaIS8_EEbiPS7_INS3_5FsizeESaISC_EEE3$_1EclINS_17__normal_iteratorIPSC_SE_EEKS8_EEbT_RT0_.exit.i.i.i": ; preds = %bb.dk, %.noexc157
  %.1.i.i.i.i.i.i.i = phi i32 [ %i.adk, %.noexc157 ], [ %spec.select.i.i.i.i.i.i.i, %bb.dk ]
  %i.ads = icmp sgt i32 %.1.i.i.i.i.i.i.i, 0
  br i1 %i.ads, label %bb.dl, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb12_GLOBAL__N_120SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPSt6vectorINS2_11InternalKeyESaIS8_EEbiPS7_INS3_5FsizeESaISC_EEE3$_1EclINS_17__normal_iteratorIPSC_SE_EEKS8_EEbT_RT0_.exit.thread.i.i.i"

bb.dl:                                            ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb12_GLOBAL__N_120SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPSt6vectorINS2_11InternalKeyESaIS8_EEbiPS7_INS3_5FsizeESaISC_EEE3$_1EclINS_17__normal_iteratorIPSC_SE_EEKS8_EEbT_RT0_.exit.i.i.i"
  %i.adt = getelementptr inbounds nuw i8, ptr %i.acv, i64 16
  %i.adu = xor i64 %i.acu, -1
  %i.adv = add nsw i64 %.021.i.i.i, %i.adu
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb12_GLOBAL__N_120SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPSt6vectorINS2_11InternalKeyESaIS8_EEbiPS7_INS3_5FsizeESaISC_EEE3$_1EclINS_17__normal_iteratorIPSC_SE_EEKS8_EEbT_RT0_.exit.thread.i.i.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb12_GLOBAL__N_120SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPSt6vectorINS2_11InternalKeyESaIS8_EEbiPS7_INS3_5FsizeESaISC_EEE3$_1EclINS_17__normal_iteratorIPSC_SE_EEKS8_EEbT_RT0_.exit.thread.i.i.i": ; preds = %bb.dl, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb12_GLOBAL__N_120SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPSt6vectorINS2_11InternalKeyESaIS8_EEbiPS7_INS3_5FsizeESaISC_EEE3$_1EclINS_17__normal_iteratorIPSC_SE_EEKS8_EEbT_RT0_.exit.i.i.i", %bb.dj
  %.sroa.015.1.i.i.i = phi ptr [ %i.adt, %bb.dl ], [ %.sroa.015.020.i.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb12_GLOBAL__N_120SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPSt6vectorINS2_11InternalKeyESaIS8_EEbiPS7_INS3_5FsizeESaISC_EEE3$_1EclINS_17__normal_iteratorIPSC_SE_EEKS8_EEbT_RT0_.exit.i.i.i" ], [ %.sroa.015.020.i.i.i, %bb.dj ] ; 5 uses
  %.1.i.i.i = phi i64 [ %i.adv, %bb.dl ], [ %i.acu, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb12_GLOBAL__N_120SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPSt6vectorINS2_11InternalKeyESaIS8_EEbiPS7_INS3_5FsizeESaISC_EEE3$_1EclINS_17__normal_iteratorIPSC_SE_EEKS8_EEbT_RT0_.exit.i.i.i" ], [ %i.acu, %bb.dj ] ; 2 uses
  %i.adw = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.adw, label %bb.df, label %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS2_11InternalKeyEZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_ISA_SaISA_EEbiPS8_E3$_1ET_SJ_SJ_RKT0_T1_.exit.i", !llvm.loop !2094

"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS2_11InternalKeyEZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_ISA_SaISA_EEbiPS8_E3$_1ET_SJ_SJ_RKT0_T1_.exit.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb12_GLOBAL__N_120SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPSt6vectorINS2_11InternalKeyESaIS8_EEbiPS7_INS3_5FsizeESaISC_EEE3$_1EclINS_17__normal_iteratorIPSC_SE_EEKS8_EEbT_RT0_.exit.thread.i.i.i"
  %i.adx = icmp ne ptr %.sroa.015.1.i.i.i, %.0.i.i.i.i.i.fr
  %i.ady = icmp ne ptr %.sroa.015.1.i.i.i, %.sroa.0172.0
  %or.cond25.i = and i1 %i.adx, %i.ady
  br i1 %or.cond25.i, label %24, label %_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_SE_T0_.exit

24:                                               ; preds = %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS2_11InternalKeyEZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_ISA_SaISA_EEbiPS8_E3$_1ET_SJ_SJ_RKT0_T1_.exit.i"
  %.not26.i = icmp eq ptr %.0.i.i.i.i.i.fr, %.sroa.0172.0
  br i1 %.not26.i, label %.lr.ph.i145.preheader, label %_ZNSt12_Vector_baseIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %24
  %i.adz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #45
          to label %.noexc159 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc159:                                        ; preds = %_ZNSt12_Vector_baseIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE11_M_allocateEm.exit.i.i
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 %i.dd
  br label %.lr.ph.i145.preheader

.lr.ph.i145.preheader:                            ; preds = %.noexc159, %24
  %.sroa.27.160.i.ph = phi ptr [ null, %24 ], [ %i.aea, %.noexc159 ]
  %.sroa.03.158.i.ph = phi ptr [ null, %24 ], [ %i.adz, %.noexc159 ] ; 2 uses
  br label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %.lr.ph.i145.preheader, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit.i
  %.sroa.02.061.i = phi ptr [ %i.aeq, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit.i ], [ %.sroa.015.1.i.i.i, %.lr.ph.i145.preheader ] ; 3 uses
  %.sroa.27.160.i = phi ptr [ %.sroa.27.2.i, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit.i ], [ %.sroa.27.160.i.ph, %.lr.ph.i145.preheader ] ; 6 uses
  %.sroa.15.159.i = phi ptr [ %.sroa.15.2.i, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit.i ], [ %.sroa.03.158.i.ph, %.lr.ph.i145.preheader ] ; 3 uses
  %.sroa.03.158.i = phi ptr [ %.sroa.03.2.i, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit.i ], [ %.sroa.03.158.i.ph, %.lr.ph.i145.preheader ] ; 8 uses
  %.not.i.i146 = icmp eq ptr %.sroa.15.159.i, %.sroa.27.160.i
  br i1 %.not.i.i146, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph.i145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.159.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.02.061.i, i64 16, i1 false), !tbaa.struct !1051
  br label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit.i

bb.dn:                                            ; preds = %.lr.ph.i145
  %i.aeb = ptrtoint ptr %.sroa.27.160.i to i64
  %i.aec = ptrtoint ptr %.sroa.03.158.i to i64
  %i.aed = sub i64 %i.aeb, %i.aec                 ; 6 uses
  %i.aee = icmp eq i64 %i.aed, 9223372036854775792
  br i1 %i.aee, label %bb.do, label %_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.112) #44
          to label %.noexc70.i unwind label %.loopexit.split-lp35.i

.noexc70.i:                                       ; preds = %bb.do
  unreachable

_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dn
  %i.aef = ashr exact i64 %i.aed, 4               ; 3 uses
  %i.aeg = icmp eq ptr %.sroa.27.160.i, %.sroa.03.158.i
  %.sroa.speculated.i.i.i.i = select i1 %i.aeg, i64 1, i64 %i.aef
  %i.aeh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aef ; 2 uses
  %i.aei = icmp ult i64 %i.aeh, %i.aef
  %i.aej = call i64 @llvm.umin.i64(i64 %i.aeh, i64 576460752303423487)
  %i.aek = select i1 %i.aei, i64 576460752303423487, i64 %i.aej ; 3 uses
  %.not.i.i.i.i152 = icmp ne i64 %i.aek, 0
  call void @llvm.assume(i1 %.not.i.i.i.i152)
  %i.ael = shl nuw nsw i64 %i.aek, 4
  %i.aem = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ael) #45
          to label %.noexc71.i153 unwind label %.loopexit34.i ; 4 uses

.noexc71.i153:                                    ; preds = %_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aen = getelementptr inbounds i8, ptr %i.aem, i64 %i.aed ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aen, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.02.061.i, i64 16, i1 false), !tbaa.struct !1051
  %i.aeo = icmp sgt i64 %i.aed, 0
  br i1 %i.aeo, label %bb.dp, label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i.i

bb.dp:                                            ; preds = %.noexc71.i153
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aem, ptr align 8 %.sroa.03.158.i, i64 %i.aed, i1 false)
  br label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i.i

_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i.i: ; preds = %bb.dp, %.noexc71.i153
  %.not.i21.i.i.i = icmp eq ptr %.sroa.03.158.i, null
  br i1 %.not.i21.i.i.i, label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %25

25:                                               ; preds = %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03.158.i, i64 noundef %i.aed) #43
  br label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %25, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i.i
  %i.aep = getelementptr inbounds nuw [16 x i8], ptr %i.aem, i64 %i.aek
  br label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit.i

_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit.i: ; preds = %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.dm
  %.sroa.03.2.i = phi ptr [ %i.aem, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.03.158.i, %bb.dm ] ; 2 uses
  %.pn27.i.a = phi ptr [ %i.aen, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.15.159.i, %bb.dm ]
  %.sroa.27.2.i = phi ptr [ %i.aep, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.27.160.i, %bb.dm ] ; 2 uses
  %.sroa.15.2.i = getelementptr inbounds nuw i8, ptr %.pn27.i.a, i64 16 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %.sroa.02.061.i, i64 16 ; 2 uses
  %i.aer = icmp eq ptr %i.aeq, %.0.i.i.i.i.i.fr
  br i1 %i.aer, label %.lr.ph68.i, label %.lr.ph.i145, !llvm.loop !2095

.loopexit34.i:                                    ; preds = %_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit36.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

.loopexit.split-lp35.i:                           ; preds = %bb.do
  %lpad.loopexit.split-lp37.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

.preheader.i147:                                  ; preds = %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit82.i
  %i.aes = ptrtoint ptr %.sroa.03.4.i to i64      ; 2 uses
  %.not75.i = icmp eq ptr %.sroa.15.4.i, %.sroa.03.4.i
  br i1 %.not75.i, label %._crit_edge.thread.i, label %.lr.ph73.preheader.i

.lr.ph73.preheader.i:                             ; preds = %.preheader.i147
  %i.aet = ptrtoint ptr %.sroa.15.4.i to i64
  %i.aeu = sub i64 %i.aet, %i.aes
  %i.aev = ashr exact i64 %i.aeu, 4
  br label %.lr.ph73.i

.lr.ph68.i:                                       ; preds = %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit.i, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit82.i
  %.sroa.0.067.i = phi ptr [ %i.afl, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit82.i ], [ %.sroa.0172.0, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit.i ] ; 3 uses
  %.sroa.27.366.i = phi ptr [ %.sroa.27.4.i, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit82.i ], [ %.sroa.27.2.i, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit.i ] ; 6 uses
  %.sroa.15.365.i = phi ptr [ %.sroa.15.4.i, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit82.i ], [ %.sroa.15.2.i, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit.i ] ; 3 uses
  %.sroa.03.364.i = phi ptr [ %.sroa.03.4.i, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit82.i ], [ %.sroa.03.2.i, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit.i ] ; 8 uses
  %.not.i72.i = icmp eq ptr %.sroa.15.365.i, %.sroa.27.366.i
  br i1 %.not.i72.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %.lr.ph68.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.365.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.0.067.i, i64 16, i1 false), !tbaa.struct !1051
  br label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit82.i

bb.dr:                                            ; preds = %.lr.ph68.i
  %i.aew = ptrtoint ptr %.sroa.27.366.i to i64
  %i.aex = ptrtoint ptr %.sroa.03.364.i to i64
  %i.aey = sub i64 %i.aew, %i.aex                 ; 6 uses
  %i.aez = icmp eq i64 %i.aey, 9223372036854775792
  br i1 %i.aez, label %bb.ds, label %_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE12_M_check_lenEmPKc.exit.i.i74.i

bb.ds:                                            ; preds = %bb.dr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.112) #44
          to label %.noexc80.i unwind label %.loopexit.split-lp.i

.noexc80.i:                                       ; preds = %bb.ds
  unreachable

_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE12_M_check_lenEmPKc.exit.i.i74.i: ; preds = %bb.dr
  %i.afa = ashr exact i64 %i.aey, 4               ; 3 uses
  %i.afb = icmp eq ptr %.sroa.27.366.i, %.sroa.03.364.i
  %.sroa.speculated.i.i.i75.i = select i1 %i.afb, i64 1, i64 %i.afa
  %i.afc = add nsw i64 %.sroa.speculated.i.i.i75.i, %i.afa ; 2 uses
  %i.afd = icmp ult i64 %i.afc, %i.afa
  %i.afe = call i64 @llvm.umin.i64(i64 %i.afc, i64 576460752303423487)
  %i.aff = select i1 %i.afd, i64 576460752303423487, i64 %i.afe ; 3 uses
  %.not.i.i.i76.i = icmp ne i64 %i.aff, 0
  call void @llvm.assume(i1 %.not.i.i.i76.i)
  %i.afg = shl nuw nsw i64 %i.aff, 4
  %i.afh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afg) #45
          to label %.noexc81.i unwind label %.loopexit.i149 ; 4 uses

.noexc81.i:                                       ; preds = %_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE12_M_check_lenEmPKc.exit.i.i74.i
  %i.afi = getelementptr inbounds i8, ptr %i.afh, i64 %i.aey ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afi, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.0.067.i, i64 16, i1 false), !tbaa.struct !1051
  %i.afj = icmp sgt i64 %i.aey, 0
  br i1 %i.afj, label %bb.dt, label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i77.i

bb.dt:                                            ; preds = %.noexc81.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.afh, ptr align 8 %.sroa.03.364.i, i64 %i.aey, i1 false)
  br label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i77.i

_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i77.i: ; preds = %bb.dt, %.noexc81.i
  %.not.i21.i.i78.i = icmp eq ptr %.sroa.03.364.i, null
  br i1 %.not.i21.i.i78.i, label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i79.i, label %26

26:                                               ; preds = %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i77.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03.364.i, i64 noundef %i.aey) #43
  br label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i79.i

_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i79.i: ; preds = %26, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i77.i
  %i.afk = getelementptr inbounds nuw [16 x i8], ptr %i.afh, i64 %i.aff
  br label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit82.i

_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE9push_backERKS2_.exit82.i: ; preds = %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i79.i, %bb.dq
  %.sroa.03.4.i = phi ptr [ %i.afh, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i79.i ], [ %.sroa.03.364.i, %bb.dq ] ; 6 uses
  %.pn28.i = phi ptr [ %i.afi, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i79.i ], [ %.sroa.15.365.i, %bb.dq ]
  %.sroa.27.4.i = phi ptr [ %i.afk, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i79.i ], [ %.sroa.27.366.i, %bb.dq ] ; 3 uses
  %.sroa.15.4.i = getelementptr inbounds nuw i8, ptr %.pn28.i, i64 16 ; 3 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %.sroa.0.067.i, i64 16 ; 2 uses
  %i.afm = icmp eq ptr %i.afl, %.sroa.015.1.i.i.i
  br i1 %i.afm, label %.preheader.i147, label %.lr.ph68.i, !llvm.loop !2096

.loopexit.i149:                                   ; preds = %_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE12_M_check_lenEmPKc.exit.i.i74.i
  %lpad.loopexit.i150 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

.loopexit.split-lp.i:                             ; preds = %bb.ds
  %lpad.loopexit.split-lp.i151 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

._crit_edge.thread.i:                             ; preds = %bb.dv, %.preheader.i147
  %i.afn = ptrtoint ptr %.sroa.27.4.i to i64
  %i.afo = sub i64 %i.afn, %i.aes
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03.4.i, i64 noundef %i.afo) #43
  br label %_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_SE_T0_.exit

.lr.ph73.i:                                       ; preds = %bb.dv, %.lr.ph73.preheader.i
  %.072.i = phi i64 [ %i.afr, %bb.dv ], [ 0, %.lr.ph73.preheader.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.072.i, %i.de
  br i1 %exitcond.not.i, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %.lr.ph73.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.130, i64 noundef range(i64 0, -1) %i.de, i64 noundef %i.de) #44
          to label %.noexc85.i unwind label %27

.noexc85.i:                                       ; preds = %bb.du
  unreachable

bb.dv:                                            ; preds = %.lr.ph73.i
  %i.afp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.03.4.i, i64 %.072.i
  %i.afq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %.072.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afq, ptr noundef nonnull align 8 dereferenceable(16) %i.afp, i64 16, i1 false), !tbaa.struct !1051
  %i.afr = add nuw nsw i64 %.072.i, 1             ; 2 uses
  %exitcond86.not.i = icmp eq i64 %i.afr, %i.aev
  br i1 %exitcond86.not.i, label %._crit_edge.thread.i, label %.lr.ph73.i, !llvm.loop !2097

27:                                               ; preds = %bb.du
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dw:                                            ; preds = %27, %.loopexit.split-lp.i, %.loopexit.i149, %.loopexit.split-lp35.i, %.loopexit34.i
  %.sroa.03.5.i = phi ptr [ %.sroa.03.158.i, %.loopexit.split-lp35.i ], [ %.sroa.03.4.i, %27 ], [ %.sroa.03.158.i, %.loopexit34.i ], [ %.sroa.03.364.i, %.loopexit.i149 ], [ %.sroa.03.364.i, %.loopexit.split-lp.i ] ; 3 uses
  %.sroa.27.5.i = phi ptr [ %.sroa.27.160.i, %.loopexit.split-lp35.i ], [ %.sroa.27.4.i, %27 ], [ %.sroa.27.160.i, %.loopexit34.i ], [ %.sroa.27.366.i, %.loopexit.i149 ], [ %.sroa.27.366.i, %.loopexit.split-lp.i ]
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp37.i, %.loopexit.split-lp35.i ], [ %28, %27 ], [ %lpad.loopexit36.i, %.loopexit34.i ], [ %lpad.loopexit.i150, %.loopexit.i149 ], [ %lpad.loopexit.split-lp.i151, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i86.i = icmp eq ptr %.sroa.03.5.i, null
  br i1 %.not.i.i.i86.i, label %.body, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %29 = ptrtoint ptr %.sroa.27.5.i to i64
  %30 = ptrtoint ptr %.sroa.03.5.i to i64
  %31 = sub i64 %29, %30
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03.5.i, i64 noundef %31) #43
  br label %.body

_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_SE_T0_.exit: ; preds = %bb.dc, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_T0_.exit.i19.i.i.i.i", %bb.av, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_T0_.exit.i19.i.i.i", %bb.ag, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_T0_.exit.i19.i.i.i", %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i22.i.i, %._crit_edge.thread.i, %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS2_11InternalKeyEZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_ISA_SaISA_EEbiPS8_E3$_1ET_SJ_SJ_RKT0_T1_.exit.i", %_ZNSt6vectorIN7rocksdb11InternalKeyESaIS1_EE2atEm.exit.i, %.preheader.i28.i.i.i.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_T0_.exit.i.i.i.i", %.preheader.i28.i.i.i69, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_T0_.exit.i.i.i", %.preheader.i28.i.i.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_T0_.exit.i.i.i", %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit.i.i, %_ZN7rocksdb12_GLOBAL__N_126SortFileByOverlappingRatioERKNS_21InternalKeyComparatorERKSt6vectorIPNS_12FileMetaDataESaIS6_EESA_PNS_11SystemClockEiimPS4_INS0_5FsizeESaISD_EE.exit, %._crit_edge
  %.not357 = icmp eq i64 %i.de, 0
  br i1 %.not357, label %._crit_edge353, label %.lr.ph352

.lr.ph352:                                        ; preds = %_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_SE_T0_.exit
  %i.afs = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  %.pre = load ptr, ptr %i.afs, align 8, !tbaa !854
  %.pre524 = load ptr, ptr %i.aft, align 8, !tbaa !251
  br label %bb.dz

._crit_edge353:                                   ; preds = %bb.s, %bb.ah, %bb.co, %_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_SE_T0_.exit
  %i.afu = load ptr, ptr %i.aj, align 16, !tbaa !250
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %indvars.iv
  store i32 0, ptr %i.afv, align 4, !tbaa !269
  %.not.i.i.i162 = icmp eq ptr %.sroa.0172.0, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EED2Ev.exit, label %bb.dy

bb.dy:                                            ; preds = %._crit_edge353.thread, %._crit_edge353
  %i.afw = ptrtoint ptr %.sroa.29.0 to i64
  %i.afx = sub i64 %i.afw, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0172.0, i64 noundef %i.afx) #43
  br label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EED2Ev.exit

_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EED2Ev.exit: ; preds = %._crit_edge353, %bb.dy
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.afy = load i32, ptr %i.d, align 16, !tbaa !807
  %i.afz = add nsw i32 %i.afy, -1
  %i.aga = sext i32 %i.afz to i64
  %i.agb = icmp slt i64 %indvars.iv.next, %i.aga
  br i1 %i.agb, label %bb.b, label %.loopexit190, !llvm.loop !2098

bb.dz:                                            ; preds = %.lr.ph352, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.agc = phi ptr [ %.pre524, %.lr.ph352 ], [ %i.ahb, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %i.agd = phi ptr [ %.pre, %.lr.ph352 ], [ %i.ahc, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.0351 = phi i64 [ 0, %.lr.ph352 ], [ %i.ahd, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.age = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %.0351
  %i.agf = load i64, ptr %i.age, align 8, !tbaa !2101
  %i.agg = trunc i64 %i.agf to i32                ; 2 uses
  %.not.i.i163 = icmp eq ptr %i.agd, %i.agc
  br i1 %.not.i.i163, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  store i32 %i.agg, ptr %i.agd, align 4, !tbaa !269
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agd, i64 4 ; 2 uses
  store ptr %i.agh, ptr %i.afs, align 8, !tbaa !854
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.eb:                                            ; preds = %bb.dz
  %i.agi = load ptr, ptr %i.an, align 8, !tbaa !250 ; 4 uses
  %i.agj = ptrtoint ptr %i.agc to i64
  %i.agk = ptrtoint ptr %i.agi to i64             ; 2 uses
  %i.agl = sub i64 %i.agj, %i.agk                 ; 5 uses
  %i.agm = icmp eq i64 %i.agl, 9223372036854775804
  br i1 %i.agm, label %bb.ec, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.112) #44
          to label %.noexc166 unwind label %.body.thread.loopexit.split-lp

.noexc166:                                        ; preds = %bb.ec
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.eb
  %i.agn = ashr exact i64 %i.agl, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i164 = call i64 @llvm.umax.i64(i64 %i.agn, i64 1)
  %i.ago = add nsw i64 %.sroa.speculated.i.i.i.i164, %i.agn ; 2 uses
  %i.agp = icmp ult i64 %i.ago, %i.agn
  %i.agq = call i64 @llvm.umin.i64(i64 %i.ago, i64 2305843009213693951)
  %i.agr = select i1 %i.agp, i64 2305843009213693951, i64 %i.agq ; 3 uses
  %.not.i.i.i.i165 = icmp ne i64 %i.agr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i165)
  %i.ags = shl nuw nsw i64 %i.agr, 2
  %i.agt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ags) #45
          to label %.noexc167 unwind label %.body.thread.loopexit ; 4 uses

.noexc167:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.agu = getelementptr inbounds i8, ptr %i.agt, i64 %i.agl ; 2 uses
  store i32 %i.agg, ptr %i.agu, align 4, !tbaa !269
  %i.agv = icmp sgt i64 %i.agl, 0
  br i1 %i.agv, label %bb.ed, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ed:                                            ; preds = %.noexc167
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.agt, ptr align 4 %i.agi, i64 %i.agl, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ed, %.noexc167
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agu, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.agi, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ee

bb.ee:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.agx = load ptr, ptr %i.aft, align 8, !tbaa !251
  %i.agy = ptrtoint ptr %i.agx to i64
  %i.agz = sub i64 %i.agy, %i.agk
  call void @_ZdlPvm(ptr noundef nonnull %i.agi, i64 noundef %i.agz) #43
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ee, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.agt, ptr %i.an, align 8, !tbaa !250
  store ptr %i.agw, ptr %i.afs, align 8, !tbaa !854
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %i.agr ; 2 uses
  store ptr %i.aha, ptr %i.aft, align 8, !tbaa !251
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.ea
  %i.ahb = phi ptr [ %i.aha, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.agc, %bb.ea ]
  %i.ahc = phi ptr [ %i.agw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.agh, %bb.ea ]
  %i.ahd = add nuw i64 %.0351, 1                  ; 2 uses
  %exitcond522.not = icmp eq i64 %i.ahd, %i.de
  br i1 %exitcond522.not, label %._crit_edge353.thread, label %bb.dz, !llvm.loop !2099

._crit_edge353.thread:                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.ahe = load ptr, ptr %i.aj, align 16, !tbaa !250
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %indvars.iv
  store i32 0, ptr %i.ahf, align 4, !tbaa !269
  br label %bb.dy

.body.thread.loopexit:                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread.loopexit.split-lp:                   ; preds = %bb.ec
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.dw, %bb.dx, %_ZN7rocksdb6StatusD2Ev.exit106.i
  %.pn = phi { ptr, i32 } [ %.pn.i, %bb.dw ], [ %.pn.i, %bb.dx ], [ %.pn.pn.pn.pn.pn.i, %_ZN7rocksdb6StatusD2Ev.exit106.i ], [ %lpad.loopexit185, %.loopexit ], [ %lpad.loopexit191, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp192, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %.sroa.0172.0, null
  br i1 %.not.i.i.i168, label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EED2Ev.exit169, label %.body.thread

.body.thread:                                     ; preds = %.body.thread.loopexit, %.body.thread.loopexit.split-lp, %.body
  %.pn175 = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit, %.body.thread.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread.loopexit.split-lp ]
  %i.ahg = ptrtoint ptr %.sroa.29.0 to i64
  %i.ahh = sub i64 %i.ahg, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0172.0, i64 noundef %i.ahh) #43
  br label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EED2Ev.exit169

_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EED2Ev.exit169: ; preds = %.body.thread, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn175, %.body.thread ], [ %.pn, %.body ]
  resume { ptr, i32 } %.pn.pn

.loopexit190:                                     ; preds = %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EED2Ev.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: uwtable
define void @_ZN7rocksdb18VersionStorageInfo28GenerateLevel0NonOverlappingEv(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(4288) initializes((2840, 2841)) %0) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %2 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %3 = alloca %"class.std::vector.679", align 8   ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2840 ; 2 uses
  store i8 1, ptr %i.a, align 8, !tbaa !853
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 16, !tbaa !280
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !282
  %i.g = load ptr, ptr %i.d, align 16, !tbaa !281
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4
  %i.l = sub i64 0, %i.c
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #42
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !530  ; 2 uses
  %i.r = load i64, ptr %i.o, align 8, !tbaa !528
  %i.s = getelementptr inbounds nuw [88 x i8], ptr %i.q, i64 %i.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN7rocksdb14FdWithKeyRangeESaIS1_EE19_M_range_initializeIPS1_EEvT_S6_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.q, ptr noundef %i.s)
          to label %_ZNSt6vectorIN7rocksdb14FdWithKeyRangeESaIS1_EEC2IPS1_vEET_S6_RKS2_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !1066   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %.body, label %.body.sink.split

_ZNSt6vectorIN7rocksdb14FdWithKeyRangeESaIS1_EEC2IPS1_vEET_S6_RKS2_.exit: ; preds = %bb.b
  %i.v = load ptr, ptr %3, align 8, !tbaa !529    ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !529  ; 6 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb14FdWithKeyRangeESt6vectorIS3_SaIS3_EEEEZNS2_18VersionStorageInfo28GenerateLevel0NonOverlappingEvE3$_0EvT_SB_T0_.exit", label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN7rocksdb14FdWithKeyRangeESaIS1_EEC2IPS1_vEET_S6_RKS2_.exit
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.v to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = sdiv exact i64 %i.ab, 88
  %i.ad = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = xor i64 %i.ae, 126
  invoke fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb14FdWithKeyRangeESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo28GenerateLevel0NonOverlappingEvE3$_0EEEvT_SE_T0_T1_"(ptr %i.v, ptr %i.x, i64 noundef %i.af, ptr nonnull readonly %0)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  %i.ag = icmp sgt i64 %i.ab, 1408
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 1408 ; 3 uses
  invoke fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb14FdWithKeyRangeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo28GenerateLevel0NonOverlappingEvE3$_0EEEvT_SE_T0_"(ptr %i.v, ptr nonnull %i.ah, ptr nonnull readonly %0)
          to label %.noexc17 unwind label %.loopexit.split-lp

.noexc17:                                         ; preds = %bb.e
  %i.ai = icmp eq ptr %i.ah, %i.x
  br i1 %i.ai, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb14FdWithKeyRangeESt6vectorIS3_SaIS3_EEEEZNS2_18VersionStorageInfo28GenerateLevel0NonOverlappingEvE3$_0EvT_SB_T0_.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc17, %.noexc18
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.aj, %.noexc18 ], [ %i.ah, %.noexc17 ] ; 2 uses
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb14FdWithKeyRangeESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_18VersionStorageInfo28GenerateLevel0NonOverlappingEvE3$_0EEEvT_T0_"(ptr %.sroa.0.07.i.i.i.i, ptr nonnull readonly %0)
          to label %.noexc18 unwind label %.loopexit32

.noexc18:                                         ; preds = %.lr.ph.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 88 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.x
  br i1 %i.ak, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb14FdWithKeyRangeESt6vectorIS3_SaIS3_EEEEZNS2_18VersionStorageInfo28GenerateLevel0NonOverlappingEvE3$_0EvT_SB_T0_.exit", label %.lr.ph.i.i.i.i, !llvm.loop !2103

bb.f:                                             ; preds = %.noexc
  invoke fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb14FdWithKeyRangeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo28GenerateLevel0NonOverlappingEvE3$_0EEEvT_SE_T0_"(ptr %i.v, ptr %i.x, ptr nonnull readonly %0)
          to label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb14FdWithKeyRangeESt6vectorIS3_SaIS3_EEEEZNS2_18VersionStorageInfo28GenerateLevel0NonOverlappingEvE3$_0EvT_SB_T0_.exit" unwind label %.loopexit.split-lp

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb14FdWithKeyRangeESt6vectorIS3_SaIS3_EEEEZNS2_18VersionStorageInfo28GenerateLevel0NonOverlappingEvE3$_0EvT_SB_T0_.exit": ; preds = %.noexc18, %bb.f, %_ZNSt6vectorIN7rocksdb14FdWithKeyRangeESaIS1_EEC2IPS1_vEET_S6_RKS2_.exit, %.noexc17
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !1067
  %i.am = load ptr, ptr %3, align 8, !tbaa !1066  ; 3 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = sdiv exact i64 %i.ap, 88
  %i.ar = icmp ugt i64 %i.aq, 1
  br i1 %i.ar, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb14FdWithKeyRangeESt6vectorIS3_SaIS3_EEEEZNS2_18VersionStorageInfo28GenerateLevel0NonOverlappingEvE3$_0EvT_SB_T0_.exit"
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i.i20 = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null
  %i.au = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE)
  %.not.i3.i.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null
  %i.av = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 2 uses
  br label %bb.g

.loopexit32:                                      ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.d, %bb.e, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.g:                                             ; preds = %.lr.ph, %.critedge
  %i.aw = phi ptr [ %i.am, %.lr.ph ], [ %i.ci, %.critedge ]
  %.01133 = phi i64 [ 1, %.lr.ph ], [ %i.cg, %.critedge ] ; 2 uses
  %i.ax = getelementptr [88 x i8], ptr %i.aw, i64 %.01133 ; 4 uses
  %i.ay = load ptr, ptr %0, align 16, !tbaa !847
  %i.az = getelementptr i8, ptr %i.ax, i64 -16    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 56 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #42
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !143
  %i.bd = getelementptr i8, ptr %i.ax, i64 -8     ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !144
  %i.bf = add i64 %i.be, -8
  store ptr %i.bc, ptr %1, align 8
  store i64 %i.bf, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !143
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 64 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !144
  %i.bj = add i64 %i.bi, -8
  store ptr %i.bg, ptr %2, align 8
  store i64 %i.bj, ptr %i.at, align 8
  br i1 %.not.i.i.i20, label %_ZTWN7rocksdb10perf_levelE.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZTHN7rocksdb10perf_levelE()
          to label %_ZTWN7rocksdb10perf_levelE.exit.i.i unwind label %bb.l

_ZTWN7rocksdb10perf_levelE.exit.i.i:              ; preds = %bb.h, %bb.g
  %i.bk = load i8, ptr %i.au, align 1, !tbaa !146
  %i.bl = icmp ugt i8 %i.bk, 1
  br i1 %i.bl, label %bb.i, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i

bb.i:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i
  br i1 %.not.i3.i.i, label %_ZTWN7rocksdb12perf_contextE.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZTHN7rocksdb12perf_contextE()
          to label %_ZTWN7rocksdb12perf_contextE.exit.i.i unwind label %bb.l

_ZTWN7rocksdb12perf_contextE.exit.i.i:            ; preds = %bb.j, %bb.i
  %i.bm = load i64, ptr %i.av, align 8, !tbaa !148
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.av, align 8, !tbaa !148
  br label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i

_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i, %_ZTWN7rocksdb10perf_levelE.exit.i.i
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !151
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !153
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc23 unwind label %bb.l, !inline_history !1068 ; 2 uses

.noexc23:                                         ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #42
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.k, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_5SliceES3_.exit

bb.k:                                             ; preds = %.noexc23
  %i.bv = load ptr, ptr %i.az, align 8, !tbaa !143
  %i.bw = load i64, ptr %i.bd, align 8, !tbaa !144
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8
  %.0.copyload.i.i = load i64, ptr %i.by, align 1
end_hunk_1
