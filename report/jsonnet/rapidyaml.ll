Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/rapidyaml?download=true
inline.NumInlined: 4426
inline.NumDeleted: 407
loop-unroll.NumCompletelyUnrolled: 307
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 323
begin_hunk_0_@_ZN2c43yml12TagDirective15create_from_strENS_15basic_substringIKcEE:bb.a

bb.d:                                             ; preds = %.lr.ph.i.i37
  %i.q = add nuw i64 %.0710.i.i38, 1              ; 2 uses
  %exitcond.not.i.i49 = icmp eq i64 %i.q, %i.n
  br i1 %exitcond.not.i.i49, label %_ZNK2c415basic_substringIKcE4findEcm.exit54.thread, label %.lr.ph.i.i37, !llvm.loop !7

_ZNK2c415basic_substringIKcE5trimlEc.exit50:      ; preds = %.lr.ph.i.i37
  %.not.not.i41 = icmp eq i64 %.0710.i.i38, -1    ; 2 uses
  %i.r = sub nuw i64 %i.n, %.0710.i.i38           ; 4 uses
  %spec.select.idx.i42 = select i1 %.not.not.i41, i64 0, i64 %.0710.i.i38
  %spec.select.i43 = getelementptr inbounds nuw i8, ptr %i.m, i64 %spec.select.idx.i42 ; 4 uses
  %.not101133 = icmp eq i64 %i.r, 0
  %.not101 = select i1 %.not.not.i41, i1 true, i1 %.not101133
  br i1 %.not101, label %_ZNK2c415basic_substringIKcE4findEcm.exit54.thread, label %.lr.ph.i.i51

.lr.ph.i.i51:                                     ; preds = %_ZNK2c415basic_substringIKcE5trimlEc.exit50, %bb.e
  %.0811.i.i52 = phi i64 [ %i.v, %bb.e ], [ 0, %_ZNK2c415basic_substringIKcE5trimlEc.exit50 ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %spec.select.i43, i64 %.0811.i.i52
  %i.t = load i8, ptr %i.s, align 1, !tbaa !87
  %i.u = icmp eq i8 %i.t, 32
  br i1 %i.u, label %_ZNK2c415basic_substringIKcE4findEcm.exit54, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i51
  %i.v = add nuw i64 %.0811.i.i52, 1              ; 2 uses
  %exitcond.not.i.i53 = icmp eq i64 %i.v, %i.r
  br i1 %exitcond.not.i.i53, label %_ZNK2c415basic_substringIKcE4findEcm.exit54.thread, label %.lr.ph.i.i51, !llvm.loop !6

_ZNK2c415basic_substringIKcE4findEcm.exit54:      ; preds = %.lr.ph.i.i51
  %.not = icmp eq i64 %.0811.i.i52, -1
  %spec.select = select i1 %.not, i64 %i.r, i64 %.0811.i.i52
  br label %_ZNK2c415basic_substringIKcE4findEcm.exit54.thread

_ZNK2c415basic_substringIKcE4findEcm.exit54.thread: ; preds = %bb.d, %bb.e, %_ZNK2c415basic_substringIKcE4findEcm.exit54, %_ZNK2c415basic_substringIKcE5trimlEc.exit50
  %.sroa.16.0 = phi i64 [ %spec.select, %_ZNK2c415basic_substringIKcE4findEcm.exit54 ], [ %i.r, %bb.e ], [ 0, %_ZNK2c415basic_substringIKcE5trimlEc.exit50 ], [ 0, %bb.d ]
  %.sroa.055.0 = phi ptr [ %spec.select.i43, %_ZNK2c415basic_substringIKcE4findEcm.exit54 ], [ %spec.select.i43, %bb.e ], [ %spec.select.i43, %_ZNK2c415basic_substringIKcE5trimlEc.exit50 ], [ %i.m, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.055.0, ptr %i.w, align 8, !tbaa !101
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !102
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.x, align 8, !tbaa !104
  br label %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread

_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread: ; preds = %bb.b, %bb.c, %_ZNK2c415basic_substringIKcE5trimlEc.exit, %bb.a, %_ZNK2c415basic_substringIKcE4findEcm.exit54.thread, %_ZNK2c415basic_substringIKcE4findEcm.exit, %_ZNK2c415basic_substringIKcE11begins_withEc.exit
  %.1 = phi i1 [ false, %_ZNK2c415basic_substringIKcE11begins_withEc.exit ], [ false, %_ZNK2c415basic_substringIKcE4findEcm.exit ], [ true, %_ZNK2c415basic_substringIKcE4findEcm.exit54.thread ], [ false, %bb.a ], [ false, %_ZNK2c415basic_substringIKcE5trimlEc.exit ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZNK2c43yml12TagDirective9transformENS_15basic_substringIKcEENS2_IcEERKNS0_9CallbacksEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree readonly captures(address) %1, i64 %2, ptr nofree writeonly captures(none) %3, i64 %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5, i1 noundef zeroext %6) local_unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %8 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %9 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %10 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %11 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %12 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.a = alloca [14 x i8], align 1                ; 3 uses
  %i.b = alloca [27 x i8], align 16               ; 3 uses
  %i.c = alloca [32 x i8], align 16               ; 3 uses
  %i.d = alloca [27 x i8], align 16               ; 3 uses
  %i.e = alloca [32 x i8], align 16               ; 3 uses
  %i.f = alloca [22 x i8], align 16               ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !433  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 4 uses
  %i.j = sub i64 %2, %i.h                         ; 5 uses
  %.not.i105 = icmp eq i64 %i.j, 0
  br i1 %.not.i105, label %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread323, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit

_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread323: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !434  ; 4 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %spec.select326 = select i1 %6, i64 %i.n, i64 %i.m
  br label %_ZNK2c415basic_substringIKcE5countEcm.exit.thread

_ZNK2c415basic_substringIKcE11begins_withEc.exit: ; preds = %bb.a
  %i.o = load i8, ptr %i.i, align 1, !tbaa !87
  %i.p = icmp eq i8 %i.o, 60
  br i1 %i.p, label %_ZNK2c415basic_substringIKcE9ends_withEc.exit, label %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread333

_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread333: ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !434  ; 2 uses
  %i.t = add i64 %i.s, %i.j                       ; 3 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %spec.select336 = select i1 %6, i64 %i.u, i64 %i.t
  br label %.lr.ph.i.i.i.preheader

_ZNK2c415basic_substringIKcE9ends_withEc.exit:    ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit
  %i.v = getelementptr i8, ptr %1, i64 %2
  %i.w = getelementptr i8, ptr %i.v, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !87
  %i.y = icmp eq i8 %i.x, 62
  br i1 %i.y, label %bb.c, label %bb.b, !prof !88

bb.b:                                             ; preds = %_ZNK2c415basic_substringIKcE9ends_withEc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @__const._ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_check_tagENS_15basic_substringIKcEE.msg.214, i64 14, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store i64 0, ptr %12, align 8
  %.sroa.2165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 32544, ptr %.sroa.2165.0..sroa_idx, align 8
  %.sroa.3166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %.sroa.3166.0..sroa_idx, align 8
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr @.str.1, ptr %.sroa.4167.0..sroa_idx, align 8
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 74, ptr %.sroa.5168.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.ab = load ptr, ptr %5, align 8, !tbaa !94
  call void %i.aa(ptr noundef nonnull %i.a, i64 noundef 13, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %12, ptr noundef %i.ab), !inline_history !105
  call void @abort() #60
  unreachable

bb.c:                                             ; preds = %_ZNK2c415basic_substringIKcE9ends_withEc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  %i.ad = add i64 %i.j, -2                        ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.037.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !101
  %.sroa.238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.238.0.copyload = load i64, ptr %.sroa.238.0..sroa_idx, align 8, !tbaa !102 ; 3 uses
  %i.af = icmp ult i64 %i.ad, %.sroa.238.0.copyload
  br i1 %i.af, label %_ZNK2c415basic_substringIKcE11begins_withES2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ag = icmp eq i64 %.sroa.238.0.copyload, 0
  br i1 %i.ag, label %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.ah = add nuw i64 %.068.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ah, %.sroa.238.0.copyload
  br i1 %exitcond.not.i, label %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread, label %.lr.ph.i, !llvm.loop !8

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %.068.i = phi i64 [ %i.ah, %bb.d ], [ 0, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.068.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !87
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.037.0.copyload, i64 %.068.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !87
  %.not.i107 = icmp eq i8 %i.aj, %i.al
  br i1 %.not.i107, label %bb.d, label %_ZNK2c415basic_substringIKcE11begins_withES2_.exit

_ZNK2c415basic_substringIKcE11begins_withES2_.exit: ; preds = %.lr.ph.i, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !434 ; 4 uses
  %i.ap = add i64 %i.ao, %i.ad                    ; 3 uses
  %i.aq = add i64 %i.ao, %i.j                     ; 3 uses
  %spec.select = select i1 %6, i64 %i.aq, i64 %i.ap ; 2 uses
  %.not246 = icmp eq i64 %i.ad, 0
  br i1 %.not246, label %_ZNK2c415basic_substringIKcE5countEcm.exit.thread, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread333, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit
  %spec.select340 = phi i64 [ %spec.select336, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread333 ], [ %spec.select, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit ] ; 4 uses
  %i.ar = phi i64 [ %i.u, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread333 ], [ %i.aq, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit ] ; 3 uses
  %i.as = phi i64 [ %i.t, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread333 ], [ %i.ap, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit ] ; 3 uses
  %i.at = phi i64 [ %i.s, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread333 ], [ %i.ao, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit ] ; 4 uses
  %i.au = phi ptr [ %i.r, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread333 ], [ %i.an, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit ] ; 4 uses
  %i.av = phi ptr [ %i.q, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread333 ], [ %i.am, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit ] ; 4 uses
  %.sroa.21.0339 = phi i64 [ %i.j, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread333 ], [ %i.ad, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit ] ; 19 uses
  %.sroa.0169.0338 = phi ptr [ %i.i, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread333 ], [ %i.ac, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit ] ; 15 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.0811.i.i.i = phi i64 [ %i.az, %bb.e ], [ 0, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0169.0338, i64 %.0811.i.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !87
  %i.ay = icmp eq i8 %i.ax, 37
  br i1 %i.ay, label %_ZNK2c415basic_substringIKcE4findEcm.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.az = add nuw i64 %.0811.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.az, %.sroa.21.0339
  br i1 %exitcond.not.i.i.i, label %_ZNK2c415basic_substringIKcE5countEcm.exit.thread, label %.lr.ph.i.i.i, !llvm.loop !6

_ZNK2c415basic_substringIKcE4findEcm.exit.i:      ; preds = %.lr.ph.i.i.i
  %.not13.i = icmp eq i64 %.0811.i.i.i, -1
  br i1 %.not13.i, label %_ZNK2c415basic_substringIKcE5countEcm.exit.thread, label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %_ZNK2c415basic_substringIKcE4findEcm.exit.i, %_ZNK2c415basic_substringIKcE4findEcm.exit11.i
  %.015.i = phi i64 [ %i.ba, %_ZNK2c415basic_substringIKcE4findEcm.exit11.i ], [ 0, %_ZNK2c415basic_substringIKcE4findEcm.exit.i ]
  %.0714.i = phi i64 [ %.0811.i.i9.i, %_ZNK2c415basic_substringIKcE4findEcm.exit11.i ], [ %.0811.i.i.i, %_ZNK2c415basic_substringIKcE4findEcm.exit.i ]
  %i.ba = add i64 %.015.i, 1                      ; 2 uses
  %i.bb = add nuw i64 %.0714.i, 1                 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %.sroa.21.0339
  br i1 %i.bc, label %.lr.ph.i.i8.i, label %_ZNK2c415basic_substringIKcE5countEcm.exit

.lr.ph.i.i8.i:                                    ; preds = %.lr.ph.i109, %bb.f
  %.0811.i.i9.i = phi i64 [ %i.bg, %bb.f ], [ %i.bb, %.lr.ph.i109 ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0169.0338, i64 %.0811.i.i9.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !87
  %i.bf = icmp eq i8 %i.be, 37
  br i1 %i.bf, label %_ZNK2c415basic_substringIKcE4findEcm.exit11.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i8.i
  %i.bg = add i64 %.0811.i.i9.i, 1                ; 2 uses
  %exitcond.not.i.i10.i = icmp eq i64 %i.bg, %.sroa.21.0339
  br i1 %exitcond.not.i.i10.i, label %_ZNK2c415basic_substringIKcE5countEcm.exit, label %.lr.ph.i.i8.i, !llvm.loop !6

_ZNK2c415basic_substringIKcE4findEcm.exit11.i:    ; preds = %.lr.ph.i.i8.i
  %.not.i110 = icmp eq i64 %.0811.i.i9.i, -1
  br i1 %.not.i110, label %_ZNK2c415basic_substringIKcE5countEcm.exit, label %.lr.ph.i109, !llvm.loop !428

_ZNK2c415basic_substringIKcE5countEcm.exit:       ; preds = %.lr.ph.i109, %_ZNK2c415basic_substringIKcE4findEcm.exit11.i, %bb.f
  %i.bh = icmp eq i64 %i.ba, 0
  br i1 %i.bh, label %_ZNK2c415basic_substringIKcE5countEcm.exit.thread, label %.lr.ph.i.i

_ZNK2c415basic_substringIKcE5countEcm.exit.thread: ; preds = %bb.e, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread323, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit, %_ZNK2c415basic_substringIKcE4findEcm.exit.i, %_ZNK2c415basic_substringIKcE5countEcm.exit
  %spec.select332 = phi i64 [ %spec.select326, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread323 ], [ %spec.select340, %_ZNK2c415basic_substringIKcE5countEcm.exit ], [ %spec.select, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit ], [ %spec.select340, %_ZNK2c415basic_substringIKcE4findEcm.exit.i ], [ %spec.select340, %bb.e ] ; 2 uses
  %i.bi = phi i64 [ %i.n, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread323 ], [ %i.ar, %_ZNK2c415basic_substringIKcE5countEcm.exit ], [ %i.aq, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit ], [ %i.ar, %_ZNK2c415basic_substringIKcE4findEcm.exit.i ], [ %i.ar, %bb.e ]
  %i.bj = phi i64 [ %i.m, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread323 ], [ %i.as, %_ZNK2c415basic_substringIKcE5countEcm.exit ], [ %i.ap, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit ], [ %i.as, %_ZNK2c415basic_substringIKcE4findEcm.exit.i ], [ %i.as, %bb.e ]
  %i.bk = phi i64 [ %i.m, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread323 ], [ %i.at, %_ZNK2c415basic_substringIKcE5countEcm.exit ], [ %i.ao, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit ], [ %i.at, %_ZNK2c415basic_substringIKcE4findEcm.exit.i ], [ %i.at, %bb.e ]
  %i.bl = phi ptr [ %i.l, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread323 ], [ %i.au, %_ZNK2c415basic_substringIKcE5countEcm.exit ], [ %i.an, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit ], [ %i.au, %_ZNK2c415basic_substringIKcE4findEcm.exit.i ], [ %i.au, %bb.e ] ; 4 uses
  %i.bm = phi ptr [ %i.k, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread323 ], [ %i.av, %_ZNK2c415basic_substringIKcE5countEcm.exit ], [ %i.am, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit ], [ %i.av, %_ZNK2c415basic_substringIKcE4findEcm.exit.i ], [ %i.av, %bb.e ] ; 2 uses
  %.sroa.21.0331 = phi i64 [ 0, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread323 ], [ %.sroa.21.0339, %_ZNK2c415basic_substringIKcE5countEcm.exit ], [ 0, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit ], [ %.sroa.21.0339, %_ZNK2c415basic_substringIKcE4findEcm.exit.i ], [ %.sroa.21.0339, %bb.e ] ; 3 uses
  %.sroa.0169.0328 = phi ptr [ %i.i, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread323 ], [ %.sroa.0169.0338, %_ZNK2c415basic_substringIKcE5countEcm.exit ], [ %i.ac, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit ], [ %.sroa.0169.0338, %_ZNK2c415basic_substringIKcE4findEcm.exit.i ], [ %.sroa.0169.0338, %bb.e ] ; 2 uses
  %.not69 = icmp ugt i64 %spec.select332, %4
  br i1 %.not69, label %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK2c415basic_substringIKcE5countEcm.exit.thread
  br i1 %6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 60, ptr %3, align 1, !tbaa !87
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !435
  %i.bp = load i64, ptr %i.bl, align 8, !tbaa !434
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr align 1 %i.bo, i64 %i.bp, i1 false)
  %i.bq = load i64, ptr %i.bl, align 8, !tbaa !434
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr align 1 %.sroa.0169.0328, i64 %.sroa.21.0331, i1 false)
  %i.bs = load i64, ptr %i.bl, align 8, !tbaa !434
  %i.bt = getelementptr i8, ptr %3, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 1
  %i.bv = getelementptr i8, ptr %i.bu, i64 %.sroa.21.0331
  store i8 62, ptr %i.bv, align 1, !tbaa !87
  br label %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.bw = load ptr, ptr %i.bm, align 8, !tbaa !435
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %i.bw, i64 %i.bk, i1 false)
  %i.bx = load i64, ptr %i.bl, align 8, !tbaa !434
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 %i.bx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %.sroa.0169.0328, i64 %.sroa.21.0331, i1 false)
  br label %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread

.lr.ph.i.i:                                       ; preds = %_ZNK2c415basic_substringIKcE5countEcm.exit, %bb.j
  %.0811.i.i = phi i64 [ %i.cc, %bb.j ], [ 0, %_ZNK2c415basic_substringIKcE5countEcm.exit ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0169.0338, i64 %.0811.i.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !87
  %i.cb = icmp eq i8 %i.ca, 37
  br i1 %i.cb, label %_ZNK2c415basic_substringIKcE4findEcm.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.cc = add i64 %.0811.i.i, 1                   ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cc, %.sroa.21.0339
  br i1 %exitcond.not.i.i, label %_ZNK2c415basic_substringIKcE4findEcm.exit, label %.lr.ph.i.i, !llvm.loop !6

_ZNK2c415basic_substringIKcE4findEcm.exit:        ; preds = %.lr.ph.i.i, %bb.j
  %i.cd = phi i64 [ -1, %bb.j ], [ %.0811.i.i, %.lr.ph.i.i ]
  %.fr = freeze i64 %i.cd
  br label %bb.k

bb.k:                                             ; preds = %_ZNK2c415basic_substringIKcE4findEcm.exit117, %_ZNK2c415basic_substringIKcE4findEcm.exit
  %.052 = phi i64 [ %.fr, %_ZNK2c415basic_substringIKcE4findEcm.exit ], [ %.0811.i.i115, %_ZNK2c415basic_substringIKcE4findEcm.exit117 ] ; 2 uses
  %.1 = phi i64 [ %spec.select340, %_ZNK2c415basic_substringIKcE4findEcm.exit ], [ %i.cs, %_ZNK2c415basic_substringIKcE4findEcm.exit117 ]
  %i.ce = add i64 %.052, 1                        ; 5 uses
  %i.cf = icmp ult i64 %i.ce, %.sroa.21.0339      ; 2 uses
  br i1 %i.cf, label %.preheader.us.i, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.thread

.preheader.us.i:                                  ; preds = %bb.k, %bb.l
  %.01427.us.i = phi i64 [ %i.cj, %bb.l ], [ %i.ce, %bb.k ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0169.0338, i64 %.01427.us.i
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !87
  switch i8 %i.ch, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit [
    i8 48, label %bb.l
    i8 49, label %bb.l
    i8 50, label %bb.l
    i8 51, label %bb.l
    i8 52, label %bb.l
    i8 53, label %bb.l
    i8 54, label %bb.l
    i8 55, label %bb.l
    i8 56, label %bb.l
    i8 57, label %bb.l
    i8 97, label %bb.l
    i8 98, label %bb.l
    i8 99, label %bb.l
    i8 100, label %bb.l
    i8 101, label %bb.l
    i8 102, label %bb.l
    i8 65, label %bb.l
    i8 66, label %bb.l
    i8 67, label %bb.l
    i8 68, label %bb.l
    i8 69, label %bb.l
    i8 70, label %bb.l
  ]

_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit: ; preds = %.preheader.us.i
  %i.ci = icmp eq i64 %.01427.us.i, -1
  br i1 %i.ci, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.thread, label %bb.m

bb.l:                                             ; preds = %.preheader.us.i, %.preheader.us.i, %.preheader.us.i, %.preheader.us.i, %.preheader.us.i, %.preheader.us.i, %.preheader.us.i, %.preheader.us.i, %.preheader.us.i, %.preheader.us.i, %.preheader.us.i, %.preheader.us.i, %.preheader.us.i, %.preheader.us.i, %.preheader.us.i, %.preheader.us.i, %.preheader.us.i, %.preheader.us.i, %.preheader.us.i, %.preheader.us.i, %.preheader.us.i, %.preheader.us.i
  %i.cj = add i64 %.01427.us.i, 1                 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %i.cj, %.sroa.21.0339
  br i1 %exitcond30.not.i, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.thread, label %.preheader.us.i, !llvm.loop !9

_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.thread: ; preds = %bb.l, %bb.k, %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit
  br label %bb.m

bb.m:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit, %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.thread
  %i.ck = phi i64 [ %.sroa.21.0339, %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.thread ], [ %.01427.us.i, %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit ] ; 3 uses
  %.not = icmp ult i64 %i.ce, %i.ck
  br i1 %.not, label %bb.o, label %bb.n, !prof !88

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.b, ptr noundef nonnull align 16 dereferenceable(27) @__const._ZNK2c43yml12TagDirective9transformENS_15basic_substringIKcEENS2_IcEERKNS0_9CallbacksEb.msg.136, i64 27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 0, ptr %11, align 8
  %.sroa.2158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 32583, ptr %.sroa.2158.0..sroa_idx, align 8
  %.sroa.3159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %.sroa.3159.0..sroa_idx, align 8
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr @.str.1, ptr %.sroa.4160.0..sroa_idx, align 8
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 74, ptr %.sroa.5161.0..sroa_idx, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !97
  %i.cn = load ptr, ptr %5, align 8, !tbaa !94
  call void %i.cm(ptr noundef nonnull %i.b, i64 noundef 26, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %11, ptr noundef %i.cn), !inline_history !105
  call void @abort() #60
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.co = add i64 %.052, 3
  %.not61 = icmp ugt i64 %i.co, %i.ck
  br i1 %.not61, label %bb.p, label %bb.q, !prof !72

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) @__const._ZNK2c43yml12TagDirective9transformENS_15basic_substringIKcEENS2_IcEERKNS0_9CallbacksEb.msg.137, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i64 0, ptr %10, align 8
  %.sroa.2153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 32584, ptr %.sroa.2153.0..sroa_idx, align 8
  %.sroa.3154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %.sroa.3154.0..sroa_idx, align 8
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @.str.1, ptr %.sroa.4155.0..sroa_idx, align 8
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 74, ptr %.sroa.5156.0..sroa_idx, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !97
  %i.cr = load ptr, ptr %5, align 8, !tbaa !94
  call void %i.cq(ptr noundef nonnull %i.c, i64 noundef 31, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %10, ptr noundef %i.cr), !inline_history !105
  call void @abort() #60
  unreachable

bb.q:                                             ; preds = %bb.o
  %.neg = sub i64 %i.ce, %i.ck
  %i.cs = add i64 %.neg, %.1                      ; 5 uses
  br i1 %i.cf, label %.lr.ph.i.i114, label %_ZNK2c415basic_substringIKcE4findEcm.exit117.thread

.lr.ph.i.i114:                                    ; preds = %bb.q, %bb.r
  %.0811.i.i115 = phi i64 [ %i.cw, %bb.r ], [ %i.ce, %bb.q ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0169.0338, i64 %.0811.i.i115
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !87
  %i.cv = icmp eq i8 %i.cu, 37
  br i1 %i.cv, label %_ZNK2c415basic_substringIKcE4findEcm.exit117, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i114
  %i.cw = add i64 %.0811.i.i115, 1                ; 2 uses
  %exitcond.not.i.i116 = icmp eq i64 %i.cw, %.sroa.21.0339
  br i1 %exitcond.not.i.i116, label %_ZNK2c415basic_substringIKcE4findEcm.exit117.thread, label %.lr.ph.i.i114, !llvm.loop !6

_ZNK2c415basic_substringIKcE4findEcm.exit117:     ; preds = %.lr.ph.i.i114
  %.not62 = icmp eq i64 %.0811.i.i115, -1
  br i1 %.not62, label %_ZNK2c415basic_substringIKcE4findEcm.exit117.thread, label %bb.k, !llvm.loop !429

_ZNK2c415basic_substringIKcE4findEcm.exit117.thread: ; preds = %bb.q, %_ZNK2c415basic_substringIKcE4findEcm.exit117, %bb.r
  %.not63 = icmp ugt i64 %i.cs, %4
  br i1 %.not63, label %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread, label %bb.s

bb.s:                                             ; preds = %_ZNK2c415basic_substringIKcE4findEcm.exit117.thread
  br i1 %6, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i8 60, ptr %3, align 1, !tbaa !87
  %.sroa.210.0.copyload.pre = load i64, ptr %i.au, align 8, !tbaa !102
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.210.0.copyload = phi i64 [ %.sroa.210.0.copyload.pre, %bb.t ], [ %i.at, %bb.s ] ; 2 uses
  %.0235 = phi i64 [ 1, %bb.t ], [ 0, %bb.s ]     ; 2 uses
  %.sroa.09.0.copyload = load ptr, ptr %i.av, align 8, !tbaa !101
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 %.0235
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr readonly align 1 %.sroa.09.0.copyload, i64 %.sroa.210.0.copyload, i1 false)
  %i.cy = add i64 %.sroa.210.0.copyload, %.0235
  br label %.lr.ph.i.i118

.lr.ph.i.i118:                                    ; preds = %bb.u, %bb.v
  %.0811.i.i119 = phi i64 [ %i.dc, %bb.v ], [ 0, %bb.u ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0169.0338, i64 %.0811.i.i119
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !87
  %i.db = icmp eq i8 %i.da, 37
  br i1 %i.db, label %_ZNK2c415basic_substringIKcE4findEcm.exit121, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i118
  %i.dc = add i64 %.0811.i.i119, 1                ; 2 uses
  %exitcond.not.i.i120 = icmp eq i64 %i.dc, %.sroa.21.0339
  br i1 %exitcond.not.i.i120, label %_ZNK2c415basic_substringIKcE4findEcm.exit121, label %.lr.ph.i.i118, !llvm.loop !6

_ZNK2c415basic_substringIKcE4findEcm.exit121:     ; preds = %.lr.ph.i.i118, %bb.v
  %i.dd = phi i64 [ -1, %bb.v ], [ %.0811.i.i119, %.lr.ph.i.i118 ]
  %.fr248 = freeze i64 %i.dd
  br label %bb.w

bb.w:                                             ; preds = %_ZNK2c415basic_substringIKcE4findEcm.exit135, %_ZNK2c415basic_substringIKcE4findEcm.exit121
  %.1236 = phi i64 [ %i.cy, %_ZNK2c415basic_substringIKcE4findEcm.exit121 ], [ %i.en, %_ZNK2c415basic_substringIKcE4findEcm.exit135 ] ; 2 uses
  %.056 = phi i64 [ 0, %_ZNK2c415basic_substringIKcE4findEcm.exit121 ], [ %i.dk, %_ZNK2c415basic_substringIKcE4findEcm.exit135 ] ; 2 uses
  %.153 = phi i64 [ %.fr248, %_ZNK2c415basic_substringIKcE4findEcm.exit121 ], [ %.0811.i.i133, %_ZNK2c415basic_substringIKcE4findEcm.exit135 ] ; 4 uses
  %i.de = add i64 %.153, 1                        ; 6 uses
  %i.df = icmp ult i64 %i.de, %.sroa.21.0339      ; 2 uses
  br i1 %i.df, label %.preheader.us.i123, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit128.thread

.preheader.us.i123:                               ; preds = %bb.w, %bb.x
  %.01427.us.i124 = phi i64 [ %i.dj, %bb.x ], [ %i.de, %bb.w ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0169.0338, i64 %.01427.us.i124
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !87
  switch i8 %i.dh, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit128 [
    i8 48, label %bb.x
    i8 49, label %bb.x
    i8 50, label %bb.x
    i8 51, label %bb.x
    i8 52, label %bb.x
    i8 53, label %bb.x
    i8 54, label %bb.x
    i8 55, label %bb.x
    i8 56, label %bb.x
    i8 57, label %bb.x
    i8 97, label %bb.x
    i8 98, label %bb.x
    i8 99, label %bb.x
    i8 100, label %bb.x
    i8 101, label %bb.x
    i8 102, label %bb.x
    i8 65, label %bb.x
    i8 66, label %bb.x
    i8 67, label %bb.x
    i8 68, label %bb.x
    i8 69, label %bb.x
    i8 70, label %bb.x
  ]

_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit128: ; preds = %.preheader.us.i123
  %i.di = icmp eq i64 %.01427.us.i124, -1
  br i1 %i.di, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit128.thread, label %bb.y

bb.x:                                             ; preds = %.preheader.us.i123, %.preheader.us.i123, %.preheader.us.i123, %.preheader.us.i123, %.preheader.us.i123, %.preheader.us.i123, %.preheader.us.i123, %.preheader.us.i123, %.preheader.us.i123, %.preheader.us.i123, %.preheader.us.i123, %.preheader.us.i123, %.preheader.us.i123, %.preheader.us.i123, %.preheader.us.i123, %.preheader.us.i123, %.preheader.us.i123, %.preheader.us.i123, %.preheader.us.i123, %.preheader.us.i123, %.preheader.us.i123, %.preheader.us.i123
  %i.dj = add i64 %.01427.us.i124, 1              ; 2 uses
  %exitcond30.not.i127 = icmp eq i64 %i.dj, %.sroa.21.0339
  br i1 %exitcond30.not.i127, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit128.thread, label %.preheader.us.i123, !llvm.loop !9

_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit128.thread: ; preds = %bb.x, %bb.w, %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit128
  br label %bb.y

bb.y:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit128, %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit128.thread
  %i.dk = phi i64 [ %.sroa.21.0339, %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit128.thread ], [ %.01427.us.i124, %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit128 ] ; 7 uses
  %.not64 = icmp ult i64 %i.de, %i.dk
  br i1 %.not64, label %bb.aa, label %bb.z, !prof !88

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.d, ptr noundef nonnull align 16 dereferenceable(27) @__const._ZNK2c43yml12TagDirective9transformENS_15basic_substringIKcEENS2_IcEERKNS0_9CallbacksEb.msg.136, i64 27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 0, ptr %9, align 8
  %.sroa.2144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 32603, ptr %.sroa.2144.0..sroa_idx, align 8
  %.sroa.3145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %.sroa.3145.0..sroa_idx, align 8
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr @.str.1, ptr %.sroa.4146.0..sroa_idx, align 8
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 74, ptr %.sroa.5147.0..sroa_idx, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !97
  %i.dn = load ptr, ptr %5, align 8, !tbaa !94
  call void %i.dm(ptr noundef nonnull %i.d, i64 noundef 26, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %9, ptr noundef %i.dn), !inline_history !105
  call void @abort() #60
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.do = add i64 %.153, 3
  %.not65 = icmp ugt i64 %i.do, %i.dk
  br i1 %.not65, label %bb.ab, label %bb.ac, !prof !72

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, ptr noundef nonnull align 16 dereferenceable(32) @__const._ZNK2c43yml12TagDirective9transformENS_15basic_substringIKcEENS2_IcEERKNS0_9CallbacksEb.msg.137, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 0, ptr %8, align 8
  %.sroa.2139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 32604, ptr %.sroa.2139.0..sroa_idx, align 8
  %.sroa.3140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %.sroa.3140.0..sroa_idx, align 8
  %.sroa.4141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr @.str.1, ptr %.sroa.4141.0..sroa_idx, align 8
  %.sroa.5142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 74, ptr %.sroa.5142.0..sroa_idx, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !97
  %i.dr = load ptr, ptr %5, align 8, !tbaa !94
  call void %i.dq(ptr noundef nonnull %i.e, i64 noundef 31, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %8, ptr noundef %i.dr), !inline_history !105
  call void @abort() #60
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %.not.i88 = icmp eq i64 %i.dk, -1
  %i.ds = select i1 %.not.i88, i64 %.sroa.21.0339, i64 %i.dk ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0169.0338, i64 %i.ds
  %.not.i270 = icmp samesign eq i64 %i.de, %i.ds
  br i1 %.not.i270, label %_ZN2c48read_hexIhEEbNS_15basic_substringIKcEEPT_.exit.thread341, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ac
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0169.0338, i64 %i.de
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge.i
  %.032.i272 = phi ptr [ %i.ed, %.critedge.i ], [ %i.du, %.lr.ph.preheader ] ; 2 uses
  %.0220271 = phi i8 [ %i.ec, %.critedge.i ], [ 0, %.lr.ph.preheader ]
  %i.dv = load i8, ptr %.032.i272, align 1, !tbaa !87, !noalias !436 ; 5 uses
  %i.dw = add i8 %i.dv, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.dw, 10
  br i1 %or.cond.i, label %.critedge.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph
  %i.dx = add i8 %i.dv, -97
  %or.cond6.i = icmp ult i8 %i.dx, 6
  br i1 %or.cond6.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dy = add nsw i8 %i.dv, -87
  br label %.critedge.i

bb.af:                                            ; preds = %bb.ad
  %i.dz = add i8 %i.dv, -65
  %or.cond9.i = icmp ult i8 %i.dz, 6
  br i1 %or.cond9.i, label %bb.ag, label %_ZN2c48read_hexIhEEbNS_15basic_substringIKcEEPT_.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.ea = add nsw i8 %i.dv, -55
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph, %bb.ag, %bb.ae
  %.0.i = phi i8 [ %i.ea, %bb.ag ], [ %i.dy, %bb.ae ], [ %i.dw, %.lr.ph ]
  %i.eb = shl i8 %.0220271, 4
  %i.ec = add nuw i8 %.0.i, %i.eb                 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.032.i272, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.ed, %i.dt
  br i1 %.not.i, label %_ZN2c48read_hexIhEEbNS_15basic_substringIKcEEPT_.exit, label %.lr.ph

_ZN2c48read_hexIhEEbNS_15basic_substringIKcEEPT_.exit: ; preds = %.critedge.i
  %i.ee = icmp sgt i8 %i.ec, -1
  br i1 %i.ee, label %_ZN2c48read_hexIhEEbNS_15basic_substringIKcEEPT_.exit.thread341, label %_ZN2c48read_hexIhEEbNS_15basic_substringIKcEEPT_.exit.thread, !prof !100

_ZN2c48read_hexIhEEbNS_15basic_substringIKcEEPT_.exit.thread: ; preds = %_ZN2c48read_hexIhEEbNS_15basic_substringIKcEEPT_.exit, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(22) %i.f, ptr noundef nonnull align 16 dereferenceable(22) @__const._ZNK2c43yml12TagDirective9transformENS_15basic_substringIKcEENS2_IcEERKNS0_9CallbacksEb.msg.138, i64 22, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 0, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 32607, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr @.str.1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 74, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !97
  %i.eh = load ptr, ptr %5, align 8, !tbaa !94
  call void %i.eg(ptr noundef nonnull %i.f, i64 noundef 21, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %7, ptr noundef %i.eh), !inline_history !105
  call void @abort() #60
  unreachable

_ZN2c48read_hexIhEEbNS_15basic_substringIKcEEPT_.exit.thread341: ; preds = %bb.ac, %_ZN2c48read_hexIhEEbNS_15basic_substringIKcEEPT_.exit
  %.0220.lcssa343 = phi i8 [ %i.ec, %_ZN2c48read_hexIhEEbNS_15basic_substringIKcEEPT_.exit ], [ 0, %bb.ac ]
  %.not.i82 = icmp eq i64 %.153, -1
  %i.ei = select i1 %.not.i82, i64 %.sroa.21.0339, i64 %.153
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0169.0338, i64 %.056
  %i.ek = sub i64 %i.ei, %.056                    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 %.1236
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.el, ptr nonnull readonly align 1 %i.ej, i64 %i.ek, i1 false)
  %i.em = add i64 %i.ek, %.1236                   ; 2 uses
  %i.en = add i64 %i.em, 1                        ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 %i.em
  store i8 %.0220.lcssa343, ptr %i.eo, align 1, !tbaa !87
  br i1 %i.df, label %.lr.ph.i.i132, label %_ZNK2c415basic_substringIKcE4findEcm.exit135.thread

.lr.ph.i.i132:                                    ; preds = %_ZN2c48read_hexIhEEbNS_15basic_substringIKcEEPT_.exit.thread341, %bb.ah
  %.0811.i.i133 = phi i64 [ %i.es, %bb.ah ], [ %i.de, %_ZN2c48read_hexIhEEbNS_15basic_substringIKcEEPT_.exit.thread341 ] ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0169.0338, i64 %.0811.i.i133
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !87
  %i.er = icmp eq i8 %i.eq, 37
  br i1 %i.er, label %_ZNK2c415basic_substringIKcE4findEcm.exit135, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i132
  %i.es = add i64 %.0811.i.i133, 1                ; 2 uses
  %exitcond.not.i.i134 = icmp eq i64 %i.es, %.sroa.21.0339
  br i1 %exitcond.not.i.i134, label %_ZNK2c415basic_substringIKcE4findEcm.exit135.thread, label %.lr.ph.i.i132, !llvm.loop !6

_ZNK2c415basic_substringIKcE4findEcm.exit135:     ; preds = %.lr.ph.i.i132
  %.not68 = icmp eq i64 %.0811.i.i133, -1
  br i1 %.not68, label %_ZNK2c415basic_substringIKcE4findEcm.exit135.thread, label %bb.w, !llvm.loop !432

_ZNK2c415basic_substringIKcE4findEcm.exit135.thread: ; preds = %_ZN2c48read_hexIhEEbNS_15basic_substringIKcEEPT_.exit.thread341, %_ZNK2c415basic_substringIKcE4findEcm.exit135, %bb.ah
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0169.0338, i64 %i.dk
  %i.eu = sub i64 %.sroa.21.0339, %i.dk           ; 2 uses
  %i.ev = getelementptr i8, ptr %3, i64 %i.en     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ev, ptr nonnull readonly align 1 %i.et, i64 %i.eu, i1 false)
  br i1 %6, label %bb.ai, label %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread

bb.ai:                                            ; preds = %_ZNK2c415basic_substringIKcE4findEcm.exit135.thread
  %i.ew = getelementptr i8, ptr %i.ev, i64 %i.eu
  store i8 62, ptr %i.ew, align 1, !tbaa !87
  br label %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread

_ZNK2c415basic_substringIKcE11begins_withES2_.exit.thread: ; preds = %bb.d, %.preheader.i, %_ZNK2c415basic_substringIKcE4findEcm.exit135.thread, %bb.ai, %bb.h, %bb.i, %_ZNK2c415basic_substringIKcE5countEcm.exit.thread, %_ZNK2c415basic_substringIKcE4findEcm.exit117.thread
  %.0 = phi i64 [ %i.cs, %_ZNK2c415basic_substringIKcE4findEcm.exit135.thread ], [ %i.bi, %bb.h ], [ %i.bj, %bb.i ], [ %spec.select332, %_ZNK2c415basic_substringIKcE5countEcm.exit.thread ], [ %i.cs, %_ZNK2c415basic_substringIKcE4findEcm.exit117.thread ], [ %i.cs, %bb.ai ], [ 0, %.preheader.i ], [ 0, %bb.d ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2c43yml4Tree7rootrefEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.c4::yml::NodeRef") align 8 captures(none) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN2c43yml4Tree7root_idEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2c43yml4Tree7reserveEm(ptr noundef nonnull align 8 dereferenceable(256) %1, i64 noundef 16)
  br label %_ZN2c43yml4Tree7root_idEv.exit

_ZN2c43yml4Tree7root_idEv.exit:                   ; preds = %bb.a, %bb.b
  store ptr %1, ptr %0, align 8, !tbaa !112
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.e, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZNK2c43yml4Tree7rootrefEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZNK2c43yml4Tree8crootrefEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN2c43yml4Tree3refEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.c4::yml::NodeRef") align 8 captures(none) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(256) %1, i64 noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !114
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.b, align 8
  store i64 -1, ptr %i.c, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZNK2c43yml4Tree3refEm(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %1, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZNK2c43yml4Tree4crefEm(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %1, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2c43yml4TreeixENS_15basic_substringIKcEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.c4::yml::NodeRef") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr %2, i64 %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload.fr.i = freeze ptr %2        ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109, !noalias !443
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN2c43yml4Tree7rootrefEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2c43yml4Tree7reserveEm(ptr noundef nonnull align 8 dereferenceable(256) %1, i64 noundef 16), !noalias !443
  br label %_ZN2c43yml4Tree7rootrefEv.exit

_ZN2c43yml4Tree7rootrefEv.exit:                   ; preds = %bb.a, %bb.b
  %i.d = load ptr, ptr %1, align 8, !noalias !444 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !119, !noalias !444 ; 3 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_ZNK2c43yml4Tree10find_childEmRKNS_15basic_substringIKcEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2c43yml4Tree7rootrefEv.exit
  %.not23.i = icmp eq ptr %.sroa.0.0.copyload.fr.i, null
  br i1 %.not23.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i, !prof !72

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_ZNK2c415basic_substringIKcE7compareEPS1_m.exit.thread.us.i
  %.0918.us.i = phi i64 [ %.09.us.i, %_ZNK2c415basic_substringIKcE7compareEPS1_m.exit.thread.us.i ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw [144 x i8], ptr %i.d, i64 %.0918.us.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445), !noalias !444
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !92, !noalias !446
  %i.k = icmp eq i64 %i.j, %3
  br i1 %i.k, label %_ZNK2c43yml4Tree10find_childEmRKNS_15basic_substringIKcEE.exit.thread17, label %_ZNK2c415basic_substringIKcE7compareEPS1_m.exit.thread.us.i

_ZNK2c415basic_substringIKcE7compareEPS1_m.exit.thread.us.i: ; preds = %.lr.ph.split.us.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %.09.us.i = load i64, ptr %i.l, align 8, !tbaa !102, !noalias !444 ; 2 uses
  %.not.us.i = icmp eq i64 %.09.us.i, -1
  br i1 %.not.us.i, label %_ZNK2c43yml4Tree10find_childEmRKNS_15basic_substringIKcEE.exit.thread, label %.lr.ph.split.us.i, !llvm.loop !10

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZNK2c415basic_substringIKcE7compareEPS1_m.exit.thread.i
  %.0918.i = phi i64 [ %.09.i, %_ZNK2c415basic_substringIKcE7compareEPS1_m.exit.thread.i ], [ %i.f, %.lr.ph.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw [144 x i8], ptr %i.d, i64 %.0918.i ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445), !noalias !444
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !99, !noalias !446 ; 2 uses
  %.not24.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !92, !noalias !446 ; 3 uses
  br i1 %.not24.i, label %bb.e, label %bb.c, !prof !72

bb.c:                                             ; preds = %.lr.ph.split.i
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %3) ; 2 uses
  %.not2933.not.i.i = icmp eq i64 %..i.i, 0
  br i1 %.not2933.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.r = add nuw i64 %.01934.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.r, %..i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.01934.i.i = phi i64 [ %i.r, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.01934.i.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !87, !noalias !446
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.fr.i, i64 %.01934.i.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !87, !alias.scope !445, !noalias !444
  %.not.i.i = icmp eq i8 %i.t, %i.v
  br i1 %.not.i.i, label %bb.d, label %_ZNK2c415basic_substringIKcE7compareEPS1_m.exit.thread.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not15.i = icmp eq i64 %i.q, %3
  br i1 %.not15.i, label %_ZNK2c43yml4Tree10find_childEmRKNS_15basic_substringIKcEE.exit.thread17, label %_ZNK2c415basic_substringIKcE7compareEPS1_m.exit.thread.i

bb.e:                                             ; preds = %.lr.ph.split.i
  %i.w = icmp eq i64 %i.q, %3
  br i1 %i.w, label %_ZNK2c43yml4Tree10find_childEmRKNS_15basic_substringIKcEE.exit.thread17, label %_ZNK2c415basic_substringIKcE7compareEPS1_m.exit.thread.i

_ZNK2c415basic_substringIKcE7compareEPS1_m.exit.thread.i: ; preds = %.lr.ph.i.i, %bb.e, %._crit_edge.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %.09.i = load i64, ptr %i.x, align 8, !tbaa !102, !noalias !444 ; 2 uses
  %.not.i5 = icmp eq i64 %.09.i, -1
  br i1 %.not.i5, label %_ZNK2c43yml4Tree10find_childEmRKNS_15basic_substringIKcEE.exit.thread, label %.lr.ph.split.i, !llvm.loop !10

_ZNK2c43yml4Tree10find_childEmRKNS_15basic_substringIKcEE.exit.thread17: ; preds = %bb.e, %._crit_edge.i.i, %.lr.ph.split.us.i
  %.1.i20 = phi i64 [ %.0918.us.i, %.lr.ph.split.us.i ], [ %.0918.i, %._crit_edge.i.i ], [ %.0918.i, %bb.e ]
  store ptr %1, ptr %0, align 8, !tbaa !112
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.1.i20, ptr %i.y, align 8, !tbaa !114
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.z, align 8
  store i64 -1, ptr %i.aa, align 8, !tbaa !113
  br label %_ZN2c43yml6detail13RoNodeMethodsINS0_7NodeRefENS0_12ConstNodeRefEEixIS3_EENSt9enable_ifIXntsr3std7is_sameIT_S4_EE5valueES3_E4typeENS_15basic_substringIKcEE.exit

_ZNK2c43yml4Tree10find_childEmRKNS_15basic_substringIKcEE.exit.thread: ; preds = %_ZNK2c415basic_substringIKcE7compareEPS1_m.exit.thread.i, %_ZNK2c415basic_substringIKcE7compareEPS1_m.exit.thread.us.i, %_ZN2c43yml4Tree7rootrefEv.exit
  store ptr %1, ptr %0, align 8, !tbaa !112
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !114
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.copyload.fr.i, ptr %i.ac, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i6, align 8, !tbaa !102
  br label %_ZN2c43yml6detail13RoNodeMethodsINS0_7NodeRefENS0_12ConstNodeRefEEixIS3_EENSt9enable_ifIXntsr3std7is_sameIT_S4_EE5valueES3_E4typeENS_15basic_substringIKcEE.exit

_ZN2c43yml6detail13RoNodeMethodsINS0_7NodeRefENS0_12ConstNodeRefEEixIS3_EENSt9enable_ifIXntsr3std7is_sameIT_S4_EE5valueES3_E4typeENS_15basic_substringIKcEE.exit: ; preds = %_ZNK2c43yml4Tree10find_childEmRKNS_15basic_substringIKcEE.exit.thread17, %_ZNK2c43yml4Tree10find_childEmRKNS_15basic_substringIKcEE.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local { ptr, i64 } @_ZNK2c43yml4TreeixENS_15basic_substringIKcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2) local_unnamed_addr #30 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17reserve_locationsEm:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !171  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !169  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2456
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2472
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !191
  %i.k = shl i64 %i.b, 3
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !193
  tail call void %i.j(ptr noundef nonnull %i.e, i64 noundef %i.k, ptr noundef %i.l), !inline_history !199
  store ptr null, ptr %i.d, align 8, !tbaa !171
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !169  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2456
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 2464
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !198
  %i.r = shl i64 %1, 3
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !193
  %i.t = tail call noundef ptr %i.q(i64 noundef %i.r, ptr noundef null, ptr noundef %i.s), !inline_history !199
  store ptr %i.t, ptr %i.d, align 8, !tbaa !171
  store i64 %1, ptr %i.a, align 8, !tbaa !192
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_resize_locationsEm.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_resize_locationsEm.exit: ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE20reserve_filter_arenaEm(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 noundef %1) local_unnamed_addr #27 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE7optionsEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #27 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE9callbacksEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2456
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local { ptr, i64 } @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8filenameEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !102
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.2.0.copyload, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8encodingEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !187
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.b, i32 1)
  ret i32 %spec.select
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef i64 @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE14stack_capacityEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2448
  %i.d = load i64, ptr %i.c, align 8, !tbaa !205
  ret i64 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef i64 @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE18locations_capacityEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load i64, ptr %i.a, align 8, !tbaa !192
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef i64 @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE21filter_arena_capacityEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #27 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17parse_in_place_evENS_15basic_substringIKcEENS4_IcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %"struct.c4::yml::Location", align 8 ; 3 uses
  %i.a = alloca [45 x i8], align 16               ; 3 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %6 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %7 = alloca %class.anon.10, align 8             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !101
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %3, ptr %i.d, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 193
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.e, i8 0, i64 144, i1 false)
  store i8 1, ptr %i.f, align 1, !tbaa !196
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.g, align 8, !tbaa !195
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 -1, ptr %i.h, align 8, !tbaa !186
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.i, align 8, !tbaa !187
  %i.j = load i32, ptr %0, align 8, !tbaa !163
  %i.k = and i32 %i.j, 2
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE6_resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE18_prepare_locationsEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE6_resetEv.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE6_resetEv.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !169  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2488
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !206  ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  store i64 0, ptr %i.p, align 8, !tbaa !209
  %.not.i.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i, label %_ZN2c43yml16EventHandlerTree11start_parseEPKcPFvPvNS_15basic_substringIS2_EENS5_IcEEES4_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE6_resetEv.exit
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #61
  br label %_ZN2c43yml16EventHandlerTree11start_parseEPKcPFvPvNS_15basic_substringIS2_EENS5_IcEEES4_.exit

_ZN2c43yml16EventHandlerTree11start_parseEPKcPFvPvNS_15basic_substringIS2_EENS5_IcEEES4_.exit: ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE6_resetEv.exit, %bb.c
  %i.r = phi i64 [ %i.q, %bb.c ], [ 0, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE6_resetEv.exit ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store ptr %1, ptr %i.t, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store i64 %i.r, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !102
  store i64 0, ptr %i.s, align 8, !tbaa !210
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i64 1, ptr %i.u, align 8, !tbaa !211
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store i64 1, ptr %i.v, align 8, !tbaa !212
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store i8 0, ptr %i.w, align 8, !tbaa !213
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  store i64 0, ptr %i.x, align 8, !tbaa !214
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store i64 0, ptr %i.y, align 8, !tbaa !215
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 137
  store i8 0, ptr %i.z, align 1, !tbaa !216
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 2504
  store ptr @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_s_relocate_arenaEPvNS_15basic_substringIKcEENS5_IcEE, ptr %i.aa, align 8, !tbaa !217
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 2512
  store ptr %0, ptr %i.ab, align 8, !tbaa !218
  %i.ac = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !219 ; 2 uses
  %.not16.not = icmp eq i64 %i.ac, 0
  br i1 %.not16.not, label %._crit_edge18, label %.lr.ph17

.lr.ph17:                                         ; preds = %_ZN2c43yml16EventHandlerTree11start_parseEPKcPFvPvNS_15basic_substringIS2_EENS5_IcEEES4_.exit
  %.sroa.2.0..sroa_idx.i.i4 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph17, %bb.y
  %i.ae = phi ptr [ %i.o, %.lr.ph17 ], [ %i.cr, %bb.y ] ; 9 uses
  %i.af = phi i64 [ %i.ac, %.lr.ph17 ], [ %i.cu, %bb.y ] ; 5 uses
  %i.ag = phi i64 [ 0, %.lr.ph17 ], [ %i.da, %bb.y ] ; 6 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !101 ; 4 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.046.i.i = phi i64 [ %i.aj, %bb.e ], [ %i.ag, %bb.d ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %.046.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.ai, label %bb.e [
    i8 10, label %bb.f
    i8 13, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.aj = add i64 %.046.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aj, %i.af
  br i1 %exitcond.not.i.i, label %.thread.i, label %.lr.ph.i.i, !llvm.loop !22

bb.f:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.ak = icmp eq i8 %i.ai, 13
  %i.al = zext i1 %i.ak to i64
  %spec.select.i.i = add nuw i64 %.046.i.i, %i.al ; 4 uses
  %i.am = icmp ult i64 %spec.select.i.i, %i.af
  br i1 %i.am, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %spec.select.i.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !87
  %i.ap = icmp eq i8 %i.ao, 10
  %i.aq = zext i1 %i.ap to i64
  %spec.select22.i.i = add nuw i64 %spec.select.i.i, %i.aq
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.g, %bb.f
  %.pn.i9.i = phi i64 [ %.046.i.i, %bb.f ], [ %.046.i.i, %bb.g ], [ %i.af, %bb.e ] ; 3 uses
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.f ], [ %spec.select22.i.i, %bb.g ], [ %i.af, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.ag ; 4 uses
  %i.as = sub i64 %.pn.i9.i, %i.ag                ; 3 uses
  store ptr %i.ar, ptr %i.ae, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx.i.i.i2 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.as, ptr %.sroa.4.0..sroa_idx.i.i.i2, align 8, !tbaa !102
  %.not13.i.i.i.i = icmp eq i64 %.pn.i9.i, %i.ag
  br i1 %.not13.i.i.i.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i, %bb.h
  %.0710.i.i.i.i = phi i64 [ %i.av, %bb.h ], [ 0, %.thread.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.0710.i.i.i.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !87
  %.not.i.i.i.i3 = icmp eq i8 %i.au, 32
  br i1 %.not.i.i.i.i3, label %bb.h, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.av = add nuw i64 %.0710.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.av, %i.as
  br i1 %exitcond.not.i.i.i.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit: ; preds = %.lr.ph.i.i.i.i, %bb.h, %.thread.i
  %i.aw = phi i64 [ -1, %.thread.i ], [ -1, %bb.h ], [ %.0710.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i.i.i = icmp eq i64 %.2.i.i, -1
  %i.ax = select i1 %.not.i.i.i, i64 %i.af, i64 %.2.i.i
  %i.ay = sub i64 %i.ax, %i.ag
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %i.aw, ptr %i.az, align 8, !tbaa !220
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.ar, ptr %i.ba, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i64 %i.ay, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !102
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store ptr %i.ar, ptr %i.bb, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store i64 %i.as, ptr %.sroa.4.0..sroa_idx2.i.i, align 8, !tbaa !102
  %i.bc = icmp eq i64 %.pn.i9.i, %i.ag
  %i.bd = icmp eq ptr %.sroa.03.0.copyload.i, null
  %i.be = or i1 %i.bc, %i.bd
  br i1 %i.be, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit, %bb.x
  %i.bf = phi ptr [ %i.ck, %bb.x ], [ %i.ae, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !221 ; 7 uses
  %i.bi = and i32 %i.bh, 16
  %.not6 = icmp eq i32 %i.bi, 0
  br i1 %.not6, label %bb.n, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.bj = and i32 %i.bh, 131072
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bl = and i32 %i.bh, 8
  %.not11 = icmp eq i32 %i.bl, 0
  br i1 %.not11, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_handle_seq_flowEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br label %bb.x

bb.l:                                             ; preds = %bb.j
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_handle_map_flowEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br label %bb.x

bb.m:                                             ; preds = %bb.i
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_handle_seq_imapEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br label %bb.x

bb.n:                                             ; preds = %.lr.ph
  %i.bm = and i32 %i.bh, 32
  %.not7 = icmp eq i32 %i.bm, 0
  br i1 %.not7, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = and i32 %i.bh, 8
  %.not10 = icmp eq i32 %i.bn, 0
  br i1 %.not10, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_handle_seq_blockEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_handle_map_blockEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br label %bb.x

bb.r:                                             ; preds = %bb.n
  %i.bo = and i32 %i.bh, 2
  %.not8 = icmp eq i32 %i.bo, 0
  br i1 %.not8, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_handle_unkEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.bp = and i32 %i.bh, 65536
  %.not9 = icmp eq i32 %i.bp, 0
  br i1 %.not9, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE12_handle_ustyEv(ptr noundef nonnull align 8 dereferenceable(256) %0) #63
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58, !noalias !580
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58, !noalias !580
  store ptr %i.b, ptr %6, align 8, !tbaa !101, !noalias !580
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i4, align 8, !tbaa !102, !noalias !580
  store i64 0, ptr %i.ad, align 8, !tbaa !178, !noalias !580
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58, !noalias !580
  store ptr %6, ptr %7, align 8, !tbaa !180, !noalias !580
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA15_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA15_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(15) @.str.161)
  %i.bq = load i64, ptr %i.ad, align 8, !tbaa !178, !noalias !580 ; 3 uses
  %i.br = load i64, ptr %.sroa.2.0..sroa_idx.i.i4, align 8, !tbaa !181, !noalias !580
  %i.bs = icmp ult i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.w, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA15_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

bb.w:                                             ; preds = %bb.v
  %i.bt = load ptr, ptr %6, align 8, !tbaa !182, !noalias !580
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bq
  store i8 10, ptr %i.bu, align 1, !tbaa !87
  %.pre.i.i = load i64, ptr %i.ad, align 8, !tbaa !178, !noalias !580
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA15_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA15_cEEEvNS_15basic_substringIKcEEDprRKT_.exit: ; preds = %bb.v, %bb.w
  %i.bv = phi i64 [ %.pre.i.i, %bb.w ], [ %i.bq, %bb.v ]
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.ad, align 8, !tbaa !178, !noalias !580
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA15_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.bx = load i64, ptr %i.ad, align 8, !tbaa !178, !noalias !580
  %i.by = call i64 @llvm.umin.i64(i64 %i.bx, i64 1024)
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !169, !noalias !580 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2520
  store ptr null, ptr %i.ca, align 8, !tbaa !223
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 2480
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !224
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 2488
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !206
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 2456
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !193
  call void %i.cc(ptr noundef nonnull %i.b, i64 noundef %i.by, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.cf, ptr noundef %i.ch), !inline_history !24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58, !noalias !580
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58, !noalias !580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58, !noalias !580
  br label %bb.x

bb.x:                                             ; preds = %bb.q, %bb.p, %bb.u, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA15_cEEEvNS_15basic_substringIKcEEDprRKT_.exit, %bb.s, %bb.m, %bb.l, %bb.k
  %i.ci = load ptr, ptr %i.l, align 8, !tbaa !169
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2488
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !206 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !138
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = load ptr, ptr %i.ck, align 8
  %i.cp = icmp eq ptr %i.co, null
  %i.cq = select i1 %i.cn, i1 true, i1 %i.cp
  br i1 %i.cq, label %._crit_edge, label %.lr.ph, !llvm.loop !578

._crit_edge:                                      ; preds = %bb.x, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit
  %i.cr = phi ptr [ %i.ae, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit ], [ %i.ck, %bb.x ] ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !210 ; 2 uses
  %i.cu = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !219 ; 3 uses
  %.not12 = icmp ult i64 %i.ct, %i.cu
  br i1 %.not12, label %bb.y, label %._crit_edge18

bb.y:                                             ; preds = %._crit_edge
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !225
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !226
  %i.cz = add i64 %i.cw, %i.ct
  %i.da = sub i64 %i.cz, %i.cy                    ; 3 uses
  store i64 %i.da, ptr %i.cs, align 8, !tbaa !210
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 64 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !211
  %i.dd = add i64 %i.dc, 1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !211
  %i.de = getelementptr inbounds nuw i8, ptr %i.cr, i64 72
  store i64 1, ptr %i.de, align 8, !tbaa !212
  %.not = icmp ult i64 %i.da, %i.cu
  br i1 %.not, label %bb.d, label %._crit_edge18, !llvm.loop !579

._crit_edge18:                                    ; preds = %bb.y, %._crit_edge, %_ZN2c43yml16EventHandlerTree11start_parseEPKcPFvPvNS_15basic_substringIS2_EENS5_IcEEES4_.exit
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_end_streamEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.df = load ptr, ptr %i.l, align 8, !tbaa !169 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2536
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !227
  %.not.i5 = icmp eq i64 %i.dh, 0
  br i1 %.not.i5, label %_ZN2c43yml16EventHandlerTree12finish_parseEv.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge18
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 2520
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !223 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !109
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.aa, label %_ZN2c43yml4Tree7root_idEv.exit.i

bb.aa:                                            ; preds = %bb.z
  call void @_ZN2c43yml4Tree7reserveEm(ptr noundef nonnull align 8 dereferenceable(256) %i.dj, i64 noundef 16)
  br label %_ZN2c43yml4Tree7root_idEv.exit.i

_ZN2c43yml4Tree7root_idEv.exit.i:                 ; preds = %bb.aa, %bb.z
  %i.dn = load ptr, ptr %i.dj, align 8, !tbaa !120
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !144
  %i.dp = and i32 %i.do, 40
  %i.dq = icmp eq i32 %i.dp, 40
  br i1 %i.dq, label %_ZN2c43yml16EventHandlerTree12finish_parseEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN2c43yml4Tree7root_idEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(45) %i.a, ptr noundef nonnull align 16 dereferenceable(45) @__const._ZN2c43yml16EventHandlerTree12finish_parseEv.msg, i64 45, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.df, i64 2456
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 2480
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !97
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !94
  call void %i.dt(ptr noundef nonnull %i.a, i64 noundef 44, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %5, ptr noundef %i.du), !inline_history !25
  call void @abort() #60
  unreachable

_ZN2c43yml16EventHandlerTree12finish_parseEv.exit: ; preds = %._crit_edge18, %_ZN2c43yml4Tree7root_idEv.exit.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.df, i64 2520
  store ptr null, ptr %i.dv, align 8, !tbaa !223
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE6_resetEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 193
  store i8 1, ptr %i.c, align 1, !tbaa !196
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.d, align 8, !tbaa !195
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 -1, ptr %i.e, align 8, !tbaa !186
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.f, align 8, !tbaa !187
  %i.g = load i32, ptr %0, align 8, !tbaa !163
  %i.h = and i32 %i.g, 2
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE18_prepare_locationsEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_s_relocate_arenaEPvNS_15basic_substringIKcEENS5_IcEE(ptr noundef %0, ptr %1, i64 %2, ptr %3, i64 %4) #27 comdat align 2 {
bb.a:
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_relocate_arenaENS_15basic_substringIKcEENS4_IcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, ptr %3, i64 %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE14_finished_fileEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !210
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !219
  %i.i = icmp uge i64 %i.f, %i.h
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !210  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !219  ; 7 uses
  %i.j = icmp ult i64 %i.f, %i.i
  %.sroa.03.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !101 ; 4 uses
  br i1 %i.j, label %.lr.ph.i, label %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit, !prof !88

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.046.i = phi i64 [ %i.m, %bb.b ], [ %i.f, %bb.a ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 %.046.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !87    ; 2 uses
  switch i8 %i.l, label %bb.b [
    i8 10, label %bb.c
    i8 13, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = add i64 %.046.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, %i.i
  br i1 %exitcond.not.i, label %.thread, label %.lr.ph.i, !llvm.loop !22

bb.c:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.n = icmp eq i8 %i.l, 13
  %i.o = zext i1 %i.n to i64
  %spec.select.i = add nuw i64 %.046.i, %i.o      ; 4 uses
  %i.p = icmp ult i64 %spec.select.i, %i.i
  br i1 %i.p, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 %spec.select.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !87
  %i.s = icmp eq i8 %i.r, 10
  %i.t = zext i1 %i.s to i64
  %spec.select22.i = add nuw i64 %spec.select.i, %i.t
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.d, %bb.c
  %.pn.i9 = phi i64 [ %.046.i, %bb.c ], [ %.046.i, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %.2.i = phi i64 [ %spec.select.i, %bb.c ], [ %spec.select22.i, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 %i.f ; 3 uses
  %i.v = sub i64 %.pn.i9, %i.f                    ; 3 uses
  store ptr %i.u, ptr %i.d, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.v, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !102
  %.not13.i.i.i = icmp eq i64 %.pn.i9, %i.f
  br i1 %.not13.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.thread, %bb.e
  %.0710.i.i.i = phi i64 [ %i.y, %bb.e ], [ 0, %.thread ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0710.i.i.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !87
  %.not.i.i.i = icmp eq i8 %i.x, 32
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.y = add nuw i64 %.0710.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.y, %i.v
  br i1 %exitcond.not.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit, label %.lr.ph.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %.thread
  %i.z = phi i64 [ -1, %.thread ], [ %.0710.i.i.i, %.lr.ph.i.i.i ], [ -1, %bb.e ]
  %.not.i.i = icmp eq i64 %.2.i, -1
  %i.aa = select i1 %.not.i.i, i64 %i.i, i64 %.2.i
  %i.ab = sub i64 %i.aa, %i.f
  br label %bb.f

_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit: ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 %i.i ; 2 uses
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !102
  br label %bb.f

bb.f:                                             ; preds = %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit
  %.sink24 = phi i64 [ -1, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit ], [ %i.z, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit ]
  %.sink22 = phi ptr [ %i.ac, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit ], [ %i.u, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit ] ; 2 uses
  %.sink21 = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit ], [ %i.ab, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit ]
  %.sink = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit ], [ %i.v, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sink24, ptr %i.ad, align 8, !tbaa !220
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sink22, ptr %i.ae, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sink21, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %.sink22, ptr %i.af, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %.sink, ptr %.sroa.4.0..sroa_idx2.i, align 8, !tbaa !102
  ret void
}

; Function Attrs: alwaysinline hot mustprogress nounwind uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE14_finished_lineEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #43 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !138
  %i.g = icmp eq i64 %i.f, 0
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = icmp eq ptr %i.h, null
  %i.j = select i1 %i.g, i1 true, i1 %i.i
  ret i1 %i.j
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE7has_anyEi(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1) local_unnamed_addr #44 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load i32, ptr %i.e, align 8, !tbaa !221
  %i.g = and i32 %i.f, %1
  %i.h = icmp ne i32 %i.g, 0
  ret i1 %i.h
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8has_noneEi(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1) local_unnamed_addr #44 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load i32, ptr %i.e, align 8, !tbaa !221
  %i.g = and i32 %i.f, %1
  %i.h = icmp eq i32 %i.g, 0
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_handle_seq_flowEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %1 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %2 = alloca %class.anon.14, align 8             ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %3 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %4 = alloca %class.anon.14, align 8             ; 5 uses
  %5 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.c = alloca [33 x i8], align 16               ; 3 uses
  %6 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.d = alloca [33 x i8], align 16               ; 3 uses
  %i.e = alloca [36 x i8], align 16               ; 3 uses
  %7 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.f = alloca [33 x i8], align 16               ; 3 uses
  %8 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.g = alloca [33 x i8], align 16               ; 3 uses
  %9 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %10 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %11 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 15 uses
  %12 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 4 uses
  %13 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 25 uses
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %.sroa.3.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i.i57 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.2.0..sroa_idx.i.i116 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !169  ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2488
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !206  ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138  ; 5 uses
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !228  ; 4 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !87    ; 2 uses
  switch i8 %i.x, label %_ZNK2c415basic_substringIcE11begins_withEc.exit.i [
    i8 32, label %.preheader.us.i.i.i.preheader
    i8 9, label %.preheader.us.i.i.i.preheader
  ]

.preheader.us.i.i.i.preheader:                    ; preds = %bb.c, %bb.c
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %.preheader.us.i.i.i.preheader, %bb.d
  %.01326.us.i.i.i = phi i64 [ %i.ab, %bb.d ], [ 0, %.preheader.us.i.i.i.preheader ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %.01326.us.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !87
  switch i8 %i.z, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i [
    i8 32, label %bb.d
    i8 9, label %bb.d
  ]

_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i: ; preds = %.preheader.us.i.i.i
  %i.aa = icmp eq i64 %.01326.us.i.i.i, -1
  br i1 %i.aa, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i.i, label %bb.e

bb.d:                                             ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %i.ab = add nuw i64 %.01326.us.i.i.i, 1         ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.ab, %i.v
  br i1 %exitcond29.not.i.i.i, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i.i, label %.preheader.us.i.i.i, !llvm.loop !26

_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i.i: ; preds = %bb.d, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i
  br label %bb.e

bb.e:                                             ; preds = %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i.i, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i
  %.0.i.i = phi i64 [ %i.v, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i.i ], [ %.01326.us.i.i.i, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i ] ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_handle_seq_flowEv:bb.a

bb.bd:                                            ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit
  switch i8 %i.ak, label %bb.bh [
    i8 44, label %bb.be
    i8 93, label %bb.bf
    i8 58, label %bb.bg
  ]

bb.be:                                            ; preds = %bb.bd
  %i.tb = and i32 %i.av, -1537
  %i.tc = or disjoint i32 %i.tb, 512
  store i32 %i.tc, ptr %i.au, align 8, !tbaa !221
  call void @_ZN2c43yml16EventHandlerTree11add_siblingEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.r)
  %i.td = load ptr, ptr %i.h, align 8, !tbaa !169
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 2488
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !206 ; 5 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 56 ; 2 uses
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !210
  %i.ti = add i64 %i.th, 1
  store i64 %i.ti, ptr %i.tg, align 8, !tbaa !210
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tf, i64 72 ; 2 uses
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !212
  %i.tl = add i64 %i.tk, 1
  store i64 %i.tl, ptr %i.tj, align 8, !tbaa !212
  %i.tm = load ptr, ptr %i.tf, align 8, !tbaa !139
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 1
  %i.to = getelementptr inbounds nuw i8, ptr %i.tf, i64 8 ; 2 uses
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !138
  %i.tq = add i64 %i.tp, -1
  store ptr %i.tn, ptr %i.tf, align 8, !tbaa !101
  store i64 %i.tq, ptr %i.to, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread

bb.bf:                                            ; preds = %bb.bd
  %i.tr = getelementptr inbounds nuw i8, ptr %i.r, i64 2488 ; 2 uses
  call void @_ZN2c43yml16EventHandlerTree31_remove_speculative_with_parentEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.r)
  %i.ts = getelementptr inbounds nuw i8, ptr %i.r, i64 2496 ; 2 uses
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !238 ; 2 uses
  %i.tu = load ptr, ptr %i.tr, align 8, !tbaa !206 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 56
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tt, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.tw, ptr noundef nonnull align 8 dereferenceable(40) %i.tv, i64 40, i1 false), !tbaa.struct !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(138) %i.tt, ptr noundef nonnull align 8 dereferenceable(138) %i.tu, i64 56, i1 false), !tbaa.struct !240
  %i.tx = getelementptr inbounds nuw i8, ptr %i.r, i64 2440 ; 2 uses
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !200
  %i.tz = add i64 %i.ty, -1                       ; 3 uses
  store i64 %i.tz, ptr %i.tx, align 8, !tbaa !200
  %i.ua = getelementptr inbounds nuw i8, ptr %i.r, i64 2432
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !201
  %i.uc = icmp ugt i64 %i.tz, 1
  %i.ud = getelementptr [152 x i8], ptr %i.ub, i64 %i.tz ; 2 uses
  %i.ue = getelementptr i8, ptr %i.ud, i64 -304
  %i.uf = select i1 %i.uc, ptr %i.ue, ptr null
  store ptr %i.uf, ptr %i.ts, align 8, !tbaa !238
  %i.ug = getelementptr i8, ptr %i.ud, i64 -152
  store ptr %i.ug, ptr %i.tr, align 8, !tbaa !206
  %i.uh = load ptr, ptr %i.h, align 8, !tbaa !169
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 2488
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !206 ; 5 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 56 ; 2 uses
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !210
  %i.um = add i64 %i.ul, 1
  store i64 %i.um, ptr %i.uk, align 8, !tbaa !210
  %i.un = getelementptr inbounds nuw i8, ptr %i.uj, i64 72 ; 2 uses
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !212
  %i.up = add i64 %i.uo, 1
  store i64 %i.up, ptr %i.un, align 8, !tbaa !212
  %i.uq = load ptr, ptr %i.uj, align 8, !tbaa !139
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 1
  %i.us = getelementptr inbounds nuw i8, ptr %i.uj, i64 8 ; 2 uses
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !138
  %i.uu = add i64 %i.ut, -1
  store ptr %i.ur, ptr %i.uj, align 8, !tbaa !101
  store i64 %i.uu, ptr %i.us, align 8, !tbaa !102
  br label %bb.bq

bb.bg:                                            ; preds = %bb.bd
  call void @_ZN2c43yml16EventHandlerTree41actually_val_is_first_key_of_new_map_flowEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.r)
  %i.uv = load ptr, ptr %i.h, align 8, !tbaa !169 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 2496
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !238
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 104
  %i.uz = load i64, ptr %i.uy, align 8, !tbaa !215
  %i.va = getelementptr inbounds nuw i8, ptr %i.uv, i64 2488
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !206 ; 7 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 104
  store i64 %i.uz, ptr %i.vc, align 8, !tbaa !215
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 56 ; 2 uses
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !210
  %i.vf = add i64 %i.ve, 1
  store i64 %i.vf, ptr %i.vd, align 8, !tbaa !210
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vb, i64 72 ; 2 uses
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !212
  %i.vi = add i64 %i.vh, 1
  store i64 %i.vi, ptr %i.vg, align 8, !tbaa !212
  %i.vj = load ptr, ptr %i.vb, align 8, !tbaa !139
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 1
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vb, i64 8 ; 2 uses
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !138
  %i.vn = add i64 %i.vm, -1
  store ptr %i.vk, ptr %i.vb, align 8, !tbaa !101
  store i64 %i.vn, ptr %i.vl, align 8, !tbaa !102
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vb, i64 96 ; 2 uses
  %i.vp = load i32, ptr %i.vo, align 8, !tbaa !221
  %i.vq = and i32 %i.vp, -132609
  %i.vr = or disjoint i32 %i.vq, 131584
  store i32 %i.vr, ptr %i.vo, align 8, !tbaa !221
  br label %bb.bq

bb.bh:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !586
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58, !noalias !586
  store ptr %i.a, ptr %1, align 8, !tbaa !101, !noalias !586
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i116, align 8, !tbaa !102, !noalias !586
  store i64 0, ptr %i.o, align 8, !tbaa !178, !noalias !586
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58, !noalias !586
  store ptr %1, ptr %2, align 8, !tbaa !180, !noalias !586
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA12_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg)
  %i.vs = load i64, ptr %i.o, align 8, !tbaa !178, !noalias !586 ; 3 uses
  %i.vt = load i64, ptr %.sroa.2.0..sroa_idx.i.i116, align 8, !tbaa !181, !noalias !586
  %i.vu = icmp ult i64 %i.vs, %i.vt
  br i1 %i.vu, label %bb.bi, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit118

bb.bi:                                            ; preds = %bb.bh
  %i.vv = load ptr, ptr %1, align 8, !tbaa !182, !noalias !586
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 %i.vs
  store i8 10, ptr %i.vw, align 1, !tbaa !87
  %.pre.i.i117 = load i64, ptr %i.o, align 8, !tbaa !178, !noalias !586
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit118

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit118: ; preds = %bb.bh, %bb.bi
  %i.vx = phi i64 [ %.pre.i.i117, %bb.bi ], [ %i.vs, %bb.bh ]
  %i.vy = add i64 %i.vx, 1
  store i64 %i.vy, ptr %i.o, align 8, !tbaa !178, !noalias !586
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.vz = load i64, ptr %i.o, align 8, !tbaa !178, !noalias !586
  %i.wa = call i64 @llvm.umin.i64(i64 %i.vz, i64 1024)
  %i.wb = load ptr, ptr %i.h, align 8, !tbaa !169, !noalias !586 ; 4 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 2520
  store ptr null, ptr %i.wc, align 8, !tbaa !223
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wb, i64 2480
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !224
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wb, i64 2488
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !206
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 56
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wb, i64 2456
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !193
  call void %i.we(ptr noundef nonnull %i.a, i64 noundef %i.wa, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.wh, ptr noundef %i.wj), !inline_history !243
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58, !noalias !586
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58, !noalias !586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !586
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread: ; preds = %bb.be, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit118, %bb.f, %bb.e, %bb.b, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit.thread
  %i.wk = load ptr, ptr %i.h, align 8, !tbaa !169
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 2488
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !206 ; 12 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8 ; 3 uses
  %i.wo = load i64, ptr %i.wn, align 8, !tbaa !138
  %i.wp = icmp eq i64 %i.wo, 0
  %i.wq = load ptr, ptr %i.wm, align 8
  %i.wr = icmp eq ptr %i.wq, null
  %i.ws = select i1 %i.wp, i1 true, i1 %i.wr
  br i1 %i.ws, label %bb.bj, label %.backedge

bb.bj:                                            ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wm, i64 56 ; 2 uses
  %i.wu = load i64, ptr %i.wt, align 8, !tbaa !210 ; 2 uses
  %i.wv = load i64, ptr %i.p, align 8, !tbaa !219 ; 8 uses
  %.not134 = icmp ult i64 %i.wu, %i.wv
  br i1 %.not134, label %bb.bk, label %bb.bp, !prof !88

bb.bk:                                            ; preds = %bb.bj
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wm, i64 32 ; 2 uses
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !225
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wm, i64 48 ; 2 uses
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !226
  %i.xa = sub i64 %i.wx, %i.wz
  %i.xb = add i64 %i.xa, %i.wu                    ; 7 uses
  store i64 %i.xb, ptr %i.wt, align 8, !tbaa !210
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wm, i64 64 ; 2 uses
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !211
  %i.xe = add i64 %i.xd, 1
  store i64 %i.xe, ptr %i.xc, align 8, !tbaa !211
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wm, i64 72
  store i64 1, ptr %i.xf, align 8, !tbaa !212
  %i.xg = icmp ult i64 %i.xb, %i.wv
  %.sroa.03.0.copyload.i = load ptr, ptr %i.q, align 8, !tbaa !101 ; 4 uses
  br i1 %i.xg, label %.lr.ph.i.i120, label %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, !prof !88

.lr.ph.i.i120:                                    ; preds = %bb.bk, %bb.bl
  %.046.i.i = phi i64 [ %i.xj, %bb.bl ], [ %i.xb, %bb.bk ] ; 5 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %.046.i.i
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.xi, label %bb.bl [
    i8 10, label %bb.bm
    i8 13, label %bb.bm
  ]

bb.bl:                                            ; preds = %.lr.ph.i.i120
  %i.xj = add i64 %.046.i.i, 1                    ; 2 uses
  %exitcond.not.i.i123 = icmp eq i64 %i.xj, %i.wv
  br i1 %exitcond.not.i.i123, label %.thread.i121, label %.lr.ph.i.i120, !llvm.loop !22

bb.bm:                                            ; preds = %.lr.ph.i.i120, %.lr.ph.i.i120
  %i.xk = icmp eq i8 %i.xi, 13
  %i.xl = zext i1 %i.xk to i64
  %spec.select.i.i = add nuw i64 %.046.i.i, %i.xl ; 4 uses
  %i.xm = icmp ult i64 %spec.select.i.i, %i.wv
  br i1 %i.xm, label %bb.bn, label %.thread.i121

bb.bn:                                            ; preds = %bb.bm
  %i.xn = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %spec.select.i.i
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !87
  %i.xp = icmp eq i8 %i.xo, 10
  %i.xq = zext i1 %i.xp to i64
  %spec.select22.i.i = add nuw i64 %spec.select.i.i, %i.xq
  br label %.thread.i121

.thread.i121:                                     ; preds = %bb.bl, %bb.bn, %bb.bm
  %.pn.i9.i = phi i64 [ %.046.i.i, %bb.bm ], [ %.046.i.i, %bb.bn ], [ %i.wv, %bb.bl ] ; 2 uses
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.bm ], [ %spec.select22.i.i, %bb.bn ], [ %i.wv, %bb.bl ] ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.xb ; 3 uses
  %i.xs = sub i64 %.pn.i9.i, %i.xb                ; 3 uses
  store ptr %i.xr, ptr %i.wm, align 8, !tbaa !101
  store i64 %i.xs, ptr %i.wn, align 8, !tbaa !102
  %.not13.i.i.i.i = icmp eq i64 %.pn.i9.i, %i.xb
  br i1 %.not13.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i121, %bb.bo
  %.0710.i.i.i.i = phi i64 [ %i.xv, %bb.bo ], [ 0, %.thread.i121 ] ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xr, i64 %.0710.i.i.i.i
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.xu, 32
  br i1 %.not.i.i.i.i, label %bb.bo, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i

bb.bo:                                            ; preds = %.lr.ph.i.i.i.i
  %i.xv = add nuw i64 %.0710.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.xv, %i.xs
  br i1 %exitcond.not.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i: ; preds = %bb.bo, %.lr.ph.i.i.i.i, %.thread.i121
  %i.xw = phi i64 [ -1, %.thread.i121 ], [ -1, %bb.bo ], [ %.0710.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i.i.i122 = icmp eq i64 %.2.i.i, -1
  %i.xx = select i1 %.not.i.i.i122, i64 %i.wv, i64 %.2.i.i
  %i.xy = sub i64 %i.xx, %i.xb
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i: ; preds = %bb.bk
  %i.xz = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.wv ; 2 uses
  store ptr %i.xz, ptr %i.wm, align 8, !tbaa !101
  store i64 0, ptr %i.wn, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit: ; preds = %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i
  %.sink24.i = phi i64 [ -1, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.xw, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink22.i = phi ptr [ %i.xz, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.xr, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %.sink21.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.xy, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.xs, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %i.ya = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  store i64 %.sink24.i, ptr %i.ya, align 8, !tbaa !220
  %i.yb = getelementptr inbounds nuw i8, ptr %i.wm, i64 24
  store ptr %.sink22.i, ptr %i.yb, align 8, !tbaa !101
  store i64 %.sink21.i, ptr %i.ww, align 8, !tbaa !102
  %i.yc = getelementptr inbounds nuw i8, ptr %i.wm, i64 40
  store ptr %.sink22.i, ptr %i.yc, align 8, !tbaa !101
  store i64 %.sink.i, ptr %i.wy, align 8, !tbaa !102
  br label %.backedge

.backedge:                                        ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit, %bb.bp, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread
  br label %bb.b

bb.bp:                                            ; preds = %bb.bj
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA22_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(22) @.str.194)
  br label %.backedge

bb.bq:                                            ; preds = %bb.bf, %bb.bg, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_handle_map_flowEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %2 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %3 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %4 = alloca %class.anon.14, align 8             ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %5 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %6 = alloca %class.anon.14, align 8             ; 5 uses
  %i.c = alloca [36 x i8], align 16               ; 3 uses
  %7 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.d = alloca [33 x i8], align 16               ; 3 uses
  %8 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.e = alloca [33 x i8], align 16               ; 3 uses
  %9 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %10 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %i.f = alloca [1024 x i8], align 16             ; 4 uses
  %11 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %12 = alloca %class.anon.14, align 8            ; 5 uses
  %i.g = alloca [1024 x i8], align 16             ; 4 uses
  %13 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %14 = alloca %class.anon.14, align 8            ; 5 uses
  %i.h = alloca [44 x i8], align 16               ; 3 uses
  %i.i = alloca [44 x i8], align 16               ; 3 uses
  %i.j = alloca [36 x i8], align 16               ; 3 uses
  %15 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %16 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %17 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 15 uses
  %18 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 4 uses
  %19 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 4 uses
  %20 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 15 uses
  %21 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 4 uses
  %22 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 4 uses
  %23 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 15 uses
  %24 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 4 uses
  %25 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 60 uses
  %i.l = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %.sroa.3.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 24
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i.i145 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 24
  %.sroa.2.0..sroa_idx.i.i177 = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %.sroa.3.0..sroa_idx.i189 = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 6 uses
  %.sroa.2.0..sroa_idx.i.i.i.i187 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.2.0..sroa_idx.i.i252 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i.i202 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.2.0..sroa_idx.i.i258 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  %.sroa.3.0..sroa_idx.i271 = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 6 uses
  %.sroa.2.0..sroa_idx.i.i.i.i268 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.2.0..sroa_idx.i.i.i.i285 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !169 ; 13 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2488
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !206 ; 14 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !102 ; 5 uses
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !228 ; 4 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.am, label %_ZNK2c415basic_substringIcE11begins_withEc.exit.i [
    i8 32, label %.preheader.us.i.i.i.preheader
    i8 9, label %.preheader.us.i.i.i.preheader
  ]

.preheader.us.i.i.i.preheader:                    ; preds = %bb.c, %bb.c
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %.preheader.us.i.i.i.preheader, %bb.d
  %.01326.us.i.i.i = phi i64 [ %i.aq, %bb.d ], [ 0, %.preheader.us.i.i.i.preheader ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %.01326.us.i.i.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !87
  switch i8 %i.ao, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i [
    i8 32, label %bb.d
    i8 9, label %bb.d
  ]

_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i: ; preds = %.preheader.us.i.i.i
  %i.ap = icmp eq i64 %.01326.us.i.i.i, -1
  br i1 %i.ap, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i.i, label %bb.e

bb.d:                                             ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %i.aq = add nuw i64 %.01326.us.i.i.i, 1         ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.aq, %i.ak
  br i1 %exitcond29.not.i.i.i, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i.i, label %.preheader.us.i.i.i, !llvm.loop !26

_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i.i: ; preds = %bb.d, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i
  br label %bb.e

bb.e:                                             ; preds = %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i.i, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i
  %.0.i.i = phi i64 [ %i.ak, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i.i ], [ %.01326.us.i.i.i, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 56 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !210
  %i.at = add i64 %i.as, %.0.i.i
end_hunk_2
begin_hunk_3_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_handle_map_flowEv:bb.a
  br label %.thread320

bb.dn:                                            ; preds = %bb.dj
  %i.akv = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE12_scan_anchorEv(ptr noundef nonnull align 8 dereferenceable(256) %0) ; 2 uses
  %i.akw = extractvalue { ptr, i64 } %i.akv, 0
  %i.akx = extractvalue { ptr, i64 } %i.akv, 1
  %i.aky = load ptr, ptr %i.k, align 8, !tbaa !169
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 2488
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !206
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 144
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !235 ; 4 uses
  %i.ald = load i32, ptr %i.alc, align 8, !tbaa !185
  %i.ale = or i32 %i.ald, 256
  store i32 %i.ale, ptr %i.alc, align 8, !tbaa !185
  %i.alf = getelementptr inbounds nuw i8, ptr %i.alc, i64 40
  store ptr %i.akw, ptr %i.alf, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i287 = getelementptr inbounds nuw i8, ptr %i.alc, i64 48
  store i64 %i.akx, ptr %.sroa.2.0..sroa_idx.i287, align 8, !tbaa !102
  br label %.thread320

bb.do:                                            ; preds = %bb.dj
  %i.alg = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_scan_ref_mapEv(ptr noundef nonnull align 8 dereferenceable(256) %0) ; 2 uses
  %i.alh = extractvalue { ptr, i64 } %i.alg, 0
  %i.ali = extractvalue { ptr, i64 } %i.alg, 1
  %i.alj = load ptr, ptr %i.k, align 8, !tbaa !169
  call void @_ZN2c43yml16EventHandlerTree11set_key_refENS_15basic_substringIKcEE(ptr noundef nonnull align 8 dereferenceable(2545) %i.alj, ptr %i.alh, i64 %i.ali)
  %i.alk = load ptr, ptr %i.k, align 8, !tbaa !169
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 2488
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !206
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 96 ; 2 uses
  %i.alo = load i32, ptr %i.aln, align 8, !tbaa !221
  %i.alp = and i32 %i.alo, -321
  %i.alq = or disjoint i32 %i.alp, 256
  store i32 %i.alq, ptr %i.aln, align 8, !tbaa !221
  br label %.thread320

bb.dp:                                            ; preds = %bb.dj
  %i.alr = load ptr, ptr %i.k, align 8, !tbaa !169 ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 2488
  %i.alt = load ptr, ptr %i.als, align 8, !tbaa !206
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 96 ; 2 uses
  %i.alv = load i32, ptr %i.alu, align 8, !tbaa !221
  %i.alw = and i32 %i.alv, -321
  %i.alx = or disjoint i32 %i.alw, 256
  store i32 %i.alx, ptr %i.alu, align 8, !tbaa !221
  call void @_ZN2c43yml16EventHandlerTree18begin_seq_key_flowEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.alr)
  %i.aly = load ptr, ptr %i.k, align 8, !tbaa !169 ; 2 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 2488
  %i.ama = load ptr, ptr %i.alz, align 8, !tbaa !206 ; 3 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 96 ; 2 uses
  %i.amc = load i32, ptr %i.amb, align 8, !tbaa !221
  %i.amd = and i32 %i.amc, -781
  %i.ame = or disjoint i32 %i.amd, 520
  store i32 %i.ame, ptr %i.amb, align 8, !tbaa !221
  %i.amf = getelementptr inbounds nuw i8, ptr %i.aly, i64 2496
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !238
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 104
  %i.ami = load i64, ptr %i.amh, align 8, !tbaa !215
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ama, i64 104
  store i64 %i.ami, ptr %i.amj, align 8, !tbaa !215
  br label %bb.dt

bb.dq:                                            ; preds = %bb.dj
  %i.amk = load ptr, ptr %i.k, align 8, !tbaa !169 ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 2488
  %i.amm = load ptr, ptr %i.aml, align 8, !tbaa !206
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 96 ; 2 uses
  %i.amo = load i32, ptr %i.amn, align 8, !tbaa !221
  %i.amp = and i32 %i.amo, -321
  %i.amq = or disjoint i32 %i.amp, 256
  store i32 %i.amq, ptr %i.amn, align 8, !tbaa !221
  call void @_ZN2c43yml16EventHandlerTree18begin_map_key_flowEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.amk)
  %i.amr = load ptr, ptr %i.k, align 8, !tbaa !169 ; 2 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 2496
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !238
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 104
  %i.amv = load i64, ptr %i.amu, align 8, !tbaa !215
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amr, i64 2488
  %i.amx = load ptr, ptr %i.amw, align 8, !tbaa !206 ; 7 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 104
  store i64 %i.amv, ptr %i.amy, align 8, !tbaa !215
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amx, i64 96 ; 2 uses
  %i.ana = load i32, ptr %i.amz, align 8, !tbaa !221
  %i.anb = and i32 %i.ana, -385
  %i.anc = or disjoint i32 %i.anb, 128
  store i32 %i.anc, ptr %i.amz, align 8, !tbaa !221
  %i.and = getelementptr inbounds nuw i8, ptr %i.amx, i64 56 ; 2 uses
  %i.ane = load i64, ptr %i.and, align 8, !tbaa !210
  %i.anf = add i64 %i.ane, 1
  store i64 %i.anf, ptr %i.and, align 8, !tbaa !210
  %i.ang = getelementptr inbounds nuw i8, ptr %i.amx, i64 72 ; 2 uses
  %i.anh = load i64, ptr %i.ang, align 8, !tbaa !212
  %i.ani = add i64 %i.anh, 1
  store i64 %i.ani, ptr %i.ang, align 8, !tbaa !212
  %i.anj = load ptr, ptr %i.amx, align 8, !tbaa !139
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 1
  %i.anl = getelementptr inbounds nuw i8, ptr %i.amx, i64 8 ; 2 uses
  %i.anm = load i64, ptr %i.anl, align 8, !tbaa !138
  %i.ann = add i64 %i.anm, -1
  store ptr %i.ank, ptr %i.amx, align 8, !tbaa !101
  store i64 %i.ann, ptr %i.anl, align 8, !tbaa !102
  br label %.thread320

bb.dr:                                            ; preds = %bb.dj
  %i.ano = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_scan_tagEv(ptr noundef nonnull align 8 dereferenceable(256) %0) ; 2 uses
  %i.anp = extractvalue { ptr, i64 } %i.ano, 0    ; 2 uses
  %i.anq = extractvalue { ptr, i64 } %i.ano, 1    ; 2 uses
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_check_tagENS_15basic_substringIKcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %i.anp, i64 %i.anq)
  %i.anr = load ptr, ptr %i.k, align 8, !tbaa !169
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 2488
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !206
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 144
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !235 ; 4 uses
  %i.anw = load i32, ptr %i.anv, align 8, !tbaa !185
  %i.anx = or i32 %i.anw, 1024
  store i32 %i.anx, ptr %i.anv, align 8, !tbaa !185
  %i.any = getelementptr inbounds nuw i8, ptr %i.anv, i64 8
  store ptr %i.anp, ptr %i.any, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i288 = getelementptr inbounds nuw i8, ptr %i.anv, i64 16
  store i64 %i.anq, ptr %.sroa.2.0..sroa_idx.i288, align 8, !tbaa !102
  br label %.thread320

bb.ds:                                            ; preds = %bb.dj
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg)
  br label %.thread320

.thread320:                                       ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_key_scalar_dquotERKNS3_13ScannedScalarE.exit277, %bb.dk, %bb.dm, %bb.do, %bb.dq, %bb.ds, %bb.dr, %bb.dn, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_key_scalar_plainERKNS3_13ScannedScalarEm.exit286, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_key_scalar_squotERKNS3_13ScannedScalarE.exit269
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #58
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread

bb.dt:                                            ; preds = %bb.dp, %bb.dl
  %.sink624 = phi ptr [ %i.ama, %bb.dp ], [ %i.akh, %bb.dl ] ; 5 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %.sink624, i64 56 ; 2 uses
  %i.aoa = load i64, ptr %i.anz, align 8, !tbaa !210
  %i.aob = add i64 %i.aoa, 1
  store i64 %i.aob, ptr %i.anz, align 8, !tbaa !210
  %i.aoc = getelementptr inbounds nuw i8, ptr %.sink624, i64 72 ; 2 uses
  %i.aod = load i64, ptr %i.aoc, align 8, !tbaa !212
  %i.aoe = add i64 %i.aod, 1
  store i64 %i.aoe, ptr %i.aoc, align 8, !tbaa !212
  %i.aof = load ptr, ptr %.sink624, align 8, !tbaa !139
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 1
  %i.aoh = getelementptr inbounds nuw i8, ptr %.sink624, i64 8 ; 2 uses
  %i.aoi = load i64, ptr %i.aoh, align 8, !tbaa !138
  %i.aoj = add i64 %i.aoi, -1
  store ptr %i.aog, ptr %.sink624, align 8, !tbaa !101
  store i64 %i.aoj, ptr %i.aoh, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #58
  br label %bb.eb

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread: ; preds = %bb.aw, %bb.ax, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit179, %bb.f, %bb.e, %bb.b, %.thread320, %.thread317, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit.thread, %bb.cr, %bb.cn, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit260
  %i.aok = load ptr, ptr %i.k, align 8, !tbaa !169
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 2488
  %i.aom = load ptr, ptr %i.aol, align 8, !tbaa !206 ; 12 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 8 ; 3 uses
  %i.aoo = load i64, ptr %i.aon, align 8, !tbaa !138
  %i.aop = icmp eq i64 %i.aoo, 0
  %i.aoq = load ptr, ptr %i.aom, align 8
  %i.aor = icmp eq ptr %i.aoq, null
  %i.aos = select i1 %i.aop, i1 true, i1 %i.aor
  br i1 %i.aos, label %bb.du, label %.backedge

.backedge:                                        ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread, %bb.ea, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit
  br label %bb.b

bb.du:                                            ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aom, i64 56 ; 2 uses
  %i.aou = load i64, ptr %i.aot, align 8, !tbaa !210 ; 2 uses
  %i.aov = load i64, ptr %i.ae, align 8, !tbaa !219 ; 8 uses
  %.not330 = icmp ult i64 %i.aou, %i.aov
  br i1 %.not330, label %bb.dv, label %bb.ea, !prof !88

bb.dv:                                            ; preds = %bb.du
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aom, i64 32 ; 2 uses
  %i.aox = load i64, ptr %i.aow, align 8, !tbaa !225
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aom, i64 48 ; 2 uses
  %i.aoz = load i64, ptr %i.aoy, align 8, !tbaa !226
  %i.apa = sub i64 %i.aox, %i.aoz
  %i.apb = add i64 %i.apa, %i.aou                 ; 7 uses
  store i64 %i.apb, ptr %i.aot, align 8, !tbaa !210
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aom, i64 64 ; 2 uses
  %i.apd = load i64, ptr %i.apc, align 8, !tbaa !211
  %i.ape = add i64 %i.apd, 1
  store i64 %i.ape, ptr %i.apc, align 8, !tbaa !211
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aom, i64 72
  store i64 1, ptr %i.apf, align 8, !tbaa !212
  %i.apg = icmp ult i64 %i.apb, %i.aov
  %.sroa.03.0.copyload.i = load ptr, ptr %i.af, align 8, !tbaa !101 ; 4 uses
  br i1 %i.apg, label %.lr.ph.i.i290, label %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, !prof !88

.lr.ph.i.i290:                                    ; preds = %bb.dv, %bb.dw
  %.046.i.i = phi i64 [ %i.apj, %bb.dw ], [ %i.apb, %bb.dv ] ; 5 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %.046.i.i
  %i.api = load i8, ptr %i.aph, align 1, !tbaa !87 ; 2 uses
  switch i8 %i.api, label %bb.dw [
    i8 10, label %bb.dx
    i8 13, label %bb.dx
  ]

bb.dw:                                            ; preds = %.lr.ph.i.i290
  %i.apj = add i64 %.046.i.i, 1                   ; 2 uses
  %exitcond.not.i.i292 = icmp eq i64 %i.apj, %i.aov
  br i1 %exitcond.not.i.i292, label %.thread.i, label %.lr.ph.i.i290, !llvm.loop !22

bb.dx:                                            ; preds = %.lr.ph.i.i290, %.lr.ph.i.i290
  %i.apk = icmp eq i8 %i.api, 13
  %i.apl = zext i1 %i.apk to i64
  %spec.select.i.i = add nuw i64 %.046.i.i, %i.apl ; 4 uses
  %i.apm = icmp ult i64 %spec.select.i.i, %i.aov
  br i1 %i.apm, label %bb.dy, label %.thread.i

bb.dy:                                            ; preds = %bb.dx
  %i.apn = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %spec.select.i.i
  %i.apo = load i8, ptr %i.apn, align 1, !tbaa !87
  %i.app = icmp eq i8 %i.apo, 10
  %i.apq = zext i1 %i.app to i64
  %spec.select22.i.i = add nuw i64 %spec.select.i.i, %i.apq
  br label %.thread.i

.thread.i:                                        ; preds = %bb.dw, %bb.dy, %bb.dx
  %.pn.i9.i = phi i64 [ %.046.i.i, %bb.dx ], [ %.046.i.i, %bb.dy ], [ %i.aov, %bb.dw ] ; 2 uses
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.dx ], [ %spec.select22.i.i, %bb.dy ], [ %i.aov, %bb.dw ] ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.apb ; 3 uses
  %i.aps = sub i64 %.pn.i9.i, %i.apb              ; 3 uses
  store ptr %i.apr, ptr %i.aom, align 8, !tbaa !101
  store i64 %i.aps, ptr %i.aon, align 8, !tbaa !102
  %.not13.i.i.i.i = icmp eq i64 %.pn.i9.i, %i.apb
  br i1 %.not13.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i, %bb.dz
  %.0710.i.i.i.i = phi i64 [ %i.apv, %bb.dz ], [ 0, %.thread.i ] ; 3 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apr, i64 %.0710.i.i.i.i
  %i.apu = load i8, ptr %i.apt, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.apu, 32
  br i1 %.not.i.i.i.i, label %bb.dz, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i
  %i.apv = add nuw i64 %.0710.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.apv, %i.aps
  br i1 %exitcond.not.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i: ; preds = %bb.dz, %.lr.ph.i.i.i.i, %.thread.i
  %i.apw = phi i64 [ -1, %.thread.i ], [ -1, %bb.dz ], [ %.0710.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i.i.i291 = icmp eq i64 %.2.i.i, -1
  %i.apx = select i1 %.not.i.i.i291, i64 %i.aov, i64 %.2.i.i
  %i.apy = sub i64 %i.apx, %i.apb
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i: ; preds = %bb.dv
  %i.apz = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.aov ; 2 uses
  store ptr %i.apz, ptr %i.aom, align 8, !tbaa !101
  store i64 0, ptr %i.aon, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit: ; preds = %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i
  %.sink24.i = phi i64 [ -1, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.apw, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink22.i = phi ptr [ %i.apz, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.apr, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %.sink21.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.apy, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.aps, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.aom, i64 16
  store i64 %.sink24.i, ptr %i.aqa, align 8, !tbaa !220
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aom, i64 24
  store ptr %.sink22.i, ptr %i.aqb, align 8, !tbaa !101
  store i64 %.sink21.i, ptr %i.aow, align 8, !tbaa !102
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aom, i64 40
  store ptr %.sink22.i, ptr %i.aqc, align 8, !tbaa !101
  store i64 %.sink.i, ptr %i.aoy, align 8, !tbaa !102
  br label %.backedge

bb.ea:                                            ; preds = %bb.du
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA22_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(22) @.str.193)
  br label %.backedge

bb.eb:                                            ; preds = %bb.dt, %bb.cl, %bb.ba, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit, %bb.co
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_handle_seq_imapEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %1 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %2 = alloca %class.anon.14, align 8             ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %3 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %4 = alloca %class.anon.14, align 8             ; 5 uses
  %i.c = alloca [36 x i8], align 16               ; 3 uses
  %i.d = alloca [44 x i8], align 16               ; 3 uses
  %i.e = alloca [44 x i8], align 16               ; 3 uses
  %5 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %6 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %i.f = alloca [1024 x i8], align 16             ; 4 uses
  %7 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %8 = alloca %class.anon.14, align 8             ; 5 uses
  %i.g = alloca [1024 x i8], align 16             ; 4 uses
  %9 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %10 = alloca %class.anon.14, align 8            ; 5 uses
  %i.h = alloca [36 x i8], align 16               ; 3 uses
  %11 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.i = alloca [33 x i8], align 16               ; 3 uses
  %12 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.j = alloca [33 x i8], align 16               ; 3 uses
  %13 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %14 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %15 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 22 uses
  %16 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 4 uses
  %17 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 4 uses
  %18 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 15 uses
  %19 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 4 uses
  %20 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 30 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i127 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %.sroa.3.0..sroa_idx.i139 = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 6 uses
  %.sroa.2.0..sroa_idx.i.i.i.i137 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.2.0..sroa_idx.i.i191 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i.i152 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.2.0..sroa_idx.i.i194 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !169  ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2488
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !206  ; 13 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !102 ; 5 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !228 ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.ac, label %_ZNK2c415basic_substringIcE11begins_withEc.exit.i [
    i8 32, label %.preheader.us.i.i.i.preheader
    i8 9, label %.preheader.us.i.i.i.preheader
  ]

.preheader.us.i.i.i.preheader:                    ; preds = %bb.c, %bb.c
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %.preheader.us.i.i.i.preheader, %bb.d
  %.01326.us.i.i.i = phi i64 [ %i.ag, %bb.d ], [ 0, %.preheader.us.i.i.i.preheader ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.01326.us.i.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !87
  switch i8 %i.ae, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i [
    i8 32, label %bb.d
    i8 9, label %bb.d
  ]

_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i: ; preds = %.preheader.us.i.i.i
  %i.af = icmp eq i64 %.01326.us.i.i.i, -1
  br i1 %i.af, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i.i, label %bb.e

bb.d:                                             ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %i.ag = add nuw i64 %.01326.us.i.i.i, 1         ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.ag, %i.aa
  br i1 %exitcond29.not.i.i.i, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i.i, label %.preheader.us.i.i.i, !llvm.loop !26

_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i.i: ; preds = %bb.d, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i
  br label %bb.e

bb.e:                                             ; preds = %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i.i, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i
  %.0.i.i = phi i64 [ %i.aa, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i.i ], [ %.01326.us.i.i.i, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !210
  %i.aj = add i64 %i.ai, %.0.i.i
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !210
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 72 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !212
  %i.am = add i64 %i.al, %.0.i.i
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !212
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.0.i.i ; 3 uses
  %i.ao = sub i64 %i.aa, %.0.i.i                  ; 3 uses
  store ptr %i.an, ptr %i.y, align 8, !tbaa !101
  store i64 %i.ao, ptr %i.z, align 8, !tbaa !102
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread, label %._ZNK2c415basic_substringIcE11begins_withEc.exit_crit_edge.i

._ZNK2c415basic_substringIcE11begins_withEc.exit_crit_edge.i: ; preds = %bb.e
  %.pre.i = load i8, ptr %i.an, align 1, !tbaa !87
  br label %_ZNK2c415basic_substringIcE11begins_withEc.exit.i

_ZNK2c415basic_substringIcE11begins_withEc.exit.i: ; preds = %._ZNK2c415basic_substringIcE11begins_withEc.exit_crit_edge.i, %bb.c
  %i.ap = phi i8 [ %.pre.i, %._ZNK2c415basic_substringIcE11begins_withEc.exit_crit_edge.i ], [ %i.ac, %bb.c ] ; 7 uses
  %.sroa.074.0.copyload = phi ptr [ %i.an, %._ZNK2c415basic_substringIcE11begins_withEc.exit_crit_edge.i ], [ %i.ab, %bb.c ] ; 2 uses
  %.sroa.7.0.copyload.pr = phi i64 [ %i.ao, %._ZNK2c415basic_substringIcE11begins_withEc.exit_crit_edge.i ], [ %i.aa, %bb.c ] ; 4 uses
  %i.aq = icmp eq i8 %i.ap, 35
  br i1 %i.aq, label %bb.f, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit

bb.f:                                             ; preds = %_ZNK2c415basic_substringIcE11begins_withEc.exit.i
end_hunk_3
begin_hunk_4_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_handle_seq_imapEv:bb.a
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i191, align 8, !tbaa !102, !noalias !609
  store i64 0, ptr %i.q, align 8, !tbaa !178, !noalias !609
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58, !noalias !609
  store ptr %3, ptr %4, align 8, !tbaa !180, !noalias !609
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA12_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg)
  %i.wy = load i64, ptr %i.q, align 8, !tbaa !178, !noalias !609 ; 3 uses
  %i.wz = load i64, ptr %.sroa.2.0..sroa_idx.i.i191, align 8, !tbaa !181, !noalias !609
  %i.xa = icmp ult i64 %i.wy, %i.wz
  br i1 %i.xa, label %bb.by, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit193

bb.by:                                            ; preds = %bb.bx
  %i.xb = load ptr, ptr %3, align 8, !tbaa !182, !noalias !609
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 %i.wy
  store i8 10, ptr %i.xc, align 1, !tbaa !87
  %.pre.i.i192 = load i64, ptr %i.q, align 8, !tbaa !178, !noalias !609
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit193

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit193: ; preds = %bb.bx, %bb.by
  %i.xd = phi i64 [ %.pre.i.i192, %bb.by ], [ %i.wy, %bb.bx ]
  %i.xe = add i64 %i.xd, 1
  store i64 %i.xe, ptr %i.q, align 8, !tbaa !178, !noalias !609
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.xf = load i64, ptr %i.q, align 8, !tbaa !178, !noalias !609
  %i.xg = call i64 @llvm.umin.i64(i64 %i.xf, i64 1024)
  %i.xh = load ptr, ptr %i.k, align 8, !tbaa !169, !noalias !609 ; 4 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 2520
  store ptr null, ptr %i.xi, align 8, !tbaa !223
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 2480
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !224
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xh, i64 2488
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !206
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 56
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xh, i64 2456
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !193
  call void %i.xk(ptr noundef nonnull %i.b, i64 noundef %i.xg, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.xn, ptr noundef %i.xp), !inline_history !243
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58, !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58, !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58, !noalias !609
  br label %.thread216

.thread216:                                       ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_key_scalar_squotERKNS3_13ScannedScalarE.exit, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_key_scalar_dquotERKNS3_13ScannedScalarE.exit, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_key_scalar_plainERKNS3_13ScannedScalarEm.exit, %_ZN2c43yml16EventHandlerTree11set_key_refENS_15basic_substringIKcEE.exit, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit193, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE12_scan_anchorEv.exit172
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #58
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread

bb.bz:                                            ; preds = %bb.at
  %i.xq = and i32 %i.az, 256
  %.not227 = icmp eq i32 %i.xq, 0
  br i1 %.not227, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  switch i8 %i.ap, label %bb.cc [
    i8 58, label %bb.cb
    i8 93, label %bb.ce
    i8 44, label %bb.ce
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.xr = and i32 %i.az, -1857
  %i.xs = or disjoint i32 %i.xr, 512
  store i32 %i.xs, ptr %i.ay, align 8, !tbaa !221
  %i.xt = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 2 uses
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !210
  %i.xv = add i64 %i.xu, 1
  store i64 %i.xv, ptr %i.xt, align 8, !tbaa !210
  %i.xw = getelementptr inbounds nuw i8, ptr %i.y, i64 72 ; 2 uses
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !212
  %i.xy = add i64 %i.xx, 1
  store i64 %i.xy, ptr %i.xw, align 8, !tbaa !212
  %i.xz = getelementptr inbounds nuw i8, ptr %.sroa.074.0.copyload, i64 1
  %i.ya = add i64 %.sroa.7.0.copyload.pr, -1
  store ptr %i.xz, ptr %i.y, align 8, !tbaa !101
  store i64 %i.ya, ptr %i.z, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !610
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58, !noalias !610
  store ptr %i.a, ptr %1, align 8, !tbaa !101, !noalias !610
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i194, align 8, !tbaa !102, !noalias !610
  store i64 0, ptr %i.t, align 8, !tbaa !178, !noalias !610
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58, !noalias !610
  store ptr %1, ptr %2, align 8, !tbaa !180, !noalias !610
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA12_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg)
  %i.yb = load i64, ptr %i.t, align 8, !tbaa !178, !noalias !610 ; 3 uses
  %i.yc = load i64, ptr %.sroa.2.0..sroa_idx.i.i194, align 8, !tbaa !181, !noalias !610
  %i.yd = icmp ult i64 %i.yb, %i.yc
  br i1 %i.yd, label %bb.cd, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit196

bb.cd:                                            ; preds = %bb.cc
  %i.ye = load ptr, ptr %1, align 8, !tbaa !182, !noalias !610
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 %i.yb
  store i8 10, ptr %i.yf, align 1, !tbaa !87
  %.pre.i.i195 = load i64, ptr %i.t, align 8, !tbaa !178, !noalias !610
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit196

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit196: ; preds = %bb.cc, %bb.cd
  %i.yg = phi i64 [ %.pre.i.i195, %bb.cd ], [ %i.yb, %bb.cc ]
  %i.yh = add i64 %i.yg, 1
  store i64 %i.yh, ptr %i.t, align 8, !tbaa !178, !noalias !610
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.yi = load i64, ptr %i.t, align 8, !tbaa !178, !noalias !610
  %i.yj = call i64 @llvm.umin.i64(i64 %i.yi, i64 1024)
  %i.yk = load ptr, ptr %i.k, align 8, !tbaa !169, !noalias !610 ; 4 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 2520
  store ptr null, ptr %i.yl, align 8, !tbaa !223
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yk, i64 2480
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !224
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yk, i64 2488
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !206
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 56
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yk, i64 2456
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !193
  call void %i.yn(ptr noundef nonnull %i.a, i64 noundef %i.yj, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.yq, ptr noundef %i.ys), !inline_history !243
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58, !noalias !610
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58, !noalias !610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !610
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread

bb.ce:                                            ; preds = %bb.ca, %bb.ca
  %i.yt = getelementptr inbounds nuw i8, ptr %i.w, i64 2488 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !235 ; 3 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yw, i8 0, i64 16, i1 false)
  %i.yx = load i32, ptr %i.yv, align 8, !tbaa !185
  %i.yy = or i32 %i.yx, 268443650
  store i32 %i.yy, ptr %i.yv, align 8, !tbaa !185
  call void @_ZN2c43yml16EventHandlerTree31_remove_speculative_with_parentEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.w)
  %i.yz = getelementptr inbounds nuw i8, ptr %i.w, i64 2496 ; 2 uses
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !238 ; 2 uses
  %i.zb = load ptr, ptr %i.yt, align 8, !tbaa !206 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 56
  %i.zd = getelementptr inbounds nuw i8, ptr %i.za, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.zd, ptr noundef nonnull align 8 dereferenceable(40) %i.zc, i64 40, i1 false), !tbaa.struct !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(138) %i.za, ptr noundef nonnull align 8 dereferenceable(138) %i.zb, i64 56, i1 false), !tbaa.struct !240
  %i.ze = getelementptr inbounds nuw i8, ptr %i.w, i64 2440 ; 2 uses
  %i.zf = load i64, ptr %i.ze, align 8, !tbaa !200
  %i.zg = add i64 %i.zf, -1                       ; 3 uses
  store i64 %i.zg, ptr %i.ze, align 8, !tbaa !200
  %i.zh = getelementptr inbounds nuw i8, ptr %i.w, i64 2432
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !201
  %i.zj = icmp ugt i64 %i.zg, 1
  %i.zk = getelementptr [152 x i8], ptr %i.zi, i64 %i.zg ; 2 uses
  %i.zl = getelementptr i8, ptr %i.zk, i64 -304
  %i.zm = select i1 %i.zj, ptr %i.zl, ptr null
  store ptr %i.zm, ptr %i.yz, align 8, !tbaa !238
  %i.zn = getelementptr i8, ptr %i.zk, i64 -152
  store ptr %i.zn, ptr %i.yt, align 8, !tbaa !206
  br label %bb.cm

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread: ; preds = %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit196, %bb.cb, %bb.f, %bb.e, %bb.b, %.thread216, %.thread213, %bb.an, %bb.bz
  %i.zo = load ptr, ptr %i.k, align 8, !tbaa !169
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 2488
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !206 ; 12 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 8 ; 3 uses
  %i.zs = load i64, ptr %i.zr, align 8, !tbaa !138
  %i.zt = icmp eq i64 %i.zs, 0
  %i.zu = load ptr, ptr %i.zq, align 8
  %i.zv = icmp eq ptr %i.zu, null
  %i.zw = select i1 %i.zt, i1 true, i1 %i.zv
  br i1 %i.zw, label %bb.cf, label %.backedge

.backedge:                                        ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread, %bb.cl, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit
  br label %bb.b

bb.cf:                                            ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zq, i64 56 ; 2 uses
  %i.zy = load i64, ptr %i.zx, align 8, !tbaa !210 ; 2 uses
  %i.zz = load i64, ptr %i.u, align 8, !tbaa !219 ; 8 uses
  %.not228 = icmp ult i64 %i.zy, %i.zz
  br i1 %.not228, label %bb.cg, label %bb.cl, !prof !88

bb.cg:                                            ; preds = %bb.cf
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zq, i64 32 ; 2 uses
  %i.aab = load i64, ptr %i.aaa, align 8, !tbaa !225
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zq, i64 48 ; 2 uses
  %i.aad = load i64, ptr %i.aac, align 8, !tbaa !226
  %i.aae = sub i64 %i.aab, %i.aad
  %i.aaf = add i64 %i.aae, %i.zy                  ; 7 uses
  store i64 %i.aaf, ptr %i.zx, align 8, !tbaa !210
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zq, i64 64 ; 2 uses
  %i.aah = load i64, ptr %i.aag, align 8, !tbaa !211
  %i.aai = add i64 %i.aah, 1
  store i64 %i.aai, ptr %i.aag, align 8, !tbaa !211
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zq, i64 72
  store i64 1, ptr %i.aaj, align 8, !tbaa !212
  %i.aak = icmp ult i64 %i.aaf, %i.zz
  %.sroa.03.0.copyload.i = load ptr, ptr %i.v, align 8, !tbaa !101 ; 4 uses
  br i1 %i.aak, label %.lr.ph.i.i198, label %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, !prof !88

.lr.ph.i.i198:                                    ; preds = %bb.cg, %bb.ch
  %.046.i.i = phi i64 [ %i.aan, %bb.ch ], [ %i.aaf, %bb.cg ] ; 5 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %.046.i.i
  %i.aam = load i8, ptr %i.aal, align 1, !tbaa !87 ; 2 uses
  switch i8 %i.aam, label %bb.ch [
    i8 10, label %bb.ci
    i8 13, label %bb.ci
  ]

bb.ch:                                            ; preds = %.lr.ph.i.i198
  %i.aan = add i64 %.046.i.i, 1                   ; 2 uses
  %exitcond.not.i.i200 = icmp eq i64 %i.aan, %i.zz
  br i1 %exitcond.not.i.i200, label %.thread.i, label %.lr.ph.i.i198, !llvm.loop !22

bb.ci:                                            ; preds = %.lr.ph.i.i198, %.lr.ph.i.i198
  %i.aao = icmp eq i8 %i.aam, 13
  %i.aap = zext i1 %i.aao to i64
  %spec.select.i.i = add nuw i64 %.046.i.i, %i.aap ; 4 uses
  %i.aaq = icmp ult i64 %spec.select.i.i, %i.zz
  br i1 %i.aaq, label %bb.cj, label %.thread.i

bb.cj:                                            ; preds = %bb.ci
  %i.aar = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %spec.select.i.i
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !87
  %i.aat = icmp eq i8 %i.aas, 10
  %i.aau = zext i1 %i.aat to i64
  %spec.select22.i.i = add nuw i64 %spec.select.i.i, %i.aau
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ch, %bb.cj, %bb.ci
  %.pn.i9.i = phi i64 [ %.046.i.i, %bb.ci ], [ %.046.i.i, %bb.cj ], [ %i.zz, %bb.ch ] ; 2 uses
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.ci ], [ %spec.select22.i.i, %bb.cj ], [ %i.zz, %bb.ch ] ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.aaf ; 3 uses
  %i.aaw = sub i64 %.pn.i9.i, %i.aaf              ; 3 uses
  store ptr %i.aav, ptr %i.zq, align 8, !tbaa !101
  store i64 %i.aaw, ptr %i.zr, align 8, !tbaa !102
  %.not13.i.i.i.i = icmp eq i64 %.pn.i9.i, %i.aaf
  br i1 %.not13.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i, %bb.ck
  %.0710.i.i.i.i = phi i64 [ %i.aaz, %bb.ck ], [ 0, %.thread.i ] ; 3 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aav, i64 %.0710.i.i.i.i
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.aay, 32
  br i1 %.not.i.i.i.i, label %bb.ck, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i

bb.ck:                                            ; preds = %.lr.ph.i.i.i.i
  %i.aaz = add nuw i64 %.0710.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.aaz, %i.aaw
  br i1 %exitcond.not.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i: ; preds = %bb.ck, %.lr.ph.i.i.i.i, %.thread.i
  %i.aba = phi i64 [ -1, %.thread.i ], [ -1, %bb.ck ], [ %.0710.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i.i.i199 = icmp eq i64 %.2.i.i, -1
  %i.abb = select i1 %.not.i.i.i199, i64 %i.zz, i64 %.2.i.i
  %i.abc = sub i64 %i.abb, %i.aaf
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i: ; preds = %bb.cg
  %i.abd = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.zz ; 2 uses
  store ptr %i.abd, ptr %i.zq, align 8, !tbaa !101
  store i64 0, ptr %i.zr, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit: ; preds = %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i
  %.sink24.i = phi i64 [ -1, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.aba, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink22.i = phi ptr [ %i.abd, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.aav, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %.sink21.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.abc, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.aaw, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %i.abe = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  store i64 %.sink24.i, ptr %i.abe, align 8, !tbaa !220
  %i.abf = getelementptr inbounds nuw i8, ptr %i.zq, i64 24
  store ptr %.sink22.i, ptr %i.abf, align 8, !tbaa !101
  store i64 %.sink21.i, ptr %i.aaa, align 8, !tbaa !102
  %i.abg = getelementptr inbounds nuw i8, ptr %i.zq, i64 40
  store ptr %.sink22.i, ptr %i.abg, align 8, !tbaa !101
  store i64 %.sink.i, ptr %i.aac, align 8, !tbaa !102
  br label %.backedge

bb.cl:                                            ; preds = %bb.cf
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg)
  br label %.backedge

bb.cm:                                            ; preds = %bb.ce, %bb.bo, %bb.as, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_handle_seq_blockEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %1 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %2 = alloca %class.anon.14, align 8             ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %3 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %4 = alloca %class.anon.14, align 8             ; 5 uses
  %i.c = alloca [1024 x i8], align 16             ; 4 uses
  %5 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %6 = alloca %class.anon.14, align 8             ; 5 uses
  %7 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.d = alloca [33 x i8], align 16               ; 3 uses
  %i.e = alloca [36 x i8], align 16               ; 3 uses
  %8 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.f = alloca [33 x i8], align 16               ; 3 uses
  %i.g = alloca [36 x i8], align 16               ; 3 uses
  %9 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.h = alloca [33 x i8], align 16               ; 3 uses
  %i.i = alloca [1024 x i8], align 16             ; 4 uses
  %10 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %11 = alloca %class.anon.31, align 8            ; 5 uses
  %12 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.j = alloca [33 x i8], align 16               ; 3 uses
  %13 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.k = alloca [33 x i8], align 16               ; 3 uses
  %14 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.l = alloca [33 x i8], align 16               ; 3 uses
  %i.m = alloca [1024 x i8], align 16             ; 4 uses
  %15 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %16 = alloca %class.anon.14, align 8            ; 5 uses
  %17 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %18 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %19 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.n = alloca [33 x i8], align 16               ; 3 uses
  %i.o = alloca [1024 x i8], align 16             ; 4 uses
  %20 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %21 = alloca %class.anon.31, align 8            ; 5 uses
  %22 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %23 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %24 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %25 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.p = alloca [33 x i8], align 16               ; 3 uses
  %i.q = alloca [1024 x i8], align 16             ; 4 uses
  %26 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %27 = alloca %class.anon.31, align 8            ; 5 uses
  %28 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %29 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.r = alloca [33 x i8], align 16               ; 3 uses
  %i.s = alloca [1024 x i8], align 16             ; 4 uses
  %30 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %31 = alloca %class.anon.31, align 8            ; 5 uses
  %32 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %33 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 23 uses
  %34 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 4 uses
  %35 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 4 uses
  %36 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedBlock", align 8 ; 9 uses
  %37 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedBlock", align 8 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 72 uses
  %.sroa.3.0..sroa_idx.i203 = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %37, i64 24
  %.sroa.2.0..sroa_idx.i.i.i.i212 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %23, i64 24
  %.sroa.3.0..sroa_idx.i194 = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %36, i64 24
  %.sroa.2.0..sroa_idx.i.i.i.i200 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 7 uses
  %.sroa.3.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 14 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i409 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i.i238 = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %22, i64 24
  %.sroa.2.0..sroa_idx.i.i465 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i472 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit445

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit445: ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit445.backedge, %bb.a
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE19_maybe_skip_commentEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !169
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2488
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !206 ; 25 uses
  %.sroa.0498.0.copyload = load ptr, ptr %i.at, align 8, !tbaa !101 ; 10 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 6 uses
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !102 ; 12 uses
  %.not = icmp eq i64 %.sroa.12.0.copyload, 0
  br i1 %.not, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit422.thread, label %bb.b

bb.b:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit445
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  %i.av = load i32, ptr %i.au, align 8, !tbaa !221
  %i.aw = and i32 %i.av, 512
  %.not554 = icmp eq i32 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !139 ; 2 uses
  %i.az = icmp eq ptr %.sroa.0498.0.copyload, %i.ay ; 2 uses
  br i1 %.not554, label %bb.el, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.az, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !247 ; 8 uses
  %.not.i125 = icmp ne i64 %i.bb, -1              ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_handle_seq_blockEv:bb.a
  call void %i.bbm(ptr noundef nonnull %i.b, i64 noundef %i.bbi, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.bbp, ptr noundef %i.bbr), !inline_history !243
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58, !noalias !650
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58, !noalias !650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58, !noalias !650
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit422.thread

bb.fp:                                            ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit422.thread538
  %i.bbs = load ptr, ptr %i.t, align 8, !tbaa !169 ; 5 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbs, i64 2496
  %i.bbu = load ptr, ptr %i.bbt, align 8, !tbaa !238 ; 5 uses
  %.not108 = icmp eq ptr %i.bbu, null
  br i1 %.not108, label %bb.fy, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 96
  %i.bbw = load i32, ptr %i.bbv, align 8, !tbaa !221, !alias.scope !651
  %i.bbx = and i32 %i.bbw, 36
  %i.bby = icmp eq i32 %i.bbx, 36
  br i1 %i.bby, label %bb.fr, label %bb.fy

bb.fr:                                            ; preds = %bb.fq
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bbs, i64 2488
  %i.bca = load ptr, ptr %i.bbz, align 8, !tbaa !206 ; 3 uses
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bca, i64 104
  %i.bcc = load i64, ptr %i.bcb, align 8, !tbaa !215
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bbu, i64 104
  %i.bce = load i64, ptr %i.bcd, align 8, !tbaa !215
  %i.bcf = icmp eq i64 %i.bcc, %i.bce
  br i1 %i.bcf, label %bb.fs, label %bb.fy

bb.fs:                                            ; preds = %bb.fr
  %.not4.i = icmp eq ptr %i.bca, %i.bbu
  br i1 %.not4.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE23_handle_indentation_popEPKNS0_11ParserStateE.exit, label %.lr.ph.i468.preheader

.lr.ph.i468.preheader:                            ; preds = %bb.fs
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bbs, i64 2488
  br label %.lr.ph.i468

.lr.ph.i468:                                      ; preds = %.lr.ph.i468.preheader, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_end2_mapEv.exit.i
  %i.bch = phi ptr [ %i.bdg, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_end2_mapEv.exit.i ], [ %i.bca, %.lr.ph.i468.preheader ]
  %i.bci = phi ptr [ %i.bdf, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_end2_mapEv.exit.i ], [ %i.bcg, %.lr.ph.i468.preheader ] ; 2 uses
  %i.bcj = phi ptr [ %i.bde, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_end2_mapEv.exit.i ], [ %i.bbs, %.lr.ph.i468.preheader ] ; 5 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bch, i64 96
  %i.bcl = load i32, ptr %i.bck, align 8, !tbaa !221 ; 3 uses
  %i.bcm = and i32 %i.bcl, 8
  %.not2.i = icmp eq i32 %i.bcm, 0
  br i1 %.not2.i, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %.lr.ph.i468
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_end2_seqEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_end2_mapEv.exit.i

bb.fu:                                            ; preds = %.lr.ph.i468
  %i.bcn = and i32 %i.bcl, 4
  %.not3.i = icmp eq i32 %i.bcn, 0
  br i1 %.not3.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE23_handle_indentation_popEPKNS0_11ParserStateE.exit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.bco = and i32 %i.bcl, 32
  %.not.i.i471 = icmp eq i32 %i.bco, 0
  br i1 %.not.i.i471, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_end_map_blckEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_end2_mapEv.exit.i

bb.fx:                                            ; preds = %bb.fv
  call void @_ZN2c43yml16EventHandlerTree31_remove_speculative_with_parentEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.bcj)
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bcj, i64 2496 ; 2 uses
  %i.bcq = load ptr, ptr %i.bcp, align 8, !tbaa !238 ; 2 uses
  %i.bcr = load ptr, ptr %i.bci, align 8, !tbaa !206 ; 2 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcr, i64 56
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcq, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bct, ptr noundef nonnull align 8 dereferenceable(40) %i.bcs, i64 40, i1 false), !tbaa.struct !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(138) %i.bcq, ptr noundef nonnull align 8 dereferenceable(138) %i.bcr, i64 56, i1 false), !tbaa.struct !240
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bcj, i64 2440 ; 2 uses
  %i.bcv = load i64, ptr %i.bcu, align 8, !tbaa !200
  %i.bcw = add i64 %i.bcv, -1                     ; 3 uses
  store i64 %i.bcw, ptr %i.bcu, align 8, !tbaa !200
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bcj, i64 2432
  %i.bcy = load ptr, ptr %i.bcx, align 8, !tbaa !201
  %i.bcz = icmp ugt i64 %i.bcw, 1
  %i.bda = getelementptr [152 x i8], ptr %i.bcy, i64 %i.bcw ; 2 uses
  %i.bdb = getelementptr i8, ptr %i.bda, i64 -304
  %i.bdc = select i1 %i.bcz, ptr %i.bdb, ptr null
  store ptr %i.bdc, ptr %i.bcp, align 8, !tbaa !238
  %i.bdd = getelementptr i8, ptr %i.bda, i64 -152
  store ptr %i.bdd, ptr %i.bci, align 8, !tbaa !206
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_end2_mapEv.exit.i

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_end2_mapEv.exit.i: ; preds = %bb.fx, %bb.fw, %bb.ft
  %i.bde = load ptr, ptr %i.t, align 8, !tbaa !169 ; 3 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bde, i64 2488 ; 2 uses
  %i.bdg = load ptr, ptr %i.bdf, align 8, !tbaa !206 ; 2 uses
  %.not.i469 = icmp eq ptr %i.bdg, %i.bbu
  br i1 %.not.i469, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE23_handle_indentation_popEPKNS0_11ParserStateE.exit, label %.lr.ph.i468, !llvm.loop !28

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE23_handle_indentation_popEPKNS0_11ParserStateE.exit: ; preds = %bb.fu, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_end2_mapEv.exit.i, %bb.fs
  %i.bdh = phi ptr [ %i.bbs, %bb.fs ], [ %i.bcj, %bb.fu ], [ %i.bde, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_end2_mapEv.exit.i ]
  call void @_ZN2c43yml16EventHandlerTree11add_siblingEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.bdh)
  %i.bdi = load ptr, ptr %i.t, align 8, !tbaa !169
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdi, i64 2488
  %i.bdk = load ptr, ptr %i.bdj, align 8, !tbaa !206
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdk, i64 96 ; 2 uses
  %i.bdm = load i32, ptr %i.bdl, align 8, !tbaa !221
  %i.bdn = and i32 %i.bdm, -1153
  %i.bdo = or disjoint i32 %i.bdn, 128
  store i32 %i.bdo, ptr %i.bdl, align 8, !tbaa !221
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit464.thread

bb.fy:                                            ; preds = %bb.fr, %bb.fq, %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !652
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58, !noalias !652
  store ptr %i.a, ptr %1, align 8, !tbaa !101, !noalias !652
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i472, align 8, !tbaa !102, !noalias !652
  store i64 0, ptr %i.ao, align 8, !tbaa !178, !noalias !652
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58, !noalias !652
  store ptr %1, ptr %2, align 8, !tbaa !180, !noalias !652
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA12_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg)
  %i.bdp = load i64, ptr %i.ao, align 8, !tbaa !178, !noalias !652 ; 3 uses
  %i.bdq = load i64, ptr %.sroa.2.0..sroa_idx.i.i472, align 8, !tbaa !181, !noalias !652
  %i.bdr = icmp ult i64 %i.bdp, %i.bdq
  br i1 %i.bdr, label %bb.fz, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit474

bb.fz:                                            ; preds = %bb.fy
  %i.bds = load ptr, ptr %1, align 8, !tbaa !182, !noalias !652
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 %i.bdp
  store i8 10, ptr %i.bdt, align 1, !tbaa !87
  %.pre.i.i473 = load i64, ptr %i.ao, align 8, !tbaa !178, !noalias !652
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit474

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit474: ; preds = %bb.fy, %bb.fz
  %i.bdu = phi i64 [ %.pre.i.i473, %bb.fz ], [ %i.bdp, %bb.fy ]
  %i.bdv = add i64 %i.bdu, 1
  store i64 %i.bdv, ptr %i.ao, align 8, !tbaa !178, !noalias !652
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.bdw = load i64, ptr %i.ao, align 8, !tbaa !178, !noalias !652
  %i.bdx = call i64 @llvm.umin.i64(i64 %i.bdw, i64 1024)
  %i.bdy = load ptr, ptr %i.t, align 8, !tbaa !169, !noalias !652 ; 4 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdy, i64 2520
  store ptr null, ptr %i.bdz, align 8, !tbaa !223
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdy, i64 2480
  %i.beb = load ptr, ptr %i.bea, align 8, !tbaa !224
  %i.bec = getelementptr inbounds nuw i8, ptr %i.bdy, i64 2488
  %i.bed = load ptr, ptr %i.bec, align 8, !tbaa !206
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 56
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bdy, i64 2456
  %i.beg = load ptr, ptr %i.bef, align 8, !tbaa !193
  call void %i.beb(ptr noundef nonnull %i.a, i64 noundef %i.bdx, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.bee, ptr noundef %i.beg), !inline_history !243
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !652
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit422.thread

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit422.thread: ; preds = %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit474, %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit.thread, %bb.fb, %bb.fd, %.thread, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit464, %bb.en, %bb.eu, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit, %bb.ev, %bb.es, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit422, %bb.e, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit445, %bb.i
  %i.beh = load ptr, ptr %i.t, align 8, !tbaa !169 ; 2 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %i.beh, i64 2488
  %i.bej = load ptr, ptr %i.bei, align 8, !tbaa !206 ; 13 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 8 ; 3 uses
  %i.bel = load i64, ptr %i.bek, align 8, !tbaa !138
  %i.bem = icmp eq i64 %i.bel, 0
  %i.ben = load ptr, ptr %i.bej, align 8
  %i.beo = icmp eq ptr %i.ben, null
  %i.bep = select i1 %i.bem, i1 true, i1 %i.beo
  br i1 %i.bep, label %bb.ga, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit445.backedge

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit445.backedge: ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit422.thread, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit445

bb.ga:                                            ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit422.thread
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bej, i64 32 ; 2 uses
  %i.ber = load i64, ptr %i.beq, align 8, !tbaa !225
  %i.bes = getelementptr inbounds nuw i8, ptr %i.bej, i64 48 ; 2 uses
  %i.bet = load i64, ptr %i.bes, align 8, !tbaa !226
  %i.beu = sub i64 %i.ber, %i.bet
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bej, i64 56 ; 2 uses
  %i.bew = load i64, ptr %i.bev, align 8, !tbaa !210
  %i.bex = add i64 %i.beu, %i.bew                 ; 8 uses
  store i64 %i.bex, ptr %i.bev, align 8, !tbaa !210
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bej, i64 64 ; 2 uses
  %i.bez = load i64, ptr %i.bey, align 8, !tbaa !211
  %i.bfa = add i64 %i.bez, 1
  store i64 %i.bfa, ptr %i.bey, align 8, !tbaa !211
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bej, i64 72
  store i64 1, ptr %i.bfb, align 8, !tbaa !212
  %i.bfc = load i64, ptr %i.aq, align 8, !tbaa !219 ; 7 uses
  %i.bfd = icmp ult i64 %i.bex, %i.bfc
  %.sroa.03.0.copyload.i = load ptr, ptr %i.ap, align 8, !tbaa !101 ; 4 uses
  br i1 %i.bfd, label %.lr.ph.i.i476, label %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, !prof !88

.lr.ph.i.i476:                                    ; preds = %bb.ga, %bb.gb
  %.046.i.i = phi i64 [ %i.bfg, %bb.gb ], [ %i.bex, %bb.ga ] ; 5 uses
  %i.bfe = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %.046.i.i
  %i.bff = load i8, ptr %i.bfe, align 1, !tbaa !87 ; 2 uses
  switch i8 %i.bff, label %bb.gb [
    i8 10, label %bb.gc
    i8 13, label %bb.gc
  ]

bb.gb:                                            ; preds = %.lr.ph.i.i476
  %i.bfg = add i64 %.046.i.i, 1                   ; 2 uses
  %exitcond.not.i.i479 = icmp eq i64 %i.bfg, %i.bfc
  br i1 %exitcond.not.i.i479, label %.thread.i477, label %.lr.ph.i.i476, !llvm.loop !22

bb.gc:                                            ; preds = %.lr.ph.i.i476, %.lr.ph.i.i476
  %i.bfh = icmp eq i8 %i.bff, 13
  %i.bfi = zext i1 %i.bfh to i64
  %spec.select.i.i = add nuw i64 %.046.i.i, %i.bfi ; 4 uses
  %i.bfj = icmp ult i64 %spec.select.i.i, %i.bfc
  br i1 %i.bfj, label %bb.gd, label %.thread.i477

bb.gd:                                            ; preds = %bb.gc
  %i.bfk = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %spec.select.i.i
  %i.bfl = load i8, ptr %i.bfk, align 1, !tbaa !87
  %i.bfm = icmp eq i8 %i.bfl, 10
  %i.bfn = zext i1 %i.bfm to i64
  %spec.select22.i.i = add nuw i64 %spec.select.i.i, %i.bfn
  br label %.thread.i477

.thread.i477:                                     ; preds = %bb.gb, %bb.gd, %bb.gc
  %.pn.i9.i = phi i64 [ %.046.i.i, %bb.gc ], [ %.046.i.i, %bb.gd ], [ %i.bfc, %bb.gb ] ; 2 uses
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.gc ], [ %spec.select22.i.i, %bb.gd ], [ %i.bfc, %bb.gb ] ; 2 uses
  %i.bfo = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.bex ; 3 uses
  %i.bfp = sub i64 %.pn.i9.i, %i.bex              ; 3 uses
  store ptr %i.bfo, ptr %i.bej, align 8, !tbaa !101
  store i64 %i.bfp, ptr %i.bek, align 8, !tbaa !102
  %.not13.i.i.i.i = icmp eq i64 %.pn.i9.i, %i.bex
  br i1 %.not13.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i477, %bb.ge
  %.0710.i.i.i.i = phi i64 [ %i.bfs, %bb.ge ], [ 0, %.thread.i477 ] ; 3 uses
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfo, i64 %.0710.i.i.i.i
  %i.bfr = load i8, ptr %i.bfq, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.bfr, 32
  br i1 %.not.i.i.i.i, label %bb.ge, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i

bb.ge:                                            ; preds = %.lr.ph.i.i.i.i
  %i.bfs = add nuw i64 %.0710.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bfs, %i.bfp
  br i1 %exitcond.not.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i: ; preds = %bb.ge, %.lr.ph.i.i.i.i, %.thread.i477
  %i.bft = phi i64 [ -1, %.thread.i477 ], [ -1, %bb.ge ], [ %.0710.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i.i.i478 = icmp eq i64 %.2.i.i, -1
  %i.bfu = select i1 %.not.i.i.i478, i64 %i.bfc, i64 %.2.i.i
  %i.bfv = sub i64 %i.bfu, %i.bex
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i: ; preds = %bb.ga
  %i.bfw = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.bfc ; 2 uses
  store ptr %i.bfw, ptr %i.bej, align 8, !tbaa !101
  store i64 0, ptr %i.bek, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit: ; preds = %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i
  %.sink24.i = phi i64 [ -1, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.bft, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink22.i = phi ptr [ %i.bfw, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.bfo, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %.sink21.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.bfv, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.bfp, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bej, i64 16
  store i64 %.sink24.i, ptr %i.bfx, align 8, !tbaa !220
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bej, i64 24
  store ptr %.sink22.i, ptr %i.bfy, align 8, !tbaa !101
  store i64 %.sink21.i, ptr %i.beq, align 8, !tbaa !102
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bej, i64 40
  store ptr %.sink22.i, ptr %i.bfz, align 8, !tbaa !101
  store i64 %.sink.i, ptr %i.bes, align 8, !tbaa !102
  %i.bga = load i64, ptr %i.aq, align 8, !tbaa !219
  %.not558 = icmp ult i64 %i.bex, %i.bga
  br i1 %.not558, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit445.backedge, label %bb.gf

bb.gf:                                            ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bej, i64 96
  %i.bgc = load i32, ptr %i.bgb, align 8, !tbaa !221
  %i.bgd = and i32 %i.bgc, 512
  %.not.i480 = icmp eq i32 %i.bgd, 0
  br i1 %.not.i480, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_end_seq_blckEv.exit, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE42_handle_annotations_before_blck_val_scalarEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.bge = load ptr, ptr %i.t, align 8, !tbaa !169 ; 2 uses
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bge, i64 2488
  %i.bgg = load ptr, ptr %i.bgf, align 8, !tbaa !206
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgg, i64 144
  %i.bgi = load ptr, ptr %i.bgh, align 8, !tbaa !235 ; 3 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgi, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bgj, i8 0, i64 16, i1 false)
  %i.bgk = load i32, ptr %i.bgi, align 8, !tbaa !185
  %i.bgl = or i32 %i.bgk, 268443650
  store i32 %i.bgl, ptr %i.bgi, align 8, !tbaa !185
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_end_seq_blckEv.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_end_seq_blckEv.exit: ; preds = %bb.gf, %bb.gg
  %i.bgm = phi ptr [ %i.bge, %bb.gg ], [ %i.beh, %bb.gf ] ; 5 uses
  call void @_ZN2c43yml16EventHandlerTree31_remove_speculative_with_parentEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.bgm)
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 2496 ; 2 uses
  %i.bgo = load ptr, ptr %i.bgn, align 8, !tbaa !238 ; 2 uses
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgm, i64 2488 ; 2 uses
  %i.bgq = load ptr, ptr %i.bgp, align 8, !tbaa !206 ; 2 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgq, i64 56
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgo, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bgs, ptr noundef nonnull align 8 dereferenceable(40) %i.bgr, i64 40, i1 false), !tbaa.struct !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(138) %i.bgo, ptr noundef nonnull align 8 dereferenceable(138) %i.bgq, i64 56, i1 false), !tbaa.struct !240
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgm, i64 2440 ; 2 uses
  %i.bgu = load i64, ptr %i.bgt, align 8, !tbaa !200
  %i.bgv = add i64 %i.bgu, -1                     ; 3 uses
  store i64 %i.bgv, ptr %i.bgt, align 8, !tbaa !200
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgm, i64 2432
  %i.bgx = load ptr, ptr %i.bgw, align 8, !tbaa !201
  %i.bgy = icmp ugt i64 %i.bgv, 1
  %i.bgz = getelementptr [152 x i8], ptr %i.bgx, i64 %i.bgv ; 2 uses
  %i.bha = getelementptr i8, ptr %i.bgz, i64 -304
  %i.bhb = select i1 %i.bgy, ptr %i.bha, ptr null
  store ptr %i.bhb, ptr %i.bgn, align 8, !tbaa !238
  %i.bhc = getelementptr i8, ptr %i.bgz, i64 -152
  store ptr %i.bhc, ptr %i.bgp, align 8, !tbaa !206
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit464.thread

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit464.thread: ; preds = %bb.er, %bb.fn, %bb.fl, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit, %bb.g, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit.thread, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_end_seq_blckEv.exit, %.thread544, %bb.fg, %bb.fe, %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit.thread543, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE23_handle_indentation_popEPKNS0_11ParserStateE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_handle_map_blockEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [44 x i8], align 16               ; 3 uses
  %1 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %2 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %3 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %i.b = alloca [44 x i8], align 16               ; 3 uses
  %i.c = alloca [44 x i8], align 16               ; 3 uses
  %4 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %i.d = alloca [1024 x i8], align 16             ; 4 uses
  %5 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %6 = alloca %class.anon.14, align 8             ; 5 uses
  %i.e = alloca [1024 x i8], align 16             ; 4 uses
  %7 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %8 = alloca %class.anon.14, align 8             ; 5 uses
  %i.f = alloca [1024 x i8], align 16             ; 4 uses
  %9 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %10 = alloca %class.anon.14, align 8            ; 5 uses
  %i.g = alloca [1024 x i8], align 16             ; 4 uses
  %11 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %12 = alloca %class.anon.14, align 8            ; 5 uses
  %13 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.h = alloca [33 x i8], align 16               ; 3 uses
  %14 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.i = alloca [33 x i8], align 16               ; 3 uses
  %15 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %16 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %17 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.j = alloca [33 x i8], align 16               ; 3 uses
  %i.k = alloca [1024 x i8], align 16             ; 4 uses
  %18 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %19 = alloca %class.anon.31, align 8            ; 5 uses
  %20 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %21 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %22 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %23 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.l = alloca [33 x i8], align 16               ; 3 uses
  %i.m = alloca [1024 x i8], align 16             ; 4 uses
  %24 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %25 = alloca %class.anon.31, align 8            ; 5 uses
  %26 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %27 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %28 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.n = alloca [33 x i8], align 16               ; 3 uses
  %i.o = alloca [1024 x i8], align 16             ; 4 uses
  %29 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %30 = alloca %class.anon.31, align 8            ; 5 uses
  %31 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %i.p = alloca [1024 x i8], align 16             ; 4 uses
  %32 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %33 = alloca %class.anon.14, align 8            ; 5 uses
  %34 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.q = alloca [1024 x i8], align 16             ; 4 uses
  %35 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %36 = alloca %class.anon.14, align 8            ; 5 uses
  %i.r = alloca [1024 x i8], align 16             ; 4 uses
  %37 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %38 = alloca %class.anon.14, align 8            ; 5 uses
  %39 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %40 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.s = alloca [1024 x i8], align 16             ; 4 uses
  %41 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %42 = alloca %class.anon.14, align 8            ; 5 uses
  %i.t = alloca [1024 x i8], align 16             ; 4 uses
  %43 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %44 = alloca %class.anon.14, align 8            ; 5 uses
  %i.u = alloca [1024 x i8], align 16             ; 4 uses
  %45 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %46 = alloca %class.anon.14, align 8            ; 5 uses
  %i.v = alloca [44 x i8], align 16               ; 3 uses
  %i.w = alloca [44 x i8], align 16               ; 3 uses
  %i.x = alloca [1024 x i8], align 16             ; 4 uses
  %47 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %48 = alloca %class.anon.24, align 8            ; 5 uses
  %i.y = alloca [36 x i8], align 16               ; 3 uses
  %i.z = alloca [1024 x i8], align 16             ; 4 uses
  %49 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %50 = alloca %class.anon.24, align 8            ; 5 uses
end_hunk_5
begin_hunk_6_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_handle_map_blockEv:bb.a
  %i.dla = getelementptr inbounds nuw i8, ptr %i.dkz, i64 1
  %i.dlb = getelementptr inbounds nuw i8, ptr %i.dkj, i64 8 ; 2 uses
  %i.dlc = load i64, ptr %i.dlb, align 8, !tbaa !138
  %i.dld = add i64 %i.dlc, -1
  store ptr %i.dla, ptr %i.dkj, align 8, !tbaa !101
  store i64 %i.dld, ptr %i.dlb, align 8, !tbaa !102
  br label %bb.oy

bb.or:                                            ; preds = %bb.nz
  %i.dle = load ptr, ptr %i.ag, align 8, !tbaa !169 ; 2 uses
  %i.dlf = getelementptr inbounds nuw i8, ptr %i.dle, i64 2488
  %i.dlg = load ptr, ptr %i.dlf, align 8, !tbaa !206
  %i.dlh = getelementptr inbounds nuw i8, ptr %i.dlg, i64 96 ; 2 uses
  %i.dli = load i32, ptr %i.dlh, align 8, !tbaa !221
  %i.dlj = and i32 %i.dli, -449
  %i.dlk = or disjoint i32 %i.dlj, 256
  store i32 %i.dlk, ptr %i.dlh, align 8, !tbaa !221
  call void @_ZN2c43yml16EventHandlerTree18begin_map_key_flowEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.dle)
  %i.dll = load ptr, ptr %i.ag, align 8, !tbaa !169 ; 2 uses
  %i.dlm = getelementptr inbounds nuw i8, ptr %i.dll, i64 2488
  %i.dln = load ptr, ptr %i.dlm, align 8, !tbaa !206 ; 7 uses
  %i.dlo = getelementptr inbounds nuw i8, ptr %i.dln, i64 96 ; 2 uses
  %i.dlp = load i32, ptr %i.dlo, align 8, !tbaa !221
  %i.dlq = and i32 %i.dlp, -1009
  %i.dlr = or disjoint i32 %i.dlq, 144
  store i32 %i.dlr, ptr %i.dlo, align 8, !tbaa !221
  %i.dls = getelementptr inbounds nuw i8, ptr %i.dll, i64 2496
  %i.dlt = load ptr, ptr %i.dls, align 8, !tbaa !238
  %i.dlu = getelementptr inbounds nuw i8, ptr %i.dlt, i64 104
  %i.dlv = load i64, ptr %i.dlu, align 8, !tbaa !215
  %i.dlw = getelementptr inbounds nuw i8, ptr %i.dln, i64 104
  store i64 %i.dlv, ptr %i.dlw, align 8, !tbaa !215
  %i.dlx = getelementptr inbounds nuw i8, ptr %i.dln, i64 56 ; 2 uses
  %i.dly = load i64, ptr %i.dlx, align 8, !tbaa !210
  %i.dlz = add i64 %i.dly, 1
  store i64 %i.dlz, ptr %i.dlx, align 8, !tbaa !210
  %i.dma = getelementptr inbounds nuw i8, ptr %i.dln, i64 72 ; 2 uses
  %i.dmb = load i64, ptr %i.dma, align 8, !tbaa !212
  %i.dmc = add i64 %i.dmb, 1
  store i64 %i.dmc, ptr %i.dma, align 8, !tbaa !212
  %i.dmd = load ptr, ptr %i.dln, align 8, !tbaa !139
  %i.dme = getelementptr inbounds nuw i8, ptr %i.dmd, i64 1
  %i.dmf = getelementptr inbounds nuw i8, ptr %i.dln, i64 8 ; 2 uses
  %i.dmg = load i64, ptr %i.dmf, align 8, !tbaa !138
  %i.dmh = add i64 %i.dmg, -1
  store ptr %i.dme, ptr %i.dln, align 8, !tbaa !101
  store i64 %i.dmh, ptr %i.dmf, align 8, !tbaa !102
  br label %bb.oy

bb.os:                                            ; preds = %bb.nz
  %i.dmi = load ptr, ptr %i.ag, align 8, !tbaa !169 ; 2 uses
  %i.dmj = getelementptr inbounds nuw i8, ptr %i.dmi, i64 2488
  %i.dmk = load ptr, ptr %i.dmj, align 8, !tbaa !206
  %i.dml = getelementptr inbounds nuw i8, ptr %i.dmk, i64 144
  %i.dmm = load ptr, ptr %i.dml, align 8, !tbaa !235 ; 4 uses
  %i.dmn = getelementptr inbounds nuw i8, ptr %i.dmm, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dmn, i8 0, i64 16, i1 false)
  %i.dmo = load i32, ptr %i.dmm, align 8, !tbaa !185
  %i.dmp = getelementptr inbounds nuw i8, ptr %i.dmm, i64 72
  %i.dmq = or i32 %i.dmo, 402665475
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dmp, i8 0, i64 16, i1 false)
  store i32 %i.dmq, ptr %i.dmm, align 8, !tbaa !185
  call void @_ZN2c43yml16EventHandlerTree11add_siblingEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.dmi)
  %i.dmr = load ptr, ptr %i.ag, align 8, !tbaa !169
  %i.dms = getelementptr inbounds nuw i8, ptr %i.dmr, i64 2488
  %i.dmt = load ptr, ptr %i.dms, align 8, !tbaa !206 ; 5 uses
  %i.dmu = getelementptr inbounds nuw i8, ptr %i.dmt, i64 56 ; 2 uses
  %i.dmv = load i64, ptr %i.dmu, align 8, !tbaa !210
  %i.dmw = add i64 %i.dmv, 1
  store i64 %i.dmw, ptr %i.dmu, align 8, !tbaa !210
  %i.dmx = getelementptr inbounds nuw i8, ptr %i.dmt, i64 72 ; 2 uses
  %i.dmy = load i64, ptr %i.dmx, align 8, !tbaa !212
  %i.dmz = add i64 %i.dmy, 1
  store i64 %i.dmz, ptr %i.dmx, align 8, !tbaa !212
  %i.dna = load ptr, ptr %i.dmt, align 8, !tbaa !139
  %i.dnb = getelementptr inbounds nuw i8, ptr %i.dna, i64 1
  %i.dnc = getelementptr inbounds nuw i8, ptr %i.dmt, i64 8 ; 2 uses
  %i.dnd = load i64, ptr %i.dnc, align 8, !tbaa !138
  %i.dne = add i64 %i.dnd, -1
  store ptr %i.dnb, ptr %i.dmt, align 8, !tbaa !101
  store i64 %i.dne, ptr %i.dnc, align 8, !tbaa !102
  br label %.thread1286

bb.ot:                                            ; preds = %bb.nz
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #58
  %i.dnf = getelementptr inbounds nuw i8, ptr %i.cre, i64 1 ; 2 uses
  %i.dng = add i64 %.sroa.27.3, -1
  store ptr %i.dnf, ptr %73, align 8
  store i64 %i.dng, ptr %i.cq, align 8
  %i.dnh = call noundef i32 @_ZNK2c415basic_substringIKcE7compareEPS1_m(ptr noundef nonnull align 8 dereferenceable(16) %73, ptr noundef nonnull @.str.187, i64 noundef 2) #61
  %i.dni = icmp eq i32 %i.dnh, 0
  br i1 %i.dni, label %.loopexit1303, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.dnj = icmp ult i64 %.sroa.27.3, 4
  br i1 %i.dnj, label %.thread1282, label %.preheader.i1094

.preheader.i1094:                                 ; preds = %bb.ou
  %i.dnk = load i8, ptr %i.dnf, align 1, !tbaa !87
  %.not.i1097 = icmp eq i8 %i.dnk, 46
  br i1 %.not.i1097, label %bb.ov, label %.thread1282

bb.ov:                                            ; preds = %.preheader.i1094
  %i.dnl = getelementptr inbounds nuw i8, ptr %i.cre, i64 2
  %i.dnm = load i8, ptr %i.dnl, align 1, !tbaa !87
  %.not.i1097.1 = icmp eq i8 %i.dnm, 46
  br i1 %.not.i1097.1, label %bb.ow, label %.thread1282

bb.ow:                                            ; preds = %bb.ov
  %i.dnn = getelementptr inbounds nuw i8, ptr %i.cre, i64 3
  %i.dno = load i8, ptr %i.dnn, align 1, !tbaa !87
  %.not.i1097.2 = icmp eq i8 %i.dno, 32
  br i1 %.not.i1097.2, label %.loopexit1303, label %.thread1282

.thread1282:                                      ; preds = %.preheader.i1094, %bb.ov, %bb.ow, %bb.ou
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg)
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #58
  br label %.thread1286

.loopexit1303:                                    ; preds = %bb.ot, %bb.ow
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_end_doc_suddenlyEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.dnp = load ptr, ptr %i.ag, align 8, !tbaa !169
  %i.dnq = getelementptr inbounds nuw i8, ptr %i.dnp, i64 2488
  %i.dnr = load ptr, ptr %i.dnq, align 8, !tbaa !206 ; 5 uses
  %i.dns = getelementptr inbounds nuw i8, ptr %i.dnr, i64 56 ; 2 uses
  %i.dnt = load i64, ptr %i.dns, align 8, !tbaa !210
  %i.dnu = add i64 %i.dnt, 3
  store i64 %i.dnu, ptr %i.dns, align 8, !tbaa !210
  %i.dnv = getelementptr inbounds nuw i8, ptr %i.dnr, i64 72 ; 2 uses
  %i.dnw = load i64, ptr %i.dnv, align 8, !tbaa !212
  %i.dnx = add i64 %i.dnw, 3
  store i64 %i.dnx, ptr %i.dnv, align 8, !tbaa !212
  %i.dny = load ptr, ptr %i.dnr, align 8, !tbaa !139
  %i.dnz = getelementptr inbounds nuw i8, ptr %i.dny, i64 3
  %i.doa = getelementptr inbounds nuw i8, ptr %i.dnr, i64 8 ; 2 uses
  %i.dob = load i64, ptr %i.doa, align 8, !tbaa !138
  %i.doc = add i64 %i.dob, -3
  store ptr %i.dnz, ptr %i.dnr, align 8, !tbaa !101
  store i64 %i.doc, ptr %i.doa, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #58
  br label %bb.oy

bb.ox:                                            ; preds = %bb.nz
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg)
  br label %.thread1286

.thread1286:                                      ; preds = %.thread1282, %bb.nu, %bb.my, %bb.ml, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE31_maybe_filter_key_scalar_foldedERKNS3_12ScannedBlockE.exit, %bb.oc, %bb.ob, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_add_annotationEPNS3_10AnnotationENS_15basic_substringIKcEEmm.exit1084, %bb.ox, %bb.os, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_add_annotationEPNS3_10AnnotationENS_15basic_substringIKcEEmm.exit1086, %bb.og, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE32_maybe_filter_key_scalar_literalERKNS3_12ScannedBlockE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #58
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit918

bb.oy:                                            ; preds = %.loopexit1303, %bb.or, %bb.oq, %bb.op
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #58
  br label %.loopexit1306

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit918: ; preds = %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit538, %bb.ek, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit550, %bb.di, %bb.dj, %bb.dl, %bb.do, %bb.dp, %bb.dr, %.thread1262, %.thread1286, %bb.lr, %bb.lp, %bb.lo, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit857.thread, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit.thread, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit907, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit921, %bb.lu, %bb.mb, %bb.ma, %bb.lx, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_skipcharsILm3EEEvRAT__Kc.exit, %bb.lf, %bb.lg, %bb.ex, %bb.ey, %bb.eu, %bb.es, %bb.eq, %bb.de, %bb.h, %bb.e, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit535, %bb.lc, %bb.fa
  %i.dod = load ptr, ptr %i.ag, align 8, !tbaa !169
  %i.doe = getelementptr inbounds nuw i8, ptr %i.dod, i64 2488
  %i.dof = load ptr, ptr %i.doe, align 8, !tbaa !206 ; 12 uses
  %i.dog = getelementptr inbounds nuw i8, ptr %i.dof, i64 8 ; 3 uses
  %i.doh = load i64, ptr %i.dog, align 8, !tbaa !138
  %i.doi = icmp eq i64 %i.doh, 0
  %i.doj = load ptr, ptr %i.dof, align 8
  %i.dok = icmp eq ptr %i.doj, null
  %i.dol = select i1 %i.doi, i1 true, i1 %i.dok
  br i1 %i.dol, label %bb.oz, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit535.backedge

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit535.backedge: ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit918, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit535

bb.oz:                                            ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit918
  %i.dom = getelementptr inbounds nuw i8, ptr %i.dof, i64 32 ; 2 uses
  %i.don = load i64, ptr %i.dom, align 8, !tbaa !225
  %i.doo = getelementptr inbounds nuw i8, ptr %i.dof, i64 48 ; 2 uses
  %i.dop = load i64, ptr %i.doo, align 8, !tbaa !226
  %i.doq = sub i64 %i.don, %i.dop
  %i.dor = getelementptr inbounds nuw i8, ptr %i.dof, i64 56 ; 2 uses
  %i.dos = load i64, ptr %i.dor, align 8, !tbaa !210
  %i.dot = add i64 %i.doq, %i.dos                 ; 8 uses
  store i64 %i.dot, ptr %i.dor, align 8, !tbaa !210
  %i.dou = getelementptr inbounds nuw i8, ptr %i.dof, i64 64 ; 2 uses
  %i.dov = load i64, ptr %i.dou, align 8, !tbaa !211
  %i.dow = add i64 %i.dov, 1
  store i64 %i.dow, ptr %i.dou, align 8, !tbaa !211
  %i.dox = getelementptr inbounds nuw i8, ptr %i.dof, i64 72
  store i64 1, ptr %i.dox, align 8, !tbaa !212
  %i.doy = load i64, ptr %i.cu, align 8, !tbaa !219 ; 7 uses
  %i.doz = icmp ult i64 %i.dot, %i.doy
  %.sroa.03.0.copyload.i1101 = load ptr, ptr %i.ct, align 8, !tbaa !101 ; 4 uses
  br i1 %i.doz, label %.lr.ph.i.i1103, label %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, !prof !88

.lr.ph.i.i1103:                                   ; preds = %bb.oz, %bb.pa
  %.046.i.i = phi i64 [ %i.dpc, %bb.pa ], [ %i.dot, %bb.oz ] ; 5 uses
  %i.dpa = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i1101, i64 %.046.i.i
  %i.dpb = load i8, ptr %i.dpa, align 1, !tbaa !87 ; 2 uses
  switch i8 %i.dpb, label %bb.pa [
    i8 10, label %bb.pb
    i8 13, label %bb.pb
  ]

bb.pa:                                            ; preds = %.lr.ph.i.i1103
  %i.dpc = add i64 %.046.i.i, 1                   ; 2 uses
  %exitcond.not.i.i1106 = icmp eq i64 %i.dpc, %i.doy
  br i1 %exitcond.not.i.i1106, label %.thread.i1104, label %.lr.ph.i.i1103, !llvm.loop !22

bb.pb:                                            ; preds = %.lr.ph.i.i1103, %.lr.ph.i.i1103
  %i.dpd = icmp eq i8 %i.dpb, 13
  %i.dpe = zext i1 %i.dpd to i64
  %spec.select.i.i = add nuw i64 %.046.i.i, %i.dpe ; 4 uses
  %i.dpf = icmp ult i64 %spec.select.i.i, %i.doy
  br i1 %i.dpf, label %bb.pc, label %.thread.i1104

bb.pc:                                            ; preds = %bb.pb
  %i.dpg = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i1101, i64 %spec.select.i.i
  %i.dph = load i8, ptr %i.dpg, align 1, !tbaa !87
  %i.dpi = icmp eq i8 %i.dph, 10
  %i.dpj = zext i1 %i.dpi to i64
  %spec.select22.i.i = add nuw i64 %spec.select.i.i, %i.dpj
  br label %.thread.i1104

.thread.i1104:                                    ; preds = %bb.pa, %bb.pc, %bb.pb
  %.pn.i9.i = phi i64 [ %.046.i.i, %bb.pb ], [ %.046.i.i, %bb.pc ], [ %i.doy, %bb.pa ] ; 2 uses
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.pb ], [ %spec.select22.i.i, %bb.pc ], [ %i.doy, %bb.pa ] ; 2 uses
  %i.dpk = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i1101, i64 %i.dot ; 3 uses
  %i.dpl = sub i64 %.pn.i9.i, %i.dot              ; 3 uses
  store ptr %i.dpk, ptr %i.dof, align 8, !tbaa !101
  store i64 %i.dpl, ptr %i.dog, align 8, !tbaa !102
  %.not13.i.i.i.i = icmp eq i64 %.pn.i9.i, %i.dot
  br i1 %.not13.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i1104, %bb.pd
  %.0710.i.i.i.i = phi i64 [ %i.dpo, %bb.pd ], [ 0, %.thread.i1104 ] ; 3 uses
  %i.dpm = getelementptr inbounds nuw i8, ptr %i.dpk, i64 %.0710.i.i.i.i
  %i.dpn = load i8, ptr %i.dpm, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.dpn, 32
  br i1 %.not.i.i.i.i, label %bb.pd, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i

bb.pd:                                            ; preds = %.lr.ph.i.i.i.i
  %i.dpo = add nuw i64 %.0710.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dpo, %i.dpl
  br i1 %exitcond.not.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i: ; preds = %bb.pd, %.lr.ph.i.i.i.i, %.thread.i1104
  %i.dpp = phi i64 [ -1, %.thread.i1104 ], [ -1, %bb.pd ], [ %.0710.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i.i.i1105 = icmp eq i64 %.2.i.i, -1
  %i.dpq = select i1 %.not.i.i.i1105, i64 %i.doy, i64 %.2.i.i
  %i.dpr = sub i64 %i.dpq, %i.dot
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i: ; preds = %bb.oz
  %i.dps = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i1101, i64 %i.doy ; 2 uses
  store ptr %i.dps, ptr %i.dof, align 8, !tbaa !101
  store i64 0, ptr %i.dog, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit: ; preds = %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i
  %.sink24.i = phi i64 [ -1, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.dpp, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink22.i = phi ptr [ %i.dps, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.dpk, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %.sink21.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.dpr, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.dpl, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %i.dpt = getelementptr inbounds nuw i8, ptr %i.dof, i64 16
  store i64 %.sink24.i, ptr %i.dpt, align 8, !tbaa !220
  %i.dpu = getelementptr inbounds nuw i8, ptr %i.dof, i64 24
  store ptr %.sink22.i, ptr %i.dpu, align 8, !tbaa !101
  store i64 %.sink21.i, ptr %i.dom, align 8, !tbaa !102
  %i.dpv = getelementptr inbounds nuw i8, ptr %i.dof, i64 40
  store ptr %.sink22.i, ptr %i.dpv, align 8, !tbaa !101
  store i64 %.sink.i, ptr %i.doo, align 8, !tbaa !102
  %i.dpw = load i64, ptr %i.cu, align 8, !tbaa !219
  %.not1302 = icmp ult i64 %i.dot, %i.dpw
  br i1 %.not1302, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit535.backedge, label %bb.pe

bb.pe:                                            ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_end_map_blckEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br label %.loopexit1306

.loopexit1306:                                    ; preds = %bb.lz, %bb.le, %bb.ew, %bb.g, %bb.oy, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit857, %bb.pe, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit, %.loopexit1305, %bb.ec, %bb.ea, %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit523.thread1259
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_handle_unkEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [36 x i8], align 16               ; 3 uses
  %1 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.b = alloca [33 x i8], align 16               ; 3 uses
  %i.c = alloca [36 x i8], align 16               ; 3 uses
  %i.d = alloca [12 x i8], align 1                ; 3 uses
  %i.e = alloca [12 x i8], align 1                ; 3 uses
  %2 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.f = alloca [33 x i8], align 16               ; 3 uses
  %i.g = alloca [12 x i8], align 1                ; 3 uses
  %3 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.h = alloca [33 x i8], align 16               ; 3 uses
  %i.i = alloca [12 x i8], align 1                ; 3 uses
  %4 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.j = alloca [33 x i8], align 16               ; 3 uses
  %i.k = alloca [12 x i8], align 1                ; 3 uses
  %5 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.l = alloca [33 x i8], align 16               ; 3 uses
  %i.m = alloca [12 x i8], align 1                ; 3 uses
  %6 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.n = alloca [39 x i8], align 16               ; 3 uses
  %7 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 12 uses
  %8 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 4 uses
  %9 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 4 uses
  %10 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedBlock", align 8 ; 5 uses
  %11 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedBlock", align 8 ; 5 uses
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE19_maybe_skip_commentEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 62 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !169
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2488
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !206  ; 7 uses
  %.sroa.0311.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !101 ; 3 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.17.0.copyload = load i64, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !102 ; 5 uses
  %.not = icmp eq i64 %.sroa.17.0.copyload, 0
  br i1 %.not, label %.critedge138, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.a, %bb.b
  %.01326.us.i = phi i64 [ %i.u, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0311.0.copyload, i64 %.01326.us.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !87
  switch i8 %i.t, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit [
    i8 32, label %bb.b
    i8 9, label %bb.b
  ]

_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit: ; preds = %.preheader.us.i
  switch i64 %.01326.us.i, label %bb.c [
    i64 0, label %bb.d
    i64 -1, label %.thread
  ]

bb.b:                                             ; preds = %.preheader.us.i, %.preheader.us.i
  %i.u = add nuw i64 %.01326.us.i, 1              ; 2 uses
  %exitcond29.not.i = icmp eq i64 %i.u, %.sroa.17.0.copyload
  br i1 %exitcond29.not.i, label %.thread, label %.preheader.us.i, !llvm.loop !5

.thread:                                          ; preds = %bb.b, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit, %.thread
  %i.v = phi i64 [ %.sroa.17.0.copyload, %.thread ], [ %.01326.us.i, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !210
  %i.y = add i64 %i.x, %i.v
  store i64 %i.y, ptr %i.w, align 8, !tbaa !210
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !212
  %i.ab = add i64 %i.aa, %i.v
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !212
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0311.0.copyload, i64 %i.v ; 2 uses
  %i.ad = sub i64 %.sroa.17.0.copyload, %i.v      ; 3 uses
  store ptr %i.ac, ptr %i.r, align 8, !tbaa !101
  store i64 %i.ad, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !102
  %.not132 = icmp eq i64 %i.ad, 0
  br i1 %.not132, label %.critedge138, label %bb.d

bb.d:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit, %bb.c
  %i.ae = phi ptr [ %.sroa.0311.0.copyload, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit ], [ %i.ac, %bb.c ] ; 4 uses
  %.sroa.17.0 = phi i64 [ %.sroa.17.0.copyload, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit ], [ %i.ad, %bb.c ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !247
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !139
  %i.ak = icmp eq ptr %i.ae, %i.aj
  br i1 %i.ak, label %bb.f, label %thread-pre-split

bb.f:                                             ; preds = %bb.e
  %i.al = tail call noundef zeroext i1 @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_handle_bomEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.o, align 8, !tbaa !169
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2488
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !206 ; 2 uses
  %.sroa.0311.0.copyload315 = load ptr, ptr %i.ao, align 8, !tbaa !101
  %.sroa.17.0..sroa_idx318 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.17.0.copyload319 = load i64, ptr %.sroa.17.0..sroa_idx318, align 8, !tbaa !102 ; 2 uses
  %.not133 = icmp eq i64 %.sroa.17.0.copyload319, 0
  br i1 %.not133, label %.critedge138, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0311.1 = phi ptr [ %.sroa.0311.0.copyload315, %bb.g ], [ %i.ae, %bb.f ] ; 17 uses
  %.sroa.17.1 = phi i64 [ %.sroa.17.0.copyload319, %bb.g ], [ %.sroa.17.0, %bb.f ] ; 14 uses
  %i.ap = load i8, ptr %.sroa.0311.1, align 1, !tbaa !87 ; 2 uses
  switch i8 %i.ap, label %bb.v [
    i8 45, label %bb.i
    i8 46, label %bb.m
    i8 37, label %bb.s
  ]

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp ugt i64 %.sroa.17.1, 2
  br i1 %i.aq, label %bb.j, label %thread-pre-split

bb.j:                                             ; preds = %bb.i
end_hunk_6
begin_hunk_7_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_end_streamEv:bb.a
  %i.cm = and i32 %i.ck, 3
  %i.cn = icmp eq i32 %i.cm, 3
  br i1 %i.cn, label %bb.p, label %_ZN2c43yml16EventHandlerTree7end_docEv.exit

bb.p:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !261
  %.not = icmp eq i64 %i.cp, 0
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !260
  %.not1 = icmp eq i64 %i.cr, 0
  br i1 %.not1, label %_ZN2c43yml16EventHandlerTree7end_docEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 193
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !196, !range !81, !noundef !90
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.s, label %_ZN2c43yml16EventHandlerTree7end_docEv.exit

bb.s:                                             ; preds = %bb.r
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 2440
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !200
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.t, label %_ZN2c43yml16EventHandlerTree9begin_docEv.exit

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ci, i64 144
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !235
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !185
  %i.db = and i32 %i.da, 30
  %.not.i.i5 = icmp eq i32 %i.db, 0
  br i1 %.not.i.i5, label %_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE31_stack_should_push_on_begin_docEv.exit.i, label %_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE31_stack_should_push_on_begin_docEv.exit.thread.i

_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE31_stack_should_push_on_begin_docEv.exit.i: ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ci, i64 137
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !216, !range !81, !noundef !90
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE31_stack_should_push_on_begin_docEv.exit.thread.i, label %_ZN2c43yml16EventHandlerTree9begin_docEv.exit

_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE31_stack_should_push_on_begin_docEv.exit.thread.i: ; preds = %_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE31_stack_should_push_on_begin_docEv.exit.i, %bb.t
  call void @_ZN2c43yml16EventHandlerTree19_set_root_as_streamEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.cg)
  call void @_ZN2c43yml16EventHandlerTree5_pushEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.cg)
  %i.df = load ptr, ptr %i.ch, align 8, !tbaa !206
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 144
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !235 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !185
  %i.dj = or i32 %i.di, 16
  store i32 %i.dj, ptr %i.dh, align 8, !tbaa !185
  br label %_ZN2c43yml16EventHandlerTree9begin_docEv.exit

_ZN2c43yml16EventHandlerTree9begin_docEv.exit:    ; preds = %bb.s, %_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE31_stack_should_push_on_begin_docEv.exit.i, %_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE31_stack_should_push_on_begin_docEv.exit.thread.i
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE42_handle_annotations_before_blck_val_scalarEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.dk = load ptr, ptr %i.c, align 8, !tbaa !169 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 2488 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !206
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 144
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !235 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i8 0, i64 16, i1 false)
  %i.dq = load i32, ptr %i.do, align 8, !tbaa !185 ; 2 uses
  %i.dr = or i32 %i.dq, 268443650
  store i32 %i.dr, ptr %i.do, align 8, !tbaa !185
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 2440 ; 3 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !200
  %i.du = icmp eq i64 %i.dt, 1
  %i.dv = and i32 %i.dq, 16
  %.not.i6 = icmp eq i32 %i.dv, 0
  %or.cond = select i1 %i.du, i1 true, i1 %.not.i6
  br i1 %or.cond, label %_ZN2c43yml16EventHandlerTree7end_docEv.exit, label %bb.u

bb.u:                                             ; preds = %_ZN2c43yml16EventHandlerTree9begin_docEv.exit
  call void @_ZN2c43yml16EventHandlerTree19_remove_speculativeEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.dk)
  call void @_ZN2c43yml16EventHandlerTree31_remove_speculative_with_parentEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.dk)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 2496 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !238 ; 2 uses
  %i.dy = load ptr, ptr %i.dl, align 8, !tbaa !206 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ea, ptr noundef nonnull align 8 dereferenceable(40) %i.dz, i64 40, i1 false), !tbaa.struct !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(138) %i.dx, ptr noundef nonnull align 8 dereferenceable(138) %i.dy, i64 56, i1 false), !tbaa.struct !240
  %i.eb = load i64, ptr %i.ds, align 8, !tbaa !200
  %i.ec = add i64 %i.eb, -1                       ; 3 uses
  store i64 %i.ec, ptr %i.ds, align 8, !tbaa !200
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dk, i64 2432
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !201
  %i.ef = icmp ugt i64 %i.ec, 1
  %i.eg = getelementptr [152 x i8], ptr %i.ee, i64 %i.ec ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 -304
  %i.ei = select i1 %i.ef, ptr %i.eh, ptr null
  store ptr %i.ei, ptr %i.dw, align 8, !tbaa !238
  %i.ej = getelementptr i8, ptr %i.eg, i64 -152
  store ptr %i.ej, ptr %i.dl, align 8, !tbaa !206
  br label %_ZN2c43yml16EventHandlerTree7end_docEv.exit

_ZN2c43yml16EventHandlerTree7end_docEv.exit:      ; preds = %bb.u, %_ZN2c43yml16EventHandlerTree9begin_docEv.exit, %bb.o, %bb.r, %bb.q, %bb.n
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22parse_json_in_place_evENS_15basic_substringIKcEENS4_IcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %"struct.c4::yml::Location", align 8 ; 3 uses
  %i.a = alloca [45 x i8], align 16               ; 3 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %6 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %7 = alloca %class.anon.10, align 8             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !101
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %3, ptr %i.d, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 193
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.e, i8 0, i64 144, i1 false)
  store i8 1, ptr %i.f, align 1, !tbaa !196
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.g, align 8, !tbaa !195
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 -1, ptr %i.h, align 8, !tbaa !186
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.i, align 8, !tbaa !187
  %i.j = load i32, ptr %0, align 8, !tbaa !163
  %i.k = and i32 %i.j, 2
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE6_resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE18_prepare_locationsEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE6_resetEv.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE6_resetEv.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !169  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2488
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !206  ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  store i64 0, ptr %i.p, align 8, !tbaa !209
  %.not.i.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i, label %_ZN2c43yml16EventHandlerTree11start_parseEPKcPFvPvNS_15basic_substringIS2_EENS5_IcEEES4_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE6_resetEv.exit
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #61
  br label %_ZN2c43yml16EventHandlerTree11start_parseEPKcPFvPvNS_15basic_substringIS2_EENS5_IcEEES4_.exit

_ZN2c43yml16EventHandlerTree11start_parseEPKcPFvPvNS_15basic_substringIS2_EENS5_IcEEES4_.exit: ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE6_resetEv.exit, %bb.c
  %i.r = phi i64 [ %i.q, %bb.c ], [ 0, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE6_resetEv.exit ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store ptr %1, ptr %i.t, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store i64 %i.r, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !102
  store i64 0, ptr %i.s, align 8, !tbaa !210
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i64 1, ptr %i.u, align 8, !tbaa !211
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store i64 1, ptr %i.v, align 8, !tbaa !212
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store i8 0, ptr %i.w, align 8, !tbaa !213
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  store i64 0, ptr %i.x, align 8, !tbaa !214
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store i64 0, ptr %i.y, align 8, !tbaa !215
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 137
  store i8 0, ptr %i.z, align 1, !tbaa !216
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 2504
  store ptr @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_s_relocate_arenaEPvNS_15basic_substringIKcEENS5_IcEE, ptr %i.aa, align 8, !tbaa !217
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 2512
  store ptr %0, ptr %i.ab, align 8, !tbaa !218
  %i.ac = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !219 ; 2 uses
  %.not13.not = icmp eq i64 %i.ac, 0
  br i1 %.not13.not, label %._crit_edge15, label %.lr.ph14

.lr.ph14:                                         ; preds = %_ZN2c43yml16EventHandlerTree11start_parseEPKcPFvPvNS_15basic_substringIS2_EENS5_IcEEES4_.exit
  %.sroa.2.0..sroa_idx.i.i4 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph14, %bb.q
  %i.ae = phi ptr [ %i.o, %.lr.ph14 ], [ %i.cm, %bb.q ] ; 9 uses
  %i.af = phi i64 [ %i.ac, %.lr.ph14 ], [ %i.cp, %bb.q ] ; 5 uses
  %i.ag = phi i64 [ 0, %.lr.ph14 ], [ %i.cv, %bb.q ] ; 6 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !101 ; 4 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.046.i.i = phi i64 [ %i.aj, %bb.e ], [ %i.ag, %bb.d ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %.046.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.ai, label %bb.e [
    i8 10, label %bb.f
    i8 13, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.aj = add i64 %.046.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aj, %i.af
  br i1 %exitcond.not.i.i, label %.thread.i, label %.lr.ph.i.i, !llvm.loop !22

bb.f:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.ak = icmp eq i8 %i.ai, 13
  %i.al = zext i1 %i.ak to i64
  %spec.select.i.i = add nuw i64 %.046.i.i, %i.al ; 4 uses
  %i.am = icmp ult i64 %spec.select.i.i, %i.af
  br i1 %i.am, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %spec.select.i.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !87
  %i.ap = icmp eq i8 %i.ao, 10
  %i.aq = zext i1 %i.ap to i64
  %spec.select22.i.i = add nuw i64 %spec.select.i.i, %i.aq
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.g, %bb.f
  %.pn.i9.i = phi i64 [ %.046.i.i, %bb.f ], [ %.046.i.i, %bb.g ], [ %i.af, %bb.e ] ; 3 uses
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.f ], [ %spec.select22.i.i, %bb.g ], [ %i.af, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.ag ; 4 uses
  %i.as = sub i64 %.pn.i9.i, %i.ag                ; 3 uses
  store ptr %i.ar, ptr %i.ae, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx.i.i.i2 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.as, ptr %.sroa.4.0..sroa_idx.i.i.i2, align 8, !tbaa !102
  %.not13.i.i.i.i = icmp eq i64 %.pn.i9.i, %i.ag
  br i1 %.not13.i.i.i.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i, %bb.h
  %.0710.i.i.i.i = phi i64 [ %i.av, %bb.h ], [ 0, %.thread.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.0710.i.i.i.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !87
  %.not.i.i.i.i3 = icmp eq i8 %i.au, 32
  br i1 %.not.i.i.i.i3, label %bb.h, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.av = add nuw i64 %.0710.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.av, %i.as
  br i1 %exitcond.not.i.i.i.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit: ; preds = %.lr.ph.i.i.i.i, %bb.h, %.thread.i
  %i.aw = phi i64 [ -1, %.thread.i ], [ -1, %bb.h ], [ %.0710.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i.i.i = icmp eq i64 %.2.i.i, -1
  %i.ax = select i1 %.not.i.i.i, i64 %i.af, i64 %.2.i.i
  %i.ay = sub i64 %i.ax, %i.ag
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %i.aw, ptr %i.az, align 8, !tbaa !220
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.ar, ptr %i.ba, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i64 %i.ay, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !102
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store ptr %i.ar, ptr %i.bb, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store i64 %i.as, ptr %.sroa.4.0..sroa_idx2.i.i, align 8, !tbaa !102
  %i.bc = icmp eq i64 %.pn.i9.i, %i.ag
  %i.bd = icmp eq ptr %.sroa.03.0.copyload.i, null
  %i.be = or i1 %i.bc, %i.bd
  br i1 %i.be, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit, %bb.p
  %i.bf = phi ptr [ %i.cf, %bb.p ], [ %i.ae, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !221 ; 3 uses
  %i.bi = and i32 %i.bh, 8
  %.not6 = icmp eq i32 %i.bi, 0
  br i1 %.not6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_handle_seq_jsonEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br label %bb.p

bb.j:                                             ; preds = %.lr.ph
  %i.bj = and i32 %i.bh, 4
  %.not7 = icmp eq i32 %i.bj, 0
  br i1 %.not7, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_handle_map_jsonEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.bk = and i32 %i.bh, 2
  %.not8 = icmp eq i32 %i.bk, 0
  br i1 %.not8, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_handle_unk_jsonEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58, !noalias !784
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58, !noalias !784
  store ptr %i.b, ptr %6, align 8, !tbaa !101, !noalias !784
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i4, align 8, !tbaa !102, !noalias !784
  store i64 0, ptr %i.ad, align 8, !tbaa !178, !noalias !784
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58, !noalias !784
  store ptr %6, ptr %7, align 8, !tbaa !180, !noalias !784
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA15_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA15_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(15) @.str.161)
  %i.bl = load i64, ptr %i.ad, align 8, !tbaa !178, !noalias !784 ; 3 uses
  %i.bm = load i64, ptr %.sroa.2.0..sroa_idx.i.i4, align 8, !tbaa !181, !noalias !784
  %i.bn = icmp ult i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.o, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA15_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

bb.o:                                             ; preds = %bb.n
  %i.bo = load ptr, ptr %6, align 8, !tbaa !182, !noalias !784
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bl
  store i8 10, ptr %i.bp, align 1, !tbaa !87
  %.pre.i.i = load i64, ptr %i.ad, align 8, !tbaa !178, !noalias !784
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA15_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA15_cEEEvNS_15basic_substringIKcEEDprRKT_.exit: ; preds = %bb.n, %bb.o
  %i.bq = phi i64 [ %.pre.i.i, %bb.o ], [ %i.bl, %bb.n ]
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.ad, align 8, !tbaa !178, !noalias !784
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA15_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.bs = load i64, ptr %i.ad, align 8, !tbaa !178, !noalias !784
  %i.bt = call i64 @llvm.umin.i64(i64 %i.bs, i64 1024)
  %i.bu = load ptr, ptr %i.l, align 8, !tbaa !169, !noalias !784 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2520
  store ptr null, ptr %i.bv, align 8, !tbaa !223
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 2480
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !224
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 2488
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !206
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 2456
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !193
  call void %i.bx(ptr noundef nonnull %i.b, i64 noundef %i.bt, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.ca, ptr noundef %i.cc), !inline_history !24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58, !noalias !784
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58, !noalias !784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58, !noalias !784
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA15_cEEEvNS_15basic_substringIKcEEDprRKT_.exit, %bb.m, %bb.i
  %i.cd = load ptr, ptr %i.l, align 8, !tbaa !169
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2488
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !206 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !138
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = load ptr, ptr %i.cf, align 8
  %i.ck = icmp eq ptr %i.cj, null
  %i.cl = select i1 %i.ci, i1 true, i1 %i.ck
  br i1 %i.cl, label %._crit_edge, label %.lr.ph, !llvm.loop !782

._crit_edge:                                      ; preds = %bb.p, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit
  %i.cm = phi ptr [ %i.ae, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit ], [ %i.cf, %bb.p ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 56 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !210 ; 2 uses
  %i.cp = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !219 ; 3 uses
  %.not9 = icmp ult i64 %i.co, %i.cp
  br i1 %.not9, label %bb.q, label %._crit_edge15

bb.q:                                             ; preds = %._crit_edge
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !225
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !226
  %i.cu = add i64 %i.cr, %i.co
  %i.cv = sub i64 %i.cu, %i.ct                    ; 3 uses
  store i64 %i.cv, ptr %i.cn, align 8, !tbaa !210
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 64 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !211
  %i.cy = add i64 %i.cx, 1
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !211
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  store i64 1, ptr %i.cz, align 8, !tbaa !212
  %.not = icmp ult i64 %i.cv, %i.cp
  br i1 %.not, label %bb.d, label %._crit_edge15, !llvm.loop !783

._crit_edge15:                                    ; preds = %bb.q, %._crit_edge, %_ZN2c43yml16EventHandlerTree11start_parseEPKcPFvPvNS_15basic_substringIS2_EENS5_IcEEES4_.exit
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_end_streamEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.da = load ptr, ptr %i.l, align 8, !tbaa !169 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2536
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !227
  %.not.i5 = icmp eq i64 %i.dc, 0
  br i1 %.not.i5, label %_ZN2c43yml16EventHandlerTree12finish_parseEv.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge15
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 2520
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !223 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !109
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %bb.s, label %_ZN2c43yml4Tree7root_idEv.exit.i

bb.s:                                             ; preds = %bb.r
  call void @_ZN2c43yml4Tree7reserveEm(ptr noundef nonnull align 8 dereferenceable(256) %i.de, i64 noundef 16)
  br label %_ZN2c43yml4Tree7root_idEv.exit.i

_ZN2c43yml4Tree7root_idEv.exit.i:                 ; preds = %bb.s, %bb.r
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !120
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !144
  %i.dk = and i32 %i.dj, 40
  %i.dl = icmp eq i32 %i.dk, 40
  br i1 %i.dl, label %_ZN2c43yml16EventHandlerTree12finish_parseEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZN2c43yml4Tree7root_idEv.exit.i
end_hunk_7
begin_hunk_8_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_handle_seq_jsonEv:bb.a
bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58, !noalias !789
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58, !noalias !789
  store ptr %i.b, ptr %3, align 8, !tbaa !101, !noalias !789
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !102, !noalias !789
  store i64 0, ptr %i.g, align 8, !tbaa !178, !noalias !789
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58, !noalias !789
  store ptr %3, ptr %4, align 8, !tbaa !180, !noalias !789
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA12_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg)
  %i.go = load i64, ptr %i.g, align 8, !tbaa !178, !noalias !789 ; 3 uses
  %i.gp = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !181, !noalias !789
  %i.gq = icmp ult i64 %i.go, %i.gp
  br i1 %i.gq, label %bb.y, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

bb.y:                                             ; preds = %bb.x
  %i.gr = load ptr, ptr %3, align 8, !tbaa !182, !noalias !789
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.go
  store i8 10, ptr %i.gs, align 1, !tbaa !87
  %.pre.i.i = load i64, ptr %i.g, align 8, !tbaa !178, !noalias !789
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit: ; preds = %bb.x, %bb.y
  %i.gt = phi i64 [ %.pre.i.i, %bb.y ], [ %i.go, %bb.x ]
  %i.gu = add i64 %i.gt, 1
  store i64 %i.gu, ptr %i.g, align 8, !tbaa !178, !noalias !789
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.gv = load i64, ptr %i.g, align 8, !tbaa !178, !noalias !789
  %i.gw = call i64 @llvm.umin.i64(i64 %i.gv, i64 1024)
  %i.gx = load ptr, ptr %i.e, align 8, !tbaa !169, !noalias !789 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 2520
  store ptr null, ptr %i.gy, align 8, !tbaa !223
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 2480
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !224
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 2488
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !206
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 56
  %i.he = getelementptr inbounds nuw i8, ptr %i.gx, i64 2456
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !193
  call void %i.ha(ptr noundef nonnull %i.b, i64 noundef %i.gw, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.hd, ptr noundef %i.hf), !inline_history !243
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58, !noalias !789
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58, !noalias !789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58, !noalias !789
  br label %bb.z

bb.z:                                             ; preds = %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_val_scalar_plainERKNS3_13ScannedScalarEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread

bb.aa:                                            ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit
  switch i8 %i.ag, label %bb.ac [
    i8 44, label %bb.ab
    i8 93, label %bb.ae
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.hg = and i32 %i.aq, -1537
  %i.hh = or disjoint i32 %i.hg, 512
  store i32 %i.hh, ptr %i.ap, align 8, !tbaa !221
  call void @_ZN2c43yml16EventHandlerTree11add_siblingEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.n)
  %i.hi = load ptr, ptr %i.e, align 8, !tbaa !169
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 2488
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !206 ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 56 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !210
  %i.hn = add i64 %i.hm, 1
  store i64 %i.hn, ptr %i.hl, align 8, !tbaa !210
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 72 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !212
  %i.hq = add i64 %i.hp, 1
  store i64 %i.hq, ptr %i.ho, align 8, !tbaa !212
  %i.hr = load ptr, ptr %i.hk, align 8, !tbaa !139
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !138
  %i.hv = add i64 %i.hu, -1
  store ptr %i.hs, ptr %i.hk, align 8, !tbaa !101
  store i64 %i.hv, ptr %i.ht, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !790
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58, !noalias !790
  store ptr %i.a, ptr %1, align 8, !tbaa !101, !noalias !790
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i30, align 8, !tbaa !102, !noalias !790
  store i64 0, ptr %i.k, align 8, !tbaa !178, !noalias !790
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58, !noalias !790
  store ptr %1, ptr %2, align 8, !tbaa !180, !noalias !790
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA12_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg)
  %i.hw = load i64, ptr %i.k, align 8, !tbaa !178, !noalias !790 ; 3 uses
  %i.hx = load i64, ptr %.sroa.2.0..sroa_idx.i.i30, align 8, !tbaa !181, !noalias !790
  %i.hy = icmp ult i64 %i.hw, %i.hx
  br i1 %i.hy, label %bb.ad, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit32

bb.ad:                                            ; preds = %bb.ac
  %i.hz = load ptr, ptr %1, align 8, !tbaa !182, !noalias !790
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hw
  store i8 10, ptr %i.ia, align 1, !tbaa !87
  %.pre.i.i31 = load i64, ptr %i.k, align 8, !tbaa !178, !noalias !790
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit32

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit32: ; preds = %bb.ac, %bb.ad
  %i.ib = phi i64 [ %.pre.i.i31, %bb.ad ], [ %i.hw, %bb.ac ]
  %i.ic = add i64 %i.ib, 1
  store i64 %i.ic, ptr %i.k, align 8, !tbaa !178, !noalias !790
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.id = load i64, ptr %i.k, align 8, !tbaa !178, !noalias !790
  %i.ie = call i64 @llvm.umin.i64(i64 %i.id, i64 1024)
  %i.if = load ptr, ptr %i.e, align 8, !tbaa !169, !noalias !790 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 2520
  store ptr null, ptr %i.ig, align 8, !tbaa !223
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 2480
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !224
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 2488
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !206
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  %i.im = getelementptr inbounds nuw i8, ptr %i.if, i64 2456
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !193
  call void %i.ii(ptr noundef nonnull %i.a, i64 noundef %i.ie, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.il, ptr noundef %i.in), !inline_history !243
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58, !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58, !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !790
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread

bb.ae:                                            ; preds = %bb.aa
  call void @_ZN2c43yml16EventHandlerTree31_remove_speculative_with_parentEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.n)
  %i.io = getelementptr inbounds nuw i8, ptr %i.n, i64 2496 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !238 ; 2 uses
  %i.iq = load ptr, ptr %i.o, align 8, !tbaa !206 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 56
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.is, ptr noundef nonnull align 8 dereferenceable(40) %i.ir, i64 40, i1 false), !tbaa.struct !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(138) %i.ip, ptr noundef nonnull align 8 dereferenceable(138) %i.iq, i64 56, i1 false), !tbaa.struct !240
  %i.it = getelementptr inbounds nuw i8, ptr %i.n, i64 2440 ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !200
  %i.iv = add i64 %i.iu, -1                       ; 3 uses
  store i64 %i.iv, ptr %i.it, align 8, !tbaa !200
  %i.iw = getelementptr inbounds nuw i8, ptr %i.n, i64 2432
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !201
  %i.iy = icmp ugt i64 %i.iv, 1
  %i.iz = getelementptr [152 x i8], ptr %i.ix, i64 %i.iv ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 -304
  %i.jb = select i1 %i.iy, ptr %i.ja, ptr null
  store ptr %i.jb, ptr %i.io, align 8, !tbaa !238
  %i.jc = getelementptr i8, ptr %i.iz, i64 -152
  store ptr %i.jc, ptr %i.o, align 8, !tbaa !206
  %i.jd = load ptr, ptr %i.e, align 8, !tbaa !169
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 2488
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !206
  br label %.thread.sink.split

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread: ; preds = %bb.ab, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit32, %bb.f, %bb.e, %bb.b, %bb.q, %bb.z, %_ZN2c43yml16EventHandlerTree18begin_seq_val_flowEv.exit, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_val_scalar_dquotERKNS3_13ScannedScalarE.exit
  %i.jg = load ptr, ptr %i.e, align 8, !tbaa !169
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 2488
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !206 ; 12 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 3 uses
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !138
  %i.jl = icmp eq i64 %i.jk, 0
  %i.jm = load ptr, ptr %i.ji, align 8
  %i.jn = icmp eq ptr %i.jm, null
  %i.jo = select i1 %i.jl, i1 true, i1 %i.jn
  br i1 %i.jo, label %bb.af, label %.backedge

.backedge:                                        ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread, %bb.al, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit
  br label %bb.b

bb.af:                                            ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ji, i64 56 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !210 ; 2 uses
  %i.jr = load i64, ptr %i.l, align 8, !tbaa !219 ; 8 uses
  %.not49 = icmp ult i64 %i.jq, %i.jr
  br i1 %.not49, label %bb.ag, label %bb.al, !prof !88

bb.ag:                                            ; preds = %bb.af
  %i.js = getelementptr inbounds nuw i8, ptr %i.ji, i64 32 ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !225
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ji, i64 48 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !226
  %i.jw = sub i64 %i.jt, %i.jv
  %i.jx = add i64 %i.jw, %i.jq                    ; 7 uses
  store i64 %i.jx, ptr %i.jp, align 8, !tbaa !210
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ji, i64 64 ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !211
  %i.ka = add i64 %i.jz, 1
  store i64 %i.ka, ptr %i.jy, align 8, !tbaa !211
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ji, i64 72
  store i64 1, ptr %i.kb, align 8, !tbaa !212
  %i.kc = icmp ult i64 %i.jx, %i.jr
  %.sroa.03.0.copyload.i = load ptr, ptr %i.m, align 8, !tbaa !101 ; 4 uses
  br i1 %i.kc, label %.lr.ph.i.i, label %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, !prof !88

.lr.ph.i.i:                                       ; preds = %bb.ag, %bb.ah
  %.046.i.i = phi i64 [ %i.kf, %bb.ah ], [ %i.jx, %bb.ag ] ; 5 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %.046.i.i
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.ke, label %bb.ah [
    i8 10, label %bb.ai
    i8 13, label %bb.ai
  ]

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.kf = add i64 %.046.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.kf, %i.jr
  br i1 %exitcond.not.i.i, label %.thread.i, label %.lr.ph.i.i, !llvm.loop !22

bb.ai:                                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.kg = icmp eq i8 %i.ke, 13
  %i.kh = zext i1 %i.kg to i64
  %spec.select.i.i = add nuw i64 %.046.i.i, %i.kh ; 4 uses
  %i.ki = icmp ult i64 %spec.select.i.i, %i.jr
  br i1 %i.ki, label %bb.aj, label %.thread.i

bb.aj:                                            ; preds = %bb.ai
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %spec.select.i.i
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !87
  %i.kl = icmp eq i8 %i.kk, 10
  %i.km = zext i1 %i.kl to i64
  %spec.select22.i.i = add nuw i64 %spec.select.i.i, %i.km
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ah, %bb.aj, %bb.ai
  %.pn.i9.i = phi i64 [ %.046.i.i, %bb.ai ], [ %.046.i.i, %bb.aj ], [ %i.jr, %bb.ah ] ; 2 uses
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.ai ], [ %spec.select22.i.i, %bb.aj ], [ %i.jr, %bb.ah ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.jx ; 3 uses
  %i.ko = sub i64 %.pn.i9.i, %i.jx                ; 3 uses
  store ptr %i.kn, ptr %i.ji, align 8, !tbaa !101
  store i64 %i.ko, ptr %i.jj, align 8, !tbaa !102
  %.not13.i.i.i.i = icmp eq i64 %.pn.i9.i, %i.jx
  br i1 %.not13.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i, %bb.ak
  %.0710.i.i.i.i = phi i64 [ %i.kr, %bb.ak ], [ 0, %.thread.i ] ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 %.0710.i.i.i.i
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.kq, 32
  br i1 %.not.i.i.i.i, label %bb.ak, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i
  %i.kr = add nuw i64 %.0710.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.kr, %i.ko
  br i1 %exitcond.not.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i: ; preds = %bb.ak, %.lr.ph.i.i.i.i, %.thread.i
  %i.ks = phi i64 [ -1, %.thread.i ], [ -1, %bb.ak ], [ %.0710.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i.i.i = icmp eq i64 %.2.i.i, -1
  %i.kt = select i1 %.not.i.i.i, i64 %i.jr, i64 %.2.i.i
  %i.ku = sub i64 %i.kt, %i.jx
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i: ; preds = %bb.ag
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.jr ; 2 uses
  store ptr %i.kv, ptr %i.ji, align 8, !tbaa !101
  store i64 0, ptr %i.jj, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit: ; preds = %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i
  %.sink24.i = phi i64 [ -1, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.ks, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink22.i = phi ptr [ %i.kv, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.kn, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %.sink21.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.ku, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.ko, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store i64 %.sink24.i, ptr %i.kw, align 8, !tbaa !220
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  store ptr %.sink22.i, ptr %i.kx, align 8, !tbaa !101
  store i64 %.sink21.i, ptr %i.js, align 8, !tbaa !102
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ji, i64 40
  store ptr %.sink22.i, ptr %i.ky, align 8, !tbaa !101
  store i64 %.sink.i, ptr %i.ju, align 8, !tbaa !102
  br label %.backedge

bb.al:                                            ; preds = %bb.af
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA22_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(22) @.str.194)
  br label %.backedge

.thread.sink.split:                               ; preds = %bb.ae, %_ZN2c43yml16EventHandlerTree18begin_map_val_flowEv.exit
  %.sink155 = phi ptr [ %i.dy, %_ZN2c43yml16EventHandlerTree18begin_map_val_flowEv.exit ], [ %i.jf, %bb.ae ] ; 5 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.sink155, i64 56 ; 2 uses
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !210
  %i.lb = add i64 %i.la, 1
  store i64 %i.lb, ptr %i.kz, align 8, !tbaa !210
  %i.lc = getelementptr inbounds nuw i8, ptr %.sink155, i64 72 ; 2 uses
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !212
  %i.le = add i64 %i.ld, 1
  store i64 %i.le, ptr %i.lc, align 8, !tbaa !212
  %i.lf = load ptr, ptr %.sink155, align 8, !tbaa !139
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 1
  %i.lh = getelementptr inbounds nuw i8, ptr %.sink155, i64 8 ; 2 uses
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !138
  %i.lj = add i64 %i.li, -1
  store ptr %i.lg, ptr %.sink155, align 8, !tbaa !101
  store i64 %i.lj, ptr %i.lh, align 8, !tbaa !102
  br label %.thread

.thread:                                          ; preds = %bb.q, %.thread.sink.split
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_handle_map_jsonEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %1 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %2 = alloca %class.anon.14, align 8             ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %3 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %4 = alloca %class.anon.14, align 8             ; 5 uses
  %i.c = alloca [1024 x i8], align 16             ; 4 uses
  %5 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %6 = alloca %class.anon.14, align 8             ; 5 uses
  %7 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  %8 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.d = alloca [33 x i8], align 16               ; 3 uses
  %9 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.e = alloca [33 x i8], align 16               ; 3 uses
  %i.f = alloca [1024 x i8], align 16             ; 4 uses
  %10 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %11 = alloca %class.anon.14, align 8            ; 5 uses
  %12 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 7 uses
  %13 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 7 uses
  %14 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 17 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.3.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i41 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.sroa.3.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.2.0..sroa_idx.i.i44 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i50 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !169  ; 20 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2488
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !206  ; 16 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !102  ; 5 uses
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !228  ; 4 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !87    ; 2 uses
  switch i8 %i.y, label %_ZNK2c415basic_substringIcE11begins_withEc.exit.i [
    i8 32, label %.preheader.us.i.i.i.preheader
    i8 9, label %.preheader.us.i.i.i.preheader
  ]

.preheader.us.i.i.i.preheader:                    ; preds = %bb.c, %bb.c
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %.preheader.us.i.i.i.preheader, %bb.d
  %.01326.us.i.i.i = phi i64 [ %i.ac, %bb.d ], [ 0, %.preheader.us.i.i.i.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %.01326.us.i.i.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !87
  switch i8 %i.aa, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i [
    i8 32, label %bb.d
    i8 9, label %bb.d
  ]

_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i: ; preds = %.preheader.us.i.i.i
  %i.ab = icmp eq i64 %.01326.us.i.i.i, -1
  br i1 %i.ab, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i.i, label %bb.e

bb.d:                                             ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %i.ac = add nuw i64 %.01326.us.i.i.i, 1         ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.ac, %i.w
  br i1 %exitcond29.not.i.i.i, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i.i, label %.preheader.us.i.i.i, !llvm.loop !26

_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i.i: ; preds = %bb.d, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i
  br label %bb.e

bb.e:                                             ; preds = %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i.i, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i
  %.0.i.i = phi i64 [ %i.w, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i.i ], [ %.01326.us.i.i.i, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !210
  %i.af = add i64 %i.ae, %.0.i.i
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !210
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 72 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !212
  %i.ai = add i64 %i.ah, %.0.i.i
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !212
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0.i.i ; 3 uses
  %i.ak = sub i64 %i.w, %.0.i.i                   ; 3 uses
  store ptr %i.aj, ptr %i.u, align 8, !tbaa !101
  store i64 %i.ak, ptr %i.v, align 8, !tbaa !102
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread, label %._ZNK2c415basic_substringIcE11begins_withEc.exit_crit_edge.i

._ZNK2c415basic_substringIcE11begins_withEc.exit_crit_edge.i: ; preds = %bb.e
  %.pre.i = load i8, ptr %i.aj, align 1, !tbaa !87
end_hunk_8
begin_hunk_9_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_handle_map_jsonEv:bb.a
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i44, align 8, !tbaa !102, !noalias !801
  store i64 0, ptr %i.o, align 8, !tbaa !178, !noalias !801
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58, !noalias !801
  store ptr %3, ptr %4, align 8, !tbaa !180, !noalias !801
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA12_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg)
  %i.jn = load i64, ptr %i.o, align 8, !tbaa !178, !noalias !801 ; 3 uses
  %i.jo = load i64, ptr %.sroa.2.0..sroa_idx.i.i44, align 8, !tbaa !181, !noalias !801
  %i.jp = icmp ult i64 %i.jn, %i.jo
  br i1 %i.jp, label %bb.ao, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit46

bb.ao:                                            ; preds = %bb.an
  %i.jq = load ptr, ptr %3, align 8, !tbaa !182, !noalias !801
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jn
  store i8 10, ptr %i.jr, align 1, !tbaa !87
  %.pre.i.i45 = load i64, ptr %i.o, align 8, !tbaa !178, !noalias !801
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit46

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit46: ; preds = %bb.an, %bb.ao
  %i.js = phi i64 [ %.pre.i.i45, %bb.ao ], [ %i.jn, %bb.an ]
  %i.jt = add i64 %i.js, 1
  store i64 %i.jt, ptr %i.o, align 8, !tbaa !178, !noalias !801
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.ju = load i64, ptr %i.o, align 8, !tbaa !178, !noalias !801
  %i.jv = call i64 @llvm.umin.i64(i64 %i.ju, i64 1024)
  %i.jw = load ptr, ptr %i.g, align 8, !tbaa !169, !noalias !801 ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 2520
  store ptr null, ptr %i.jx, align 8, !tbaa !223
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 2480
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !224
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 2488
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !206
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 56
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jw, i64 2456
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !193
  call void %i.jz(ptr noundef nonnull %i.b, i64 noundef %i.jv, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.kc, ptr noundef %i.ke), !inline_history !243
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58, !noalias !801
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58, !noalias !801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58, !noalias !801
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread

bb.ap:                                            ; preds = %bb.ak
  %i.kf = and i32 %i.av, 1024
  %.not82 = icmp eq i32 %i.kf, 0
  br i1 %.not82, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit

_ZNK2c415basic_substringIKcE11begins_withEc.exit: ; preds = %bb.ap
  switch i8 %i.al, label %bb.as [
    i8 44, label %bb.aq
    i8 125, label %bb.ar
  ]

bb.aq:                                            ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit
  call void @_ZN2c43yml16EventHandlerTree11add_siblingEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.s)
  %i.kg = load ptr, ptr %i.g, align 8, !tbaa !169
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 2488
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !206 ; 6 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 96 ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !221
  %i.kl = and i32 %i.kk, -1153
  %i.km = or disjoint i32 %i.kl, 128
  store i32 %i.km, ptr %i.kj, align 8, !tbaa !221
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ki, i64 56 ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !210
  %i.kp = add i64 %i.ko, 1
  store i64 %i.kp, ptr %i.kn, align 8, !tbaa !210
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ki, i64 72 ; 2 uses
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !212
  %i.ks = add i64 %i.kr, 1
  store i64 %i.ks, ptr %i.kq, align 8, !tbaa !212
  %i.kt = load ptr, ptr %i.ki, align 8, !tbaa !139
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !138
  %i.kx = add i64 %i.kw, -1
  store ptr %i.ku, ptr %i.ki, align 8, !tbaa !101
  store i64 %i.kx, ptr %i.kv, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread

bb.ar:                                            ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit
  %i.ky = getelementptr inbounds nuw i8, ptr %i.s, i64 2488 ; 2 uses
  call void @_ZN2c43yml16EventHandlerTree31_remove_speculative_with_parentEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.s)
  %i.kz = getelementptr inbounds nuw i8, ptr %i.s, i64 2496 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !238 ; 2 uses
  %i.lb = load ptr, ptr %i.ky, align 8, !tbaa !206 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 56
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ld, ptr noundef nonnull align 8 dereferenceable(40) %i.lc, i64 40, i1 false), !tbaa.struct !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(138) %i.la, ptr noundef nonnull align 8 dereferenceable(138) %i.lb, i64 56, i1 false), !tbaa.struct !240
  %i.le = getelementptr inbounds nuw i8, ptr %i.s, i64 2440 ; 2 uses
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !200
  %i.lg = add i64 %i.lf, -1                       ; 3 uses
  store i64 %i.lg, ptr %i.le, align 8, !tbaa !200
  %i.lh = getelementptr inbounds nuw i8, ptr %i.s, i64 2432
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !201
  %i.lj = icmp ugt i64 %i.lg, 1
  %i.lk = getelementptr [152 x i8], ptr %i.li, i64 %i.lg ; 2 uses
  %i.ll = getelementptr i8, ptr %i.lk, i64 -304
  %i.lm = select i1 %i.lj, ptr %i.ll, ptr null
  store ptr %i.lm, ptr %i.kz, align 8, !tbaa !238
  %i.ln = getelementptr i8, ptr %i.lk, i64 -152
  store ptr %i.ln, ptr %i.ky, align 8, !tbaa !206
  %i.lo = load ptr, ptr %i.g, align 8, !tbaa !169
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 2488
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !206
  br label %bb.bb

bb.as:                                            ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !802
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58, !noalias !802
  store ptr %i.a, ptr %1, align 8, !tbaa !101, !noalias !802
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i50, align 8, !tbaa !102, !noalias !802
  store i64 0, ptr %i.p, align 8, !tbaa !178, !noalias !802
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58, !noalias !802
  store ptr %1, ptr %2, align 8, !tbaa !180, !noalias !802
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA12_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg)
  %i.lr = load i64, ptr %i.p, align 8, !tbaa !178, !noalias !802 ; 3 uses
  %i.ls = load i64, ptr %.sroa.2.0..sroa_idx.i.i50, align 8, !tbaa !181, !noalias !802
  %i.lt = icmp ult i64 %i.lr, %i.ls
  br i1 %i.lt, label %bb.at, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit52

bb.at:                                            ; preds = %bb.as
  %i.lu = load ptr, ptr %1, align 8, !tbaa !182, !noalias !802
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.lr
  store i8 10, ptr %i.lv, align 1, !tbaa !87
  %.pre.i.i51 = load i64, ptr %i.p, align 8, !tbaa !178, !noalias !802
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit52

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit52: ; preds = %bb.as, %bb.at
  %i.lw = phi i64 [ %.pre.i.i51, %bb.at ], [ %i.lr, %bb.as ]
  %i.lx = add i64 %i.lw, 1
  store i64 %i.lx, ptr %i.p, align 8, !tbaa !178, !noalias !802
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.ly = load i64, ptr %i.p, align 8, !tbaa !178, !noalias !802
  %i.lz = call i64 @llvm.umin.i64(i64 %i.ly, i64 1024)
  %i.ma = load ptr, ptr %i.g, align 8, !tbaa !169, !noalias !802 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 2520
  store ptr null, ptr %i.mb, align 8, !tbaa !223
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 2480
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !224
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 2488
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !206
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 56
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ma, i64 2456
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !193
  call void %i.md(ptr noundef nonnull %i.a, i64 noundef %i.lz, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.mg, ptr noundef %i.mi), !inline_history !243
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58, !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58, !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !802
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread: ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_val_scalar_dquotERKNS3_13ScannedScalarE.exit, %_ZN2c43yml16EventHandlerTree18begin_map_val_flowEv.exit, %bb.ai, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_key_scalar_dquotERKNS3_13ScannedScalarE.exit, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit, %bb.f, %bb.e, %bb.b, %bb.am, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit46, %bb.aq, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit52, %bb.ap
  %i.mj = load ptr, ptr %i.g, align 8, !tbaa !169
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 2488
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !206 ; 12 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8 ; 3 uses
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !138
  %i.mo = icmp eq i64 %i.mn, 0
  %i.mp = load ptr, ptr %i.ml, align 8
  %i.mq = icmp eq ptr %i.mp, null
  %i.mr = select i1 %i.mo, i1 true, i1 %i.mq
  br i1 %i.mr, label %bb.au, label %.backedge

.backedge:                                        ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread, %bb.ba, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit
  br label %bb.b

bb.au:                                            ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28_handle_flow_skip_whitespaceEv.exit.thread
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ml, i64 56 ; 2 uses
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !210 ; 2 uses
  %i.mu = load i64, ptr %i.q, align 8, !tbaa !219 ; 8 uses
  %.not83 = icmp ult i64 %i.mt, %i.mu
  br i1 %.not83, label %bb.av, label %bb.ba, !prof !88

bb.av:                                            ; preds = %bb.au
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ml, i64 32 ; 2 uses
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !225
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ml, i64 48 ; 2 uses
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !226
  %i.mz = sub i64 %i.mw, %i.my
  %i.na = add i64 %i.mz, %i.mt                    ; 7 uses
  store i64 %i.na, ptr %i.ms, align 8, !tbaa !210
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ml, i64 64 ; 2 uses
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !211
  %i.nd = add i64 %i.nc, 1
  store i64 %i.nd, ptr %i.nb, align 8, !tbaa !211
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ml, i64 72
  store i64 1, ptr %i.ne, align 8, !tbaa !212
  %i.nf = icmp ult i64 %i.na, %i.mu
  %.sroa.03.0.copyload.i = load ptr, ptr %i.r, align 8, !tbaa !101 ; 4 uses
  br i1 %i.nf, label %.lr.ph.i.i, label %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, !prof !88

.lr.ph.i.i:                                       ; preds = %bb.av, %bb.aw
  %.046.i.i = phi i64 [ %i.ni, %bb.aw ], [ %i.na, %bb.av ] ; 5 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %.046.i.i
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.nh, label %bb.aw [
    i8 10, label %bb.ax
    i8 13, label %bb.ax
  ]

bb.aw:                                            ; preds = %.lr.ph.i.i
  %i.ni = add i64 %.046.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ni, %i.mu
  br i1 %exitcond.not.i.i, label %.thread.i, label %.lr.ph.i.i, !llvm.loop !22

bb.ax:                                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.nj = icmp eq i8 %i.nh, 13
  %i.nk = zext i1 %i.nj to i64
  %spec.select.i.i = add nuw i64 %.046.i.i, %i.nk ; 4 uses
  %i.nl = icmp ult i64 %spec.select.i.i, %i.mu
  br i1 %i.nl, label %bb.ay, label %.thread.i

bb.ay:                                            ; preds = %bb.ax
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %spec.select.i.i
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !87
  %i.no = icmp eq i8 %i.nn, 10
  %i.np = zext i1 %i.no to i64
  %spec.select22.i.i = add nuw i64 %spec.select.i.i, %i.np
  br label %.thread.i

.thread.i:                                        ; preds = %bb.aw, %bb.ay, %bb.ax
  %.pn.i9.i = phi i64 [ %.046.i.i, %bb.ax ], [ %.046.i.i, %bb.ay ], [ %i.mu, %bb.aw ] ; 2 uses
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.ax ], [ %spec.select22.i.i, %bb.ay ], [ %i.mu, %bb.aw ] ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.na ; 3 uses
  %i.nr = sub i64 %.pn.i9.i, %i.na                ; 3 uses
  store ptr %i.nq, ptr %i.ml, align 8, !tbaa !101
  store i64 %i.nr, ptr %i.mm, align 8, !tbaa !102
  %.not13.i.i.i.i = icmp eq i64 %.pn.i9.i, %i.na
  br i1 %.not13.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i, %bb.az
  %.0710.i.i.i.i = phi i64 [ %i.nu, %bb.az ], [ 0, %.thread.i ] ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.0710.i.i.i.i
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.nt, 32
  br i1 %.not.i.i.i.i, label %bb.az, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i

bb.az:                                            ; preds = %.lr.ph.i.i.i.i
  %i.nu = add nuw i64 %.0710.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.nu, %i.nr
  br i1 %exitcond.not.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i: ; preds = %bb.az, %.lr.ph.i.i.i.i, %.thread.i
  %i.nv = phi i64 [ -1, %.thread.i ], [ -1, %bb.az ], [ %.0710.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i.i.i = icmp eq i64 %.2.i.i, -1
  %i.nw = select i1 %.not.i.i.i, i64 %i.mu, i64 %.2.i.i
  %i.nx = sub i64 %i.nw, %i.na
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i: ; preds = %bb.av
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.mu ; 2 uses
  store ptr %i.ny, ptr %i.ml, align 8, !tbaa !101
  store i64 0, ptr %i.mm, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit: ; preds = %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i
  %.sink24.i = phi i64 [ -1, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.nv, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink22.i = phi ptr [ %i.ny, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.nq, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %.sink21.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.nx, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.nr, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  store i64 %.sink24.i, ptr %i.nz, align 8, !tbaa !220
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ml, i64 24
  store ptr %.sink22.i, ptr %i.oa, align 8, !tbaa !101
  store i64 %.sink21.i, ptr %i.mv, align 8, !tbaa !102
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ml, i64 40
  store ptr %.sink22.i, ptr %i.ob, align 8, !tbaa !101
  store i64 %.sink.i, ptr %i.mx, align 8, !tbaa !102
  br label %.backedge

bb.ba:                                            ; preds = %bb.au
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA22_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(22) @.str.193)
  br label %.backedge

bb.bb:                                            ; preds = %bb.aj, %bb.o, %bb.ar
  %.sink193 = phi ptr [ %i.iv, %bb.aj ], [ %i.dj, %bb.o ], [ %i.lq, %bb.ar ] ; 5 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.sink193, i64 56 ; 2 uses
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !210
  %i.oe = add i64 %i.od, 1
  store i64 %i.oe, ptr %i.oc, align 8, !tbaa !210
  %i.of = getelementptr inbounds nuw i8, ptr %.sink193, i64 72 ; 2 uses
  %i.og = load i64, ptr %i.of, align 8, !tbaa !212
  %i.oh = add i64 %i.og, 1
  store i64 %i.oh, ptr %i.of, align 8, !tbaa !212
  %i.oi = load ptr, ptr %.sink193, align 8, !tbaa !139
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 1
  %i.ok = getelementptr inbounds nuw i8, ptr %.sink193, i64 8 ; 2 uses
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !138
  %i.om = add i64 %i.ol, -1
  store ptr %i.oj, ptr %.sink193, align 8, !tbaa !101
  store i64 %i.om, ptr %i.ok, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_handle_unk_jsonEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.a = alloca [33 x i8], align 16               ; 3 uses
  %i.b = alloca [12 x i8], align 1                ; 3 uses
  %2 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.c = alloca [33 x i8], align 16               ; 3 uses
  %i.d = alloca [12 x i8], align 1                ; 3 uses
  %3 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 7 uses
  %4 = alloca %"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar", align 8 ; 4 uses
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE19_maybe_skip_commentEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !169  ; 19 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2488 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !206  ; 21 uses
  %.sroa.055.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !101 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !102 ; 5 uses
  %.not = icmp eq i64 %.sroa.9.0.copyload, 0
  br i1 %.not, label %.critedge, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.a, %bb.b
  %.01326.us.i = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.055.0.copyload, i64 %.01326.us.i
  %i.j = load i8, ptr %i.i, align 1, !tbaa !87
  switch i8 %i.j, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit [
    i8 32, label %bb.b
    i8 9, label %bb.b
  ]

_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit: ; preds = %.preheader.us.i
  switch i64 %.01326.us.i, label %bb.c [
    i64 0, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit
    i64 -1, label %.thread
  ]

bb.b:                                             ; preds = %.preheader.us.i, %.preheader.us.i
  %i.k = add nuw i64 %.01326.us.i, 1              ; 2 uses
  %exitcond29.not.i = icmp eq i64 %i.k, %.sroa.9.0.copyload
  br i1 %exitcond29.not.i, label %.thread, label %.preheader.us.i, !llvm.loop !5

.thread:                                          ; preds = %bb.b, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit, %.thread
  %i.l = phi i64 [ %.sroa.9.0.copyload, %.thread ], [ %.01326.us.i, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !210
  %i.o = add i64 %i.n, %i.l
  store i64 %i.o, ptr %i.m, align 8, !tbaa !210
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !212
  %i.r = add i64 %i.q, %i.l
  store i64 %i.r, ptr %i.p, align 8, !tbaa !212
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.055.0.copyload, i64 %i.l ; 2 uses
  %i.t = sub i64 %.sroa.9.0.copyload, %i.l
  store ptr %i.s, ptr %i.h, align 8, !tbaa !101
  store i64 %i.t, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !102
  %.not21 = icmp eq i64 %.sroa.9.0.copyload, %i.l
  br i1 %.not21, label %.critedge, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit

_ZNK2c415basic_substringIKcE11begins_withEc.exit: ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit, %bb.c
  %.sroa.055.0 = phi ptr [ %.sroa.055.0.copyload, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit ], [ %i.s, %bb.c ] ; 3 uses
  %i.u = load i8, ptr %.sroa.055.0, align 1, !tbaa !87
  switch i8 %i.u, label %bb.p [
    i8 91, label %bb.d
    i8 123, label %bb.j
  ]

bb.d:                                             ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 2440
  %i.w = load i64, ptr %i.v, align 8, !tbaa !200
  %i.x = icmp eq i64 %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !221  ; 5 uses
  %i.aa = and i32 %i.z, 32768
  %.not.i25 = icmp ne i32 %i.aa, 0                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !235 ; 5 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !185 ; 7 uses
  %i.ae = and i32 %i.ad, 14
  %i.af = icmp eq i32 %i.ae, 0                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = and i32 %i.ad, 16
  %i.ah = icmp eq i32 %i.ag, 0
  %or.cond.not10.i = or i1 %i.ah, %i.af
  %brmerge.i = select i1 %or.cond.not10.i, i1 true, i1 %.not.i25
  br i1 %brmerge.i, label %_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.exit.thread, label %bb.g

bb.f:                                             ; preds = %bb.d
  %brmerge7.i = select i1 %i.af, i1 true, i1 %.not.i25
  br i1 %brmerge7.i, label %_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.d, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg, i64 12, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 2456
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 2480
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !97
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !94
  call void %i.al(ptr noundef nonnull %i.d, i64 noundef 11, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.aj, ptr noundef %i.am), !inline_history !262
  call void @abort() #60
  unreachable

end_hunk_9
begin_hunk_10_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_handle_unk_jsonEv:bb.a
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !206
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 144
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !235 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 72
  store ptr %i.hg, ptr %i.hm, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 80
  store i64 %i.hf, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.hn = load i32, ptr %i.hl, align 8, !tbaa !185
  %i.ho = or i32 %i.hn, 67108866
  store i32 %i.ho, ptr %i.hl, align 8, !tbaa !185
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg)
  br label %bb.ab

bb.w:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit.thread75
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gc, i64 104
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !215, !noalias !805
  %i.hr = call noundef zeroext i1 @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE23_scan_scalar_plain_blckEPNS3_13ScannedScalarEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull %3, i64 noundef %i.hq)
  br i1 %i.hr, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.hs = load ptr, ptr %i.e, align 8, !tbaa !169
  call void @_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv(ptr noundef nonnull align 8 dereferenceable(2520) %i.hs)
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_maybe_begin_docEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.ht = load ptr, ptr %i.e, align 8, !tbaa !169
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 2488
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !206
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 96 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !221
  %i.hy = or i32 %i.hx, 16384
  store i32 %i.hy, ptr %i.hw, align 8, !tbaa !221
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 193
  store i8 0, ptr %i.hz, align 1, !tbaa !196
  %i.ia = call noundef zeroext i1 @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE27_maybe_scan_following_colonEv(ptr noundef nonnull align 8 dereferenceable(256) %0) #58
  br i1 %i.ia, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE42_handle_annotations_before_blck_val_scalarEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.ib = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_val_scalar_plainERKNS3_13ScannedScalarEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(17) %3, i64 noundef %i.gu) ; 2 uses
  %i.ic = extractvalue { ptr, i64 } %i.ib, 0
  %i.id = extractvalue { ptr, i64 } %i.ib, 1
  %i.ie = load ptr, ptr %i.e, align 8, !tbaa !169
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 2488
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !206
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 144
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !235 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 72
  store ptr %i.ic, ptr %i.ij, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.ii, i64 80
  store i64 %i.id, ptr %.sroa.2.0..sroa_idx.i23, align 8, !tbaa !102
  %i.ik = load i32, ptr %i.ii, align 8, !tbaa !185
  %i.il = or i32 %i.ik, 268435458
  store i32 %i.il, ptr %i.ii, align 8, !tbaa !185
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.u, %bb.v, %bb.aa, %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.ab, %bb.c, %_ZN2c43yml16EventHandlerTree18begin_map_val_flowEv.exit, %bb.p, %_ZN2c43yml16EventHandlerTree18begin_seq_val_flowEv.exit, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local { ptr, i64 } @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE17location_contentsERKNS0_8LocationE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %1, align 8, !tbaa !173    ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !138
  %i.g = sub i64 %i.f, %i.b
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.g, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE19filter_scalar_plainENS_15basic_substringIKcEENS4_IcEEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, ptr %3, i64 %4, i64 noundef %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %6 = alloca %"struct.c4::yml::FilterProcessorSrcDst", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  store ptr %1, ptr %6, align 8, !tbaa !101
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %3, ptr %i.a, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_filter_plainINS0_21FilterProcessorSrcDstEEEDTcldtfpr_6resultEERT_m(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  ret { ptr, i64 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_filter_plainINS0_21FilterProcessorSrcDstEEEDTcldtfpr_6resultEERT_m(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !264  ; 11 uses
  %.promoted = load i64, ptr %i.b, align 8, !tbaa !265 ; 2 uses
  %i.e = icmp ult i64 %.promoted, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  br i1 %i.e, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !266
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !99     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  %.promoted19 = load i64, ptr %i.i, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %i.l = phi i64 [ %.promoted19, %.lr.ph ], [ %i.au, %bb.s ] ; 18 uses
  %i.m = phi i64 [ %.promoted, %.lr.ph ], [ %i.av, %bb.s ] ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !87    ; 2 uses
  switch i8 %i.o, label %bb.q [
    i8 32, label %bb.c
    i8 10, label %bb.i
    i8 13, label %bb.p
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %.lr.ph.i.i.i, label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %bb.c, %bb.d
  %.01427.us.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %.01427.us.i.i.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !87, !noalias !815 ; 2 uses
  switch i8 %i.q, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i.i [
    i8 32, label %bb.d
    i8 9, label %bb.d
  ]

bb.d:                                             ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %i.r = add nuw i64 %.01427.us.i.i.i, 1          ; 2 uses
  %exitcond30.not.i.i.i = icmp eq i64 %i.r, %i.d
  br i1 %exitcond30.not.i.i.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit, label %.preheader.us.i.i.i, !llvm.loop !9

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %.0811.i.i.i = phi i64 [ %i.u, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %.0811.i.i.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !87, !noalias !815 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.t, 32
  br i1 %.not.i.i.i, label %bb.e, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.u = add nuw i64 %.0811.i.i.i, 1              ; 2 uses
  %exitcond.not.i19.i.i = icmp eq i64 %i.u, %i.d
  br i1 %exitcond.not.i19.i.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit, label %.lr.ph.i.i.i, !llvm.loop !29

_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i.i: ; preds = %.preheader.us.i.i.i, %.lr.ph.i.i.i
  %i.v = phi i8 [ %i.t, %.lr.ph.i.i.i ], [ %i.q, %.preheader.us.i.i.i ]
  %i.w = phi i64 [ %.0811.i.i.i, %.lr.ph.i.i.i ], [ %.01427.us.i.i.i, %.preheader.us.i.i.i ] ; 3 uses
  %.not18.not.i.i = icmp eq i64 %i.w, -1
  br i1 %.not18.not.i.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i.i
  switch i8 %i.v, label %bb.g [
    i8 13, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit
    i8 10, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.x = icmp ult i64 %i.l, %i.g
  br i1 %i.x, label %bb.h, label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i8 32, ptr %i.y, align 1, !tbaa !87, !noalias !815
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i.i

_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i.i: ; preds = %bb.h, %bb.g
  %i.z = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.z, ptr %i.i, align 8, !tbaa !266, !alias.scope !815
  %i.aa = add i64 %i.m, 1
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit: ; preds = %bb.d, %bb.e, %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i.i, %bb.f, %bb.f, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i.i
  %i.ab = phi i64 [ %i.l, %bb.f ], [ %i.z, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i.i ], [ %i.l, %bb.f ], [ %i.l, %bb.e ], [ %i.l, %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i.i ], [ %i.l, %bb.d ]
  %storemerge.i = phi i64 [ %i.w, %bb.f ], [ %i.aa, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i.i ], [ %i.w, %bb.f ], [ %i.d, %bb.e ], [ %i.d, %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i.i ], [ %i.d, %bb.d ] ; 2 uses
  store i64 %storemerge.i, ptr %i.b, align 8, !tbaa !265, !alias.scope !813
  br label %bb.s

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !816
  store i64 %i.m, ptr %i.a, align 8, !tbaa !102, !noalias !816
  %i.ac = call fastcc noundef i64 @_ZN2c43yml12_GLOBAL__N_125_count_following_newlinesENS_15basic_substringIKcEEPmm(ptr nonnull %i.h, i64 %i.d, ptr noundef %i.a, i64 noundef %2), !noalias !816 ; 3 uses
  %.not.i9 = icmp eq i64 %i.ac, 0
  br i1 %.not.i9, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = add i64 %i.l, %i.ac                     ; 3 uses
  %.not.i.i10 = icmp ugt i64 %i.ad, %i.g
  br i1 %.not.i.i10, label %_ZN2c43yml21FilterProcessorSrcDst3setEcm.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ae, i8 10, i64 %i.ac, i1 false), !noalias !816
  br label %_ZN2c43yml21FilterProcessorSrcDst3setEcm.exit.i

_ZN2c43yml21FilterProcessorSrcDst3setEcm.exit.i:  ; preds = %bb.k, %bb.j
  store i64 %i.ad, ptr %i.i, align 8, !tbaa !266, !alias.scope !816
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_filter_nl_plainINS0_21FilterProcessorSrcDstEEEvRT_m.exit

bb.l:                                             ; preds = %bb.i
  %i.af = add nuw i64 %i.m, 1                     ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %.preheader.us.i.i, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.thread.i

.preheader.us.i.i:                                ; preds = %bb.l, %bb.m
  %.01427.us.i.i = phi i64 [ %i.aj, %bb.m ], [ %i.af, %bb.l ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 %.01427.us.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !87, !noalias !816
  switch i8 %i.ai, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i [
    i8 32, label %bb.m
    i8 9, label %bb.m
  ]

_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i: ; preds = %.preheader.us.i.i
  %.not11.i = icmp eq i64 %.01427.us.i.i, -1
  br i1 %.not11.i, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.thread.i, label %bb.n

bb.m:                                             ; preds = %.preheader.us.i.i, %.preheader.us.i.i
  %i.aj = add nuw i64 %.01427.us.i.i, 1           ; 2 uses
  %exitcond30.not.i.i = icmp eq i64 %i.aj, %i.d
  br i1 %exitcond30.not.i.i, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.thread.i, label %.preheader.us.i.i, !llvm.loop !9

bb.n:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i
  %i.ak = icmp ult i64 %i.l, %i.g
  br i1 %i.ak, label %bb.o, label %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i8 32, ptr %i.al, align 1, !tbaa !87, !noalias !816
  br label %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i

_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i:   ; preds = %bb.o, %bb.n
  %i.am = add i64 %i.l, 1                         ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !266, !alias.scope !816
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_filter_nl_plainINS0_21FilterProcessorSrcDstEEEvRT_m.exit

_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.thread.i: ; preds = %bb.m, %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i, %bb.l
  store i64 %i.d, ptr %i.a, align 8, !tbaa !102, !noalias !816
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_filter_nl_plainINS0_21FilterProcessorSrcDstEEEvRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_filter_nl_plainINS0_21FilterProcessorSrcDstEEEvRT_m.exit: ; preds = %_ZN2c43yml21FilterProcessorSrcDst3setEcm.exit.i, %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i, %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.thread.i
  %i.an = phi i64 [ %i.ad, %_ZN2c43yml21FilterProcessorSrcDst3setEcm.exit.i ], [ %i.am, %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i ], [ %i.l, %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.thread.i ]
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !816 ; 2 uses
  store i64 %i.ao, ptr %i.b, align 8, !tbaa !265, !alias.scope !816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !816
  br label %bb.s

bb.p:                                             ; preds = %bb.b
  %i.ap = add nuw i64 %i.m, 1                     ; 2 uses
  store i64 %i.ap, ptr %i.b, align 8, !tbaa !265
  br label %bb.s

bb.q:                                             ; preds = %bb.b
  %i.aq = icmp ult i64 %i.l, %i.g
  br i1 %i.aq, label %bb.r, label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i8 %i.o, ptr %i.ar, align 1, !tbaa !87
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit

_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit:    ; preds = %bb.q, %bb.r
  %i.as = add i64 %i.l, 1                         ; 2 uses
  store i64 %i.as, ptr %i.i, align 8, !tbaa !266
  %i.at = add nuw i64 %i.m, 1                     ; 2 uses
  store i64 %i.at, ptr %i.b, align 8, !tbaa !265
  br label %bb.s

bb.s:                                             ; preds = %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit, %bb.p, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_filter_nl_plainINS0_21FilterProcessorSrcDstEEEvRT_m.exit, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit
  %i.au = phi i64 [ %i.as, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit ], [ %i.l, %bb.p ], [ %i.an, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_filter_nl_plainINS0_21FilterProcessorSrcDstEEEvRT_m.exit ], [ %i.ab, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit ] ; 2 uses
  %i.av = phi i64 [ %i.at, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit ], [ %i.ap, %bb.p ], [ %i.ao, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_filter_nl_plainINS0_21FilterProcessorSrcDstEEEvRT_m.exit ], [ %storemerge.i, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit ] ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.d
  br i1 %i.aw, label %bb.b, label %._crit_edge, !llvm.loop !812

._crit_edge:                                      ; preds = %bb.s, %.._crit_edge_crit_edge
  %i.ax = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.au, %bb.s ] ; 2 uses
  %.not.i = icmp ugt i64 %i.ax, %i.g
  br i1 %.not.i, label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !267
  br label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit

_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit: ; preds = %._crit_edge, %bb.t
  %i.ba = phi ptr [ %i.az, %bb.t ], [ null, %._crit_edge ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.ba, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.ax, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE28filter_scalar_plain_in_placeENS_15basic_substringIcEEmm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  store ptr %1, ptr %5, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %3, ptr %i.a, align 8, !tbaa !233
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_filter_plainINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_m(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  ret { ptr, i64 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_filter_plainINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_m(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !268  ; 9 uses
  %.promoted = load i64, ptr %i.b, align 8, !tbaa !269 ; 2 uses
  %i.e = icmp ult i64 %.promoted, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  br i1 %i.e, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !270
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !139    ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %.promoted19 = load i64, ptr %i.i, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit
  %i.j = phi i64 [ %.promoted19, %.lr.ph ], [ %i.ar, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit ] ; 15 uses
  %i.k = phi i64 [ %.promoted, %.lr.ph ], [ %i.as, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !87    ; 2 uses
  switch i8 %i.m, label %bb.r [
    i8 32, label %bb.c
    i8 10, label %bb.j
    i8 13, label %bb.q
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %.lr.ph.i.i.i, label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %bb.c, %bb.d
  %.01427.us.i.i.i = phi i64 [ %i.p, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %.01427.us.i.i.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !87, !noalias !826 ; 2 uses
  switch i8 %i.o, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEEm.exit.i.i [
    i8 32, label %bb.d
    i8 9, label %bb.d
  ]

bb.d:                                             ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %i.p = add nuw i64 %.01427.us.i.i.i, 1          ; 2 uses
  %exitcond30.not.i.i.i = icmp eq i64 %i.p, %i.d
  br i1 %exitcond30.not.i.i.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit.thread, label %.preheader.us.i.i.i, !llvm.loop !30

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %.0811.i.i.i = phi i64 [ %i.s, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %.0811.i.i.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !87, !noalias !826 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.r, 32
  br i1 %.not.i.i.i, label %bb.e, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEEm.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.s = add nuw i64 %.0811.i.i.i, 1              ; 2 uses
  %exitcond.not.i19.i.i = icmp eq i64 %i.s, %i.d
  br i1 %exitcond.not.i19.i.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit.thread, label %.lr.ph.i.i.i, !llvm.loop !31

_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEEm.exit.i.i: ; preds = %.preheader.us.i.i.i, %.lr.ph.i.i.i
  %i.t = phi i8 [ %i.r, %.lr.ph.i.i.i ], [ %i.o, %.preheader.us.i.i.i ]
  %i.u = phi i64 [ %.0811.i.i.i, %.lr.ph.i.i.i ], [ %.01427.us.i.i.i, %.preheader.us.i.i.i ] ; 3 uses
  %.not18.not.i.i = icmp eq i64 %i.u, -1
  br i1 %.not18.not.i.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEEm.exit.i.i
  switch i8 %i.t, label %bb.h [
    i8 13, label %bb.g
    i8 10, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  store i64 %i.u, ptr %i.b, align 8, !tbaa !269, !alias.scope !826
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit

bb.h:                                             ; preds = %bb.f
  %i.v = icmp ult i64 %i.j, %i.g
  br i1 %i.v, label %bb.i, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  store i8 32, ptr %i.w, align 1, !tbaa !87, !noalias !826
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i.i

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i.i: ; preds = %bb.i, %bb.h
  %i.x = add i64 %i.k, 1                          ; 2 uses
  store i64 %i.x, ptr %i.b, align 8, !tbaa !269, !alias.scope !826
  %i.y = add i64 %i.j, 1                          ; 2 uses
  store i64 %i.y, ptr %i.i, align 8, !tbaa !270, !alias.scope !826
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit.thread: ; preds = %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEEm.exit.i.i, %bb.d, %bb.e
  store i64 %i.d, ptr %i.b, align 8, !tbaa !269, !alias.scope !824
  br label %._crit_edge

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !827
  store i64 %i.k, ptr %i.a, align 8, !tbaa !102, !noalias !827
  %i.z = call fastcc noundef i64 @_ZN2c43yml12_GLOBAL__N_125_count_following_newlinesENS_15basic_substringIKcEEPmm(ptr nonnull %i.h, i64 %i.d, ptr noundef %i.a, i64 noundef %2), !noalias !827 ; 3 uses
  %.not.i9 = icmp eq i64 %i.z, 0
  br i1 %.not.i9, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = add i64 %i.j, %i.z                      ; 3 uses
  %.not.i.i10 = icmp ugt i64 %i.aa, %i.g
  br i1 %.not.i.i10, label %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEcm.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 10, i64 %i.z, i1 false), !noalias !827
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEcm.exit.i

_ZN2c43yml34FilterProcessorInplaceEndExtending3setEcm.exit.i: ; preds = %bb.l, %bb.k
  store i64 %i.aa, ptr %i.i, align 8, !tbaa !270, !alias.scope !827
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_filter_nl_plainINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit

bb.m:                                             ; preds = %bb.j
  %i.ac = add nuw i64 %i.k, 1                     ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.d
  br i1 %i.ad, label %.preheader.us.i.i, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEEm.exit.thread.i

.preheader.us.i.i:                                ; preds = %bb.m, %bb.n
  %.01427.us.i.i = phi i64 [ %i.ag, %bb.n ], [ %i.ac, %bb.m ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 %.01427.us.i.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !87, !noalias !827
  switch i8 %i.af, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEEm.exit.i [
    i8 32, label %bb.n
    i8 9, label %bb.n
  ]

_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEEm.exit.i: ; preds = %.preheader.us.i.i
  %.not11.i = icmp eq i64 %.01427.us.i.i, -1
  br i1 %.not11.i, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEEm.exit.thread.i, label %bb.o

bb.n:                                             ; preds = %.preheader.us.i.i, %.preheader.us.i.i
  %i.ag = add nuw i64 %.01427.us.i.i, 1           ; 2 uses
  %exitcond30.not.i.i = icmp eq i64 %i.ag, %i.d
  br i1 %exitcond30.not.i.i, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEEm.exit.thread.i, label %.preheader.us.i.i, !llvm.loop !30

bb.o:                                             ; preds = %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEEm.exit.i
  %i.ah = icmp ult i64 %i.j, %i.g
  br i1 %i.ah, label %bb.p, label %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  store i8 32, ptr %i.ai, align 1, !tbaa !87, !noalias !827
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i

_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i: ; preds = %bb.p, %bb.o
  %i.aj = add i64 %i.j, 1                         ; 2 uses
  store i64 %i.aj, ptr %i.i, align 8, !tbaa !270, !alias.scope !827
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_filter_nl_plainINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit

_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEEm.exit.thread.i: ; preds = %bb.n, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEEm.exit.i, %bb.m
  store i64 %i.d, ptr %i.a, align 8, !tbaa !102, !noalias !827
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_filter_nl_plainINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_filter_nl_plainINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit: ; preds = %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEcm.exit.i, %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEEm.exit.thread.i
  %i.ak = phi i64 [ %i.aa, %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEcm.exit.i ], [ %i.aj, %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i ], [ %i.j, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEEm.exit.thread.i ]
  %i.al = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !827 ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !269, !alias.scope !827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !827
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit

bb.q:                                             ; preds = %bb.b
  %i.am = add nuw i64 %i.k, 1                     ; 2 uses
  store i64 %i.am, ptr %i.b, align 8, !tbaa !269
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit

bb.r:                                             ; preds = %bb.b
  %i.an = icmp ult i64 %i.j, %i.g
  br i1 %i.an, label %bb.s, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  store i8 %i.m, ptr %i.ao, align 1, !tbaa !87
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit: ; preds = %bb.r, %bb.s
  %i.ap = add nuw i64 %i.k, 1                     ; 2 uses
  store i64 %i.ap, ptr %i.b, align 8, !tbaa !269
  %i.aq = add i64 %i.j, 1                         ; 2 uses
  store i64 %i.aq, ptr %i.i, align 8, !tbaa !270
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit: ; preds = %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i.i, %bb.g, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit, %bb.q, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_filter_nl_plainINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit
  %i.ar = phi i64 [ %i.ak, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_filter_nl_plainINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit ], [ %i.y, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i.i ], [ %i.j, %bb.g ], [ %i.aq, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit ], [ %i.j, %bb.q ] ; 2 uses
  %i.as = phi i64 [ %i.al, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_filter_nl_plainINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit ], [ %i.x, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i.i ], [ %i.u, %bb.g ], [ %i.ap, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit ], [ %i.am, %bb.q ] ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.d
  br i1 %i.at, label %bb.b, label %._crit_edge, !llvm.loop !823

._crit_edge:                                      ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit.thread, %.._crit_edge_crit_edge
  %i.au = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.j, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit.thread ], [ %i.ar, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_skip_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit ] ; 2 uses
  %.not.i = icmp ugt i64 %i.au, %i.g
  br i1 %.not.i, label %_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.av = load ptr, ptr %1, align 8, !tbaa !271
  br label %_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit

_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit: ; preds = %._crit_edge, %bb.t
  %i.aw = phi ptr [ %i.av, %bb.t ], [ null, %._crit_edge ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.aw, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.au, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21filter_scalar_squotedENS_15basic_substringIKcEENS4_IcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %"struct.c4::yml::FilterProcessorSrcDst", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  store ptr %1, ptr %5, align 8, !tbaa !101
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.a, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_filter_squotedINS0_21FilterProcessorSrcDstEEEDTcldtfpr_6resultEERT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  ret { ptr, i64 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_filter_squotedINS0_21FilterProcessorSrcDstEEEDTcldtfpr_6resultEERT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %2 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %3 = alloca %class.anon.11, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !265  ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !tbaa !264  ; 2 uses
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.r
  %i.l = phi i64 [ %i.e, %.lr.ph ], [ %i.cd, %bb.r ] ; 5 uses
  %i.m = phi i64 [ %i.d, %.lr.ph ], [ %i.cc, %bb.r ] ; 8 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !99     ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !87    ; 3 uses
  switch i8 %i.p, label %bb.p [
    i8 32, label %bb.c
    i8 9, label %bb.c
    i8 10, label %bb.j
    i8 13, label %bb.k
    i8 39, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !835)
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %.not.i5.i = icmp eq i64 %i.m, 0
  br i1 %.not.i5.i, label %.lr.ph.i.i.i, label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %bb.c, %bb.d
  %.01427.us.i.i.i = phi i64 [ %i.s, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.01427.us.i.i.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !87, !noalias !837 ; 2 uses
  switch i8 %i.r, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i.i [
    i8 32, label %bb.d
    i8 9, label %bb.d
  ]

bb.d:                                             ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %i.s = add nuw i64 %.01427.us.i.i.i, 1          ; 2 uses
  %exitcond30.not.i.i.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond30.not.i.i.i, label %.loopexit.i, label %.preheader.us.i.i.i, !llvm.loop !9

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %.0811.i.i.i = phi i64 [ %i.v, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0811.i.i.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !87, !noalias !837 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.u, 32
  br i1 %.not.i.i.i, label %bb.e, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.v = add nuw i64 %.0811.i.i.i, 1              ; 2 uses
  %exitcond.not.i19.i.i = icmp eq i64 %i.v, %i.l
  br i1 %exitcond.not.i19.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !29

_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i.i: ; preds = %.preheader.us.i.i.i, %.lr.ph.i.i.i
  %i.w = phi i8 [ %i.u, %.lr.ph.i.i.i ], [ %i.r, %.preheader.us.i.i.i ]
  %i.x = phi i64 [ %.0811.i.i.i, %.lr.ph.i.i.i ], [ %.01427.us.i.i.i, %.preheader.us.i.i.i ] ; 3 uses
  %.not18.not.i.i = icmp eq i64 %i.x, -1
  br i1 %.not18.not.i.i, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i.i
  switch i8 %i.w, label %bb.g [
    i8 13, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit
    i8 10, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.y = load i64, ptr %i.i, align 8, !tbaa !266, !alias.scope !837 ; 3 uses
  %i.z = load i64, ptr %i.j, align 8, !tbaa !272, !alias.scope !837
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %bb.h, label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !267, !alias.scope !837
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y
  store i8 %i.p, ptr %i.ac, align 1, !tbaa !87, !noalias !837
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i.i

_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ad = add i64 %i.y, 1
  store i64 %i.ad, ptr %i.i, align 8, !tbaa !266, !alias.scope !837
  %i.ae = add i64 %i.m, 1
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit

.loopexit.i:                                      ; preds = %bb.d, %bb.e, %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i.i
  %i.af = sub nuw i64 %i.l, %i.m                  ; 2 uses
  %i.ag = load i64, ptr %i.i, align 8, !tbaa !266, !alias.scope !835 ; 2 uses
  %i.ah = add i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = load i64, ptr %i.j, align 8, !tbaa !272, !alias.scope !835
  %.not.i.i = icmp ugt i64 %i.ah, %i.ai
  br i1 %.not.i.i, label %_ZN2c43yml21FilterProcessorSrcDst4copyEm.exit.i, label %bb.i

bb.i:                                             ; preds = %.loopexit.i
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !267, !alias.scope !835
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr nonnull align 1 %i.o, i64 %i.af, i1 false), !noalias !835
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEm.exit.i

_ZN2c43yml21FilterProcessorSrcDst4copyEm.exit.i:  ; preds = %bb.i, %.loopexit.i
  store i64 %i.ah, ptr %i.i, align 8, !tbaa !266, !alias.scope !835
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit: ; preds = %bb.f, %bb.f, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i.i, %_ZN2c43yml21FilterProcessorSrcDst4copyEm.exit.i
  %storemerge.i = phi i64 [ %i.l, %_ZN2c43yml21FilterProcessorSrcDst4copyEm.exit.i ], [ %i.ae, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i.i ], [ %i.x, %bb.f ], [ %i.x, %bb.f ]
  store i64 %storemerge.i, ptr %i.b, align 8, !tbaa !265, !alias.scope !835
  br label %bb.r

bb.j:                                             ; preds = %bb.b
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE18_filter_nl_squotedINS0_21FilterProcessorSrcDstEEEvRT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.r

bb.k:                                             ; preds = %bb.b
  %i.al = add nuw i64 %i.m, 1
  store i64 %i.al, ptr %i.b, align 8, !tbaa !265
  br label %bb.r

bb.l:                                             ; preds = %bb.b
  %i.am = add nuw i64 %i.m, 1                     ; 4 uses
  %i.an = icmp ult i64 %i.am, %i.l
  br i1 %i.an, label %_ZNK2c43yml21FilterProcessorSrcDst4nextEv.exit, label %_ZNK2c43yml21FilterProcessorSrcDst4nextEv.exit.thread

_ZNK2c43yml21FilterProcessorSrcDst4nextEv.exit:   ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.am ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !87
  %i.aq = icmp eq i8 %i.ap, 39
  br i1 %i.aq, label %bb.m, label %_ZNK2c43yml21FilterProcessorSrcDst4nextEv.exit.thread

bb.m:                                             ; preds = %_ZNK2c43yml21FilterProcessorSrcDst4nextEv.exit
  store i64 %i.am, ptr %i.b, align 8, !tbaa !265
  %i.ar = load i64, ptr %i.i, align 8, !tbaa !266 ; 3 uses
  %i.as = load i64, ptr %i.j, align 8, !tbaa !272
  %i.at = icmp ult i64 %i.ar, %i.as
  br i1 %i.at, label %bb.n, label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit11

bb.n:                                             ; preds = %bb.m
  %i.au = load i8, ptr %i.ao, align 1, !tbaa !87
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !267
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ar
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !87
  %.pre = load i64, ptr %i.i, align 8, !tbaa !266
  %.pre27 = load i64, ptr %i.b, align 8, !tbaa !265
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit11

_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit11:  ; preds = %bb.m, %bb.n
  %i.ax = phi i64 [ %i.am, %bb.m ], [ %.pre27, %bb.n ]
  %i.ay = phi i64 [ %i.ar, %bb.m ], [ %.pre, %bb.n ]
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.i, align 8, !tbaa !266
  %i.ba = add i64 %i.ax, 1
  store i64 %i.ba, ptr %i.b, align 8, !tbaa !265
  br label %bb.r

_ZNK2c43yml21FilterProcessorSrcDst4nextEv.exit.thread: ; preds = %bb.l, %_ZNK2c43yml21FilterProcessorSrcDst4nextEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !838
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58, !noalias !838
  store ptr %i.a, ptr %2, align 8, !tbaa !101, !noalias !838
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !102, !noalias !838
  store i64 0, ptr %i.g, align 8, !tbaa !178, !noalias !838
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58, !noalias !838
  store ptr %2, ptr %3, align 8, !tbaa !180, !noalias !838
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA13_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA13_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(13) @.str.251)
  %i.bb = load i64, ptr %i.g, align 8, !tbaa !178, !noalias !838 ; 3 uses
  %i.bc = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !181, !noalias !838
  %i.bd = icmp ult i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.o, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA13_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

bb.o:                                             ; preds = %_ZNK2c43yml21FilterProcessorSrcDst4nextEv.exit.thread
  %i.be = load ptr, ptr %2, align 8, !tbaa !182, !noalias !838
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb
  store i8 10, ptr %i.bf, align 1, !tbaa !87
  %.pre.i.i = load i64, ptr %i.g, align 8, !tbaa !178, !noalias !838
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA13_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA13_cEEEvNS_15basic_substringIKcEEDprRKT_.exit: ; preds = %_ZNK2c43yml21FilterProcessorSrcDst4nextEv.exit.thread, %bb.o
  %i.bg = phi i64 [ %.pre.i.i, %bb.o ], [ %i.bb, %_ZNK2c43yml21FilterProcessorSrcDst4nextEv.exit.thread ]
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.g, align 8, !tbaa !178, !noalias !838
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA13_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bi = load i64, ptr %i.g, align 8, !tbaa !178, !noalias !838
  %i.bj = call i64 @llvm.umin.i64(i64 %i.bi, i64 1024)
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !169, !noalias !838 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2520
  store ptr null, ptr %i.bl, align 8, !tbaa !223
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 2480
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !224
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 2488
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !206
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 2456
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !193
  call void %i.bn(ptr noundef nonnull %i.a, i64 noundef %i.bj, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.bq, ptr noundef %i.bs), !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58, !noalias !838
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58, !noalias !838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !838
  br label %bb.r

bb.p:                                             ; preds = %bb.b
  %i.bt = load i64, ptr %i.i, align 8, !tbaa !266 ; 3 uses
  %i.bu = load i64, ptr %i.j, align 8, !tbaa !272
  %i.bv = icmp ult i64 %i.bt, %i.bu
  br i1 %i.bv, label %bb.q, label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit

bb.q:                                             ; preds = %bb.p
  %i.bw = load ptr, ptr %i.k, align 8, !tbaa !267
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bt
  store i8 %i.p, ptr %i.bx, align 1, !tbaa !87
  %.pre28 = load i64, ptr %i.i, align 8, !tbaa !266
  %.pre29 = load i64, ptr %i.b, align 8, !tbaa !265
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit

_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit:    ; preds = %bb.p, %bb.q
  %i.by = phi i64 [ %i.m, %bb.p ], [ %.pre29, %bb.q ]
  %i.bz = phi i64 [ %i.bt, %bb.p ], [ %.pre28, %bb.q ]
  %i.ca = add i64 %i.bz, 1
  store i64 %i.ca, ptr %i.i, align 8, !tbaa !266
  %i.cb = add i64 %i.by, 1
  store i64 %i.cb, ptr %i.b, align 8, !tbaa !265
  br label %bb.r

bb.r:                                             ; preds = %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit11, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA13_cEEEvNS_15basic_substringIKcEEDprRKT_.exit, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit, %bb.k, %bb.j, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !265 ; 2 uses
  %i.cd = load i64, ptr %i.c, align 8, !tbaa !264 ; 2 uses
  %i.ce = icmp ult i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.b, label %._crit_edge, !llvm.loop !834

._crit_edge:                                      ; preds = %bb.r, %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !266 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !272
  %.not.i = icmp ugt i64 %i.cg, %i.ci
  br i1 %.not.i, label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !267
  br label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit

_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit: ; preds = %._crit_edge, %bb.s
  %i.cl = phi ptr [ %i.ck, %bb.s ], [ null, %._crit_edge ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.cl, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.cg, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30filter_scalar_squoted_in_placeENS_15basic_substringIcEEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  store ptr %1, ptr %4, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %3, ptr %i.a, align 8, !tbaa !233
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_filter_squotedINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  ret { ptr, i64 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_filter_squotedINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %2 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %3 = alloca %class.anon.11, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !269  ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !tbaa !268  ; 2 uses
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit
  %i.k = phi i64 [ %i.e, %.lr.ph ], [ %i.by, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit ] ; 5 uses
  %i.l = phi i64 [ %i.d, %.lr.ph ], [ %i.bx, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit ] ; 9 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !139    ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !87    ; 3 uses
  switch i8 %i.o, label %bb.s [
    i8 32, label %bb.c
    i8 9, label %bb.c
    i8 10, label %bb.m
    i8 13, label %bb.n
    i8 39, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !846)
  call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %.lr.ph.i.i.i, label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %bb.c, %bb.d
  %.01427.us.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.01427.us.i.i.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !87, !noalias !848 ; 2 uses
  switch i8 %i.q, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEEm.exit.i.i [
    i8 32, label %bb.d
    i8 9, label %bb.d
  ]

bb.d:                                             ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %i.r = add nuw i64 %.01427.us.i.i.i, 1          ; 2 uses
  %exitcond30.not.i.i.i = icmp eq i64 %i.r, %i.k
  br i1 %exitcond30.not.i.i.i, label %.loopexit.i, label %.preheader.us.i.i.i, !llvm.loop !30

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %.0811.i.i.i = phi i64 [ %i.u, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0811.i.i.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !87, !noalias !848 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.t, 32
  br i1 %.not.i.i.i, label %bb.e, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEEm.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.u = add nuw i64 %.0811.i.i.i, 1              ; 2 uses
  %exitcond.not.i19.i.i = icmp eq i64 %i.u, %i.k
  br i1 %exitcond.not.i19.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !31

_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEEm.exit.i.i: ; preds = %.preheader.us.i.i.i, %.lr.ph.i.i.i
  %i.v = phi i8 [ %i.t, %.lr.ph.i.i.i ], [ %i.q, %.preheader.us.i.i.i ]
  %i.w = phi i64 [ %.0811.i.i.i, %.lr.ph.i.i.i ], [ %.01427.us.i.i.i, %.preheader.us.i.i.i ] ; 2 uses
  %.not18.not.i.i = icmp eq i64 %i.w, -1
  br i1 %.not18.not.i.i, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEEm.exit.i.i
  switch i8 %i.v, label %bb.h [
    i8 13, label %bb.g
    i8 10, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  store i64 %i.w, ptr %i.b, align 8, !tbaa !269, !alias.scope !848
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit

bb.h:                                             ; preds = %bb.f
  %i.x = load i64, ptr %i.i, align 8, !tbaa !270, !alias.scope !848 ; 3 uses
  %i.y = load i64, ptr %i.j, align 8, !tbaa !233, !alias.scope !848
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.x
  store i8 %i.o, ptr %i.aa, align 1, !tbaa !87, !noalias !848
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i.i

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i.i: ; preds = %bb.i, %bb.h
  %i.ab = add i64 %i.l, 1
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !269, !alias.scope !848
  %i.ac = add i64 %i.x, 1
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !270, !alias.scope !848
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit

.loopexit.i:                                      ; preds = %bb.d, %bb.e, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEEm.exit.i.i
  %i.ad = sub nuw i64 %i.k, %i.l                  ; 3 uses
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !270, !alias.scope !846 ; 2 uses
  %i.af = add i64 %i.ae, %i.ad                    ; 3 uses
  %i.ag = load i64, ptr %i.j, align 8, !tbaa !233, !alias.scope !846
  %.not.i5.i = icmp ugt i64 %i.af, %i.ag
  br i1 %.not.i5.i, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEm.exit.i, label %bb.j

bb.j:                                             ; preds = %.loopexit.i
  %.not7.i.i = icmp ugt i64 %i.af, %i.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ae ; 2 uses
  br i1 %.not7.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.n, i64 %i.ad, i1 false), !noalias !846
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.n, i64 %i.ad, i1 false), !noalias !846
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEm.exit.i

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEm.exit.i: ; preds = %bb.l, %bb.k, %.loopexit.i
  store i64 %i.k, ptr %i.b, align 8, !tbaa !269, !alias.scope !846
  store i64 %i.af, ptr %i.i, align 8, !tbaa !270, !alias.scope !846
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit

bb.m:                                             ; preds = %bb.b
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE18_filter_nl_squotedINS0_34FilterProcessorInplaceEndExtendingEEEvRT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit

bb.n:                                             ; preds = %bb.b
  %i.ai = add nuw i64 %i.l, 1
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !269
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit

bb.o:                                             ; preds = %bb.b
  %i.aj = add nuw i64 %i.l, 1                     ; 4 uses
  %i.ak = icmp ult i64 %i.aj, %i.k
  br i1 %i.ak, label %_ZNK2c43yml34FilterProcessorInplaceEndExtending4nextEv.exit, label %_ZNK2c43yml34FilterProcessorInplaceEndExtending4nextEv.exit.thread

_ZNK2c43yml34FilterProcessorInplaceEndExtending4nextEv.exit: ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aj ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !87
  %i.an = icmp eq i8 %i.am, 39
  br i1 %i.an, label %bb.p, label %_ZNK2c43yml34FilterProcessorInplaceEndExtending4nextEv.exit.thread

bb.p:                                             ; preds = %_ZNK2c43yml34FilterProcessorInplaceEndExtending4nextEv.exit
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !269
  %i.ao = load i64, ptr %i.i, align 8, !tbaa !270 ; 3 uses
  %i.ap = load i64, ptr %i.j, align 8, !tbaa !233
  %i.aq = icmp ult i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.q, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit

bb.q:                                             ; preds = %bb.p
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !87
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ao
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !87
  %.pre.i = load i64, ptr %i.i, align 8, !tbaa !270
  %.pre = load i64, ptr %i.b, align 8, !tbaa !269
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit: ; preds = %bb.p, %bb.q
  %i.at = phi i64 [ %.pre, %bb.q ], [ %i.aj, %bb.p ]
  %i.au = phi i64 [ %.pre.i, %bb.q ], [ %i.ao, %bb.p ]
  %i.av = add i64 %i.at, 1
  store i64 %i.av, ptr %i.b, align 8, !tbaa !269
  %i.aw = add i64 %i.au, 1
  store i64 %i.aw, ptr %i.i, align 8, !tbaa !270
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit

_ZNK2c43yml34FilterProcessorInplaceEndExtending4nextEv.exit.thread: ; preds = %bb.o, %_ZNK2c43yml34FilterProcessorInplaceEndExtending4nextEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !849
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58, !noalias !849
  store ptr %i.a, ptr %2, align 8, !tbaa !101, !noalias !849
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !102, !noalias !849
  store i64 0, ptr %i.g, align 8, !tbaa !178, !noalias !849
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58, !noalias !849
  store ptr %2, ptr %3, align 8, !tbaa !180, !noalias !849
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA13_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA13_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(13) @.str.251)
  %i.ax = load i64, ptr %i.g, align 8, !tbaa !178, !noalias !849 ; 3 uses
  %i.ay = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !181, !noalias !849
  %i.az = icmp ult i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.r, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA13_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

bb.r:                                             ; preds = %_ZNK2c43yml34FilterProcessorInplaceEndExtending4nextEv.exit.thread
  %i.ba = load ptr, ptr %2, align 8, !tbaa !182, !noalias !849
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ax
  store i8 10, ptr %i.bb, align 1, !tbaa !87
  %.pre.i.i = load i64, ptr %i.g, align 8, !tbaa !178, !noalias !849
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA13_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA13_cEEEvNS_15basic_substringIKcEEDprRKT_.exit: ; preds = %_ZNK2c43yml34FilterProcessorInplaceEndExtending4nextEv.exit.thread, %bb.r
  %i.bc = phi i64 [ %.pre.i.i, %bb.r ], [ %i.ax, %_ZNK2c43yml34FilterProcessorInplaceEndExtending4nextEv.exit.thread ]
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %i.g, align 8, !tbaa !178, !noalias !849
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA13_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.be = load i64, ptr %i.g, align 8, !tbaa !178, !noalias !849
  %i.bf = call i64 @llvm.umin.i64(i64 %i.be, i64 1024)
  %i.bg = load ptr, ptr %i.h, align 8, !tbaa !169, !noalias !849 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2520
  store ptr null, ptr %i.bh, align 8, !tbaa !223
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 2480
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !224
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 2488
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !206
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 2456
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !193
  call void %i.bj(ptr noundef nonnull %i.a, i64 noundef %i.bf, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.bm, ptr noundef %i.bo), !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58, !noalias !849
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58, !noalias !849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !849
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit

bb.s:                                             ; preds = %bb.b
  %i.bp = load i64, ptr %i.i, align 8, !tbaa !270 ; 3 uses
  %i.bq = load i64, ptr %i.j, align 8, !tbaa !233
  %i.br = icmp ult i64 %i.bp, %i.bq
  br i1 %i.br, label %bb.t, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit12

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bp
  store i8 %i.o, ptr %i.bs, align 1, !tbaa !87
  %.pre.i11 = load i64, ptr %i.i, align 8, !tbaa !270
  %.pre28 = load i64, ptr %i.b, align 8, !tbaa !269
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit12

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit12: ; preds = %bb.s, %bb.t
  %i.bt = phi i64 [ %.pre28, %bb.t ], [ %i.l, %bb.s ]
  %i.bu = phi i64 [ %.pre.i11, %bb.t ], [ %i.bp, %bb.s ]
  %i.bv = add i64 %i.bt, 1
  store i64 %i.bv, ptr %i.b, align 8, !tbaa !269
  %i.bw = add i64 %i.bu, 1
  store i64 %i.bw, ptr %i.i, align 8, !tbaa !270
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit: ; preds = %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEm.exit.i, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i.i, %bb.g, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA13_cEEEvNS_15basic_substringIKcEEDprRKT_.exit, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit12, %bb.n, %bb.m
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !269 ; 2 uses
  %i.by = load i64, ptr %i.c, align 8, !tbaa !268 ; 2 uses
  %i.bz = icmp ult i64 %i.bx, %i.by
  br i1 %i.bz, label %bb.b, label %._crit_edge, !llvm.loop !845

._crit_edge:                                      ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_.exit, %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !270 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !233
  %.not.i = icmp ugt i64 %i.cb, %i.cd
  br i1 %.not.i, label %_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.ce = load ptr, ptr %1, align 8, !tbaa !271
  br label %_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit

_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit: ; preds = %._crit_edge, %bb.u
  %i.cf = phi ptr [ %i.ce, %bb.u ], [ null, %._crit_edge ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.cf, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.cb, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21filter_scalar_dquotedENS_15basic_substringIKcEENS4_IcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %"struct.c4::yml::FilterProcessorSrcDst", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  store ptr %1, ptr %5, align 8, !tbaa !101
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.a, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_filter_dquotedINS0_21FilterProcessorSrcDstEEEDTcldtfpr_6resultEERT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  ret { ptr, i64 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_filter_dquotedINS0_21FilterProcessorSrcDstEEEDTcldtfpr_6resultEERT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !265  ; 2 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !264  ; 2 uses
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %i.i = phi i64 [ %i.d, %.lr.ph ], [ %i.at, %bb.o ] ; 4 uses
  %i.j = phi i64 [ %i.c, %.lr.ph ], [ %i.as, %bb.o ] ; 7 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !99     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !87    ; 3 uses
  switch i8 %i.m, label %bb.m [
    i8 32, label %bb.c
    i8 9, label %bb.c
    i8 10, label %bb.j
    i8 13, label %bb.k
    i8 92, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %.not.i5.i = icmp eq i64 %i.j, 0
  br i1 %.not.i5.i, label %.lr.ph.i.i.i, label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %bb.c, %bb.d
  %.01427.us.i.i.i = phi i64 [ %i.p, %bb.d ], [ %i.j, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.01427.us.i.i.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !87, !noalias !857 ; 2 uses
  switch i8 %i.o, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i.i [
    i8 32, label %bb.d
    i8 9, label %bb.d
  ]

bb.d:                                             ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %i.p = add nuw i64 %.01427.us.i.i.i, 1          ; 2 uses
  %exitcond30.not.i.i.i = icmp eq i64 %i.p, %i.i
  br i1 %exitcond30.not.i.i.i, label %.loopexit.i, label %.preheader.us.i.i.i, !llvm.loop !9

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %.0811.i.i.i = phi i64 [ %i.s, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0811.i.i.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !87, !noalias !857 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.r, 32
  br i1 %.not.i.i.i, label %bb.e, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.s = add nuw i64 %.0811.i.i.i, 1              ; 2 uses
  %exitcond.not.i19.i.i = icmp eq i64 %i.s, %i.i
  br i1 %exitcond.not.i19.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !29

_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i.i: ; preds = %.preheader.us.i.i.i, %.lr.ph.i.i.i
  %i.t = phi i8 [ %i.r, %.lr.ph.i.i.i ], [ %i.o, %.preheader.us.i.i.i ]
  %i.u = phi i64 [ %.0811.i.i.i, %.lr.ph.i.i.i ], [ %.01427.us.i.i.i, %.preheader.us.i.i.i ] ; 3 uses
  %.not18.not.i.i = icmp eq i64 %i.u, -1
  br i1 %.not18.not.i.i, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i.i
  switch i8 %i.t, label %bb.g [
    i8 13, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit
    i8 10, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.f, align 8, !tbaa !266, !alias.scope !857 ; 3 uses
  %i.w = load i64, ptr %i.g, align 8, !tbaa !272, !alias.scope !857
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %bb.h, label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !267, !alias.scope !857
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 %i.m, ptr %i.z, align 1, !tbaa !87, !noalias !857
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i.i

_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i.i: ; preds = %bb.h, %bb.g
  %i.aa = add i64 %i.v, 1
  store i64 %i.aa, ptr %i.f, align 8, !tbaa !266, !alias.scope !857
  %i.ab = add i64 %i.j, 1
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit

.loopexit.i:                                      ; preds = %bb.d, %bb.e, %_ZNK2c415basic_substringIKcE12first_not_ofES2_m.exit.i.i
  %i.ac = sub nuw i64 %i.i, %i.j                  ; 2 uses
  %i.ad = load i64, ptr %i.f, align 8, !tbaa !266, !alias.scope !855 ; 2 uses
  %i.ae = add i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = load i64, ptr %i.g, align 8, !tbaa !272, !alias.scope !855
  %.not.i.i = icmp ugt i64 %i.ae, %i.af
  br i1 %.not.i.i, label %_ZN2c43yml21FilterProcessorSrcDst4copyEm.exit.i, label %bb.i

bb.i:                                             ; preds = %.loopexit.i
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !267, !alias.scope !855
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.l, i64 %i.ac, i1 false), !noalias !855
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEm.exit.i

_ZN2c43yml21FilterProcessorSrcDst4copyEm.exit.i:  ; preds = %bb.i, %.loopexit.i
  store i64 %i.ae, ptr %i.f, align 8, !tbaa !266, !alias.scope !855
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit: ; preds = %bb.f, %bb.f, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i.i, %_ZN2c43yml21FilterProcessorSrcDst4copyEm.exit.i
  %storemerge.i = phi i64 [ %i.i, %_ZN2c43yml21FilterProcessorSrcDst4copyEm.exit.i ], [ %i.ab, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i.i ], [ %i.u, %bb.f ], [ %i.u, %bb.f ]
  store i64 %storemerge.i, ptr %i.a, align 8, !tbaa !265, !alias.scope !855
  br label %bb.o

bb.j:                                             ; preds = %bb.b
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE18_filter_nl_dquotedINS0_21FilterProcessorSrcDstEEEvRT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.o

bb.k:                                             ; preds = %bb.b
  %i.ai = add nuw i64 %i.j, 1
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !265
  br label %bb.o

bb.l:                                             ; preds = %bb.b
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_dquoted_backslashINS0_21FilterProcessorSrcDstEEEvRT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.o

bb.m:                                             ; preds = %bb.b
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !266 ; 3 uses
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !272
  %i.al = icmp ult i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.n, label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !267
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aj
  store i8 %i.m, ptr %i.an, align 1, !tbaa !87
  %.pre = load i64, ptr %i.f, align 8, !tbaa !266
  %.pre23 = load i64, ptr %i.a, align 8, !tbaa !265
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit

_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit:    ; preds = %bb.m, %bb.n
  %i.ao = phi i64 [ %i.j, %bb.m ], [ %.pre23, %bb.n ]
  %i.ap = phi i64 [ %i.aj, %bb.m ], [ %.pre, %bb.n ]
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.f, align 8, !tbaa !266
  %i.ar = add i64 %i.ao, 1
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !265
  br label %bb.o

bb.o:                                             ; preds = %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit, %bb.l, %bb.k, %bb.j, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit
  %i.as = load i64, ptr %i.a, align 8, !tbaa !265 ; 2 uses
  %i.at = load i64, ptr %i.b, align 8, !tbaa !264 ; 2 uses
  %i.au = icmp ult i64 %i.as, %i.at
  br i1 %i.au, label %bb.b, label %._crit_edge, !llvm.loop !854

._crit_edge:                                      ; preds = %bb.o, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !266 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !272
  %.not.i = icmp ugt i64 %i.aw, %i.ay
  br i1 %.not.i, label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !267
  br label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit

_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit: ; preds = %._crit_edge, %bb.p
  %i.bb = phi ptr [ %i.ba, %bb.p ], [ null, %._crit_edge ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.bb, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.aw, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30filter_scalar_dquoted_in_placeENS_15basic_substringIcEEm(ptr dead_on_unwind noalias writable sret(%"struct.c4::yml::FilterResultExtending") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr %2, i64 %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %"struct.c4::yml::FilterProcessorInplaceMidExtending", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  store ptr %2, ptr %5, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %4, ptr %i.a, align 8, !tbaa !274
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i64 %3, ptr %i.c, align 8, !tbaa !275
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i8 0, ptr %i.d, align 8, !tbaa !276
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_filter_dquotedINS0_34FilterProcessorInplaceMidExtendingEEEDTcldtfpr_6resultEERT_(ptr dead_on_unwind writable sret(%"struct.c4::yml::FilterResultExtending") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(49) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_filter_dquotedINS0_34FilterProcessorInplaceMidExtendingEEEDTcldtfpr_6resultEERT_(ptr dead_on_unwind noalias writable sret(%"struct.c4::yml::FilterResultExtending") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noalias noundef nonnull align 8 dereferenceable(49) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !277  ; 2 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !278
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.j = phi i64 [ %i.c, %.lr.ph ], [ %i.aa, %bb.k ] ; 5 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !139    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.m = load i8, ptr %i.l, align 1, !tbaa !87    ; 2 uses
  switch i8 %i.m, label %bb.g [
    i8 32, label %bb.c
    i8 9, label %bb.c
    i8 10, label %bb.d
    i8 13, label %bb.e
    i8 92, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_34FilterProcessorInplaceMidExtendingEEEvRT_(ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(49) %2)
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE18_filter_nl_dquotedINS0_34FilterProcessorInplaceMidExtendingEEEvRT_(ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(49) %2)
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.n = add nuw i64 %i.j, 1
  store i64 %i.n, ptr %i.a, align 8, !tbaa !277
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_dquoted_backslashINS0_34FilterProcessorInplaceMidExtendingEEEvRT_(ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(49) %2)
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.f, align 8, !tbaa !279  ; 5 uses
  %i.p = load i64, ptr %i.g, align 8, !tbaa !274
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = icmp uge i64 %i.o, %i.j
  %i.s = load i8, ptr %i.h, align 8, !range !81
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.t
  br i1 %or.cond.i, label %_ZN2c43yml34FilterProcessorInplaceMidExtending4copyEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o
  store i8 %i.m, ptr %i.u, align 1, !tbaa !87
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !279
  %.pre = load i64, ptr %i.a, align 8, !tbaa !277
  br label %_ZN2c43yml34FilterProcessorInplaceMidExtending4copyEv.exit

bb.j:                                             ; preds = %bb.g
  store i8 1, ptr %i.h, align 8, !tbaa !276
  br label %_ZN2c43yml34FilterProcessorInplaceMidExtending4copyEv.exit

_ZN2c43yml34FilterProcessorInplaceMidExtending4copyEv.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.v = phi i64 [ %i.j, %bb.h ], [ %.pre, %bb.i ], [ %i.j, %bb.j ]
  %i.w = phi i64 [ %i.o, %bb.h ], [ %.pre.i, %bb.i ], [ %i.o, %bb.j ]
  %i.x = add i64 %i.v, 1
  store i64 %i.x, ptr %i.a, align 8, !tbaa !277
  %i.y = add i64 %i.w, 1                          ; 2 uses
  store i64 %i.y, ptr %i.f, align 8, !tbaa !279
  %i.z = load i64, ptr %i.i, align 8, !tbaa !275
  %..i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 %i.z)
  store i64 %..i, ptr %i.i, align 8, !tbaa !275
  br label %bb.k

bb.k:                                             ; preds = %_ZN2c43yml34FilterProcessorInplaceMidExtending4copyEv.exit, %bb.f, %bb.e, %bb.d, %bb.c
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !277 ; 2 uses
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !278
  %i.ac = icmp ult i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !858

._crit_edge:                                      ; preds = %bb.k, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !279, !noalias !861 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !274, !noalias !861
  %.not.i = icmp ugt i64 %i.ae, %i.ag
  br i1 %.not.i, label %_ZNK2c43yml34FilterProcessorInplaceMidExtending6resultEv.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !276, !range !81, !noalias !861, !noundef !90
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZNK2c43yml34FilterProcessorInplaceMidExtending6resultEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr %2, align 8, !tbaa !280, !noalias !861
  br label %_ZNK2c43yml34FilterProcessorInplaceMidExtending6resultEv.exit

_ZNK2c43yml34FilterProcessorInplaceMidExtending6resultEv.exit: ; preds = %._crit_edge, %bb.l, %bb.m
  %i.al = phi ptr [ %i.ak, %bb.m ], [ null, %bb.l ], [ null, %._crit_edge ]
  store ptr %i.al, ptr %0, align 8, !tbaa !282, !alias.scope !861
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %i.am, align 8, !tbaa !862, !alias.scope !861
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !275, !noalias !861
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !283, !alias.scope !861
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE27filter_scalar_block_literalENS_15basic_substringIKcEENS4_IcEEmNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, ptr %3, i64 %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %7 = alloca %"struct.c4::yml::FilterProcessorSrcDst", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  store ptr %1, ptr %7, align 8, !tbaa !101
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %3, ptr %i.a, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_block_literalINS0_21FilterProcessorSrcDstEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 noundef %5, i32 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  ret { ptr, i64 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_block_literalINS0_21FilterProcessorSrcDstEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92, !alias.scope !872 ; 15 uses
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !alias.scope !872 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %_ZNK2c415basic_substringIKcE5trimrES2_.exit.i, label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %bb.a, %.loopexit25.us.i.i.i
  %.01534.us.i.in.i.i = phi i64 [ %.01534.us.i.i.i, %.loopexit25.us.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.01534.us.i.i.i = add i64 %.01534.us.i.in.i.i, -1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.01534.us.i.i.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !87, !noalias !872
  switch i8 %i.h, label %.thread25.i.i [
    i8 32, label %.loopexit25.us.i.i.i
    i8 10, label %.loopexit25.us.i.i.i
    i8 13, label %.loopexit25.us.i.i.i
  ]

.thread25.i.i:                                    ; preds = %.preheader.us.i.i.i
  %.not.i28.i.i = icmp eq i64 %.01534.us.i.in.i.i, -1
  %i.i = select i1 %.not.i28.i.i, i64 %i.b, i64 %.01534.us.i.in.i.i
  br label %_ZNK2c415basic_substringIKcE5trimrES2_.exit.i

.loopexit25.us.i.i.i:                             ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %.not.us.i.i.i = icmp eq i64 %.01534.us.i.i.i, 0
  br i1 %.not.us.i.i.i, label %_ZNK2c415basic_substringIKcE5trimrES2_.exit.i, label %.preheader.us.i.i.i

_ZNK2c415basic_substringIKcE5trimrES2_.exit.i:    ; preds = %.loopexit25.us.i.i.i, %.thread25.i.i, %bb.a
  %.sroa.3.1.i.i = phi i64 [ 0, %bb.a ], [ %i.i, %.thread25.i.i ], [ 0, %.loopexit25.us.i.i.i ] ; 4 uses
  %i.j = icmp ne i64 %.sroa.3.1.i.i, 0
  %i.k = icmp ne i32 %3, 2
  %or.cond.not13.i = or i1 %i.k, %i.j
  %brmerge.i = or i1 %i.c, %or.cond.not13.i
  br i1 %brmerge.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_21FilterProcessorSrcDstEEEmRT_NS0_12BlockChomp_eE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK2c415basic_substringIKcE5trimrES2_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted.i = load i64, ptr %i.l, align 8, !tbaa !265, !alias.scope !872 ; 2 uses
  %i.m = icmp ult i64 %.promoted.i, %i.b
  br i1 %i.m, label %.lr.ph.i, label %bb.f

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %storemerge1516.i = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %storemerge.i, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %storemerge1516.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !87, !noalias !872
  %i.s = icmp eq i8 %i.r, 10
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.n, align 8, !tbaa !266, !alias.scope !872 ; 3 uses
  %i.u = load i64, ptr %i.o, align 8, !tbaa !272, !alias.scope !872
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !267, !alias.scope !872
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  store i8 10, ptr %i.x, align 1, !tbaa !87, !noalias !872
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i

_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i:  ; preds = %bb.d, %bb.c
  %i.y = add i64 %i.t, 1
  store i64 %i.y, ptr %i.n, align 8, !tbaa !266, !alias.scope !872
  br label %bb.e

bb.e:                                             ; preds = %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i, %bb.b
  %storemerge.i = add nuw i64 %storemerge1516.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %storemerge.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !33

._crit_edge.i:                                    ; preds = %bb.e
  store i64 %i.b, ptr %i.l, align 8, !tbaa !265, !alias.scope !872
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %.preheader.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !266, !alias.scope !872
  %.not11.i = icmp eq i64 %i.aa, 0
  br i1 %.not11.i, label %bb.g, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_21FilterProcessorSrcDstEEEmRT_NS0_12BlockChomp_eE.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !272, !alias.scope !872
  %.not.i27 = icmp eq i64 %i.ac, 0
  br i1 %.not.i27, label %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !267, !alias.scope !872
  store i8 10, ptr %i.ae, align 1, !tbaa !87, !noalias !872
  br label %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i

_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i:   ; preds = %bb.h, %bb.g
  store i64 1, ptr %i.z, align 8, !tbaa !266, !alias.scope !872
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_21FilterProcessorSrcDstEEEmRT_NS0_12BlockChomp_eE.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_21FilterProcessorSrcDstEEEmRT_NS0_12BlockChomp_eE.exit: ; preds = %_ZNK2c415basic_substringIKcE5trimrES2_.exit.i, %bb.f, %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i
  %.not = icmp eq i64 %.sroa.3.1.i.i, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_21FilterProcessorSrcDstEEEmRT_NS0_12BlockChomp_eE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !266 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !272
  %.not.i23 = icmp ugt i64 %i.ag, %i.ai
  br i1 %.not.i23, label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26, label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split

bb.j:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_21FilterProcessorSrcDstEEEmRT_NS0_12BlockChomp_eE.exit
  %i.aj = icmp ult i64 %.sroa.3.1.i.i, %i.b
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %.0811.i.i = phi i64 [ %i.an, %bb.k ], [ %.sroa.3.1.i.i, %bb.j ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0811.i.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !87, !noalias !873
  %i.am = icmp eq i8 %i.al, 10
  br i1 %i.am, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.an = add i64 %.0811.i.i, 1                   ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.an, %i.b
  br i1 %exitcond.not.i.i, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !6

_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i:  ; preds = %.lr.ph.i.i
  %.not.i28 = icmp eq i64 %.0811.i.i, -1
  br i1 %.not.i28, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit

_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i: ; preds = %bb.k, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i, %bb.j
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit: ; preds = %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i
  %.0.i = phi i64 [ %i.b, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i ], [ %.0811.i.i, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !265, !alias.scope !874 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ap
  %i.ar = sub i64 %i.b, %i.ap
  %.not.i29 = icmp eq i64 %i.b, %i.ap
  br i1 %.not.i29, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit, label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit, %bb.l
  %.0710.i.i = phi i64 [ %i.au, %bb.l ], [ 0, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0710.i.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !87, !noalias !874
  %.not.i.i = icmp eq i8 %i.at, 32
  br i1 %.not.i.i, label %bb.l, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i30
  %i.au = add nuw i64 %.0710.i.i, 1               ; 2 uses
  %exitcond.not.i.i31 = icmp eq i64 %i.au, %i.ar
  br i1 %exitcond.not.i.i31, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit, label %.lr.ph.i.i30, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i: ; preds = %.lr.ph.i.i30
  %.not8.i = icmp eq i64 %.0710.i.i, -1
  br i1 %.not8.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i: ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i
  %.sink.v.i = tail call i64 @llvm.umin.i64(i64 %.0710.i.i, i64 %2)
  %.sink.i = add i64 %.sink.v.i, %i.ap            ; 2 uses
  store i64 %.sink.i, ptr %i.ao, align 8, !tbaa !265, !alias.scope !874
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit: ; preds = %bb.l, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i
  %i.av = phi i64 [ %.sink.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i ], [ %i.b, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit ], [ %i.ap, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i ], [ %i.ap, %bb.l ] ; 2 uses
  %i.aw = icmp ult i64 %i.av, %.0.i
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42
  %i.ba = phi i64 [ %i.av, %.lr.ph ], [ %i.bx, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42 ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.bc, label %bb.r [
    i8 10, label %bb.n
    i8 13, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !266 ; 3 uses
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !272
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.o, label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit22

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !267
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd
  store i8 10, ptr %i.bh, align 1, !tbaa !87
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit22

_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit22:  ; preds = %bb.n, %bb.o
  %i.bi = add i64 %i.bd, 1
  store i64 %i.bi, ptr %i.ax, align 8, !tbaa !266
  %i.bj = add nuw i64 %i.ba, 1                    ; 7 uses
  store i64 %i.bj, ptr %i.ao, align 8, !tbaa !265
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bj
  %i.bl = sub i64 %i.b, %i.bj
  %.not.i32 = icmp eq i64 %i.b, %i.bj
  br i1 %.not.i32, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42, label %.lr.ph.i.i33

.lr.ph.i.i33:                                     ; preds = %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit22, %bb.p
  %.0710.i.i34 = phi i64 [ %i.bo, %bb.p ], [ 0, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit22 ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.0710.i.i34
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !87, !noalias !875
  %.not.i.i35 = icmp eq i8 %i.bn, 32
  br i1 %.not.i.i35, label %bb.p, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i36

bb.p:                                             ; preds = %.lr.ph.i.i33
  %i.bo = add nuw i64 %.0710.i.i34, 1             ; 2 uses
  %exitcond.not.i.i41 = icmp eq i64 %i.bo, %i.bl
  br i1 %exitcond.not.i.i41, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42, label %.lr.ph.i.i33, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i36: ; preds = %.lr.ph.i.i33
  %.not8.i37 = icmp eq i64 %.0710.i.i34, -1
  br i1 %.not8.i37, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i38

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i38: ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i36
  %.sink.v.i39 = tail call i64 @llvm.umin.i64(i64 %.0710.i.i34, i64 %2)
  %.sink.i40 = add i64 %.sink.v.i39, %i.bj
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42.sink.split

bb.q:                                             ; preds = %bb.m
  %i.bp = add nuw i64 %i.ba, 1
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42.sink.split

bb.r:                                             ; preds = %bb.m
  %i.bq = load i64, ptr %i.ax, align 8, !tbaa !266 ; 3 uses
  %i.br = load i64, ptr %i.ay, align 8, !tbaa !272
  %i.bs = icmp ult i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.s, label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit

bb.s:                                             ; preds = %bb.r
  %i.bt = load ptr, ptr %i.az, align 8, !tbaa !267
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bq
  store i8 %i.bc, ptr %i.bu, align 1, !tbaa !87
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit

_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit:    ; preds = %bb.r, %bb.s
  %i.bv = add i64 %i.bq, 1
  store i64 %i.bv, ptr %i.ax, align 8, !tbaa !266
  %i.bw = add nuw i64 %i.ba, 1
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42.sink.split

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42.sink.split: ; preds = %bb.q, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i38
  %.sink.i40.sink = phi i64 [ %.sink.i40, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i38 ], [ %i.bw, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit ], [ %i.bp, %bb.q ] ; 2 uses
  store i64 %.sink.i40.sink, ptr %i.ao, align 8, !tbaa !265
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42: ; preds = %bb.p, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42.sink.split, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i36, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit22
  %i.bx = phi i64 [ %i.b, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit22 ], [ %.sink.i40.sink, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42.sink.split ], [ %i.bj, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i36 ], [ %i.bj, %bb.p ] ; 2 uses
  %i.by = icmp ult i64 %i.bx, %.0.i
  br i1 %i.by, label %bb.m, label %._crit_edge, !llvm.loop !871

._crit_edge:                                      ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_filter_chompINS0_21FilterProcessorSrcDstEEEvRT_NS0_12BlockChomp_eEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %3, i64 noundef %2)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !266 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !272
  %.not.i = icmp ugt i64 %i.ca, %i.cc
  br i1 %.not.i, label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26, label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split

_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split: ; preds = %._crit_edge, %bb.i
  %.pn45.ph = phi i64 [ %i.ag, %bb.i ], [ %i.ca, %._crit_edge ]
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !267
  br label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26

_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26: ; preds = %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split, %._crit_edge, %bb.i
  %.pn47 = phi ptr [ null, %bb.i ], [ null, %._crit_edge ], [ %i.ce, %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split ]
  %.pn45 = phi i64 [ %i.ag, %bb.i ], [ %i.ca, %._crit_edge ], [ %.pn45.ph, %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i64 } poison, ptr %.pn47, 0
  %.pn = insertvalue { ptr, i64 } %.fca.0.insert.i.pn, i64 %.pn45, 1
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE36filter_scalar_block_literal_in_placeENS_15basic_substringIcEEmmNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %6 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  store ptr %1, ptr %6, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %3, ptr %i.a, align 8, !tbaa !233
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_block_literalINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  ret { ptr, i64 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_block_literalINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !138, !alias.scope !885 ; 11 uses
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !alias.scope !885 ; 10 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i, label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %bb.a, %.loopexit25.us.i.i.i
  %.01534.us.i.in.i.i = phi i64 [ %.01534.us.i.i.i, %.loopexit25.us.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.01534.us.i.i.i = add i64 %.01534.us.i.in.i.i, -1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.01534.us.i.i.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !87, !noalias !885
  switch i8 %i.h, label %.thread25.i.i [
    i8 32, label %.loopexit25.us.i.i.i
    i8 10, label %.loopexit25.us.i.i.i
    i8 13, label %.loopexit25.us.i.i.i
  ]

.thread25.i.i:                                    ; preds = %.preheader.us.i.i.i
  %.not.i28.i.i = icmp eq i64 %.01534.us.i.in.i.i, -1
  %i.i = select i1 %.not.i28.i.i, i64 %i.b, i64 %.01534.us.i.in.i.i
  br label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i

.loopexit25.us.i.i.i:                             ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %.not.us.i.i.i = icmp eq i64 %.01534.us.i.i.i, 0
  br i1 %.not.us.i.i.i, label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i, label %.preheader.us.i.i.i

_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i: ; preds = %.loopexit25.us.i.i.i, %.thread25.i.i, %bb.a
  %.sroa.3.1.i.i = phi i64 [ 0, %bb.a ], [ %i.i, %.thread25.i.i ], [ 0, %.loopexit25.us.i.i.i ] ; 4 uses
  %i.j = icmp ne i64 %.sroa.3.1.i.i, 0
  %i.k = icmp ne i32 %3, 2
  %or.cond.not15.i = or i1 %i.k, %i.j
  %brmerge.i = or i1 %i.c, %or.cond.not15.i
  br i1 %brmerge.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.promoted.i = load i64, ptr %i.l, align 8, !tbaa !269, !alias.scope !885 ; 2 uses
  %i.m = icmp ult i64 %.promoted.i, %i.b
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.p = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.aa, %bb.f ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !87, !noalias !885
  %i.s = icmp eq i8 %i.r, 10
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.n, align 8, !tbaa !270, !alias.scope !885 ; 3 uses
  %i.u = load i64, ptr %i.o, align 8, !tbaa !233, !alias.scope !885
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t
  store i8 10, ptr %i.w, align 1, !tbaa !87, !noalias !885
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i: ; preds = %bb.d, %bb.c
  %i.x = add nuw i64 %i.p, 1                      ; 2 uses
  store i64 %i.x, ptr %i.l, align 8, !tbaa !269, !alias.scope !885
  %i.y = add i64 %i.t, 1
  store i64 %i.y, ptr %i.n, align 8, !tbaa !270, !alias.scope !885
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.z = add nuw i64 %i.p, 1                      ; 2 uses
  store i64 %i.z, ptr %i.l, align 8, !tbaa !269, !alias.scope !885
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i
  %i.aa = phi i64 [ %i.z, %bb.e ], [ %i.x, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i ] ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.b
  br i1 %i.ab, label %bb.b, label %._crit_edge.i, !llvm.loop !34

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !270, !alias.scope !885
  %.not11.i = icmp eq i64 %i.ad, 0
  br i1 %.not11.i, label %bb.g, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !233, !alias.scope !885
  %.not.i26 = icmp eq i64 %i.af, 0
  br i1 %.not.i26, label %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 10, ptr %i.d, align 1, !tbaa !87, !noalias !885
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i

_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i: ; preds = %bb.h, %bb.g
  store i64 1, ptr %i.ac, align 8, !tbaa !270, !alias.scope !885
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit: ; preds = %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i, %._crit_edge.i, %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i
  %.not = icmp eq i64 %.sroa.3.1.i.i, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !270 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !233
  %.not.i22 = icmp ugt i64 %i.ah, %i.aj
  %spec.select = select i1 %.not.i22, ptr null, ptr %i.d
  br label %_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit25

bb.j:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit
  %i.ak = icmp ult i64 %.sroa.3.1.i.i, %i.b
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %.0811.i.i = phi i64 [ %i.ao, %bb.k ], [ %.sroa.3.1.i.i, %bb.j ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0811.i.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !87, !noalias !886
  %i.an = icmp eq i8 %i.am, 10
  br i1 %i.an, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ao = add i64 %.0811.i.i, 1                   ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ao, %i.b
  br i1 %exitcond.not.i.i, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !35

_ZNK2c415basic_substringIcE8first_ofEcm.exit.i:   ; preds = %.lr.ph.i.i
  %.not.i27 = icmp eq i64 %.0811.i.i, -1
  br i1 %.not.i27, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit

_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i: ; preds = %bb.k, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i, %bb.j
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit: ; preds = %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i
  %.0.i = phi i64 [ %i.b, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i ], [ %.0811.i.i, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !269, !alias.scope !887 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aq
  %i.as = sub i64 %i.b, %i.aq
  %.not.i28 = icmp eq i64 %i.b, %i.aq
  br i1 %.not.i28, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit, %bb.l
  %.0710.i.i = phi i64 [ %i.av, %bb.l ], [ 0, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.0710.i.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !87, !noalias !887
  %.not.i.i = icmp eq i8 %i.au, 32
  br i1 %.not.i.i, label %bb.l, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i29
  %i.av = add nuw i64 %.0710.i.i, 1               ; 2 uses
  %exitcond.not.i.i30 = icmp eq i64 %i.av, %i.as
  br i1 %exitcond.not.i.i30, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, label %.lr.ph.i.i29, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i: ; preds = %.lr.ph.i.i29
  %.not8.i = icmp eq i64 %.0710.i.i, -1
  br i1 %.not8.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i: ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i
  %.sink.v.i = tail call i64 @llvm.umin.i64(i64 %.0710.i.i, i64 %2)
  %.sink.i = add i64 %.sink.v.i, %i.aq            ; 2 uses
  store i64 %.sink.i, ptr %i.ap, align 8, !tbaa !269, !alias.scope !887
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit: ; preds = %bb.l, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i
  %i.aw = phi i64 [ %.sink.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i ], [ %i.b, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit ], [ %i.aq, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i ], [ %i.aq, %bb.l ] ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %.0.i
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41
  %i.ba = phi ptr [ %i.d, %.lr.ph ], [ %i.ce, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41 ] ; 3 uses
  %i.bb = phi ptr [ %i.d, %.lr.ph ], [ %i.cf, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41 ] ; 5 uses
  %i.bc = phi i64 [ %i.aw, %.lr.ph ], [ %i.cd, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41 ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.be, label %bb.r [
    i8 10, label %bb.n
    i8 13, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.bf = load i64, ptr %i.ay, align 8, !tbaa !270 ; 3 uses
  %i.bg = load i64, ptr %i.az, align 8, !tbaa !233
  %i.bh = icmp ult i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.o, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bf
  store i8 10, ptr %i.bi, align 1, !tbaa !87
  %.pre.i = load i64, ptr %i.ay, align 8, !tbaa !270
  %.pre = load i64, ptr %i.ap, align 8, !tbaa !269
  %.pre57 = load ptr, ptr %1, align 8, !tbaa !139, !alias.scope !888
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit: ; preds = %bb.n, %bb.o
  %i.bj = phi ptr [ %.pre57, %bb.o ], [ %i.ba, %bb.n ] ; 9 uses
  %i.bk = phi i64 [ %.pre, %bb.o ], [ %i.bc, %bb.n ]
  %i.bl = phi i64 [ %.pre.i, %bb.o ], [ %i.bf, %bb.n ]
  %i.bm = add i64 %i.bk, 1                        ; 8 uses
  store i64 %i.bm, ptr %i.ap, align 8, !tbaa !269
  %i.bn = add i64 %i.bl, 1
  store i64 %i.bn, ptr %i.ay, align 8, !tbaa !270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !138, !alias.scope !888 ; 2 uses
  %i.bq = sub i64 %i.bp, %i.bm
  %.not.i31 = icmp eq i64 %i.bp, %i.bm
  br i1 %.not.i31, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41, label %.lr.ph.i.i32

.lr.ph.i.i32:                                     ; preds = %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit, %bb.p
  %.0710.i.i33 = phi i64 [ %i.bt, %bb.p ], [ 0, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.0710.i.i33
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !87, !noalias !888
  %.not.i.i34 = icmp eq i8 %i.bs, 32
  br i1 %.not.i.i34, label %bb.p, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i35

bb.p:                                             ; preds = %.lr.ph.i.i32
  %i.bt = add nuw i64 %.0710.i.i33, 1             ; 2 uses
  %exitcond.not.i.i40 = icmp eq i64 %i.bt, %i.bq
  br i1 %exitcond.not.i.i40, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41, label %.lr.ph.i.i32, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i35: ; preds = %.lr.ph.i.i32
  %.not8.i36 = icmp eq i64 %.0710.i.i33, -1
  br i1 %.not8.i36, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i37

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i37: ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i35
  %.sink.v.i38 = tail call i64 @llvm.umin.i64(i64 %.0710.i.i33, i64 %2)
  %.sink.i39 = add i64 %.sink.v.i38, %i.bm        ; 2 uses
  store i64 %.sink.i39, ptr %i.ap, align 8, !tbaa !269, !alias.scope !888
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41

bb.q:                                             ; preds = %bb.m
  %i.bu = add nuw i64 %i.bc, 1                    ; 2 uses
  store i64 %i.bu, ptr %i.ap, align 8, !tbaa !269
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41

bb.r:                                             ; preds = %bb.m
  %i.bv = load i64, ptr %i.ay, align 8, !tbaa !270 ; 3 uses
  %i.bw = load i64, ptr %i.az, align 8, !tbaa !233
  %i.bx = icmp ult i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.s, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit43

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bv
  store i8 %i.be, ptr %i.by, align 1, !tbaa !87
  %.pre.i42 = load i64, ptr %i.ay, align 8, !tbaa !270
  %.pre58 = load i64, ptr %i.ap, align 8, !tbaa !269
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit43

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit43: ; preds = %bb.r, %bb.s
  %i.bz = phi i64 [ %.pre58, %bb.s ], [ %i.bc, %bb.r ]
  %i.ca = phi i64 [ %.pre.i42, %bb.s ], [ %i.bv, %bb.r ]
  %i.cb = add i64 %i.bz, 1                        ; 2 uses
  store i64 %i.cb, ptr %i.ap, align 8, !tbaa !269
  %i.cc = add i64 %i.ca, 1
  store i64 %i.cc, ptr %i.ay, align 8, !tbaa !270
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41: ; preds = %bb.p, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i37, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i35, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit43, %bb.q
  %i.cd = phi i64 [ %i.bu, %bb.q ], [ %.sink.i39, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i37 ], [ %i.bm, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i35 ], [ %i.bm, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit ], [ %i.cb, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit43 ], [ %i.bm, %bb.p ] ; 2 uses
  %i.ce = phi ptr [ %i.ba, %bb.q ], [ %i.bj, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i37 ], [ %i.bj, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i35 ], [ %i.bj, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit ], [ %i.ba, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit43 ], [ %i.bj, %bb.p ]
  %i.cf = phi ptr [ %i.bb, %bb.q ], [ %i.bj, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i37 ], [ %i.bj, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i35 ], [ %i.bj, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit ], [ %i.bb, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit43 ], [ %i.bj, %bb.p ]
  %i.cg = icmp ult i64 %i.cd, %.0.i
  br i1 %i.cg, label %bb.m, label %._crit_edge, !llvm.loop !884

._crit_edge:                                      ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_filter_chompINS0_34FilterProcessorInplaceEndExtendingEEEvRT_NS0_12BlockChomp_eEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %3, i64 noundef %2)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !270 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !233
  %.not.i = icmp ugt i64 %i.ci, %i.ck
  br i1 %.not.i, label %_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit25, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.cl = load ptr, ptr %1, align 8, !tbaa !271
  br label %_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit25

_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit25: ; preds = %bb.i, %bb.t, %._crit_edge
  %.pn48 = phi ptr [ %spec.select, %bb.i ], [ null, %._crit_edge ], [ %i.cl, %bb.t ]
  %.pn46 = phi i64 [ %i.ah, %bb.i ], [ %i.ci, %._crit_edge ], [ %i.ci, %bb.t ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i64 } poison, ptr %.pn48, 0
  %.pn = insertvalue { ptr, i64 } %.fca.0.insert.i.pn, i64 %.pn46, 1
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE26filter_scalar_block_foldedENS_15basic_substringIKcEENS4_IcEEmNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, ptr %3, i64 %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %7 = alloca %"struct.c4::yml::FilterProcessorSrcDst", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  store ptr %1, ptr %7, align 8, !tbaa !101
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %3, ptr %i.a, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE20_filter_block_foldedINS0_21FilterProcessorSrcDstEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 noundef %5, i32 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  ret { ptr, i64 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE20_filter_block_foldedINS0_21FilterProcessorSrcDstEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92, !alias.scope !894 ; 9 uses
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !alias.scope !894 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %_ZNK2c415basic_substringIKcE5trimrES2_.exit.i, label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %bb.a, %.loopexit25.us.i.i.i
  %.01534.us.i.in.i.i = phi i64 [ %.01534.us.i.i.i, %.loopexit25.us.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.01534.us.i.i.i = add i64 %.01534.us.i.in.i.i, -1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.01534.us.i.i.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !87, !noalias !894
  switch i8 %i.h, label %.thread25.i.i [
    i8 32, label %.loopexit25.us.i.i.i
    i8 10, label %.loopexit25.us.i.i.i
    i8 13, label %.loopexit25.us.i.i.i
  ]

.thread25.i.i:                                    ; preds = %.preheader.us.i.i.i
  %.not.i28.i.i = icmp eq i64 %.01534.us.i.in.i.i, -1
  %i.i = select i1 %.not.i28.i.i, i64 %i.b, i64 %.01534.us.i.in.i.i
  br label %_ZNK2c415basic_substringIKcE5trimrES2_.exit.i

.loopexit25.us.i.i.i:                             ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %.not.us.i.i.i = icmp eq i64 %.01534.us.i.i.i, 0
  br i1 %.not.us.i.i.i, label %_ZNK2c415basic_substringIKcE5trimrES2_.exit.i, label %.preheader.us.i.i.i

_ZNK2c415basic_substringIKcE5trimrES2_.exit.i:    ; preds = %.loopexit25.us.i.i.i, %.thread25.i.i, %bb.a
  %.sroa.3.1.i.i = phi i64 [ 0, %bb.a ], [ %i.i, %.thread25.i.i ], [ 0, %.loopexit25.us.i.i.i ] ; 4 uses
  %i.j = icmp ne i64 %.sroa.3.1.i.i, 0
  %i.k = icmp ne i32 %3, 2
  %or.cond.not13.i = or i1 %i.k, %i.j
  %brmerge.i = or i1 %i.c, %or.cond.not13.i
  br i1 %brmerge.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_21FilterProcessorSrcDstEEEmRT_NS0_12BlockChomp_eE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK2c415basic_substringIKcE5trimrES2_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted.i = load i64, ptr %i.l, align 8, !tbaa !265, !alias.scope !894 ; 2 uses
  %i.m = icmp ult i64 %.promoted.i, %i.b
  br i1 %i.m, label %.lr.ph.i, label %bb.f

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %storemerge1516.i = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %storemerge.i, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %storemerge1516.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !87, !noalias !894
  %i.s = icmp eq i8 %i.r, 10
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.n, align 8, !tbaa !266, !alias.scope !894 ; 3 uses
  %i.u = load i64, ptr %i.o, align 8, !tbaa !272, !alias.scope !894
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !267, !alias.scope !894
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  store i8 10, ptr %i.x, align 1, !tbaa !87, !noalias !894
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i

_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i:  ; preds = %bb.d, %bb.c
  %i.y = add i64 %i.t, 1
  store i64 %i.y, ptr %i.n, align 8, !tbaa !266, !alias.scope !894
  br label %bb.e

bb.e:                                             ; preds = %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i, %bb.b
  %storemerge.i = add nuw i64 %storemerge1516.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %storemerge.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !33

._crit_edge.i:                                    ; preds = %bb.e
  store i64 %i.b, ptr %i.l, align 8, !tbaa !265, !alias.scope !894
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %.preheader.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !266, !alias.scope !894
  %.not11.i = icmp eq i64 %i.aa, 0
  br i1 %.not11.i, label %bb.g, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_21FilterProcessorSrcDstEEEmRT_NS0_12BlockChomp_eE.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !272, !alias.scope !894
  %.not.i27 = icmp eq i64 %i.ac, 0
  br i1 %.not.i27, label %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !267, !alias.scope !894
  store i8 10, ptr %i.ae, align 1, !tbaa !87, !noalias !894
  br label %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i

_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i:   ; preds = %bb.h, %bb.g
  store i64 1, ptr %i.z, align 8, !tbaa !266, !alias.scope !894
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_21FilterProcessorSrcDstEEEmRT_NS0_12BlockChomp_eE.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_21FilterProcessorSrcDstEEEmRT_NS0_12BlockChomp_eE.exit: ; preds = %_ZNK2c415basic_substringIKcE5trimrES2_.exit.i, %bb.f, %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i
  %.not = icmp eq i64 %.sroa.3.1.i.i, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_21FilterProcessorSrcDstEEEmRT_NS0_12BlockChomp_eE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !266 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !272
  %.not.i23 = icmp ugt i64 %i.ag, %i.ai
  br i1 %.not.i23, label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26, label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split

bb.j:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_21FilterProcessorSrcDstEEEmRT_NS0_12BlockChomp_eE.exit
  %i.aj = icmp ult i64 %.sroa.3.1.i.i, %i.b
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %.0811.i.i = phi i64 [ %i.an, %bb.k ], [ %.sroa.3.1.i.i, %bb.j ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0811.i.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !87, !noalias !895
  %i.am = icmp eq i8 %i.al, 10
  br i1 %i.am, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.an = add i64 %.0811.i.i, 1                   ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.an, %i.b
  br i1 %exitcond.not.i.i, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !6

_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i:  ; preds = %.lr.ph.i.i
  %.not.i28 = icmp eq i64 %.0811.i.i, -1
  br i1 %.not.i28, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit

_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i: ; preds = %bb.k, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i, %bb.j
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit: ; preds = %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i
  %.0.i = phi i64 [ %i.b, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i ], [ %.0811.i.i, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i ] ; 4 uses
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE37_filter_block_folded_newlines_leadingINS0_21FilterProcessorSrcDstEEEvRT_mm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2, i64 noundef %.0.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !265 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %.0.i
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.q
  %i.au = phi i64 [ %i.ap, %.lr.ph ], [ %i.bi, %bb.q ] ; 3 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !99
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.ax, label %bb.o [
    i8 10, label %bb.m
    i8 13, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_filter_block_folded_newlinesINS0_21FilterProcessorSrcDstEEEvRT_mm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2, i64 noundef %.0.i)
  %.pre39 = load i64, ptr %i.ao, align 8, !tbaa !265
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ay = add nuw i64 %i.au, 1                    ; 2 uses
  store i64 %i.ay, ptr %i.ao, align 8, !tbaa !265
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.az = load i64, ptr %i.ar, align 8, !tbaa !266 ; 3 uses
  %i.ba = load i64, ptr %i.as, align 8, !tbaa !272
  %i.bb = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.p, label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !267
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  store i8 %i.ax, ptr %i.bd, align 1, !tbaa !87
  %.pre = load i64, ptr %i.ar, align 8, !tbaa !266
  %.pre38 = load i64, ptr %i.ao, align 8, !tbaa !265
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit

_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit:    ; preds = %bb.o, %bb.p
  %i.be = phi i64 [ %i.au, %bb.o ], [ %.pre38, %bb.p ]
  %i.bf = phi i64 [ %i.az, %bb.o ], [ %.pre, %bb.p ]
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.ar, align 8, !tbaa !266
  %i.bh = add i64 %i.be, 1                        ; 2 uses
  store i64 %i.bh, ptr %i.ao, align 8, !tbaa !265
  br label %bb.q

bb.q:                                             ; preds = %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit, %bb.n, %bb.m
  %i.bi = phi i64 [ %i.bh, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit ], [ %i.ay, %bb.n ], [ %.pre39, %bb.m ] ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %.0.i
  br i1 %i.bj, label %bb.l, label %._crit_edge, !llvm.loop !893

._crit_edge:                                      ; preds = %bb.q, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_filter_chompINS0_21FilterProcessorSrcDstEEEvRT_NS0_12BlockChomp_eEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %3, i64 noundef %2)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !266 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !272
  %.not.i = icmp ugt i64 %i.bl, %i.bn
  br i1 %.not.i, label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26, label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split

_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split: ; preds = %._crit_edge, %bb.i
  %.pn31.ph = phi i64 [ %i.ag, %bb.i ], [ %i.bl, %._crit_edge ]
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !267
  br label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26

_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26: ; preds = %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split, %._crit_edge, %bb.i
  %.pn33 = phi ptr [ null, %bb.i ], [ null, %._crit_edge ], [ %i.bp, %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split ]
  %.pn31 = phi i64 [ %i.ag, %bb.i ], [ %i.bl, %._crit_edge ], [ %.pn31.ph, %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i64 } poison, ptr %.pn33, 0
  %.pn = insertvalue { ptr, i64 } %.fca.0.insert.i.pn, i64 %.pn31, 1
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE35filter_scalar_block_folded_in_placeENS_15basic_substringIcEEmmNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %6 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  store ptr %1, ptr %6, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %3, ptr %i.a, align 8, !tbaa !233
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE20_filter_block_foldedINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  ret { ptr, i64 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE20_filter_block_foldedINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !138, !alias.scope !901 ; 8 uses
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !alias.scope !901 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i, label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %bb.a, %.loopexit25.us.i.i.i
  %.01534.us.i.in.i.i = phi i64 [ %.01534.us.i.i.i, %.loopexit25.us.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.01534.us.i.i.i = add i64 %.01534.us.i.in.i.i, -1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.01534.us.i.i.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !87, !noalias !901
  switch i8 %i.h, label %.thread25.i.i [
    i8 32, label %.loopexit25.us.i.i.i
    i8 10, label %.loopexit25.us.i.i.i
    i8 13, label %.loopexit25.us.i.i.i
  ]

.thread25.i.i:                                    ; preds = %.preheader.us.i.i.i
  %.not.i28.i.i = icmp eq i64 %.01534.us.i.in.i.i, -1
  %i.i = select i1 %.not.i28.i.i, i64 %i.b, i64 %.01534.us.i.in.i.i
  br label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i

.loopexit25.us.i.i.i:                             ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %.not.us.i.i.i = icmp eq i64 %.01534.us.i.i.i, 0
  br i1 %.not.us.i.i.i, label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i, label %.preheader.us.i.i.i

_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i: ; preds = %.loopexit25.us.i.i.i, %.thread25.i.i, %bb.a
  %.sroa.3.1.i.i = phi i64 [ 0, %bb.a ], [ %i.i, %.thread25.i.i ], [ 0, %.loopexit25.us.i.i.i ] ; 4 uses
  %i.j = icmp ne i64 %.sroa.3.1.i.i, 0
  %i.k = icmp ne i32 %3, 2
  %or.cond.not15.i = or i1 %i.k, %i.j
  %brmerge.i = or i1 %i.c, %or.cond.not15.i
  br i1 %brmerge.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.promoted.i = load i64, ptr %i.l, align 8, !tbaa !269, !alias.scope !901 ; 2 uses
  %i.m = icmp ult i64 %.promoted.i, %i.b
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.p = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.aa, %bb.f ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !87, !noalias !901
  %i.s = icmp eq i8 %i.r, 10
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.n, align 8, !tbaa !270, !alias.scope !901 ; 3 uses
  %i.u = load i64, ptr %i.o, align 8, !tbaa !233, !alias.scope !901
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t
  store i8 10, ptr %i.w, align 1, !tbaa !87, !noalias !901
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i: ; preds = %bb.d, %bb.c
  %i.x = add nuw i64 %i.p, 1                      ; 2 uses
  store i64 %i.x, ptr %i.l, align 8, !tbaa !269, !alias.scope !901
  %i.y = add i64 %i.t, 1
  store i64 %i.y, ptr %i.n, align 8, !tbaa !270, !alias.scope !901
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.z = add nuw i64 %i.p, 1                      ; 2 uses
  store i64 %i.z, ptr %i.l, align 8, !tbaa !269, !alias.scope !901
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i
  %i.aa = phi i64 [ %i.z, %bb.e ], [ %i.x, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i ] ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.b
  br i1 %i.ab, label %bb.b, label %._crit_edge.i, !llvm.loop !34

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !270, !alias.scope !901
  %.not11.i = icmp eq i64 %i.ad, 0
  br i1 %.not11.i, label %bb.g, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !233, !alias.scope !901
  %.not.i27 = icmp eq i64 %i.af, 0
  br i1 %.not.i27, label %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 10, ptr %i.d, align 1, !tbaa !87, !noalias !901
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i

_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i: ; preds = %bb.h, %bb.g
  store i64 1, ptr %i.ac, align 8, !tbaa !270, !alias.scope !901
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit: ; preds = %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i, %._crit_edge.i, %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i
  %.not = icmp eq i64 %.sroa.3.1.i.i, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !270 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !233
  %.not.i23 = icmp ugt i64 %i.ah, %i.aj
  %spec.select = select i1 %.not.i23, ptr null, ptr %i.d
  br label %_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit26

bb.j:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit
  %i.ak = icmp ult i64 %.sroa.3.1.i.i, %i.b
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %.0811.i.i = phi i64 [ %i.ao, %bb.k ], [ %.sroa.3.1.i.i, %bb.j ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0811.i.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !87, !noalias !902
  %i.an = icmp eq i8 %i.am, 10
  br i1 %i.an, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ao = add i64 %.0811.i.i, 1                   ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ao, %i.b
  br i1 %exitcond.not.i.i, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !35

_ZNK2c415basic_substringIcE8first_ofEcm.exit.i:   ; preds = %.lr.ph.i.i
  %.not.i28 = icmp eq i64 %.0811.i.i, -1
  br i1 %.not.i28, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit

_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i: ; preds = %bb.k, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i, %bb.j
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit: ; preds = %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i
  %.0.i = phi i64 [ %i.b, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i ], [ %.0811.i.i, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i ] ; 4 uses
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE37_filter_block_folded_newlines_leadingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_mm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, i64 noundef %.0.i)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !269 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %.0.i
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.q
  %i.au = phi i64 [ %i.aq, %.lr.ph ], [ %i.bh, %bb.q ] ; 3 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !139   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.ax, label %bb.o [
    i8 10, label %bb.m
    i8 13, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_filter_block_folded_newlinesINS0_34FilterProcessorInplaceEndExtendingEEEvRT_mm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, i64 noundef %.0.i)
  %.pre38 = load i64, ptr %i.ap, align 8, !tbaa !269
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ay = add nuw i64 %i.au, 1                    ; 2 uses
  store i64 %i.ay, ptr %i.ap, align 8, !tbaa !269
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.az = load i64, ptr %i.as, align 8, !tbaa !270 ; 3 uses
  %i.ba = load i64, ptr %i.at, align 8, !tbaa !233
  %i.bb = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.p, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.az
  store i8 %i.ax, ptr %i.bc, align 1, !tbaa !87
  %.pre.i = load i64, ptr %i.as, align 8, !tbaa !270
  %.pre = load i64, ptr %i.ap, align 8, !tbaa !269
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit: ; preds = %bb.o, %bb.p
  %i.bd = phi i64 [ %.pre, %bb.p ], [ %i.au, %bb.o ]
  %i.be = phi i64 [ %.pre.i, %bb.p ], [ %i.az, %bb.o ]
  %i.bf = add i64 %i.bd, 1                        ; 2 uses
  store i64 %i.bf, ptr %i.ap, align 8, !tbaa !269
  %i.bg = add i64 %i.be, 1
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !270
  br label %bb.q

bb.q:                                             ; preds = %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit, %bb.n, %bb.m
  %i.bh = phi i64 [ %i.bf, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit ], [ %i.ay, %bb.n ], [ %.pre38, %bb.m ] ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %.0.i
  br i1 %i.bi, label %bb.l, label %._crit_edge, !llvm.loop !900

._crit_edge:                                      ; preds = %bb.q, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_filter_chompINS0_34FilterProcessorInplaceEndExtendingEEEvRT_NS0_12BlockChomp_eEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %3, i64 noundef %2)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !270 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !233
  %.not.i = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i, label %_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit26, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.bn = load ptr, ptr %1, align 8, !tbaa !271
  br label %_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit26

_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit26: ; preds = %bb.i, %bb.r, %._crit_edge
  %.pn33 = phi ptr [ %spec.select, %bb.i ], [ null, %._crit_edge ], [ %i.bn, %bb.r ]
  %.pn31 = phi i64 [ %i.ah, %bb.i ], [ %i.bk, %._crit_edge ], [ %i.bk, %bb.r ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i64 } poison, ptr %.pn33, 0
  %.pn = insertvalue { ptr, i64 } %.fca.0.insert.i.pn, i64 %.pn31, 1
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !247
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !139
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !139
  %i.k = icmp eq ptr %i.h, %i.j
  %i.l = icmp ugt i64 %2, 2
  %or.cond = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !87
  %i.o = icmp eq i8 %i.n, 45
  br i1 %i.o, label %bb.d, label %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !87
  %i.r = icmp eq i8 %i.q, 45
  br i1 %i.r, label %bb.e, label %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i64 %2, 3
  br i1 %i.s, label %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !87
  %i.v = icmp eq i8 %i.u, 32
  br label %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit

_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.w = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.c ], [ %i.v, %bb.f ], [ true, %bb.e ]
  ret i1 %i.w
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE14_at_line_beginEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !139
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !139
  %i.h = icmp eq ptr %i.e, %i.g
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_is_doc_endENS_15basic_substringIKcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !247
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !139
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !139
  %i.k = icmp eq ptr %i.h, %i.j
  %i.l = icmp ugt i64 %2, 2
  %or.cond = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !87
  %i.o = icmp eq i8 %i.n, 46
  br i1 %i.o, label %bb.d, label %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !87
  %i.r = icmp eq i8 %i.q, 46
  br i1 %i.r, label %bb.e, label %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i64 %2, 3
  br i1 %i.s, label %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !87
  %i.v = icmp eq i8 %i.u, 32
  br label %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit

_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.w = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.c ], [ %i.v, %bb.f ], [ true, %bb.e ]
  ret i1 %i.w
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE23_scan_scalar_plain_blckEPNS3_13ScannedScalarEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 8 uses
  %.sroa.0135.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !101 ; 11 uses
  %.sroa.11139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.11139.0.copyload = load i64, ptr %.sroa.11139.0..sroa_idx, align 8, !tbaa !102 ; 8 uses
  %.not = icmp eq i64 %.sroa.11139.0.copyload, 0
  br i1 %.not, label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %.sroa.0135.0.copyload, align 1, !tbaa !87
  switch i8 %i.e, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread [
    i8 45, label %bb.c
    i8 58, label %bb.h
    i8 63, label %bb.h
    i8 91, label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67.thread
    i8 123, label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67.thread
    i8 38, label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67.thread
    i8 42, label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67.thread
    i8 33, label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67.thread
    i8 46, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %.sroa.11139.0.copyload, 1
  br i1 %i.f, label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67.thread, label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67

_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0135.0.copyload, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !87    ; 2 uses
  %i.i = icmp eq i8 %i.h, 32
  br i1 %i.i, label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67.thread, label %bb.d

bb.d:                                             ; preds = %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !247
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !139
  %i.o = icmp eq ptr %.sroa.0135.0.copyload, %i.n
  %i.p = icmp ugt i64 %.sroa.11139.0.copyload, 2
  %or.cond.i = and i1 %i.p, %i.o
  %i.q = icmp eq i8 %i.h, 45
  %or.cond = and i1 %or.cond.i, %i.q
  br i1 %or.cond, label %bb.f, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0135.0.copyload, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !87
  %i.t = icmp eq i8 %i.s, 45
  br i1 %i.t, label %bb.g, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.u = icmp eq i64 %.sroa.11139.0.copyload, 3
  br i1 %i.u, label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67.thread, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit: ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0135.0.copyload, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !87
  %i.x = icmp eq i8 %i.w, 32
  br i1 %i.x, label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67.thread, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread

bb.h:                                             ; preds = %bb.b, %bb.b
  %i.y = icmp eq i64 %.sroa.11139.0.copyload, 1
  br i1 %i.y, label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67.thread, label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit

_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit: ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0135.0.copyload, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !87
  %i.ab = icmp eq i8 %i.aa, 32
  br i1 %i.ab, label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67.thread, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread

bb.i:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !247
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !139
  %i.ah = icmp eq ptr %.sroa.0135.0.copyload, %i.ag
  %i.ai = icmp ugt i64 %.sroa.11139.0.copyload, 2
  %or.cond.i68 = and i1 %i.ai, %i.ah
  br i1 %or.cond.i68, label %bb.k, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0135.0.copyload, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !87
  %i.al = icmp eq i8 %i.ak, 46
  br i1 %i.al, label %bb.l, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0135.0.copyload, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !87
  %i.ao = icmp eq i8 %i.an, 46
  br i1 %i.ao, label %bb.m, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ap = icmp eq i64 %.sroa.11139.0.copyload, 3
  br i1 %i.ap, label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67.thread, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_is_doc_endENS_15basic_substringIKcEE.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_is_doc_endENS_15basic_substringIKcEE.exit: ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0135.0.copyload, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !87
  %i.as = icmp eq i8 %i.ar, 32
  br i1 %i.as, label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67.thread, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread: ; preds = %bb.k, %bb.l, %bb.i, %bb.j, %bb.f, %bb.d, %bb.e, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_is_doc_endENS_15basic_substringIKcEE.exit, %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit, %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.au = load i64, ptr %i.at, align 8, !tbaa !210 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !211
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.ak, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread
  %i.az = phi ptr [ %i.b, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread ], [ %i.fh, %bb.ak ]
  %.sroa.0135.0 = phi ptr [ %.sroa.0135.0.copyload, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread ], [ %.sroa.0135.0.copyload138, %bb.ak ] ; 3 uses
  %.sroa.11139.0 = phi i64 [ %.sroa.11139.0.copyload, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread ], [ %.sroa.11139.0.copyload141, %bb.ak ] ; 10 uses
  %.055 = phi i8 [ 0, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread ], [ 1, %bb.ak ]
  %.not207 = icmp eq i64 %.sroa.11139.0, 0
  br i1 %.not207, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.v
  %.058206 = phi i64 [ %i.da, %bb.v ], [ 0, %bb.n ] ; 18 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0135.0, i64 %.058206 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !87
  switch i8 %i.bb, label %bb.v [
    i8 58, label %bb.o
    i8 35, label %bb.s
  ]

bb.o:                                             ; preds = %.lr.ph
  %i.bc = add i64 %.058206, 1                     ; 3 uses
  %i.bd = icmp eq i64 %i.bc, %.sroa.11139.0
  br i1 %i.bd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0135.0, i64 %i.bc
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !87
  %i.bg = icmp eq i8 %i.bf, 32
  br i1 %i.bg, label %bb.q, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.p
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.11139.0, i64 %i.bc)
  %i.bh = add i64 %umax, -1                       ; 2 uses
  %i.bi = add i64 %.058206, 1                     ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %.sroa.11139.0
  br i1 %i.bj, label %.lr.ph284, label %.critedge

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2488
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !206 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !210
  %i.bp = add i64 %i.bo, %.058206                 ; 2 uses
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !210
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 72 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !212
  %i.bs = add i64 %i.br, %.058206
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !212
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !139
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.058206
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !138
  %i.bx = sub i64 %i.bw, %.058206
  store ptr %i.bu, ptr %i.bm, align 8, !tbaa !101
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !102
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !211
  %i.ca = icmp eq i64 %i.bz, %i.aw
  br i1 %i.ca, label %.thread158, label %bb.r, !prof !88

bb.r:                                             ; preds = %bb.q
  tail call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg)
  br label %bb.v

.preheader:                                       ; preds = %.lr.ph284
  %i.cb = add i64 %i.cd, 1                        ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %.sroa.11139.0
  br i1 %i.cc, label %.lr.ph284, label %.critedge, !llvm.loop !903

.lr.ph284:                                        ; preds = %.preheader.preheader, %.preheader
  %i.cd = phi i64 [ %i.cb, %.preheader ], [ %i.bi, %.preheader.preheader ] ; 3 uses
  %.061283 = phi i64 [ %i.cd, %.preheader ], [ %.058206, %.preheader.preheader ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0135.0, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !87
  %i.cg = icmp eq i8 %i.cf, 58
  br i1 %i.cg, label %.preheader, label %..critedge_crit_edge, !llvm.loop !903

..critedge_crit_edge:                             ; preds = %.lr.ph284
  br label %.critedge, !llvm.loop !903

.critedge:                                        ; preds = %.preheader, %..critedge_crit_edge, %.preheader.preheader
  %.061.lcssa = phi i64 [ %i.bh, %.preheader.preheader ], [ %.061283, %..critedge_crit_edge ], [ %i.bh, %.preheader ] ; 2 uses
  %i.ch = icmp ugt i64 %.061.lcssa, %.058206
  %i.ci = add i64 %.061.lcssa, -1
  %i.cj = select i1 %i.ch, i64 %i.ci, i64 %.058206
  br label %bb.v

bb.s:                                             ; preds = %.lr.ph
  %.not66 = icmp eq i64 %.058206, 0
  br i1 %.not66, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = getelementptr i8, ptr %i.ba, i64 -1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !87
  switch i8 %i.cl, label %bb.v [
    i8 32, label %bb.u
    i8 9, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t, %bb.s
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2488
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !206 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 56 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !210
  %i.cr = add i64 %i.cq, %.058206                 ; 2 uses
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !210
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 72 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !212
  %i.cu = add i64 %i.ct, %.058206
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !212
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !139
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.058206
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !138
  %i.cz = sub i64 %i.cy, %.058206
  store ptr %i.cw, ptr %i.co, align 8, !tbaa !101
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !102
  br label %.thread158

bb.v:                                             ; preds = %bb.t, %bb.r, %.critedge, %.lr.ph
  %.260.ph = phi i64 [ %.058206, %bb.t ], [ %i.cj, %.critedge ], [ %.058206, %bb.r ], [ %.058206, %.lr.ph ]
  %i.da = add i64 %.260.ph, 1                     ; 2 uses
  %i.db = icmp ult i64 %i.da, %.sroa.11139.0
  br i1 %i.db, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !904

._crit_edge.loopexit:                             ; preds = %bb.v
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !169
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %i.dc = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.az, %bb.n ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2488
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !206 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 56 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !210
  %i.dh = add i64 %i.dg, %.sroa.11139.0           ; 2 uses
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !210
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 72 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !212
  %i.dk = add i64 %i.dj, %.sroa.11139.0
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !212
  %i.dl = load ptr, ptr %i.de, align 8, !tbaa !139
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.11139.0
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !138
  %i.dp = sub i64 %i.do, %.sroa.11139.0
  store ptr %i.dm, ptr %i.de, align 8, !tbaa !101
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !102
  %i.dq = tail call { ptr, i64 } @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_peek_next_lineEm(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 noundef %i.dh) ; 2 uses
  %i.dr = extractvalue { ptr, i64 } %i.dq, 0      ; 12 uses
  %i.ds = extractvalue { ptr, i64 } %i.dq, 1      ; 3 uses
  %i.dt = icmp eq i64 %i.ds, 0
  %i.du = icmp eq ptr %i.dr, null
  %i.dv = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %i.dv, label %.thread169, label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge, %.loopexit25.us.i.i
  %.01534.us.i.in.i = phi i64 [ %.01534.us.i.i, %.loopexit25.us.i.i ], [ %i.ds, %._crit_edge ] ; 3 uses
  %.01534.us.i.i = add i64 %.01534.us.i.in.i, -1  ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.01534.us.i.i
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !87
  switch i8 %i.dx, label %.lr.ph.i.preheader [
    i8 10, label %.loopexit25.us.i.i
    i8 13, label %.loopexit25.us.i.i
  ]

.loopexit25.us.i.i:                               ; preds = %.preheader.us.i.i, %.preheader.us.i.i
  %.not.us.i.i = icmp eq i64 %.01534.us.i.i, 0
  br i1 %.not.us.i.i, label %.thread169, label %.preheader.us.i.i

.lr.ph.i.preheader:                               ; preds = %.preheader.us.i.i
  %.not.i28.i = icmp eq i64 %.01534.us.i.in.i, -1
  %i.dy = select i1 %.not.i28.i, i64 %i.ds, i64 %.01534.us.i.in.i ; 5 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.w
  %.0710.i = phi i64 [ %i.eb, %bb.w ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.0710.i
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !87
  %.not.i71 = icmp eq i8 %i.ea, 32
  br i1 %.not.i71, label %bb.w, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit

bb.w:                                             ; preds = %.lr.ph.i
  %i.eb = add nuw i64 %.0710.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eb, %i.dy
  br i1 %exitcond.not.i, label %.thread169, label %.lr.ph.i, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit: ; preds = %.lr.ph.i
  %i.ec = icmp ult i64 %.0710.i, %2
  br i1 %i.ec, label %.thread158.loopexit211, label %bb.x

bb.x:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit
  %i.ed = icmp eq i64 %.0710.i, 0
  br i1 %i.ed, label %bb.y, label %.thread169

bb.y:                                             ; preds = %bb.x
  %i.ee = load i8, ptr %i.dr, align 1, !tbaa !87
  switch i8 %i.ee, label %.thread169 [
    i8 45, label %.preheader.us.i.i73
    i8 46, label %.preheader.us.i.i87
  ]

.preheader.us.i.i73:                              ; preds = %bb.y, %.loopexit25.us.i.i83
  %.01534.us.i.in.i74 = phi i64 [ %.01534.us.i.i75, %.loopexit25.us.i.i83 ], [ %i.dy, %bb.y ] ; 3 uses
  %.01534.us.i.i75 = add i64 %.01534.us.i.in.i74, -1 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.01534.us.i.i75
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !87
  switch i8 %i.eg, label %_ZNK2c415basic_substringIKcE5trimrES2_.exit85 [
    i8 10, label %.loopexit25.us.i.i83
    i8 13, label %.loopexit25.us.i.i83
  ]

_ZNK2c415basic_substringIKcE5trimrES2_.exit85:    ; preds = %.preheader.us.i.i73
  %.not.i28.i79 = icmp eq i64 %.01534.us.i.in.i74, -1
  %i.eh = select i1 %.not.i28.i79, i64 %i.dy, i64 %.01534.us.i.in.i74 ; 2 uses
  %i.ei = icmp ugt i64 %i.eh, 2
  br i1 %i.ei, label %bb.z, label %.thread169

.loopexit25.us.i.i83:                             ; preds = %.preheader.us.i.i73, %.preheader.us.i.i73
  %.not.us.i.i84 = icmp eq i64 %.01534.us.i.i75, 0
  br i1 %.not.us.i.i84, label %.thread169, label %.preheader.us.i.i73

bb.z:                                             ; preds = %_ZNK2c415basic_substringIKcE5trimrES2_.exit85
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !87
  %i.el = icmp eq i8 %i.ek, 45
  br i1 %i.el, label %bb.aa, label %.thread169

bb.aa:                                            ; preds = %bb.z
  %i.em = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.en = load i8, ptr %i.em, align 1, !tbaa !87
  %i.eo = icmp eq i8 %i.en, 45
  br i1 %i.eo, label %bb.ab, label %.thread169

bb.ab:                                            ; preds = %bb.aa
  %i.ep = icmp eq i64 %i.eh, 3
  br i1 %i.ep, label %.thread158.loopexit211, label %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit

_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit: ; preds = %bb.ab
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dr, i64 3
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !87
  %i.es = icmp eq i8 %i.er, 32
  br i1 %i.es, label %.thread158.loopexit211, label %.thread169

.preheader.us.i.i87:                              ; preds = %bb.y, %.loopexit25.us.i.i97
  %.01534.us.i.in.i88 = phi i64 [ %.01534.us.i.i89, %.loopexit25.us.i.i97 ], [ %i.dy, %bb.y ] ; 3 uses
  %.01534.us.i.i89 = add i64 %.01534.us.i.in.i88, -1 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.01534.us.i.i89
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !87
  switch i8 %i.eu, label %_ZNK2c415basic_substringIKcE5trimrES2_.exit99 [
    i8 10, label %.loopexit25.us.i.i97
    i8 13, label %.loopexit25.us.i.i97
  ]

_ZNK2c415basic_substringIKcE5trimrES2_.exit99:    ; preds = %.preheader.us.i.i87
  %.not.i28.i93 = icmp eq i64 %.01534.us.i.in.i88, -1
  %i.ev = select i1 %.not.i28.i93, i64 %i.dy, i64 %.01534.us.i.in.i88 ; 2 uses
  %i.ew = icmp ugt i64 %i.ev, 2
  br i1 %i.ew, label %bb.ac, label %.thread169

.loopexit25.us.i.i97:                             ; preds = %.preheader.us.i.i87, %.preheader.us.i.i87
  %.not.us.i.i98 = icmp eq i64 %.01534.us.i.i89, 0
  br i1 %.not.us.i.i98, label %.thread169, label %.preheader.us.i.i87

bb.ac:                                            ; preds = %_ZNK2c415basic_substringIKcE5trimrES2_.exit99
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !87
  %i.ez = icmp eq i8 %i.ey, 46
  br i1 %i.ez, label %bb.ad, label %.thread169

bb.ad:                                            ; preds = %bb.ac
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !87
  %i.fc = icmp eq i8 %i.fb, 46
  br i1 %i.fc, label %bb.ae, label %.thread169

bb.ae:                                            ; preds = %bb.ad
  %i.fd = icmp eq i64 %i.ev, 3
  br i1 %i.fd, label %.thread158.loopexit211, label %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit

_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit: ; preds = %bb.ae
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dr, i64 3
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !87
  %i.fg = icmp eq i8 %i.ff, 32
  br i1 %i.fg, label %.thread158.loopexit211, label %.thread169

.thread169:                                       ; preds = %.loopexit25.us.i.i, %bb.w, %.loopexit25.us.i.i97, %.loopexit25.us.i.i83, %_ZNK2c415basic_substringIKcE5trimrES2_.exit99, %bb.ac, %bb.ad, %_ZNK2c415basic_substringIKcE5trimrES2_.exit85, %bb.z, %bb.aa, %._crit_edge, %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit, %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit, %bb.y, %bb.x
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !169 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 2488
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !206 ; 12 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 56 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !210 ; 2 uses
  %i.fm = load i64, ptr %i.ax, align 8, !tbaa !219 ; 8 uses
  %.not189 = icmp ult i64 %i.fl, %i.fm
  br i1 %.not189, label %bb.af, label %.thread158.loopexit211

bb.af:                                            ; preds = %.thread169
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 32 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !225
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 48 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !226
  %i.fr = sub i64 %i.fo, %i.fq
  %i.fs = add i64 %i.fr, %i.fl                    ; 7 uses
  store i64 %i.fs, ptr %i.fk, align 8, !tbaa !210
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 64 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !211
  %i.fv = add i64 %i.fu, 1
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !211
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fj, i64 72
  store i64 1, ptr %i.fw, align 8, !tbaa !212
  %i.fx = icmp ult i64 %i.fs, %i.fm
  %.sroa.03.0.copyload.i = load ptr, ptr %i.ay, align 8, !tbaa !101 ; 4 uses
  br i1 %i.fx, label %.lr.ph.i.i, label %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, !prof !88

.lr.ph.i.i:                                       ; preds = %bb.af, %bb.ag
  %.046.i.i = phi i64 [ %i.ga, %bb.ag ], [ %i.fs, %bb.af ] ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %.046.i.i
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.fz, label %bb.ag [
    i8 10, label %bb.ah
    i8 13, label %bb.ah
  ]

bb.ag:                                            ; preds = %.lr.ph.i.i
  %i.ga = add i64 %.046.i.i, 1                    ; 2 uses
  %exitcond.not.i.i100 = icmp eq i64 %i.ga, %i.fm
  br i1 %exitcond.not.i.i100, label %.thread.i, label %.lr.ph.i.i, !llvm.loop !22

bb.ah:                                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.gb = icmp eq i8 %i.fz, 13
  %i.gc = zext i1 %i.gb to i64
  %spec.select.i.i = add nuw i64 %.046.i.i, %i.gc ; 4 uses
  %i.gd = icmp ult i64 %spec.select.i.i, %i.fm
  br i1 %i.gd, label %bb.ai, label %.thread.i

bb.ai:                                            ; preds = %bb.ah
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %spec.select.i.i
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !87
  %i.gg = icmp eq i8 %i.gf, 10
  %i.gh = zext i1 %i.gg to i64
  %spec.select22.i.i = add nuw i64 %spec.select.i.i, %i.gh
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ag, %bb.ai, %bb.ah
  %.pn.i9.i = phi i64 [ %.046.i.i, %bb.ah ], [ %.046.i.i, %bb.ai ], [ %i.fm, %bb.ag ] ; 2 uses
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.ah ], [ %spec.select22.i.i, %bb.ai ], [ %i.fm, %bb.ag ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.fs ; 3 uses
  %i.gj = sub i64 %.pn.i9.i, %i.fs                ; 3 uses
  store ptr %i.gi, ptr %i.fj, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i64 %i.gj, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !102
  %.not13.i.i.i.i = icmp eq i64 %.pn.i9.i, %i.fs
  br i1 %.not13.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i, %bb.aj
  %.0710.i.i.i.i = phi i64 [ %i.gm, %bb.aj ], [ 0, %.thread.i ] ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.0710.i.i.i.i
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.gl, 32
  br i1 %.not.i.i.i.i, label %bb.aj, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.gm = add nuw i64 %.0710.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.gm, %i.gj
  br i1 %exitcond.not.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i: ; preds = %bb.aj, %.lr.ph.i.i.i.i, %.thread.i
  %i.gn = phi i64 [ -1, %.thread.i ], [ -1, %bb.aj ], [ %.0710.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i.i.i = icmp eq i64 %.2.i.i, -1
  %i.go = select i1 %.not.i.i.i, i64 %i.fm, i64 %.2.i.i
  %i.gp = sub i64 %i.go, %i.fs
  br label %bb.ak

_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i: ; preds = %bb.af
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.fm ; 2 uses
  store ptr %i.gq, ptr %i.fj, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !102
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i
  %.sink24.i = phi i64 [ -1, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.gn, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sroa.0135.0.copyload138 = phi ptr [ %i.gq, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.gi, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 3 uses
  %.sink21.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.gp, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sroa.11139.0.copyload141 = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.gj, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store i64 %.sink24.i, ptr %i.gr, align 8, !tbaa !220
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  store ptr %.sroa.0135.0.copyload138, ptr %i.gs, align 8, !tbaa !101
  store i64 %.sink21.i, ptr %i.fn, align 8, !tbaa !102
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  store ptr %.sroa.0135.0.copyload138, ptr %i.gt, align 8, !tbaa !101
  store i64 %.sroa.11139.0.copyload141, ptr %i.fp, align 8, !tbaa !102
  br label %bb.n

.thread158.loopexit211:                           ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit, %.thread169, %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit, %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit, %bb.ab, %bb.ae
  %.pre228 = load ptr, ptr %i.a, align 8, !tbaa !169
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre228, i64 2488
  %.pre229 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !206
  %.phi.trans.insert230 = getelementptr inbounds nuw i8, ptr %.pre229, i64 56
  %.pre231 = load i64, ptr %.phi.trans.insert230, align 8, !tbaa !210
  br label %.thread158

.thread158:                                       ; preds = %bb.q, %.thread158.loopexit211, %bb.u
  %i.gu = phi i64 [ %.pre231, %.thread158.loopexit211 ], [ %i.cr, %bb.u ], [ %i.bp, %bb.q ] ; 2 uses
  %.not.i = icmp eq i64 %i.gu, -1
  %i.gv = load i64, ptr %i.ax, align 8
  %i.gw = select i1 %.not.i, i64 %i.gv, i64 %i.gu
  %i.gx = load ptr, ptr %i.ay, align 8, !tbaa !139 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.au ; 2 uses
  %i.gz = sub i64 %i.gw, %i.au                    ; 3 uses
  %i.ha = icmp eq i64 %i.gz, 0
  %i.hb = icmp eq ptr %i.gx, null
  %i.hc = select i1 %i.ha, i1 true, i1 %i.hb
  br i1 %i.hc, label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit, label %.preheader.us.i.i102

.preheader.us.i.i102:                             ; preds = %.thread158, %.loopexit25.us.i.i113
  %.01534.us.i.in.i103 = phi i64 [ %.01534.us.i.i104, %.loopexit25.us.i.i113 ], [ %i.gz, %.thread158 ] ; 3 uses
  %.01534.us.i.i104 = add i64 %.01534.us.i.in.i103, -1 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.01534.us.i.i104
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !87
  switch i8 %i.he, label %.thread25.i107 [
    i8 32, label %.loopexit25.us.i.i113
    i8 10, label %.loopexit25.us.i.i113
    i8 13, label %.loopexit25.us.i.i113
    i8 9, label %.loopexit25.us.i.i113
  ]

.thread25.i107:                                   ; preds = %.preheader.us.i.i102
  %.not.i28.i108 = icmp eq i64 %.01534.us.i.in.i103, -1
  %i.hf = select i1 %.not.i28.i108, i64 %i.gz, i64 %.01534.us.i.in.i103
  br label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit

.loopexit25.us.i.i113:                            ; preds = %.preheader.us.i.i102, %.preheader.us.i.i102, %.preheader.us.i.i102, %.preheader.us.i.i102
  %.not.us.i.i114 = icmp eq i64 %.01534.us.i.i104, 0
  br i1 %.not.us.i.i114, label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit, label %.preheader.us.i.i102

_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit: ; preds = %.loopexit25.us.i.i113, %.thread158, %.thread25.i107
  %.sroa.3.1.i110 = phi i64 [ 0, %.thread158 ], [ %i.hf, %.thread25.i107 ], [ 0, %.loopexit25.us.i.i113 ]
  store ptr %i.gy, ptr %1, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.3.1.i110, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !102
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %.055, ptr %i.hg, align 8, !tbaa !231
  br label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67.thread

_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67.thread: ; preds = %bb.m, %bb.h, %bb.g, %bb.c, %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_is_doc_endENS_15basic_substringIKcEE.exit, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit, %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67, %bb.a
  %.1 = phi i1 [ false, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_is_doc_endENS_15basic_substringIKcEE.exit ], [ false, %bb.a ], [ false, %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67 ], [ false, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit ], [ false, %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ], [ true, %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.c ], [ false, %bb.m ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_line_progressedEm(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 noundef %1) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !210
  %i.g = add i64 %i.f, %1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !210
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !212
  %i.j = add i64 %i.i, %1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !212
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !139
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %1
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !138
  %i.o = sub i64 %i.n, %1
  store ptr %i.l, ptr %i.d, align 8, !tbaa !101
  store i64 %i.o, ptr %i.m, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, ptr noalias noundef nonnull align 1 dereferenceable(12) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %4 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %5 = alloca %class.anon.14, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  store ptr %i.a, ptr %4, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  store ptr %4, ptr %5, align 8, !tbaa !180
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA12_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(12) %3)
  %i.c = load i64, ptr %i.b, align 8, !tbaa !178  ; 3 uses
  %i.d = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !181
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZN2c43yml6detail13_SubstrWriter6appendEc.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c
  store i8 10, ptr %i.g, align 1, !tbaa !87
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !178
  br label %_ZN2c43yml6detail13_SubstrWriter6appendEc.exit

_ZN2c43yml6detail13_SubstrWriter6appendEc.exit:   ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.b, align 8, !tbaa !178
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.j = load i64, ptr %i.b, align 8, !tbaa !178
  %i.k = call i64 @llvm.umin.i64(i64 %i.j, i64 1024)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !169  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2520
  store ptr null, ptr %i.n, align 8, !tbaa !223
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 2480
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !224
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 2488
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !206
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 2456
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !193
  call void %i.p(ptr noundef nonnull %i.a, i64 noundef %i.k, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.s, ptr noundef %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_peek_next_lineEm(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !169
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2488
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !206
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !210
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %i.g, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !219  ; 2 uses
  %.not = icmp ult i64 %i.h, %i.j
  br i1 %.not, label %.preheader.i.i.preheader, label %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit.thread

.preheader.i.i.preheader:                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !139
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h ; 2 uses
  %i.n = sub nuw i64 %i.j, %i.h                   ; 3 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge.i.i
  %.01224.i.i = phi i64 [ %i.q, %._crit_edge.i.i ], [ 0, %.preheader.i.i.preheader ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.01224.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !87    ; 3 uses
  switch i8 %i.p, label %._crit_edge.i.i [
    i8 13, label %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit.i
    i8 10, label %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit.i
  ]

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.q = add nuw i64 %.01224.i.i, 1               ; 2 uses
  %exitcond27.not.i.i = icmp eq i64 %i.q, %i.n
  br i1 %exitcond27.not.i.i, label %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit.thread, label %.preheader.i.i, !llvm.loop !905

_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit.i: ; preds = %.preheader.i.i, %.preheader.i.i
  %i.r = icmp eq i64 %.01224.i.i, -1
  br i1 %i.r, label %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit.thread, label %_ZNK2c415basic_substringIcE8right_ofEm.exit.i

_ZNK2c415basic_substringIcE8right_ofEm.exit.i:    ; preds = %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit.i
  %i.s = add nuw i64 %.01224.i.i, 1               ; 3 uses
  %i.t = icmp eq i64 %i.n, %i.s
  br i1 %i.t, label %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit.thread, label %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit

_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit: ; preds = %_ZNK2c415basic_substringIcE8right_ofEm.exit.i
  %i.u = sub nuw i64 %i.n, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !87    ; 2 uses
  %i.x = icmp eq i8 %i.p, 10
  %i.y = icmp eq i8 %i.w, 13
  %or.cond.i.not29.i.not47 = and i1 %i.x, %i.y
  %i.z = icmp eq i8 %i.p, 13
  %i.aa = icmp eq i8 %i.w, 10
  %.not31.i.not50 = and i1 %i.z, %i.aa
  %narrow.not.i.not = or i1 %or.cond.i.not29.i.not47, %.not31.i.not50 ; 2 uses
  %i.ab = sext i1 %narrow.not.i.not to i64
  %.sroa.4.0.i = add i64 %i.u, %i.ab              ; 5 uses
  %.sroa.022.0.i.idx = zext i1 %narrow.not.i.not to i64
  %.sroa.022.0.i = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.022.0.i.idx ; 6 uses
  %i.ac = icmp eq i64 %.sroa.4.0.i, 0
  br i1 %i.ac, label %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit, %._crit_edge.i
  %.01224.i = phi i64 [ %i.af, %._crit_edge.i ], [ 0, %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.022.0.i, i64 %.01224.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !87  ; 3 uses
  switch i8 %i.ae, label %._crit_edge.i [
    i8 13, label %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit
    i8 10, label %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit
  ]

._crit_edge.i:                                    ; preds = %.preheader.i
  %i.af = add nuw i64 %.01224.i, 1                ; 2 uses
  %exitcond27.not.i = icmp eq i64 %i.af, %.sroa.4.0.i
  br i1 %exitcond27.not.i, label %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit.thread, label %.preheader.i, !llvm.loop !905

_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit: ; preds = %.preheader.i, %.preheader.i
  %i.ag = icmp eq i8 %i.ae, 13
  %.not17 = icmp eq i64 %.01224.i, -1
  br i1 %.not17, label %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit
  %i.ah = add nuw i64 %.01224.i, 1                ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %.sroa.4.0.i
  br i1 %i.ai, label %bb.e, label %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.022.0.i, i64 %i.ah
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !87  ; 2 uses
  %i.al = icmp eq i8 %i.ae, 10
  %i.am = icmp eq i8 %i.ak, 13
  %or.cond.i = and i1 %i.al, %i.am
  %i.an = icmp eq i8 %i.ak, 10
  %i.ao = and i1 %i.ag, %i.an
  %narrow = or i1 %or.cond.i, %i.ao
  %i.ap = zext i1 %narrow to i64
  %i.aq = add nuw i64 %.01224.i, %i.ap
  %.pre = add nuw i64 %i.aq, 1
  br label %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit.thread

_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit.thread: ; preds = %._crit_edge.i.i, %._crit_edge.i, %bb.e, %bb.d, %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit, %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit.i, %_ZNK2c415basic_substringIcE8right_ofEm.exit.i, %bb.c, %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit
  %.sroa.3.0 = phi i64 [ %.pre, %bb.e ], [ 0, %bb.c ], [ 0, %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit ], [ 0, %_ZNK2c415basic_substringIcE8right_ofEm.exit.i ], [ 0, %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit.i ], [ %.sroa.4.0.i, %._crit_edge.i ], [ %.sroa.4.0.i, %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit ], [ %i.ah, %bb.d ], [ 0, %._crit_edge.i.i ]
  %.sroa.035.0 = phi ptr [ %.sroa.022.0.i, %bb.e ], [ null, %bb.c ], [ null, %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit ], [ null, %_ZNK2c415basic_substringIcE8right_ofEm.exit.i ], [ null, %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit.i ], [ %.sroa.022.0.i, %._crit_edge.i ], [ %.sroa.022.0.i, %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit ], [ %.sroa.022.0.i, %bb.d ], [ null, %._crit_edge.i.i ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.035.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE27_scan_scalar_plain_seq_flowEPNS3_13ScannedScalarE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %2 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %3 = alloca %class.anon.15, align 8             ; 5 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !169
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2488
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206  ; 2 uses
  %.sroa.051.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !101 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !102 ; 3 uses
  %.not = icmp eq i64 %.sroa.8.0.copyload, 0
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE33_is_valid_start_scalar_plain_flowENS_15basic_substringIKcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %.sroa.051.0.copyload, i64 %.sroa.8.0.copyload)
  br i1 %i.g, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !169  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2488
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !206
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !210  ; 4 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit, %bb.c
  %i.p = phi ptr [ %i.h, %bb.c ], [ %i.do, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit ]
  %.sroa.051.0 = phi ptr [ %.sroa.051.0.copyload, %bb.c ], [ %.sroa.051.0.copyload54, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit ] ; 2 uses
  %.sroa.8.0 = phi i64 [ %.sroa.8.0.copyload, %bb.c ], [ %.sroa.8.0.copyload56, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit ] ; 8 uses
  %.039 = phi i8 [ 0, %bb.c ], [ 1, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit ]
  %.not93 = icmp eq i64 %.sroa.8.0, 0
  br i1 %.not93, label %.thread71, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.q
  %.03592 = phi i64 [ %i.dm, %bb.q ], [ 0, %bb.d ] ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.051.0, i64 %.03592 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !87    ; 2 uses
  store i8 %i.r, ptr %i.b, align 1, !tbaa !87
  switch i8 %i.r, label %.thread66 [
    i8 44, label %bb.e
    i8 93, label %bb.f
    i8 35, label %bb.g
    i8 58, label %bb.i
    i8 91, label %bb.n
    i8 123, label %bb.n
    i8 125, label %bb.n
  ]

bb.e:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !169
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2488
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !206  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !210
  %i.x = add i64 %i.w, %.03592                    ; 2 uses
  store i64 %i.x, ptr %i.v, align 8, !tbaa !210
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 72 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !212
  %i.aa = add i64 %i.z, %.03592
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !212
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !139
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.03592
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !138
  %i.af = sub i64 %i.ae, %.03592
  store ptr %i.ac, ptr %i.u, align 8, !tbaa !101
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !102
  %i.ag = add i64 %i.x, %.03592
  %i.ah = icmp ugt i64 %i.ag, %i.l
  %. = select i1 %i.ah, i32 8, i32 1
  br label %.thread

bb.f:                                             ; preds = %.lr.ph
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !169
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2488
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !206 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !210
  %i.an = add i64 %i.am, %.03592
  store i64 %i.an, ptr %i.al, align 8, !tbaa !210
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 72 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !212
  %i.aq = add i64 %i.ap, %.03592
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !212
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !139
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.03592
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !138
  %i.av = sub i64 %i.au, %.03592
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !101
  store i64 %i.av, ptr %i.at, align 8, !tbaa !102
  br label %.thread

bb.g:                                             ; preds = %.lr.ph
  %.not46 = icmp eq i64 %.03592, 0
  br i1 %.not46, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr i8, ptr %i.q, i64 -1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !87
  %i.ay = icmp eq i8 %i.ax, 32
  br i1 %i.ay, label %.split40, label %.thread66

.split40:                                         ; preds = %bb.h
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !169
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2488
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !206 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !210
  %i.be = add i64 %i.bd, %.03592
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !210
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 72 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !212
  %i.bh = add i64 %i.bg, %.03592
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !212
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !139
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.03592
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !138
  %i.bm = sub i64 %i.bl, %.03592
  store ptr %i.bj, ptr %i.bb, align 8, !tbaa !101
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !102
  br label %.thread

bb.i:                                             ; preds = %.lr.ph
  %i.bn = add nuw i64 %.03592, 1                  ; 4 uses
  %i.bo = icmp ugt i64 %.sroa.8.0, %i.bn
  br i1 %i.bo, label %bb.j, label %4

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.051.0, i64 %i.bn
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.bq, label %bb.m [
    i8 44, label %bb.k
    i8 32, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !169
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2488
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !206 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !210
  %i.bw = add i64 %i.bv, %.03592                  ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, %i.l
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !210
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 72 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !212
  %i.ca = add i64 %i.bz, %.03592
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !212
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !139
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.03592
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !138
  %i.cf = sub i64 %i.ce, %.03592
  store ptr %i.cc, ptr %i.bt, align 8, !tbaa !101
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !102
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.136 = phi i64 [ %.03592, %bb.l ], [ %.03592, %bb.k ], [ %i.bn, %bb.j ] ; 2 uses
  %cond = phi i1 [ false, %bb.l ], [ false, %bb.k ], [ true, %bb.j ]
  %.032 = phi i32 [ 8, %bb.l ], [ 1, %bb.k ], [ 0, %bb.j ]
  switch i8 %i.bq, label %.thread66 [
    i8 44, label %bb.p
    i8 32, label %bb.p
  ]

4:                                                ; preds = %bb.i
  %5 = icmp eq i64 %.sroa.8.0, %i.bn
  br i1 %5, label %.thread, label %.thread66

bb.n:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !169
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2488
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !206 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !210
  %i.cl = add i64 %i.ck, %.03592
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !210
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 72 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !212
  %i.co = add i64 %i.cn, %.03592
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !212
  %i.cp = load ptr, ptr %i.ci, align 8, !tbaa !139
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.03592
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !138
  %i.ct = sub i64 %i.cs, %.03592
  store ptr %i.cq, ptr %i.ci, align 8, !tbaa !101
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !911
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58, !noalias !911
  store ptr %i.a, ptr %2, align 8, !tbaa !101, !noalias !911
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !102, !noalias !911
  store i64 0, ptr %i.m, align 8, !tbaa !178, !noalias !911
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58, !noalias !911
  store ptr %2, ptr %3, align 8, !tbaa !180, !noalias !911
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJcEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_JRS8_EEEvOT_S9_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nonnull @.str.167, i64 30, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %i.cu = load i64, ptr %i.m, align 8, !tbaa !178, !noalias !911 ; 3 uses
  %i.cv = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !181, !noalias !911
  %i.cw = icmp ult i64 %i.cu, %i.cv
  br i1 %i.cw, label %bb.o, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJcEEEvNS_15basic_substringIKcEEDprRKT_.exit

bb.o:                                             ; preds = %bb.n
  %i.cx = load ptr, ptr %2, align 8, !tbaa !182, !noalias !911
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cu
  store i8 10, ptr %i.cy, align 1, !tbaa !87
  %.pre.i.i = load i64, ptr %i.m, align 8, !tbaa !178, !noalias !911
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJcEEEvNS_15basic_substringIKcEEDprRKT_.exit

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJcEEEvNS_15basic_substringIKcEEDprRKT_.exit: ; preds = %bb.n, %bb.o
  %i.cz = phi i64 [ %.pre.i.i, %bb.o ], [ %i.cu, %bb.n ]
  %i.da = add i64 %i.cz, 1
  store i64 %i.da, ptr %i.m, align 8, !tbaa !178, !noalias !911
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJcEEEvNS_15basic_substringIKcEEDprRKT_EUlS8_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.db = load i64, ptr %i.m, align 8, !tbaa !178, !noalias !911
  %i.dc = call i64 @llvm.umin.i64(i64 %i.db, i64 1024)
  %i.dd = load ptr, ptr %i.c, align 8, !tbaa !169, !noalias !911 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 2520
  store ptr null, ptr %i.de, align 8, !tbaa !223
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 2480
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !224
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 2488
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !206
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 2456
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !193
  call void %i.dg(ptr noundef nonnull %i.a, i64 noundef %i.dc, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.dj, ptr noundef %i.dl), !inline_history !36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58, !noalias !911
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58, !noalias !911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !911
  br label %.thread66

.thread66:                                        ; preds = %bb.h, %4, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJcEEEvNS_15basic_substringIKcEEDprRKT_.exit, %.lr.ph, %bb.m
  %.237 = phi i64 [ %.03592, %.lr.ph ], [ %.03592, %bb.h ], [ %.136, %bb.m ], [ %.03592, %4 ], [ %.03592, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJcEEEvNS_15basic_substringIKcEEDprRKT_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %bb.q

.thread:                                          ; preds = %bb.g, %4, %bb.e, %bb.f, %.split40
  %.133.ph = phi i32 [ 8, %bb.f ], [ %., %bb.e ], [ 8, %.split40 ], [ 8, %bb.g ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %.loopexit

bb.p:                                             ; preds = %bb.m, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br i1 %cond, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %.thread66, %bb.p
  %.33870 = phi i64 [ %.237, %.thread66 ], [ %.136, %bb.p ]
  %i.dm = add i64 %.33870, 1                      ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %.sroa.8.0
  br i1 %i.dn, label %.lr.ph, label %.thread71.loopexit, !llvm.loop !908

.loopexit:                                        ; preds = %bb.p, %.thread
  %.234 = phi i32 [ %.133.ph, %.thread ], [ %.032, %bb.p ]
  %cond73 = icmp eq i32 %.234, 8
  br i1 %cond73, label %.loopexit..loopexit75_crit_edge, label %bb.w

.loopexit..loopexit75_crit_edge:                  ; preds = %.loopexit
  %.pre110 = load ptr, ptr %i.c, align 8, !tbaa !169
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre110, i64 2488
  %.pre111 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !206
  %.phi.trans.insert112 = getelementptr inbounds nuw i8, ptr %.pre111, i64 56
  %.pre113 = load i64, ptr %.phi.trans.insert112, align 8, !tbaa !210
  %.pre114 = load i64, ptr %i.n, align 8
  br label %.loopexit75

.thread71.loopexit:                               ; preds = %bb.q
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !169
  br label %.thread71

.thread71:                                        ; preds = %.thread71.loopexit, %bb.d
  %i.do = phi ptr [ %.pre, %.thread71.loopexit ], [ %i.p, %bb.d ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 2488
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !206 ; 13 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56 ; 3 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !210
  %i.dt = add i64 %i.ds, %.sroa.8.0               ; 4 uses
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !210
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 72 ; 3 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !212
  %i.dw = add i64 %i.dv, %.sroa.8.0
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !212
  %i.dx = load ptr, ptr %i.dq, align 8, !tbaa !139
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.sroa.8.0
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !138
  %i.eb = sub i64 %i.ea, %.sroa.8.0
  store ptr %i.dy, ptr %i.dq, align 8, !tbaa !101
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !102
  %i.ec = load i64, ptr %i.n, align 8, !tbaa !219 ; 9 uses
  %.not74 = icmp ult i64 %i.dt, %i.ec
  br i1 %.not74, label %bb.r, label %.loopexit75

bb.r:                                             ; preds = %.thread71
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dq, i64 32 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !225
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dq, i64 48 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !226
  %i.eh = sub i64 %i.ee, %i.eg
  %i.ei = add i64 %i.eh, %i.dt                    ; 7 uses
  store i64 %i.ei, ptr %i.dr, align 8, !tbaa !210
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dq, i64 64 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !211
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !211
  store i64 1, ptr %i.du, align 8, !tbaa !212
  %i.em = icmp ult i64 %i.ei, %i.ec
  %.sroa.03.0.copyload.i = load ptr, ptr %i.o, align 8, !tbaa !101 ; 4 uses
  br i1 %i.em, label %.lr.ph.i.i, label %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, !prof !88

.lr.ph.i.i:                                       ; preds = %bb.r, %bb.s
  %.046.i.i = phi i64 [ %i.ep, %bb.s ], [ %i.ei, %bb.r ] ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %.046.i.i
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.eo, label %bb.s [
    i8 10, label %bb.t
    i8 13, label %bb.t
  ]

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.ep = add i64 %.046.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ep, %i.ec
  br i1 %exitcond.not.i.i, label %.thread.i, label %.lr.ph.i.i, !llvm.loop !22

bb.t:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.eq = icmp eq i8 %i.eo, 13
  %i.er = zext i1 %i.eq to i64
  %spec.select.i.i = add nuw i64 %.046.i.i, %i.er ; 4 uses
  %i.es = icmp ult i64 %spec.select.i.i, %i.ec
  br i1 %i.es, label %bb.u, label %.thread.i

bb.u:                                             ; preds = %bb.t
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %spec.select.i.i
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !87
  %i.ev = icmp eq i8 %i.eu, 10
  %i.ew = zext i1 %i.ev to i64
  %spec.select22.i.i = add nuw i64 %spec.select.i.i, %i.ew
  br label %.thread.i

.thread.i:                                        ; preds = %bb.s, %bb.u, %bb.t
  %.pn.i9.i = phi i64 [ %.046.i.i, %bb.t ], [ %.046.i.i, %bb.u ], [ %i.ec, %bb.s ] ; 2 uses
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.t ], [ %spec.select22.i.i, %bb.u ], [ %i.ec, %bb.s ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.ei ; 3 uses
  %i.ey = sub i64 %.pn.i9.i, %i.ei                ; 3 uses
  store ptr %i.ex, ptr %i.dq, align 8, !tbaa !101
  store i64 %i.ey, ptr %i.dz, align 8, !tbaa !102
  %.not13.i.i.i.i = icmp eq i64 %.pn.i9.i, %i.ei
  br i1 %.not13.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i, %bb.v
  %.0710.i.i.i.i = phi i64 [ %i.fb, %bb.v ], [ 0, %.thread.i ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 %.0710.i.i.i.i
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.fa, 32
  br i1 %.not.i.i.i.i, label %bb.v, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %i.fb = add nuw i64 %.0710.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fb, %i.ey
  br i1 %exitcond.not.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i: ; preds = %bb.v, %.lr.ph.i.i.i.i, %.thread.i
  %i.fc = phi i64 [ -1, %.thread.i ], [ -1, %bb.v ], [ %.0710.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i.i.i = icmp eq i64 %.2.i.i, -1
  %i.fd = select i1 %.not.i.i.i, i64 %i.ec, i64 %.2.i.i
  %i.fe = sub i64 %i.fd, %i.ei
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i: ; preds = %bb.r
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.ec ; 2 uses
  store ptr %i.ff, ptr %i.dq, align 8, !tbaa !101
  store i64 0, ptr %i.dz, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit: ; preds = %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i
  %.sink24.i = phi i64 [ -1, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.fc, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sroa.051.0.copyload54 = phi ptr [ %i.ff, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.ex, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 3 uses
  %.sink21.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.fe, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sroa.8.0.copyload56 = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.ey, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store i64 %.sink24.i, ptr %i.fg, align 8, !tbaa !220
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  store ptr %.sroa.051.0.copyload54, ptr %i.fh, align 8, !tbaa !101
  store i64 %.sink21.i, ptr %i.ed, align 8, !tbaa !102
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  store ptr %.sroa.051.0.copyload54, ptr %i.fi, align 8, !tbaa !101
  store i64 %.sroa.8.0.copyload56, ptr %i.ef, align 8, !tbaa !102
  br label %bb.d, !llvm.loop !909

.loopexit75:                                      ; preds = %.thread71, %.loopexit..loopexit75_crit_edge
  %i.fj = phi i64 [ %.pre114, %.loopexit..loopexit75_crit_edge ], [ %i.ec, %.thread71 ]
  %i.fk = phi i64 [ %.pre113, %.loopexit..loopexit75_crit_edge ], [ %i.dt, %.thread71 ] ; 2 uses
  %.not.i = icmp eq i64 %i.fk, -1
  %i.fl = select i1 %.not.i, i64 %i.fj, i64 %i.fk
  %i.fm = load ptr, ptr %i.o, align 8, !tbaa !139 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.l ; 2 uses
  %i.fo = sub i64 %i.fl, %i.l                     ; 3 uses
  %i.fp = icmp eq i64 %i.fo, 0
  %i.fq = icmp eq ptr %i.fm, null
  %i.fr = select i1 %i.fp, i1 true, i1 %i.fq
  br i1 %i.fr, label %_ZNK2c415basic_substringIcE5trimrEc.exit, label %.preheader.i.preheader

.preheader.i:                                     ; preds = %.preheader.i.preheader
  %.not.i10.i = icmp eq i64 %.09.i.i, 0
  br i1 %.not.i10.i, label %_ZNK2c415basic_substringIcE5trimrEc.exit, label %.preheader.i.preheader, !llvm.loop !910

.preheader.i.preheader:                           ; preds = %.loopexit75, %.preheader.i
  %.09.in.i.i163 = phi i64 [ %.09.i.i, %.preheader.i ], [ %i.fo, %.loopexit75 ] ; 3 uses
  %.09.i.i = add i64 %.09.in.i.i163, -1           ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.09.i.i
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !87
  %.not13.i.i = icmp eq i8 %i.ft, 32
  br i1 %.not13.i.i, label %.preheader.i, label %_ZNK2c415basic_substringIcE11last_not_ofEcm.exit.i, !llvm.loop !910

_ZNK2c415basic_substringIcE11last_not_ofEcm.exit.i: ; preds = %.preheader.i.preheader
  %.not.i.i = icmp eq i64 %.09.in.i.i163, -1
  %i.fu = select i1 %.not.i.i, i64 %i.fo, i64 %.09.in.i.i163
  br label %_ZNK2c415basic_substringIcE5trimrEc.exit

_ZNK2c415basic_substringIcE5trimrEc.exit:         ; preds = %.preheader.i, %.loopexit75, %_ZNK2c415basic_substringIcE11last_not_ofEcm.exit.i
  %.sroa.3.1.i = phi i64 [ %i.fu, %_ZNK2c415basic_substringIcE11last_not_ofEcm.exit.i ], [ 0, %.loopexit75 ], [ 0, %.preheader.i ]
  store ptr %i.fn, ptr %1, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.3.1.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !102
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %.039, ptr %i.fv, align 8, !tbaa !231
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %_ZNK2c415basic_substringIcE5trimrEc.exit, %bb.b, %bb.a
  %.7 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %.loopexit ], [ true, %_ZNK2c415basic_substringIcE5trimrEc.exit ]
  ret i1 %.7
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE33_is_valid_start_scalar_plain_flowENS_15basic_substringIKcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %3 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %4 = alloca %class.anon.16, align 8             ; 5 uses
  %5 = alloca %"struct.c4::basic_substring.0", align 8 ; 5 uses
  %6 = alloca %"struct.c4::basic_substring.0", align 8 ; 5 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !87      ; 2 uses
  switch i8 %i.b, label %bb.j [
    i8 91, label %bb.k
    i8 93, label %bb.k
    i8 123, label %bb.k
    i8 125, label %bb.k
    i8 33, label %bb.k
    i8 38, label %bb.k
    i8 42, label %bb.k
    i8 124, label %bb.k
    i8 62, label %bb.k
    i8 35, label %bb.k
    i8 45, label %bb.b
    i8 58, label %bb.b
    i8 63, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = icmp ugt i64 %2, 1
  br i1 %i.c, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !87    ; 2 uses
  switch i8 %i.e, label %bb.j [
    i8 10, label %bb.d
    i8 13, label %bb.d
    i8 123, label %bb.d
    i8 91, label %bb.d
    i8 32, label %bb.f
    i8 125, label %bb.f
    i8 93, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  %switch.tableidx = add i8 %i.e, -10             ; 2 uses
  %i.f = icmp ult i8 %switch.tableidx, 4
  br i1 %i.f, label %switch.lookup, label %_ZN2c43yml6_c4prcERKc.exit

switch.lookup:                                    ; preds = %bb.d
  %i.g = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE33_is_valid_start_scalar_plain_flowENS_15basic_substringIKcEE, i64 %i.g
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN2c43yml6_c4prcERKc.exit

_ZN2c43yml6_c4prcERKc.exit:                       ; preds = %bb.d, %switch.lookup
  %.sroa.10.0.i = phi i64 [ 2, %switch.lookup ], [ 1, %bb.d ]
  %.sroa.0.0.i = phi ptr [ %switch.load, %switch.lookup ], [ %i.d, %bb.d ]
  store ptr %.sroa.0.0.i, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.10.0.i, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !914
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58, !noalias !914
  store ptr %i.a, ptr %3, align 8, !tbaa !101, !noalias !914
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !102, !noalias !914
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i64 0, ptr %i.i, align 8, !tbaa !178, !noalias !914
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58, !noalias !914
  store ptr %3, ptr %4, align 8, !tbaa !180, !noalias !914
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJNS_15basic_substringIKcEEEEEvS9_DprRKT_EUlS9_E_JRKS9_EEEvOT_S9_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nonnull @.str.169, i64 26, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.j = load i64, ptr %i.i, align 8, !tbaa !178, !noalias !914 ; 3 uses
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !181, !noalias !914
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJNS_15basic_substringIKcEEEEEvS7_DprRKT_.exit

bb.e:                                             ; preds = %_ZN2c43yml6_c4prcERKc.exit
  %i.m = load ptr, ptr %3, align 8, !tbaa !182, !noalias !914
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i8 10, ptr %i.n, align 1, !tbaa !87
  %.pre.i.i = load i64, ptr %i.i, align 8, !tbaa !178, !noalias !914
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJNS_15basic_substringIKcEEEEEvS7_DprRKT_.exit

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJNS_15basic_substringIKcEEEEEvS7_DprRKT_.exit: ; preds = %_ZN2c43yml6_c4prcERKc.exit, %bb.e
  %i.o = phi i64 [ %.pre.i.i, %bb.e ], [ %i.j, %_ZN2c43yml6_c4prcERKc.exit ]
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.i, align 8, !tbaa !178, !noalias !914
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJNS_15basic_substringIKcEEEEEvS8_DprRKT_EUlS8_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.q = load i64, ptr %i.i, align 8, !tbaa !178, !noalias !914
end_hunk_10
begin_hunk_11_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE27_scan_scalar_plain_map_flowEPNS3_13ScannedScalarE:bb.a
bb.p:                                             ; preds = %bb.o
  %i.dm = load ptr, ptr %4, align 8, !tbaa !182, !noalias !923
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dj
  store i8 10, ptr %i.dn, align 1, !tbaa !87
  %.pre.i.i = load i64, ptr %i.o, align 8, !tbaa !178, !noalias !923
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJcEEEvNS_15basic_substringIKcEEDprRKT_.exit

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJcEEEvNS_15basic_substringIKcEEDprRKT_.exit: ; preds = %bb.o, %bb.p
  %i.do = phi i64 [ %.pre.i.i, %bb.p ], [ %i.dj, %bb.o ]
  %i.dp = add i64 %i.do, 1
  store i64 %i.dp, ptr %i.o, align 8, !tbaa !178, !noalias !923
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJcEEEvNS_15basic_substringIKcEEDprRKT_EUlS8_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.dq = load i64, ptr %i.o, align 8, !tbaa !178, !noalias !923
  %i.dr = call i64 @llvm.umin.i64(i64 %i.dq, i64 1024)
  %i.ds = load ptr, ptr %i.d, align 8, !tbaa !169, !noalias !923 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2520
  store ptr null, ptr %i.dt, align 8, !tbaa !223
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 2480
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !224
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 2488
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !206
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 2456
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !193
  call void %i.dv(ptr noundef nonnull %i.b, i64 noundef %i.dr, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.dy, ptr noundef %i.ea), !inline_history !36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58, !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58, !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58, !noalias !923
  br label %bb.u

bb.q:                                             ; preds = %.lr.ph
  %i.eb = load ptr, ptr %i.d, align 8, !tbaa !169 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2488
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !206 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 56 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !210
  %i.eg = add i64 %i.ef, %.02575
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !210
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 72 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !212
  %i.ej = add i64 %i.ei, %.02575
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !212
  %i.ek = load ptr, ptr %i.ed, align 8, !tbaa !139
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.02575
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !138
  %i.eo = sub i64 %i.en, %.02575
  store ptr %i.el, ptr %i.ed, align 8, !tbaa !101
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !102
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ed, i64 96
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !221
  %i.er = and i32 %i.eq, 131072
  %.not61 = icmp eq i32 %i.er, 0
  br i1 %.not61, label %bb.r, label %.split.loopexit

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !922
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58, !noalias !922
  store ptr %i.a, ptr %2, align 8, !tbaa !101, !noalias !922
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i31, align 8, !tbaa !102, !noalias !922
  store i64 0, ptr %i.n, align 8, !tbaa !178, !noalias !922
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58, !noalias !922
  store ptr %2, ptr %3, align 8, !tbaa !180, !noalias !922
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJcEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_JRS8_EEEvOT_S9_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nonnull @.str.167, i64 30, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  %i.es = load i64, ptr %i.n, align 8, !tbaa !178, !noalias !922 ; 3 uses
  %i.et = load i64, ptr %.sroa.2.0..sroa_idx.i.i31, align 8, !tbaa !181, !noalias !922
  %i.eu = icmp ult i64 %i.es, %i.et
  br i1 %i.eu, label %bb.s, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJcEEEvNS_15basic_substringIKcEEDprRKT_.exit33

bb.s:                                             ; preds = %bb.r
  %i.ev = load ptr, ptr %2, align 8, !tbaa !182, !noalias !922
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.es
  store i8 10, ptr %i.ew, align 1, !tbaa !87
  %.pre.i.i32 = load i64, ptr %i.n, align 8, !tbaa !178, !noalias !922
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJcEEEvNS_15basic_substringIKcEEDprRKT_.exit33

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJcEEEvNS_15basic_substringIKcEEDprRKT_.exit33: ; preds = %bb.r, %bb.s
  %i.ex = phi i64 [ %.pre.i.i32, %bb.s ], [ %i.es, %bb.r ]
  %i.ey = add i64 %i.ex, 1
  store i64 %i.ey, ptr %i.n, align 8, !tbaa !178, !noalias !922
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJcEEEvNS_15basic_substringIKcEEDprRKT_EUlS8_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ez = load i64, ptr %i.n, align 8, !tbaa !178, !noalias !922
  %i.fa = call i64 @llvm.umin.i64(i64 %i.ez, i64 1024)
  %i.fb = load ptr, ptr %i.d, align 8, !tbaa !169, !noalias !922 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 2520
  store ptr null, ptr %i.fc, align 8, !tbaa !223
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 2480
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !224
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 2488
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !206
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 2456
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !193
  call void %i.fe(ptr noundef nonnull %i.a, i64 noundef %i.fa, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.fh, ptr noundef %i.fj), !inline_history !36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58, !noalias !922
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58, !noalias !922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !922
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph
  %i.fk = getelementptr i8, ptr %i.bn, i64 -1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !87
  %i.fm = icmp eq i8 %i.fl, 32
  br i1 %i.fm, label %.split27, label %bb.u

.split27:                                         ; preds = %bb.t
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !169
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 2488
  %.pre106 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !206 ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.pre106, i64 56 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !210
  %i.fp = add i64 %i.fo, %.02575                  ; 2 uses
  store i64 %i.fp, ptr %i.fn, align 8, !tbaa !210
  %i.fq = getelementptr inbounds nuw i8, ptr %.pre106, i64 72 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !212
  %i.fs = add i64 %i.fr, %.02575
  store i64 %i.fs, ptr %i.fq, align 8, !tbaa !212
  %i.ft = load ptr, ptr %.pre106, align 8, !tbaa !139
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.02575
  %i.fv = getelementptr inbounds nuw i8, ptr %.pre106, i64 8 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !138
  %i.fx = sub i64 %i.fw, %.02575
  store ptr %i.fu, ptr %.pre106, align 8, !tbaa !101
  store i64 %i.fx, ptr %i.fv, align 8, !tbaa !102
  br label %.split

bb.u:                                             ; preds = %bb.n, %.lr.ph, %bb.t, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJcEEEvNS_15basic_substringIKcEEDprRKT_.exit33, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJcEEEvNS_15basic_substringIKcEEDprRKT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  %i.fy = add nuw i64 %.02575, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fy, %.sroa.8.0
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !920

.split.loopexit:                                  ; preds = %bb.e, %.lr.ph.preheader, %bb.q
  %.pre110.pre = phi ptr [ %i.eb, %bb.q ], [ %i.r, %.lr.ph.preheader ], [ %i.r, %bb.e ]
  %.phi.trans.insert111.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre110.pre, i64 2488
  %.pre112.pre = load ptr, ptr %.phi.trans.insert111.phi.trans.insert, align 8, !tbaa !206
  %.phi.trans.insert113.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre112.pre, i64 56
  %.pre114.pre = load i64, ptr %.phi.trans.insert113.phi.trans.insert, align 8, !tbaa !210
  br label %.split

.split:                                           ; preds = %.split.loopexit, %.loopexit93, %.loopexit101, %.split27
  %.pre114 = phi i64 [ %.pre114.pre, %.split.loopexit ], [ %i.bu, %.loopexit93 ], [ %i.cm, %.loopexit101 ], [ %i.fp, %.split27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  %.pre115 = load i64, ptr %i.p, align 8
  br label %.loopexit

._crit_edge.loopexit:                             ; preds = %bb.u, %bb.l
  %.pre109 = load ptr, ptr %i.d, align 8, !tbaa !169
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.fz = phi ptr [ %.pre109, %._crit_edge.loopexit ], [ %i.r, %bb.d ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 2488
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !206 ; 14 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 56 ; 3 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !210
  %i.ge = add i64 %i.gd, %.sroa.8.0               ; 4 uses
  store i64 %i.ge, ptr %i.gc, align 8, !tbaa !210
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 72 ; 3 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !212
  %i.gh = add i64 %i.gg, %.sroa.8.0
  store i64 %i.gh, ptr %i.gf, align 8, !tbaa !212
  %i.gi = load ptr, ptr %i.gb, align 8, !tbaa !139
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.sroa.8.0
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 4 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !138
  %i.gm = sub i64 %i.gl, %.sroa.8.0
  store ptr %i.gj, ptr %i.gb, align 8, !tbaa !101
  store i64 %i.gm, ptr %i.gk, align 8, !tbaa !102
  %i.gn = load i64, ptr %i.p, align 8, !tbaa !219 ; 9 uses
  %.not60 = icmp ult i64 %i.ge, %i.gn
  br i1 %.not60, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %._crit_edge
  %i.go = getelementptr inbounds nuw i8, ptr %i.gb, i64 32 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !225
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gb, i64 48 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !226
  %i.gs = sub i64 %i.gp, %i.gr
  %i.gt = add i64 %i.gs, %i.ge                    ; 8 uses
  store i64 %i.gt, ptr %i.gc, align 8, !tbaa !210
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gb, i64 64 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !211
  %i.gw = add i64 %i.gv, 1
  store i64 %i.gw, ptr %i.gu, align 8, !tbaa !211
  store i64 1, ptr %i.gf, align 8, !tbaa !212
  %i.gx = icmp ult i64 %i.gt, %i.gn
  %.sroa.03.0.copyload.i = load ptr, ptr %i.q, align 8, !tbaa !101 ; 4 uses
  br i1 %i.gx, label %.lr.ph.i.i, label %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, !prof !88

.lr.ph.i.i:                                       ; preds = %bb.v, %bb.w
  %.046.i.i = phi i64 [ %i.ha, %bb.w ], [ %i.gt, %bb.v ] ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %.046.i.i
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.gz, label %bb.w [
    i8 10, label %bb.x
    i8 13, label %bb.x
  ]

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.ha = add i64 %.046.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ha, %i.gn
  br i1 %exitcond.not.i.i, label %.thread.i, label %.lr.ph.i.i, !llvm.loop !22

bb.x:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.hb = icmp eq i8 %i.gz, 13
  %i.hc = zext i1 %i.hb to i64
  %spec.select.i.i = add nuw i64 %.046.i.i, %i.hc ; 4 uses
  %i.hd = icmp ult i64 %spec.select.i.i, %i.gn
  br i1 %i.hd, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %bb.x
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %spec.select.i.i
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !87
  %i.hg = icmp eq i8 %i.hf, 10
  %i.hh = zext i1 %i.hg to i64
  %spec.select22.i.i = add nuw i64 %spec.select.i.i, %i.hh
  br label %.thread.i

.thread.i:                                        ; preds = %bb.w, %bb.y, %bb.x
  %.pn.i9.i = phi i64 [ %.046.i.i, %bb.x ], [ %.046.i.i, %bb.y ], [ %i.gn, %bb.w ] ; 2 uses
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.x ], [ %spec.select22.i.i, %bb.y ], [ %i.gn, %bb.w ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.gt ; 3 uses
  %i.hj = sub i64 %.pn.i9.i, %i.gt                ; 3 uses
  store ptr %i.hi, ptr %i.gb, align 8, !tbaa !101
  store i64 %i.hj, ptr %i.gk, align 8, !tbaa !102
  %.not13.i.i.i.i = icmp eq i64 %.pn.i9.i, %i.gt
  br i1 %.not13.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i, %bb.z
  %.0710.i.i.i.i = phi i64 [ %i.hm, %bb.z ], [ 0, %.thread.i ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.0710.i.i.i.i
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.hl, 32
  br i1 %.not.i.i.i.i, label %bb.z, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i

bb.z:                                             ; preds = %.lr.ph.i.i.i.i
  %i.hm = add nuw i64 %.0710.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.hm, %i.hj
  br i1 %exitcond.not.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i: ; preds = %bb.z, %.lr.ph.i.i.i.i, %.thread.i
  %i.hn = phi i64 [ -1, %.thread.i ], [ -1, %bb.z ], [ %.0710.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i.i.i = icmp eq i64 %.2.i.i, -1
  %i.ho = select i1 %.not.i.i.i, i64 %i.gn, i64 %.2.i.i
  %i.hp = sub i64 %i.ho, %i.gt
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i: ; preds = %bb.v
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.gn ; 2 uses
  store ptr %i.hq, ptr %i.gb, align 8, !tbaa !101
  store i64 0, ptr %i.gk, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit: ; preds = %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i
  %.sink24.i = phi i64 [ -1, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.hn, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sroa.044.0.copyload47 = phi ptr [ %i.hq, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.hi, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 3 uses
  %.sink21.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.hp, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sroa.8.0.copyload49 = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.hj, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i64 %.sink24.i, ptr %i.hr, align 8, !tbaa !220
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  store ptr %.sroa.044.0.copyload47, ptr %i.hs, align 8, !tbaa !101
  store i64 %.sink21.i, ptr %i.go, align 8, !tbaa !102
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  store ptr %.sroa.044.0.copyload47, ptr %i.ht, align 8, !tbaa !101
  store i64 %.sroa.8.0.copyload49, ptr %i.gq, align 8, !tbaa !102
  br label %bb.d, !llvm.loop !921

.loopexit:                                        ; preds = %._crit_edge, %.split
  %i.hu = phi i64 [ %.pre115, %.split ], [ %i.gn, %._crit_edge ]
  %i.hv = phi i64 [ %.pre114, %.split ], [ %i.ge, %._crit_edge ] ; 2 uses
  %.not.i = icmp eq i64 %i.hv, -1
  %i.hw = select i1 %.not.i, i64 %i.hu, i64 %i.hv
  %i.hx = load ptr, ptr %i.q, align 8, !tbaa !139 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.m ; 2 uses
  %i.hz = sub i64 %i.hw, %i.m                     ; 3 uses
  %i.ia = icmp eq i64 %i.hz, 0
  %i.ib = icmp eq ptr %i.hx, null
  %i.ic = select i1 %i.ia, i1 true, i1 %i.ib
  br i1 %i.ic, label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit, label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.loopexit, %.loopexit25.us.i.i
  %.01534.us.i.in.i = phi i64 [ %.01534.us.i.i, %.loopexit25.us.i.i ], [ %i.hz, %.loopexit ] ; 3 uses
  %.01534.us.i.i = add i64 %.01534.us.i.in.i, -1  ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.01534.us.i.i
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !87
  switch i8 %i.ie, label %.thread25.i [
    i8 32, label %.loopexit25.us.i.i
    i8 10, label %.loopexit25.us.i.i
    i8 13, label %.loopexit25.us.i.i
  ]

.thread25.i:                                      ; preds = %.preheader.us.i.i
  %.not.i28.i = icmp eq i64 %.01534.us.i.in.i, -1
  %i.if = select i1 %.not.i28.i, i64 %i.hz, i64 %.01534.us.i.in.i
  br label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit

.loopexit25.us.i.i:                               ; preds = %.preheader.us.i.i, %.preheader.us.i.i, %.preheader.us.i.i
  %.not.us.i.i = icmp eq i64 %.01534.us.i.i, 0
  br i1 %.not.us.i.i, label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit, label %.preheader.us.i.i

_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit: ; preds = %.loopexit25.us.i.i, %.loopexit, %.thread25.i
  %.sroa.3.1.i = phi i64 [ 0, %.loopexit ], [ %i.if, %.thread25.i ], [ 0, %.loopexit25.us.i.i ] ; 2 uses
  store ptr %i.hy, ptr %1, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.3.1.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !102
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %.026, ptr %i.ig, align 8, !tbaa !231
  %i.ih = icmp ne i64 %.sroa.3.1.i, 0
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ih, %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE27_scan_scalar_plain_map_blckEPNS3_13ScannedScalarE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !215
  %i.g = add i64 %i.f, 1
  %i.h = tail call noundef zeroext i1 @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE23_scan_scalar_plain_blckEPNS3_13ScannedScalarEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1, i64 noundef %i.g)
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_scan_scalar_map_jsonEPNS3_13ScannedScalarE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 8 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !101 ; 14 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !102 ; 10 uses
  %.not = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %.not, label %.thread49, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !87 ; 2 uses
  switch i8 %i.e, label %.critedge.peel [
    i8 102, label %bb.c
    i8 116, label %bb.d
    i8 110, label %bb.e
    i8 44, label %.thread49
    i8 125, label %.thread49
    i8 32, label %.thread49
    i8 9, label %.thread49
    i8 35, label %.thread49
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %.sroa.7.0.copyload, 4
  br i1 %i.f, label %.lr.ph.i.1.i, label %.critedge.peel

.lr.ph.i.1.i:                                     ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !87
  %.not.i.1.i = icmp eq i8 %i.h, 97
  br i1 %.not.i.1.i, label %.lr.ph.i.2.i, label %.peel.next.preheader

.lr.ph.i.2.i:                                     ; preds = %.lr.ph.i.1.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !87
  %.not.i.2.i = icmp eq i8 %i.j, 108
  br i1 %.not.i.2.i, label %.lr.ph.i.3.i, label %.peel.next.preheader

.lr.ph.i.3.i:                                     ; preds = %.lr.ph.i.2.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !87
  %.not.i.3.i = icmp eq i8 %i.l, 115
  br i1 %.not.i.3.i, label %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.sink.split.i, label %.peel.next.preheader

bb.d:                                             ; preds = %bb.b
  %i.m = icmp ugt i64 %.sroa.7.0.copyload, 3
  br i1 %i.m, label %.preheader.i1.1.i, label %.critedge.peel

.preheader.i1.1.i:                                ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !87
  %.not.i4.1.i = icmp eq i8 %i.o, 114
  br i1 %.not.i4.1.i, label %.preheader.i1.2.i, label %.peel.next.preheader

.preheader.i1.2.i:                                ; preds = %.preheader.i1.1.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !87
  %.not.i4.2.i = icmp eq i8 %i.q, 117
  br i1 %.not.i4.2.i, label %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.sink.split.i, label %.peel.next.preheader

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ugt i64 %.sroa.7.0.copyload, 3
  br i1 %i.r, label %.preheader.i8.1.i, label %.critedge.peel

.preheader.i8.1.i:                                ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1
end_hunk_11
begin_hunk_12_@_ZN2c43yml6_c4prcERKc:bb.a
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE18_scan_scalar_squotEv(ptr dead_on_unwind noalias writable sret(%"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %2 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %3 = alloca %class.anon.17, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !169
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2488
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !206  ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !210  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !139
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !138
  %i.m = sub i64 %i.l, %i.g                       ; 4 uses
  %.not.i72 = icmp eq i64 %i.m, 0
  br i1 %.not.i72, label %_ZNK2c415basic_substringIcE11begins_withEc.exit.thread, label %_ZNK2c415basic_substringIcE11begins_withEc.exit

_ZNK2c415basic_substringIcE11begins_withEc.exit:  ; preds = %bb.a
  %i.n = load i8, ptr %i.j, align 1, !tbaa !87
  %i.o = icmp eq i8 %i.n, 32
  br i1 %i.o, label %.lr.ph.i.i, label %_ZNK2c415basic_substringIcE11begins_withEc.exit.thread

.lr.ph.i.i:                                       ; preds = %_ZNK2c415basic_substringIcE11begins_withEc.exit, %bb.b
  %.0710.i.i = phi i64 [ %i.r, %bb.b ], [ 0, %_ZNK2c415basic_substringIcE11begins_withEc.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %.0710.i.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !87
  %.not.i.i = icmp eq i8 %i.q, 32
  br i1 %.not.i.i, label %bb.b, label %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.r = add nuw i64 %.0710.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.r, %i.m
  br i1 %exitcond.not.i.i, label %_ZNK2c415basic_substringIcE5trimlEc.exit, label %.lr.ph.i.i, !llvm.loop !23

_ZNK2c415basic_substringIcE12first_not_ofEc.exit.i: ; preds = %.lr.ph.i.i
  %.not.not.i = icmp eq i64 %.0710.i.i, -1        ; 2 uses
  %i.s = sub nuw i64 %i.m, %.0710.i.i
  %spec.select.idx.i = select i1 %.not.not.i, i64 0, i64 %.0710.i.i
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %spec.select.idx.i
  %spec.select24.i = select i1 %.not.not.i, i64 0, i64 %i.s
  br label %_ZNK2c415basic_substringIcE5trimlEc.exit

_ZNK2c415basic_substringIcE5trimlEc.exit:         ; preds = %bb.b, %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.i
  %.sroa.0.1.i = phi ptr [ %spec.select.i, %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.i ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.3.1.i = phi i64 [ %spec.select24.i, %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.i ], [ 0, %bb.b ]
  %i.t = ptrtoint ptr %.sroa.0.1.i to i64
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = sub i64 %i.t, %i.u                       ; 4 uses
  %i.w = add i64 %i.v, %i.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !212
  %i.z = add i64 %i.y, %i.v
  store i64 %i.z, ptr %i.x, align 8, !tbaa !212
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !139
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !138
  %i.ae = sub i64 %i.ad, %i.v
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !101
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !102
  br label %_ZNK2c415basic_substringIcE11begins_withEc.exit.thread

_ZNK2c415basic_substringIcE11begins_withEc.exit.thread: ; preds = %bb.a, %_ZNK2c415basic_substringIcE5trimlEc.exit, %_ZNK2c415basic_substringIcE11begins_withEc.exit
  %i.af = phi i64 [ %i.w, %_ZNK2c415basic_substringIcE5trimlEc.exit ], [ %i.g, %_ZNK2c415basic_substringIcE11begins_withEc.exit ], [ %i.g, %bb.a ] ; 2 uses
  %.sroa.084.0 = phi ptr [ %.sroa.0.1.i, %_ZNK2c415basic_substringIcE5trimlEc.exit ], [ %i.j, %_ZNK2c415basic_substringIcE11begins_withEc.exit ], [ %i.j, %bb.a ]
  %.sroa.12.0 = phi i64 [ %.sroa.3.1.i, %_ZNK2c415basic_substringIcE5trimlEc.exit ], [ %i.m, %_ZNK2c415basic_substringIcE11begins_withEc.exit ], [ 0, %bb.a ]
  %i.ag = add i64 %i.af, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !tbaa !210
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !212
  %i.aj = add i64 %i.ai, 1                        ; 2 uses
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !212
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !139
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 6 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !138
  %i.ao = add i64 %i.an, -1                       ; 2 uses
  store ptr %i.al, ptr %i.e, align 8, !tbaa !101
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !102
  %i.ap = add i64 %.sroa.12.0, -1                 ; 2 uses
  %i.aq = load i64, ptr %i.k, align 8, !tbaa !219
  %.not200 = icmp ult i64 %i.ag, %i.aq
  br i1 %.not200, label %.lr.ph203, label %.thread160

.lr.ph203:                                        ; preds = %_ZNK2c415basic_substringIcE11begins_withEc.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph203, %bb.m
  %i.ax = phi i64 [ %i.aj, %.lr.ph203 ], [ 1, %bb.m ]
  %.sroa.5.0.copyload = phi i64 [ %i.ao, %.lr.ph203 ], [ %.sink.i, %bb.m ] ; 6 uses
  %.sroa.079.0.copyload = phi ptr [ %i.al, %.lr.ph203 ], [ %.sink22.i, %bb.m ] ; 6 uses
  %i.ay = phi i64 [ %i.ag, %.lr.ph203 ], [ %i.bx, %bb.m ] ; 2 uses
  %.0202 = phi i8 [ 0, %.lr.ph203 ], [ %i.bq, %bb.m ]
  %.051201 = phi i64 [ 1, %.lr.ph203 ], [ %i.bt, %bb.m ] ; 2 uses
  %.not205 = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not205, label %.thread149.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.thread138
  %.1189 = phi i8 [ %.4148, %.thread138 ], [ %.0202, %bb.c ] ; 4 uses
  %.036188 = phi i64 [ %i.bg, %.thread138 ], [ 0, %bb.c ] ; 6 uses
  %.040187 = phi i1 [ %.242146, %.thread138 ], [ true, %bb.c ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.079.0.copyload, i64 %.036188
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !87
  switch i8 %i.ba, label %bb.f [
    i8 39, label %bb.d
    i8 32, label %.thread138
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.bb = add nuw i64 %.036188, 1                 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, %.sroa.5.0.copyload
  br i1 %i.bc, label %bb.e, label %.thread149

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.079.0.copyload, i64 %i.bb
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !87
  %.fr = freeze i8 %i.be
  %i.bf = icmp eq i8 %.fr, 39
  br i1 %i.bf, label %.thread138, label %.thread149

bb.f:                                             ; preds = %.lr.ph
  br label %.thread138

.thread138:                                       ; preds = %bb.e, %.lr.ph, %bb.f
  %.4148 = phi i8 [ %.1189, %bb.f ], [ %.1189, %.lr.ph ], [ 1, %bb.e ] ; 2 uses
  %.339147 = phi i64 [ %.036188, %bb.f ], [ %.036188, %.lr.ph ], [ %i.bb, %bb.e ]
  %.242146 = phi i1 [ false, %bb.f ], [ %.040187, %.lr.ph ], [ %.040187, %bb.e ] ; 2 uses
  %i.bg = add nuw i64 %.339147, 1                 ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %.sroa.5.0.copyload
  br i1 %i.bh, label %.lr.ph, label %.thread149, !llvm.loop !926

.thread149:                                       ; preds = %.thread138, %bb.d, %bb.e
  %.040.lcssa = phi i1 [ %.040187, %bb.e ], [ %.242146, %.thread138 ], [ %.040187, %bb.d ]
  %.1.lcssa = phi i8 [ %.1189, %bb.e ], [ %.4148, %.thread138 ], [ %.1189, %bb.d ]
  %.549 = phi i64 [ %.036188, %bb.e ], [ -1, %.thread138 ], [ %.036188, %bb.d ] ; 2 uses
  %i.bi = trunc nuw i8 %.1.lcssa to i1
  %i.bj = icmp ugt i64 %.051201, 1
  %or.cond = select i1 %i.bi, i1 true, i1 %i.bj
  %or.cond4 = select i1 %or.cond, i1 true, i1 %.040.lcssa
  br i1 %or.cond4, label %.thread149.thread, label %bb.g

bb.g:                                             ; preds = %.thread149
  %i.bk = load ptr, ptr %i.ar, align 8, !tbaa !139
  %.not248 = icmp eq ptr %.sroa.079.0.copyload, %i.bk
  br i1 %.not248, label %bb.h, label %.thread149.thread

bb.h:                                             ; preds = %bb.g
  %i.bl = load i8, ptr %.sroa.079.0.copyload, align 1, !tbaa !87
  %i.bm = icmp eq i8 %i.bl, 32
  %i.bn = zext i1 %i.bm to i8
  br label %.thread149.thread

.thread149.thread:                                ; preds = %bb.h, %bb.g, %.thread149
  %i.bo = phi i8 [ 1, %.thread149 ], [ 0, %bb.g ], [ %i.bn, %bb.h ] ; 3 uses
  %i.bp = icmp eq i64 %.549, -1
  br i1 %i.bp, label %.thread149.thread.thread, label %bb.n

.thread149.thread.thread:                         ; preds = %bb.c, %.thread149.thread
  %i.bq = phi i8 [ %i.bo, %.thread149.thread ], [ 1, %bb.c ] ; 2 uses
  %i.br = add i64 %.sroa.5.0.copyload, %i.ay
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.079.0.copyload, i64 %.sroa.5.0.copyload
  store ptr %i.bs, ptr %i.e, align 8, !tbaa !101
  store i64 0, ptr %i.am, align 8, !tbaa !102
  %i.bt = add i64 %.051201, 1
  %i.bu = load i64, ptr %i.as, align 8, !tbaa !225
  %i.bv = load i64, ptr %i.at, align 8, !tbaa !226
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = add i64 %i.bw, %i.br                    ; 9 uses
  store i64 %i.bx, ptr %i.f, align 8, !tbaa !210
  %i.by = load i64, ptr %i.au, align 8, !tbaa !211
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.au, align 8, !tbaa !211
  store i64 1, ptr %i.ah, align 8, !tbaa !212
  %i.ca = load i64, ptr %i.k, align 8, !tbaa !219 ; 7 uses
  %i.cb = icmp ult i64 %i.bx, %i.ca
  %.sroa.03.0.copyload.i = load ptr, ptr %i.h, align 8, !tbaa !101 ; 4 uses
  br i1 %i.cb, label %.lr.ph.i.i76, label %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, !prof !88

.lr.ph.i.i76:                                     ; preds = %.thread149.thread.thread, %bb.i
  %.046.i.i = phi i64 [ %i.ce, %bb.i ], [ %i.bx, %.thread149.thread.thread ] ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %.046.i.i
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.cd, label %bb.i [
    i8 10, label %bb.j
    i8 13, label %bb.j
  ]

bb.i:                                             ; preds = %.lr.ph.i.i76
  %i.ce = add i64 %.046.i.i, 1                    ; 2 uses
  %exitcond.not.i.i77 = icmp eq i64 %i.ce, %i.ca
  br i1 %exitcond.not.i.i77, label %.thread.i, label %.lr.ph.i.i76, !llvm.loop !22

bb.j:                                             ; preds = %.lr.ph.i.i76, %.lr.ph.i.i76
  %i.cf = icmp eq i8 %i.cd, 13
  %i.cg = zext i1 %i.cf to i64
  %spec.select.i.i = add nuw i64 %.046.i.i, %i.cg ; 4 uses
  %i.ch = icmp ult i64 %spec.select.i.i, %i.ca
  br i1 %i.ch, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %spec.select.i.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !87
  %i.ck = icmp eq i8 %i.cj, 10
  %i.cl = zext i1 %i.ck to i64
  %spec.select22.i.i = add nuw i64 %spec.select.i.i, %i.cl
  br label %.thread.i

.thread.i:                                        ; preds = %bb.i, %bb.k, %bb.j
  %.pn.i9.i = phi i64 [ %.046.i.i, %bb.j ], [ %.046.i.i, %bb.k ], [ %i.ca, %bb.i ] ; 2 uses
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.j ], [ %spec.select22.i.i, %bb.k ], [ %i.ca, %bb.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.bx ; 3 uses
  %i.cn = sub i64 %.pn.i9.i, %i.bx                ; 3 uses
  store ptr %i.cm, ptr %i.e, align 8, !tbaa !101
  store i64 %i.cn, ptr %i.am, align 8, !tbaa !102
  %.not13.i.i.i.i = icmp eq i64 %.pn.i9.i, %i.bx
  br i1 %.not13.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i, %bb.l
  %.0710.i.i.i.i = phi i64 [ %i.cq, %bb.l ], [ 0, %.thread.i ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.0710.i.i.i.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.cp, 32
  br i1 %.not.i.i.i.i, label %bb.l, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cq = add nuw i64 %.0710.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cq, %i.cn
  br i1 %exitcond.not.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i: ; preds = %bb.l, %.lr.ph.i.i.i.i, %.thread.i
  %i.cr = phi i64 [ -1, %.thread.i ], [ -1, %bb.l ], [ %.0710.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i.i.i = icmp eq i64 %.2.i.i, -1
  %i.cs = select i1 %.not.i.i.i, i64 %i.ca, i64 %.2.i.i
  %i.ct = sub i64 %i.cs, %i.bx
  br label %bb.m

_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i: ; preds = %.thread149.thread.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.ca ; 2 uses
  store ptr %i.cu, ptr %i.e, align 8, !tbaa !101
  store i64 0, ptr %i.am, align 8, !tbaa !102
  br label %bb.m

bb.m:                                             ; preds = %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i
  %.sink24.i = phi i64 [ -1, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.cr, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink22.i = phi ptr [ %i.cu, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.cm, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 3 uses
  %.sink21.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.ct, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.cn, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  store i64 %.sink24.i, ptr %i.av, align 8, !tbaa !220
  store ptr %.sink22.i, ptr %i.ar, align 8, !tbaa !101
  store i64 %.sink21.i, ptr %i.as, align 8, !tbaa !102
  store ptr %.sink22.i, ptr %i.aw, align 8, !tbaa !101
  store i64 %.sink.i, ptr %i.at, align 8, !tbaa !102
  %i.cv = load i64, ptr %i.k, align 8, !tbaa !219
  %.not = icmp ult i64 %i.bx, %i.cv
  br i1 %.not, label %bb.c, label %.thread160

bb.n:                                             ; preds = %.thread149.thread
  %i.cw = add nuw i64 %.549, 1                    ; 4 uses
  %i.cx = add i64 %i.cw, %i.ay                    ; 2 uses
  store i64 %i.cx, ptr %i.f, align 8, !tbaa !210
  %i.cy = add i64 %i.ax, %i.cw
  store i64 %i.cy, ptr %i.ah, align 8, !tbaa !212
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.079.0.copyload, i64 %i.cw
  %i.da = sub i64 %.sroa.5.0.copyload, %i.cw
  store ptr %i.cz, ptr %i.e, align 8, !tbaa !101
  store i64 %i.da, ptr %i.am, align 8, !tbaa !102
  %i.db = xor i64 %i.af, -1
  %i.dc = add i64 %i.cx, %i.db                    ; 3 uses
  %i.dd = icmp eq i64 %i.dc, -1
  br i1 %i.dd, label %.thread160, label %bb.p

.thread160:                                       ; preds = %bb.m, %_ZNK2c415basic_substringIcE11begins_withEc.exit.thread, %bb.n
  %.6164 = phi i8 [ %i.bo, %bb.n ], [ 0, %_ZNK2c415basic_substringIcE11begins_withEc.exit.thread ], [ %i.bq, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !930
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58, !noalias !930
  store ptr %i.a, ptr %2, align 8, !tbaa !101, !noalias !930
  %.sroa.2.0..sroa_idx.i.i78 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i78, align 8, !tbaa !102, !noalias !930
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store i64 0, ptr %i.de, align 8, !tbaa !178, !noalias !930
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58, !noalias !930
  store ptr %2, ptr %3, align 8, !tbaa !180, !noalias !930
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA52_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA52_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(52) @.str.171)
  %i.df = load i64, ptr %i.de, align 8, !tbaa !178, !noalias !930 ; 3 uses
  %i.dg = load i64, ptr %.sroa.2.0..sroa_idx.i.i78, align 8, !tbaa !181, !noalias !930
  %i.dh = icmp ult i64 %i.df, %i.dg
  br i1 %i.dh, label %bb.o, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA52_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

bb.o:                                             ; preds = %.thread160
  %i.di = load ptr, ptr %2, align 8, !tbaa !182, !noalias !930
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.df
  store i8 10, ptr %i.dj, align 1, !tbaa !87
  %.pre.i.i = load i64, ptr %i.de, align 8, !tbaa !178, !noalias !930
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA52_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA52_cEEEvNS_15basic_substringIKcEEDprRKT_.exit: ; preds = %.thread160, %bb.o
  %i.dk = phi i64 [ %.pre.i.i, %bb.o ], [ %i.df, %.thread160 ]
  %i.dl = add i64 %i.dk, 1
  store i64 %i.dl, ptr %i.de, align 8, !tbaa !178, !noalias !930
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA52_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.dm = load i64, ptr %i.de, align 8, !tbaa !178, !noalias !930
  %i.dn = call i64 @llvm.umin.i64(i64 %i.dm, i64 1024)
  %i.do = load ptr, ptr %i.b, align 8, !tbaa !169, !noalias !930 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 2520
  store ptr null, ptr %i.dp, align 8, !tbaa !223
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 2480
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !224
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 2488
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !206
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 56
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 2456
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !193
  call void %i.dr(ptr noundef nonnull %i.a, i64 noundef %i.dn, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.du, ptr noundef %i.dw), !inline_history !929
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58, !noalias !930
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58, !noalias !930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !930
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dx = add i64 %i.dc, -1
  %.not.i = icmp eq i64 %i.dc, 0
  %i.dy = select i1 %.not.i, i64 %i.ap, i64 %i.dx
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA52_cEEEvNS_15basic_substringIKcEEDprRKT_.exit
  %.6163 = phi i8 [ %.6164, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA52_cEEEvNS_15basic_substringIKcEEDprRKT_.exit ], [ %i.bo, %bb.p ]
  %.sroa.12.1 = phi i64 [ %i.ap, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA52_cEEEvNS_15basic_substringIKcEEDprRKT_.exit ], [ %i.dy, %bb.p ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.084.0, i64 1
  store ptr %i.dz, ptr %0, align 8, !tbaa !101
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.12.1, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !102
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.6163, ptr %i.ea, align 8, !tbaa !231
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE18_scan_scalar_dquotEv(ptr dead_on_unwind noalias writable sret(%"struct.c4::yml::ParseEngine<c4::yml::EventHandlerTree>::ScannedScalar") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %2 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %3 = alloca %class.anon.18, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !169
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2488
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !206  ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !210  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !139
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !138
  %i.m = sub i64 %i.l, %i.g                       ; 4 uses
  %.not.i70 = icmp eq i64 %i.m, 0
  br i1 %.not.i70, label %_ZNK2c415basic_substringIcE11begins_withEc.exit.thread, label %_ZNK2c415basic_substringIcE11begins_withEc.exit

_ZNK2c415basic_substringIcE11begins_withEc.exit:  ; preds = %bb.a
  %i.n = load i8, ptr %i.j, align 1, !tbaa !87
  %i.o = icmp eq i8 %i.n, 32
  br i1 %i.o, label %.lr.ph.i.i, label %_ZNK2c415basic_substringIcE11begins_withEc.exit.thread

.lr.ph.i.i:                                       ; preds = %_ZNK2c415basic_substringIcE11begins_withEc.exit, %bb.b
  %.0710.i.i = phi i64 [ %i.r, %bb.b ], [ 0, %_ZNK2c415basic_substringIcE11begins_withEc.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %.0710.i.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !87
  %.not.i.i = icmp eq i8 %i.q, 32
  br i1 %.not.i.i, label %bb.b, label %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.r = add nuw i64 %.0710.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.r, %i.m
  br i1 %exitcond.not.i.i, label %_ZNK2c415basic_substringIcE5trimlEc.exit, label %.lr.ph.i.i, !llvm.loop !23

_ZNK2c415basic_substringIcE12first_not_ofEc.exit.i: ; preds = %.lr.ph.i.i
  %.not.not.i = icmp eq i64 %.0710.i.i, -1        ; 2 uses
  %i.s = sub nuw i64 %i.m, %.0710.i.i
  %spec.select.idx.i = select i1 %.not.not.i, i64 0, i64 %.0710.i.i
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %spec.select.idx.i
  %spec.select24.i = select i1 %.not.not.i, i64 0, i64 %i.s
  br label %_ZNK2c415basic_substringIcE5trimlEc.exit

_ZNK2c415basic_substringIcE5trimlEc.exit:         ; preds = %bb.b, %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.i
  %.sroa.0.1.i = phi ptr [ %spec.select.i, %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.i ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.3.1.i = phi i64 [ %spec.select24.i, %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.i ], [ 0, %bb.b ]
  %i.t = ptrtoint ptr %.sroa.0.1.i to i64
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = sub i64 %i.t, %i.u                       ; 4 uses
  %i.w = add i64 %i.v, %i.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !212
  %i.z = add i64 %i.y, %i.v
  store i64 %i.z, ptr %i.x, align 8, !tbaa !212
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !139
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !138
  %i.ae = sub i64 %i.ad, %i.v
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !101
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !102
  br label %_ZNK2c415basic_substringIcE11begins_withEc.exit.thread

_ZNK2c415basic_substringIcE11begins_withEc.exit.thread: ; preds = %bb.a, %_ZNK2c415basic_substringIcE5trimlEc.exit, %_ZNK2c415basic_substringIcE11begins_withEc.exit
  %i.af = phi i64 [ %i.w, %_ZNK2c415basic_substringIcE5trimlEc.exit ], [ %i.g, %_ZNK2c415basic_substringIcE11begins_withEc.exit ], [ %i.g, %bb.a ] ; 2 uses
  %.sroa.084.0 = phi ptr [ %.sroa.0.1.i, %_ZNK2c415basic_substringIcE5trimlEc.exit ], [ %i.j, %_ZNK2c415basic_substringIcE11begins_withEc.exit ], [ %i.j, %bb.a ]
  %.sroa.12.0 = phi i64 [ %.sroa.3.1.i, %_ZNK2c415basic_substringIcE5trimlEc.exit ], [ %i.m, %_ZNK2c415basic_substringIcE11begins_withEc.exit ], [ 0, %bb.a ]
  %i.ag = add i64 %i.af, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !tbaa !210
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !212
  %i.aj = add i64 %i.ai, 1                        ; 2 uses
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !212
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !139
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 6 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !138
  %i.ao = add i64 %i.an, -1                       ; 2 uses
  store ptr %i.al, ptr %i.e, align 8, !tbaa !101
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !102
  %i.ap = add i64 %.sroa.12.0, -1                 ; 2 uses
  %i.aq = load i64, ptr %i.k, align 8, !tbaa !219
  %.not117134 = icmp ult i64 %i.ag, %i.aq
  br i1 %.not117134, label %.lr.ph137, label %.thread112

.lr.ph137:                                        ; preds = %_ZNK2c415basic_substringIcE11begins_withEc.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph137, %bb.m
  %i.ax = phi i64 [ %i.aj, %.lr.ph137 ], [ 1, %bb.m ]
  %.sroa.6.0.copyload = phi i64 [ %i.ao, %.lr.ph137 ], [ %.sink.i, %bb.m ] ; 6 uses
  %.sroa.077.0.copyload = phi ptr [ %i.al, %.lr.ph137 ], [ %.sink22.i, %bb.m ] ; 6 uses
  %i.ay = phi i64 [ %i.ag, %.lr.ph137 ], [ %i.bw, %bb.m ] ; 2 uses
  %.0136 = phi i8 [ 0, %.lr.ph137 ], [ %i.bp, %bb.m ]
  %.051135 = phi i64 [ 1, %.lr.ph137 ], [ %i.bs, %bb.m ] ; 2 uses
  %.not139 = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %.not139, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.thread
  %.1127 = phi i8 [ %.3.ph, %.thread ], [ %.0136, %bb.c ] ; 2 uses
  %.038126 = phi i64 [ %i.bf, %.thread ], [ 0, %bb.c ] ; 6 uses
  %.042125 = phi i1 [ %spec.select, %.thread ], [ true, %bb.c ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.077.0.copyload, i64 %.038126
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !87  ; 2 uses
  %.not = icmp eq i8 %i.ba, 32
  %spec.select = select i1 %.not, i1 %.042125, i1 false ; 2 uses
  switch i8 %i.ba, label %.thread [
    i8 92, label %bb.d
    i8 34, label %._crit_edge
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.bb = add nuw i64 %.038126, 1                 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, %.sroa.6.0.copyload
  br i1 %i.bc, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.077.0.copyload, i64 %i.bb
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !87
  switch i8 %i.be, label %.thread [
    i8 92, label %bb.f
    i8 34, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.d, %bb.f, %bb.e
  %.341.ph = phi i64 [ %i.bb, %bb.f ], [ %.038126, %bb.d ], [ %.038126, %bb.e ], [ %.038126, %.lr.ph ]
  %.3.ph = phi i8 [ 1, %bb.f ], [ 1, %bb.d ], [ 1, %bb.e ], [ %.1127, %.lr.ph ] ; 2 uses
  %i.bf = add nuw i64 %.341.ph, 1                 ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %.sroa.6.0.copyload
  br i1 %i.bg, label %.lr.ph, label %._crit_edge, !llvm.loop !931

._crit_edge:                                      ; preds = %.thread, %.lr.ph
  %.1.lcssa = phi i8 [ %.1127, %.lr.ph ], [ %.3.ph, %.thread ]
  %.348 = phi i64 [ %.038126, %.lr.ph ], [ -1, %.thread ] ; 2 uses
  %i.bh = trunc nuw i8 %.1.lcssa to i1
  %i.bi = icmp ugt i64 %.051135, 1
  %or.cond4 = select i1 %i.bh, i1 true, i1 %i.bi
  %or.cond6 = select i1 %or.cond4, i1 true, i1 %spec.select
  br i1 %or.cond6, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.bj = load ptr, ptr %i.ar, align 8, !tbaa !139
  %.not181 = icmp eq ptr %.sroa.077.0.copyload, %i.bj
  br i1 %.not181, label %bb.h, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit

bb.h:                                             ; preds = %bb.g
  %i.bk = load i8, ptr %.sroa.077.0.copyload, align 1, !tbaa !87
  %i.bl = icmp eq i8 %i.bk, 32
  %i.bm = zext i1 %i.bl to i8
  br label %_ZNK2c415basic_substringIKcE11begins_withEc.exit

_ZNK2c415basic_substringIKcE11begins_withEc.exit: ; preds = %bb.h, %bb.g, %._crit_edge
  %i.bn = phi i8 [ 1, %._crit_edge ], [ 0, %bb.g ], [ %i.bm, %bb.h ] ; 3 uses
  %i.bo = icmp eq i64 %.348, -1
  br i1 %i.bo, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread, label %bb.n

_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread: ; preds = %bb.c, %_ZNK2c415basic_substringIKcE11begins_withEc.exit
  %i.bp = phi i8 [ %i.bn, %_ZNK2c415basic_substringIKcE11begins_withEc.exit ], [ 1, %bb.c ] ; 2 uses
  %i.bq = add i64 %.sroa.6.0.copyload, %i.ay
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.077.0.copyload, i64 %.sroa.6.0.copyload
  store ptr %i.br, ptr %i.e, align 8, !tbaa !101
  store i64 0, ptr %i.am, align 8, !tbaa !102
  %i.bs = add i64 %.051135, 1
  %i.bt = load i64, ptr %i.as, align 8, !tbaa !225
  %i.bu = load i64, ptr %i.at, align 8, !tbaa !226
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = add i64 %i.bv, %i.bq                    ; 9 uses
  store i64 %i.bw, ptr %i.f, align 8, !tbaa !210
  %i.bx = load i64, ptr %i.au, align 8, !tbaa !211
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.au, align 8, !tbaa !211
  store i64 1, ptr %i.ah, align 8, !tbaa !212
  %i.bz = load i64, ptr %i.k, align 8, !tbaa !219 ; 7 uses
  %i.ca = icmp ult i64 %i.bw, %i.bz
  %.sroa.03.0.copyload.i = load ptr, ptr %i.h, align 8, !tbaa !101 ; 4 uses
  br i1 %i.ca, label %.lr.ph.i.i74, label %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, !prof !88

.lr.ph.i.i74:                                     ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread, %bb.i
  %.046.i.i = phi i64 [ %i.cd, %bb.i ], [ %i.bw, %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %.046.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.cc, label %bb.i [
    i8 10, label %bb.j
    i8 13, label %bb.j
  ]

bb.i:                                             ; preds = %.lr.ph.i.i74
  %i.cd = add i64 %.046.i.i, 1                    ; 2 uses
  %exitcond.not.i.i75 = icmp eq i64 %i.cd, %i.bz
  br i1 %exitcond.not.i.i75, label %.thread.i, label %.lr.ph.i.i74, !llvm.loop !22

bb.j:                                             ; preds = %.lr.ph.i.i74, %.lr.ph.i.i74
  %i.ce = icmp eq i8 %i.cc, 13
  %i.cf = zext i1 %i.ce to i64
  %spec.select.i.i = add nuw i64 %.046.i.i, %i.cf ; 4 uses
  %i.cg = icmp ult i64 %spec.select.i.i, %i.bz
  br i1 %i.cg, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %spec.select.i.i
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !87
  %i.cj = icmp eq i8 %i.ci, 10
  %i.ck = zext i1 %i.cj to i64
  %spec.select22.i.i = add nuw i64 %spec.select.i.i, %i.ck
  br label %.thread.i

.thread.i:                                        ; preds = %bb.i, %bb.k, %bb.j
  %.pn.i9.i = phi i64 [ %.046.i.i, %bb.j ], [ %.046.i.i, %bb.k ], [ %i.bz, %bb.i ] ; 2 uses
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.j ], [ %spec.select22.i.i, %bb.k ], [ %i.bz, %bb.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.bw ; 3 uses
  %i.cm = sub i64 %.pn.i9.i, %i.bw                ; 3 uses
  store ptr %i.cl, ptr %i.e, align 8, !tbaa !101
  store i64 %i.cm, ptr %i.am, align 8, !tbaa !102
  %.not13.i.i.i.i = icmp eq i64 %.pn.i9.i, %i.bw
  br i1 %.not13.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i, %bb.l
  %.0710.i.i.i.i = phi i64 [ %i.cp, %bb.l ], [ 0, %.thread.i ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.0710.i.i.i.i
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.co, 32
  br i1 %.not.i.i.i.i, label %bb.l, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cp = add nuw i64 %.0710.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cp, %i.cm
  br i1 %exitcond.not.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i: ; preds = %bb.l, %.lr.ph.i.i.i.i, %.thread.i
  %i.cq = phi i64 [ -1, %.thread.i ], [ -1, %bb.l ], [ %.0710.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i.i.i = icmp eq i64 %.2.i.i, -1
  %i.cr = select i1 %.not.i.i.i, i64 %i.bz, i64 %.2.i.i
  %i.cs = sub i64 %i.cr, %i.bw
  br label %bb.m

_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i: ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.bz ; 2 uses
  store ptr %i.ct, ptr %i.e, align 8, !tbaa !101
  store i64 0, ptr %i.am, align 8, !tbaa !102
  br label %bb.m

bb.m:                                             ; preds = %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i
  %.sink24.i = phi i64 [ -1, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.cq, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink22.i = phi ptr [ %i.ct, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.cl, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 3 uses
  %.sink21.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.cs, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.cm, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  store i64 %.sink24.i, ptr %i.av, align 8, !tbaa !220
  store ptr %.sink22.i, ptr %i.ar, align 8, !tbaa !101
  store i64 %.sink21.i, ptr %i.as, align 8, !tbaa !102
  store ptr %.sink22.i, ptr %i.aw, align 8, !tbaa !101
  store i64 %.sink.i, ptr %i.at, align 8, !tbaa !102
  %i.cu = load i64, ptr %i.k, align 8, !tbaa !219
  %.not117 = icmp ult i64 %i.bw, %i.cu
  br i1 %.not117, label %bb.c, label %.thread112

bb.n:                                             ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit
  %i.cv = add nuw i64 %.348, 1                    ; 4 uses
  %i.cw = add i64 %i.cv, %i.ay                    ; 2 uses
  store i64 %i.cw, ptr %i.f, align 8, !tbaa !210
  %i.cx = add i64 %i.ax, %i.cv
  store i64 %i.cx, ptr %i.ah, align 8, !tbaa !212
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.077.0.copyload, i64 %i.cv
  %i.cz = sub i64 %.sroa.6.0.copyload, %i.cv
  store ptr %i.cy, ptr %i.e, align 8, !tbaa !101
  store i64 %i.cz, ptr %i.am, align 8, !tbaa !102
  %i.da = xor i64 %i.af, -1
  %i.db = add i64 %i.cw, %i.da                    ; 3 uses
  %i.dc = icmp eq i64 %i.db, -1
  br i1 %i.dc, label %.thread112, label %bb.p

.thread112:                                       ; preds = %bb.m, %_ZNK2c415basic_substringIcE11begins_withEc.exit.thread, %bb.n
  %.5116 = phi i8 [ %i.bn, %bb.n ], [ 0, %_ZNK2c415basic_substringIcE11begins_withEc.exit.thread ], [ %i.bp, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !935
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58, !noalias !935
  store ptr %i.a, ptr %2, align 8, !tbaa !101, !noalias !935
  %.sroa.2.0..sroa_idx.i.i76 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i76, align 8, !tbaa !102, !noalias !935
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store i64 0, ptr %i.dd, align 8, !tbaa !178, !noalias !935
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58, !noalias !935
  store ptr %2, ptr %3, align 8, !tbaa !180, !noalias !935
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA46_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA46_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(46) @.str.172)
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !178, !noalias !935 ; 3 uses
  %i.df = load i64, ptr %.sroa.2.0..sroa_idx.i.i76, align 8, !tbaa !181, !noalias !935
  %i.dg = icmp ult i64 %i.de, %i.df
  br i1 %i.dg, label %bb.o, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA46_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

bb.o:                                             ; preds = %.thread112
  %i.dh = load ptr, ptr %2, align 8, !tbaa !182, !noalias !935
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.de
  store i8 10, ptr %i.di, align 1, !tbaa !87
  %.pre.i.i = load i64, ptr %i.dd, align 8, !tbaa !178, !noalias !935
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA46_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA46_cEEEvNS_15basic_substringIKcEEDprRKT_.exit: ; preds = %.thread112, %bb.o
  %i.dj = phi i64 [ %.pre.i.i, %bb.o ], [ %i.de, %.thread112 ]
  %i.dk = add i64 %i.dj, 1
  store i64 %i.dk, ptr %i.dd, align 8, !tbaa !178, !noalias !935
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA46_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.dl = load i64, ptr %i.dd, align 8, !tbaa !178, !noalias !935
  %i.dm = call i64 @llvm.umin.i64(i64 %i.dl, i64 1024)
  %i.dn = load ptr, ptr %i.b, align 8, !tbaa !169, !noalias !935 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2520
  store ptr null, ptr %i.do, align 8, !tbaa !223
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 2480
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !224
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 2488
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !206
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 2456
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !193
  call void %i.dq(ptr noundef nonnull %i.a, i64 noundef %i.dm, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.dt, ptr noundef %i.dv), !inline_history !934
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58, !noalias !935
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58, !noalias !935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !935
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dw = add i64 %i.db, -1
  %.not.i = icmp eq i64 %i.db, 0
  %i.dx = select i1 %.not.i, i64 %i.ap, i64 %i.dw
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA46_cEEEvNS_15basic_substringIKcEEDprRKT_.exit
  %.5115 = phi i8 [ %.5116, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA46_cEEEvNS_15basic_substringIKcEEDprRKT_.exit ], [ %i.bn, %bb.p ]
  %.sroa.12.1 = phi i64 [ %i.ap, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA46_cEEEvNS_15basic_substringIKcEEDprRKT_.exit ], [ %i.dx, %bb.p ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.084.0, i64 1
  store ptr %i.dy, ptr %0, align 8, !tbaa !101
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.12.1, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !102
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.5115, ptr %i.dz, align 8, !tbaa !231
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_scan_blockEPNS3_12ScannedBlockEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %3 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %4 = alloca %class.anon.22, align 8             ; 5 uses
  %i.b = alloca i64, align 8                      ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !169
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2488
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206  ; 8 uses
  %.sroa.0140.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !101 ; 6 uses
  %.sroa.7143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.7143.0.copyload = load i64, ptr %.sroa.7143.0..sroa_idx, align 8, !tbaa !102 ; 6 uses
  %i.g = icmp eq i64 %.sroa.7143.0.copyload, 0
  %i.h = icmp eq ptr %.sroa.0140.0.copyload, null
  %i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %i.i, label %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.0710.i.i = phi i64 [ %5, %bb.b ], [ 0, %bb.a ] ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0140.0.copyload, i64 %.0710.i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !87
  %.not.i.i = icmp eq i8 %i.k, 32
  %5 = add i64 %.0710.i.i, 1                      ; 3 uses
  br i1 %.not.i.i, label %bb.b, label %_ZNK2c415basic_substringIKcE5trimlEc.exit

bb.b:                                             ; preds = %.lr.ph.i.i
  %exitcond.not.i.i = icmp eq i64 %5, %.sroa.7143.0.copyload
  br i1 %exitcond.not.i.i, label %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread, label %.lr.ph.i.i, !llvm.loop !7

_ZNK2c415basic_substringIKcE5trimlEc.exit:        ; preds = %.lr.ph.i.i
  %.not211 = icmp ult i64 %5, 2
  br i1 %.not211, label %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK2c415basic_substringIKcE5trimlEc.exit
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.0140.0.copyload, i64 %.0710.i.i ; 2 uses
  %i.l = sub nuw i64 %.sroa.7143.0.copyload, %.0710.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !210
  %i.o = add i64 %i.n, %.0710.i.i
  store i64 %i.o, ptr %i.m, align 8, !tbaa !210
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !212
  %i.r = add i64 %i.q, %.0710.i.i
  store i64 %i.r, ptr %i.p, align 8, !tbaa !212
  store ptr %6, ptr %i.f, align 8, !tbaa !101
  store i64 %i.l, ptr %.sroa.7143.0..sroa_idx, align 8, !tbaa !102
  br label %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread

_ZNK2c415basic_substringIKcE5trimlEc.exit.thread: ; preds = %bb.b, %bb.c, %bb.a, %_ZNK2c415basic_substringIKcE5trimlEc.exit
  %i.s = phi i64 [ %i.l, %bb.c ], [ %.sroa.7143.0.copyload, %_ZNK2c415basic_substringIKcE5trimlEc.exit ], [ %.sroa.7143.0.copyload, %bb.a ], [ %.sroa.7143.0.copyload, %bb.b ] ; 9 uses
  %.sroa.0140.0 = phi ptr [ %6, %bb.c ], [ %.sroa.0140.0.copyload, %_ZNK2c415basic_substringIKcE5trimlEc.exit ], [ %.sroa.0140.0.copyload, %bb.a ], [ %.sroa.0140.0.copyload, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store i64 -1, ptr %i.b, align 8, !tbaa !102
  %i.t = icmp ugt i64 %i.s, 1
  br i1 %i.t, label %.preheader.lr.ph.i, label %_ZNK2c415basic_substringIKcE7left_ofEm.exit.thread

.preheader.lr.ph.i:                               ; preds = %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0140.0, i64 1 ; 4 uses
  %i.v = add i64 %i.s, -1                         ; 3 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %.01224.i = phi i64 [ %i.y, %._crit_edge.i ], [ 0, %.preheader.lr.ph.i ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %.01224.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !87    ; 3 uses
  switch i8 %i.x, label %._crit_edge.i [
    i8 45, label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit
    i8 43, label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit
  ]

._crit_edge.i:                                    ; preds = %.preheader.i
  %i.y = add nuw i64 %.01224.i, 1                 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %i.y, %i.v
  br i1 %exitcond27.not.i, label %.preheader.lr.ph.i83, label %.preheader.i, !llvm.loop !4

_ZNK2c415basic_substringIKcE8first_ofES2_m.exit:  ; preds = %.preheader.i, %.preheader.i
  %i.z = icmp eq i8 %i.x, 45
  %.not = icmp eq i64 %.01224.i, -1
  br i1 %.not, label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit
  %switch.selectcmp = icmp eq i8 %i.x, 43
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  %switch.select63 = select i1 %i.z, i32 1, i32 %switch.select ; 2 uses
  %i.aa = icmp eq i64 %.01224.i, 0
  br i1 %i.aa, label %bb.e, label %.preheader.lr.ph.i83

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0140.0, i64 2
  %i.ac = add i64 %i.s, -2
  br label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread

_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread: ; preds = %bb.e, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit
  %.sroa.0129.0 = phi ptr [ %i.u, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit ], [ %i.ab, %bb.e ]
  %.sroa.12.0 = phi i64 [ %i.v, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit ], [ %i.ac, %bb.e ] ; 2 uses
  %.1 = phi i32 [ 0, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit ], [ %switch.select63, %bb.e ] ; 2 uses
  %.not.i82 = icmp eq i64 %.sroa.12.0, 0
  br i1 %.not.i82, label %_ZNK2c415basic_substringIKcE7left_ofEm.exit.thread, label %.preheader.lr.ph.i83

.preheader.lr.ph.i83:                             ; preds = %._crit_edge.i, %bb.d, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread
  %.1168 = phi i32 [ %switch.select63, %bb.d ], [ %.1, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread ], [ 0, %._crit_edge.i ] ; 2 uses
  %.sroa.12.0166 = phi i64 [ %.01224.i, %bb.d ], [ %.sroa.12.0, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread ], [ %i.v, %._crit_edge.i ] ; 3 uses
  %.sroa.0129.0164 = phi ptr [ %i.u, %bb.d ], [ %.sroa.0129.0, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread ], [ %i.u, %._crit_edge.i ] ; 2 uses
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.f, %.preheader.lr.ph.i83
  %.01326.us.i = phi i64 [ %i.af, %bb.f ], [ 0, %.preheader.lr.ph.i83 ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0129.0164, i64 %.01326.us.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !87
  %.off = add i8 %i.ae, -48
  %switch = icmp ult i8 %.off, 10
  br i1 %switch, label %bb.f, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit

_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit: ; preds = %.preheader.us.i
  %.not.i74 = icmp eq i64 %.01326.us.i, -1
  %spec.select394 = select i1 %.not.i74, i64 %.sroa.12.0166, i64 %.01326.us.i
  br label %_ZNK2c415basic_substringIKcE7left_ofEm.exit

bb.f:                                             ; preds = %.preheader.us.i
  %i.af = add nuw i64 %.01326.us.i, 1             ; 2 uses
  %exitcond29.not.i = icmp eq i64 %i.af, %.sroa.12.0166
  br i1 %exitcond29.not.i, label %_ZNK2c415basic_substringIKcE7left_ofEm.exit, label %.preheader.us.i, !llvm.loop !5

_ZNK2c415basic_substringIKcE7left_ofEm.exit:      ; preds = %bb.f, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit
  %.sroa.5154.0 = phi i64 [ %spec.select394, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit ], [ %.sroa.12.0166, %bb.f ] ; 2 uses
  switch i64 %.sroa.5154.0, label %bb.g [
    i64 0, label %_ZNK2c415basic_substringIKcE7left_ofEm.exit.thread
    i64 1, label %bb.h
  ], !prof !285

bb.g:                                             ; preds = %_ZNK2c415basic_substringIKcE7left_ofEm.exit
  tail call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA33_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(33) @.str.175)
  br label %bb.h

bb.h:                                             ; preds = %_ZNK2c415basic_substringIKcE7left_ofEm.exit, %bb.g
  %i.ag = call noundef zeroext i1 @_ZN2c44atouImEEbNS_15basic_substringIKcEEPT_(ptr nonnull %.sroa.0129.0164, i64 %.sroa.5154.0, ptr noundef nonnull %i.b) #58
  br i1 %i.ag, label %bb.j, label %bb.i, !prof !88

bb.i:                                             ; preds = %bb.h
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA51_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(51) @.str.176)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !102 ; 2 uses
  %.not51 = icmp eq i64 %i.ah, 0
  br i1 %.not51, label %bb.k, label %bb.l, !prof !72

bb.k:                                             ; preds = %bb.j
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA30_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(30) @.str.177)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !102
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = phi i64 [ %.pre, %bb.k ], [ %i.ah, %bb.j ]
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !169
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2488
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !206 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.an = load i64, ptr %i.am, align 8, !tbaa !215
  %i.ao = add i64 %i.ai, %i.an                    ; 2 uses
  store i64 %i.ao, ptr %i.b, align 8, !tbaa !102
  %.pre303 = load ptr, ptr %i.al, align 8, !tbaa !139
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.pre304 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !138
  br label %_ZNK2c415basic_substringIKcE7left_ofEm.exit.thread

_ZNK2c415basic_substringIKcE7left_ofEm.exit.thread: ; preds = %_ZNK2c415basic_substringIKcE7left_ofEm.exit, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread, %bb.l, %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread
  %7 = phi i64 [ -1, %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread ], [ %i.ao, %bb.l ], [ -1, %_ZNK2c415basic_substringIKcE7left_ofEm.exit ], [ -1, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread ] ; 3 uses
  %8 = phi i64 [ %i.s, %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread ], [ %.pre304, %bb.l ], [ %i.s, %_ZNK2c415basic_substringIKcE7left_ofEm.exit ], [ %i.s, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread ]
  %9 = phi ptr [ %.sroa.0140.0, %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread ], [ %.pre303, %bb.l ], [ %.sroa.0140.0, %_ZNK2c415basic_substringIKcE7left_ofEm.exit ], [ %.sroa.0140.0, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread ]
  %10 = phi ptr [ %i.f, %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread ], [ %i.al, %bb.l ], [ %i.f, %_ZNK2c415basic_substringIKcE7left_ofEm.exit ], [ %i.f, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread ] ; 16 uses
  %.2 = phi i32 [ 0, %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread ], [ %.1168, %bb.l ], [ %.1168, %_ZNK2c415basic_substringIKcE7left_ofEm.exit ], [ %.1, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread ]
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 4 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !210
  %i.ar = add i64 %i.aq, %i.s
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 %i.s
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.av = sub i64 %8, %i.s
  store ptr %i.at, ptr %10, align 8, !tbaa !101
  store i64 %i.av, ptr %i.au, align 8, !tbaa !102
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !225
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !226
  %i.ba = sub i64 %i.ax, %i.az
  %i.bb = add i64 %i.ba, %i.ar                    ; 10 uses
  store i64 %i.bb, ptr %i.ap, align 8, !tbaa !210
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 4 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !211
  %i.be = add i64 %i.bd, 1                        ; 2 uses
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !211
  store i64 1, ptr %i.as, align 8, !tbaa !212
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !219 ; 7 uses
  %i.bi = icmp ult i64 %i.bb, %i.bh
  %.sroa.03.0.copyload.i = load ptr, ptr %i.bf, align 8, !tbaa !101 ; 4 uses
  br i1 %i.bi, label %.lr.ph.i.i85, label %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, !prof !88

.lr.ph.i.i85:                                     ; preds = %_ZNK2c415basic_substringIKcE7left_ofEm.exit.thread, %bb.m
  %.046.i.i = phi i64 [ %i.bl, %bb.m ], [ %i.bb, %_ZNK2c415basic_substringIKcE7left_ofEm.exit.thread ] ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %.046.i.i
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.bk, label %bb.m [
    i8 10, label %bb.n
    i8 13, label %bb.n
  ]

bb.m:                                             ; preds = %.lr.ph.i.i85
  %i.bl = add i64 %.046.i.i, 1                    ; 2 uses
  %exitcond.not.i.i86 = icmp eq i64 %i.bl, %i.bh
  br i1 %exitcond.not.i.i86, label %.thread.i, label %.lr.ph.i.i85, !llvm.loop !22

bb.n:                                             ; preds = %.lr.ph.i.i85, %.lr.ph.i.i85
  %i.bm = icmp eq i8 %i.bk, 13
  %i.bn = zext i1 %i.bm to i64
  %spec.select.i.i = add nuw i64 %.046.i.i, %i.bn ; 4 uses
  %i.bo = icmp ult i64 %spec.select.i.i, %i.bh
  br i1 %i.bo, label %bb.o, label %.thread.i

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %spec.select.i.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !87
  %i.br = icmp eq i8 %i.bq, 10
  %i.bs = zext i1 %i.br to i64
  %spec.select22.i.i = add nuw i64 %spec.select.i.i, %i.bs
  br label %.thread.i

.thread.i:                                        ; preds = %bb.m, %bb.o, %bb.n
  %.pn.i9.i = phi i64 [ %.046.i.i, %bb.n ], [ %.046.i.i, %bb.o ], [ %i.bh, %bb.m ] ; 2 uses
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.n ], [ %spec.select22.i.i, %bb.o ], [ %i.bh, %bb.m ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.bb ; 3 uses
  %i.bu = sub i64 %.pn.i9.i, %i.bb                ; 3 uses
  store ptr %i.bt, ptr %10, align 8, !tbaa !101
  store i64 %i.bu, ptr %i.au, align 8, !tbaa !102
  %.not13.i.i.i.i = icmp eq i64 %.pn.i9.i, %i.bb
  br i1 %.not13.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i, %bb.p
  %.0710.i.i.i.i = phi i64 [ %i.bx, %bb.p ], [ 0, %.thread.i ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.0710.i.i.i.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.bw, 32
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bx = add nuw i64 %.0710.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bx, %i.bu
  br i1 %exitcond.not.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i: ; preds = %bb.p, %.lr.ph.i.i.i.i, %.thread.i
  %i.by = phi i64 [ -1, %.thread.i ], [ -1, %bb.p ], [ %.0710.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i.i.i = icmp eq i64 %.2.i.i, -1
  %i.bz = select i1 %.not.i.i.i, i64 %i.bh, i64 %.2.i.i
  %i.ca = sub i64 %i.bz, %i.bb
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i: ; preds = %_ZNK2c415basic_substringIKcE7left_ofEm.exit.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.bh ; 2 uses
  store ptr %i.cb, ptr %10, align 8, !tbaa !101
  store i64 0, ptr %i.au, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit: ; preds = %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i
  %.sink24.i = phi i64 [ -1, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.by, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink22.i = phi ptr [ %i.cb, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.bt, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %.sink21.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.ca, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %.sink.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.bu, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i64 %.sink24.i, ptr %i.cc, align 8, !tbaa !220
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %.sink22.i, ptr %i.cd, align 8, !tbaa !101
  store i64 %.sink21.i, ptr %i.aw, align 8, !tbaa !102
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store ptr %.sink22.i, ptr %i.ce, align 8, !tbaa !101
  store i64 %.sink.i, ptr %i.ay, align 8, !tbaa !102
  %i.cf = load ptr, ptr %i.bf, align 8, !tbaa !139
  %i.cg = load i64, ptr %i.bg, align 8, !tbaa !219 ; 2 uses
  %.not214245 = icmp ult i64 %i.bb, %i.cg
  br i1 %.not214245, label %.lr.ph, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189

.lr.ph:                                           ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread
  %i.cj = phi i64 [ %7, %.lr.ph ], [ %i.ge, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 19 uses
  %i.ck = phi i64 [ %i.be, %.lr.ph ], [ %i.gi, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 2 uses
  %i.cl = phi i64 [ %.sink.i, %.lr.ph ], [ %i.db, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 2 uses
  %i.cm = phi i64 [ %.sink21.i, %.lr.ph ], [ %i.gb, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ]
  %i.cn = phi i64 [ %7, %.lr.ph ], [ %i.gf, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 7 uses
  %i.co = phi i64 [ %i.cg, %.lr.ph ], [ %i.gk, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 6 uses
  %i.cp = phi i64 [ %i.bb, %.lr.ph ], [ %i.gc, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 7 uses
  %.035250 = phi i64 [ -1, %.lr.ph ], [ %.4, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 20 uses
  %.038248 = phi i64 [ 0, %.lr.ph ], [ %i.gj, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 10 uses
  %.sroa.4.0246 = phi i64 [ 0, %.lr.ph ], [ %i.gg, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 10 uses
  %.sroa.02.0.copyload = load ptr, ptr %i.bf, align 8, !tbaa !101 ; 6 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.r
  %.046.i = phi i64 [ %i.cs, %bb.r ], [ %i.cp, %bb.q ] ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 %.046.i
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.cr, label %bb.r [
    i8 10, label %bb.s
    i8 13, label %bb.s
  ]

bb.r:                                             ; preds = %.lr.ph.i
  %i.cs = add i64 %.046.i, 1                      ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %i.cs, %i.co
  br i1 %exitcond.not.i94, label %.thread179, label %.lr.ph.i, !llvm.loop !22

bb.s:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.ct = icmp eq i8 %i.cr, 13
  %i.cu = zext i1 %i.ct to i64
  %spec.select.i93 = add nuw i64 %.046.i, %i.cu   ; 4 uses
  %i.cv = icmp ult i64 %spec.select.i93, %i.co
  br i1 %i.cv, label %bb.t, label %.thread179

bb.t:                                             ; preds = %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 %spec.select.i93
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !87
  %i.cy = icmp eq i8 %i.cx, 10
  %i.cz = zext i1 %i.cy to i64
  %spec.select22.i = add nuw i64 %spec.select.i93, %i.cz
  br label %.thread179

.thread179:                                       ; preds = %bb.r, %bb.t, %bb.s
  %.pn.i182 = phi i64 [ %.046.i, %bb.s ], [ %.046.i, %bb.t ], [ %i.co, %bb.r ] ; 3 uses
  %.2.i = phi i64 [ %spec.select.i93, %bb.s ], [ %spec.select22.i, %bb.t ], [ %i.co, %bb.r ] ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 %i.cp ; 12 uses
  %i.db = sub i64 %.pn.i182, %i.cp                ; 11 uses
  %.not13.i.i.i = icmp eq i64 %.pn.i182, %i.cp    ; 2 uses
  br i1 %.not13.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.thread179, %bb.u
  %.0710.i.i.i = phi i64 [ %i.de, %bb.u ], [ 0, %.thread179 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 %.0710.i.i.i
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !87
  %.not.i.i.i88 = icmp eq i8 %i.dd, 32
  br i1 %.not.i.i.i88, label %bb.u, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.de = add nuw i64 %.0710.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.de, %i.db
  br i1 %exitcond.not.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit, label %.lr.ph.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit: ; preds = %.lr.ph.i.i.i, %bb.u
  %i.df = phi i64 [ %.0710.i.i.i, %.lr.ph.i.i.i ], [ -1, %bb.u ] ; 22 uses
  %.not.i.i90 = icmp eq i64 %.2.i, -1
  %i.dg = select i1 %.not.i.i90, i64 %i.co, i64 %.2.i ; 13 uses
  %i.dh = sub i64 %i.dg, %i.cp                    ; 12 uses
  %.not52 = icmp eq i64 %i.cn, -1
  br i1 %.not52, label %.lr.ph.i97, label %bb.v

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.thread: ; preds = %.thread179
  %.not.i.i90342 = icmp eq i64 %.2.i, -1
  %i.di = select i1 %.not.i.i90342, i64 %i.co, i64 %.2.i ; 3 uses
  %i.dj = sub i64 %i.di, %i.cp                    ; 2 uses
  %.not52343 = icmp eq i64 %i.cn, -1
  br i1 %.not52343, label %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.thread, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread

bb.v:                                             ; preds = %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit
  %i.dk = icmp ult i64 %i.df, %i.cn
  br i1 %i.dk, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.dl = icmp eq ptr %.sroa.02.0.copyload, null
  br i1 %i.dl, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread, label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %bb.w, %bb.x
  %.01326.us.i.i.i = phi i64 [ %i.dp, %bb.x ], [ 0, %bb.w ] ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 %.01326.us.i.i.i
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !87
  switch i8 %i.dn, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i [
    i8 32, label %bb.x
    i8 9, label %bb.x
  ]

_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i: ; preds = %.preheader.us.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.da, i64 %.01326.us.i.i.i
  %.not.not.i.i = icmp eq i64 %.01326.us.i.i.i, -1
  br i1 %.not.not.i.i, label %.critedge, label %.preheader.us.i.i8.i.preheader

bb.x:                                             ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %i.dp = add nuw i64 %.01326.us.i.i.i, 1         ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.dp, %i.db
  br i1 %exitcond29.not.i.i.i, label %.critedge, label %.preheader.us.i.i.i, !llvm.loop !26

.preheader.us.i.i8.i.preheader:                   ; preds = %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i
  %i.dq = sub nuw i64 %i.db, %.01326.us.i.i.i
  br label %.preheader.us.i.i8.i

.preheader.us.i.i8.i:                             ; preds = %.preheader.us.i.i8.i.preheader, %.loopexit25.us.i.i.i
  %.01534.us.i.in.i.i = phi i64 [ %.01534.us.i.i.i, %.loopexit25.us.i.i.i ], [ %i.dq, %.preheader.us.i.i8.i.preheader ]
  %.01534.us.i.i.i = add i64 %.01534.us.i.in.i.i, -1 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.01534.us.i.i.i
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !87
  switch i8 %i.ds, label %_ZNK2c415basic_substringIcE4trimENS0_IKcEE.exit [
    i8 32, label %.loopexit25.us.i.i.i
    i8 9, label %.loopexit25.us.i.i.i
  ]

_ZNK2c415basic_substringIcE4trimENS0_IKcEE.exit:  ; preds = %.preheader.us.i.i8.i
  %.not59 = icmp eq i64 %.sroa.4.0246, 0
  br i1 %.not59, label %bb.y, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189

.loopexit25.us.i.i.i:                             ; preds = %.preheader.us.i.i8.i, %.preheader.us.i.i8.i
  %.not.us.i.i.i = icmp eq i64 %.01534.us.i.i.i, 0
  br i1 %.not.us.i.i.i, label %.critedge, label %.preheader.us.i.i8.i

bb.y:                                             ; preds = %_ZNK2c415basic_substringIcE4trimENS0_IKcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !940
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58, !noalias !940
  store ptr %i.a, ptr %3, align 8, !tbaa !101, !noalias !940
  %.sroa.2.0..sroa_idx.i.i96 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i96, align 8, !tbaa !102, !noalias !940
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i64 0, ptr %i.dt, align 8, !tbaa !178, !noalias !940
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58, !noalias !940
  store ptr %3, ptr %4, align 8, !tbaa !180, !noalias !940
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA41_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA41_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(41) @.str.179)
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !178, !noalias !940 ; 3 uses
  %i.dv = load i64, ptr %.sroa.2.0..sroa_idx.i.i96, align 8, !tbaa !181, !noalias !940
  %i.dw = icmp ult i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.z, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA41_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

bb.z:                                             ; preds = %bb.y
  %i.dx = load ptr, ptr %3, align 8, !tbaa !182, !noalias !940
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.du
  store i8 10, ptr %i.dy, align 1, !tbaa !87
  %.pre.i.i = load i64, ptr %i.dt, align 8, !tbaa !178, !noalias !940
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA41_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA41_cEEEvNS_15basic_substringIKcEEDprRKT_.exit: ; preds = %bb.y, %bb.z
  %i.dz = phi i64 [ %.pre.i.i, %bb.z ], [ %i.du, %bb.y ]
  %i.ea = add i64 %i.dz, 1
  store i64 %i.ea, ptr %i.dt, align 8, !tbaa !178, !noalias !940
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA41_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.eb = load i64, ptr %i.dt, align 8, !tbaa !178, !noalias !940
  %i.ec = call i64 @llvm.umin.i64(i64 %i.eb, i64 1024)
  %i.ed = load ptr, ptr %i.c, align 8, !tbaa !169, !noalias !940 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2520
  store ptr null, ptr %i.ee, align 8, !tbaa !223
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 2480
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !224
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 2488
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !206
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 56
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 2456
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !193
  call void %i.eg(ptr noundef nonnull %i.a, i64 noundef %i.ec, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.ej, ptr noundef %i.el), !inline_history !938
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58, !noalias !940
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58, !noalias !940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !940
  %.pre305 = load i64, ptr %i.b, align 8, !tbaa !102
  br label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189

.critedge:                                        ; preds = %bb.x, %.loopexit25.us.i.i.i, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i, %bb.v
  %i.em = icmp eq i64 %i.cn, 0
  %i.en = icmp ugt i64 %i.db, 2
  %or.cond = and i1 %i.en, %i.em
  br i1 %or.cond, label %bb.aa, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread

bb.aa:                                            ; preds = %.critedge
  %i.eo = load i8, ptr %i.da, align 1, !tbaa !87
  switch i8 %i.eo, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread [
    i8 45, label %bb.ab
    i8 46, label %bb.ae
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ep = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !87
  %i.er = icmp eq i8 %i.eq, 45
  br i1 %i.er, label %bb.ac, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.es = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %i.et = load i8, ptr %i.es, align 1, !tbaa !87
  %i.eu = icmp eq i8 %i.et, 45
  br i1 %i.eu, label %bb.ad, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.ev = icmp eq i64 %i.db, 3
  br i1 %i.ev, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit

bb.ae:                                            ; preds = %bb.aa
  %i.ew = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !87
  %i.ey = icmp eq i8 %i.ex, 46
  br i1 %i.ey, label %bb.af, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.ez = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !87
  %i.fb = icmp eq i8 %i.fa, 46
  br i1 %i.fb, label %bb.ag, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.fc = icmp eq i64 %i.db, 3
  br i1 %i.fc, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit

_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit: ; preds = %bb.ad, %bb.ag
  %i.fd = getelementptr inbounds nuw i8, ptr %i.da, i64 3
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !87
  %i.ff = icmp eq i8 %i.fe, 32
  br i1 %i.ff, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread

end_hunk_12
begin_hunk_13_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_scan_ref_seqEv:bb.a
  store i64 %i.k, ptr %i.i, align 8, !tbaa !210
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !212
  %i.n = add i64 %i.m, %i.h
  store i64 %i.n, ptr %i.l, align 8, !tbaa !212
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 %i.h
  %i.p = sub i64 %.sroa.5.0.copyload, %i.h
  store ptr %i.o, ptr %i.d, align 8, !tbaa !101
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !102
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_scan_ref_mapEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 5 uses
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !101 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !102 ; 4 uses
  %.not = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not, label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %._crit_edge.i
  %.01224.i = phi i64 [ %i.g, %._crit_edge.i ], [ 0, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 %.01224.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !87
  switch i8 %i.f, label %._crit_edge.i [
    i8 44, label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit
    i8 125, label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit
    i8 32, label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit
  ]

._crit_edge.i:                                    ; preds = %.preheader.i
  %i.g = add nuw i64 %.01224.i, 1                 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %i.g, %.sroa.5.0.copyload
  br i1 %exitcond27.not.i, label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread, label %.preheader.i, !llvm.loop !4

_ZNK2c415basic_substringIKcE8first_ofES2_m.exit:  ; preds = %.preheader.i, %.preheader.i, %.preheader.i
  %.not.i = icmp eq i64 %.01224.i, -1
  br i1 %.not.i, label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread, label %bb.b

_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread: ; preds = %._crit_edge.i, %bb.a, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread
  %i.h = phi i64 [ %.sroa.5.0.copyload, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread ], [ %.01224.i, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit ] ; 5 uses
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.02.0.copyload, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.h, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !210
  %i.k = add i64 %i.j, %i.h
  store i64 %i.k, ptr %i.i, align 8, !tbaa !210
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !212
  %i.n = add i64 %i.m, %i.h
  store i64 %i.n, ptr %i.l, align 8, !tbaa !212
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 %i.h
  %i.p = sub i64 %.sroa.5.0.copyload, %i.h
  store ptr %i.o, ptr %i.d, align 8, !tbaa !101
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !102
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_scan_tagEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !138  ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = load ptr, ptr %i.d, align 8              ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = select i1 %i.g, i1 true, i1 %i.i
  br i1 %i.j, label %_ZNK2c415basic_substringIKcE7left_ofEm.exit29, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.0710.i.i = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.0710.i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !87
  %.not.i.i = icmp eq i8 %i.l, 32
  br i1 %.not.i.i, label %bb.b, label %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.m = add nuw i64 %.0710.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i, label %_ZNK2c415basic_substringIKcE7left_ofEm.exit29, label %.lr.ph.i.i, !llvm.loop !23

_ZNK2c415basic_substringIcE12first_not_ofEc.exit.i: ; preds = %.lr.ph.i.i
  %.not.not.i = icmp eq i64 %.0710.i.i, -1        ; 2 uses
  %i.n = sub nuw i64 %i.f, %.0710.i.i             ; 13 uses
  %spec.select.idx.i = select i1 %.not.not.i, i64 0, i64 %.0710.i.i
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %spec.select.idx.i ; 18 uses
  br i1 %.not.not.i, label %_ZNK2c415basic_substringIKcE7left_ofEm.exit29, label %_ZNK2c415basic_substringIcE5trimlEc.exit

_ZNK2c415basic_substringIcE5trimlEc.exit:         ; preds = %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.i
  %i.o = icmp ult i64 %i.n, 2
  br i1 %i.o, label %.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %_ZNK2c415basic_substringIcE5trimlEc.exit
  %i.p = load i8, ptr %spec.select.i, align 1, !tbaa !87
  %.not.i38 = icmp eq i8 %i.p, 33
  br i1 %.not.i38, label %.preheader.i.1, label %.thread

.preheader.i.1:                                   ; preds = %.preheader.i.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !87
  %.not.i38.1 = icmp eq i8 %i.r, 33
  br i1 %.not.i38.1, label %_ZNK2c415basic_substringIKcE11begins_withES2_.exit, label %.preheader.i43.1

_ZNK2c415basic_substringIKcE11begins_withES2_.exit: ; preds = %.preheader.i.1
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.t = load i32, ptr %i.s, align 8, !tbaa !221
  %i.u = and i32 %i.t, 16
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %.lr.ph.i, label %.preheader.i39

.preheader.i39:                                   ; preds = %_ZNK2c415basic_substringIKcE11begins_withES2_.exit, %._crit_edge.i
  %.01224.i = phi i64 [ %i.x, %._crit_edge.i ], [ 0, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %.01224.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !87
  switch i8 %i.w, label %._crit_edge.i [
    i8 32, label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit
    i8 44, label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit
  ]

._crit_edge.i:                                    ; preds = %.preheader.i39
  %i.x = add nuw i64 %.01224.i, 1                 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %i.x, %i.n
  br i1 %exitcond27.not.i, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread, label %.preheader.i39, !llvm.loop !4

_ZNK2c415basic_substringIKcE8first_ofES2_m.exit:  ; preds = %.preheader.i39, %.preheader.i39
  %.not.i23 = icmp eq i64 %.01224.i, -1
  br i1 %.not.i23, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread, label %_ZNK2c415basic_substringIKcE7left_ofEm.exit29

.lr.ph.i:                                         ; preds = %_ZNK2c415basic_substringIKcE11begins_withES2_.exit, %bb.c
  %.0811.i = phi i64 [ %i.ab, %bb.c ], [ 0, %_ZNK2c415basic_substringIKcE11begins_withES2_.exit ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %.0811.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !87
  %i.aa = icmp eq i8 %i.z, 32
  br i1 %i.aa, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ab = add nuw i64 %.0811.i, 1                 ; 2 uses
  %exitcond.not.i42 = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond.not.i42, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread, label %.lr.ph.i, !llvm.loop !6

_ZNK2c415basic_substringIKcE8first_ofEcm.exit:    ; preds = %.lr.ph.i
  %.not.i16 = icmp eq i64 %.0811.i, -1
  br i1 %.not.i16, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread, label %_ZNK2c415basic_substringIKcE7left_ofEm.exit29

_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread: ; preds = %._crit_edge.i, %bb.c, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit
  br label %_ZNK2c415basic_substringIKcE7left_ofEm.exit29

.preheader.i43.1:                                 ; preds = %.preheader.i.1
  %i.ac = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !87
  %.not.i46.1 = icmp eq i8 %i.ad, 60
  br i1 %.not.i46.1, label %.lr.ph.i51, label %.thread

.lr.ph.i51:                                       ; preds = %.preheader.i43.1, %bb.d
  %.0811.i52 = phi i64 [ %i.ah, %bb.d ], [ 0, %.preheader.i43.1 ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %.0811.i52
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !87
  %i.ag = icmp eq i8 %i.af, 62
  br i1 %i.ag, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit54, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i51
  %i.ah = add i64 %.0811.i52, 1                   ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond.not.i53, label %_ZNK2c415basic_substringIKcE7left_ofEm.exit29, label %.lr.ph.i51, !llvm.loop !6

_ZNK2c415basic_substringIKcE8first_ofEcm.exit54:  ; preds = %.lr.ph.i51
  %.not.i30 = icmp eq i64 %.0811.i52, -1
  %i.ai = add nuw i64 %.0811.i52, 1
  %spec.select = select i1 %.not.i30, i64 %i.n, i64 %i.ai
  br label %_ZNK2c415basic_substringIKcE7left_ofEm.exit29

.thread:                                          ; preds = %.preheader.i43.1, %.preheader.i.preheader, %_ZNK2c415basic_substringIcE5trimlEc.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !221
  %i.al = and i32 %i.ak, 16
  %.not190 = icmp eq i32 %i.al, 0
  br i1 %.not190, label %.lr.ph.i64, label %.preheader.i56

.preheader.i56:                                   ; preds = %.thread, %._crit_edge.i60
  %.01224.i57 = phi i64 [ %i.ao, %._crit_edge.i60 ], [ 0, %.thread ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %.01224.i57
  %i.an = load i8, ptr %i.am, align 1, !tbaa !87
  switch i8 %i.an, label %._crit_edge.i60 [
    i8 32, label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit62
    i8 44, label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit62
  ]

._crit_edge.i60:                                  ; preds = %.preheader.i56
  %i.ao = add nuw i64 %.01224.i57, 1              ; 2 uses
  %exitcond27.not.i61 = icmp eq i64 %i.ao, %i.n
  br i1 %exitcond27.not.i61, label %_ZNK2c415basic_substringIKcE7left_ofEm.exit29, label %.preheader.i56, !llvm.loop !4

_ZNK2c415basic_substringIKcE8first_ofES2_m.exit62: ; preds = %.preheader.i56, %.preheader.i56
  %.not.i9 = icmp eq i64 %.01224.i57, -1
  %spec.select188 = select i1 %.not.i9, i64 %i.n, i64 %.01224.i57
  br label %_ZNK2c415basic_substringIKcE7left_ofEm.exit29

.lr.ph.i64:                                       ; preds = %.thread, %bb.e
  %.0811.i65 = phi i64 [ %i.as, %bb.e ], [ 0, %.thread ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %.0811.i65
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !87
  %i.ar = icmp eq i8 %i.aq, 32
  br i1 %i.ar, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit67, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i64
  %i.as = add i64 %.0811.i65, 1                   ; 2 uses
  %exitcond.not.i66 = icmp eq i64 %i.as, %i.n
  br i1 %exitcond.not.i66, label %_ZNK2c415basic_substringIKcE7left_ofEm.exit29, label %.lr.ph.i64, !llvm.loop !6

_ZNK2c415basic_substringIKcE8first_ofEcm.exit67:  ; preds = %.lr.ph.i64
  %.not.i = icmp eq i64 %.0811.i65, -1
  %spec.select189 = select i1 %.not.i, i64 %i.n, i64 %.0811.i65
  br label %_ZNK2c415basic_substringIKcE7left_ofEm.exit29

_ZNK2c415basic_substringIKcE7left_ofEm.exit29:    ; preds = %bb.b, %bb.d, %._crit_edge.i60, %bb.e, %bb.a, %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.i, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit67, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit62, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit54, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit
  %.sroa.7.0 = phi i64 [ %i.n, %bb.e ], [ %.01224.i, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit ], [ %.0811.i, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit ], [ %spec.select, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit54 ], [ %i.n, %bb.d ], [ %i.n, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread ], [ %i.n, %._crit_edge.i60 ], [ %spec.select188, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit62 ], [ 0, %bb.a ], [ 0, %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.i ], [ %spec.select189, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit67 ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0111.0 = phi ptr [ %spec.select.i, %bb.e ], [ %spec.select.i, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit ], [ %spec.select.i, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit ], [ %spec.select.i, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit54 ], [ %spec.select.i, %bb.d ], [ %spec.select.i, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread ], [ %spec.select.i, %._crit_edge.i60 ], [ %spec.select.i, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit62 ], [ %i.h, %bb.a ], [ %spec.select.i, %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.i ], [ %spec.select.i, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit67 ], [ %i.h, %bb.b ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !210
  %i.av = add i64 %i.au, %.sroa.7.0               ; 2 uses
  store i64 %i.av, ptr %i.at, align 8, !tbaa !210
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !212
  %i.ay = add i64 %i.ax, %.sroa.7.0               ; 2 uses
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !212
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.7.0 ; 4 uses
  %i.ba = sub i64 %i.f, %.sroa.7.0                ; 5 uses
  store ptr %i.az, ptr %i.d, align 8, !tbaa !101
  store i64 %i.ba, ptr %i.e, align 8, !tbaa !102
  %.not.i68 = icmp eq i64 %i.ba, 0
  br i1 %.not.i68, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK2c415basic_substringIKcE7left_ofEm.exit29
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !87
  %i.bc = icmp eq i8 %i.bb, 32
  br i1 %i.bc, label %.lr.ph.i.i69, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit

.lr.ph.i.i69:                                     ; preds = %bb.f, %bb.g
  %.0710.i.i70 = phi i64 [ %i.bf, %bb.g ], [ 0, %bb.f ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0710.i.i70
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !87
  %.not.i.i71 = icmp eq i8 %i.be, 32
  br i1 %.not.i.i71, label %bb.g, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i

bb.g:                                             ; preds = %.lr.ph.i.i69
  %i.bf = add nuw i64 %.0710.i.i70, 1             ; 2 uses
  %exitcond.not.i.i72 = icmp eq i64 %i.bf, %i.ba
  br i1 %exitcond.not.i.i72, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i, label %.lr.ph.i.i69, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i: ; preds = %.lr.ph.i.i69
  %i.bg = icmp eq i64 %.0710.i.i70, -1
  br i1 %i.bg, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i, label %bb.h

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i: ; preds = %bb.g, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i
  br label %bb.h

bb.h:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i
  %i.bh = phi i64 [ %i.ba, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i ], [ %.0710.i.i70, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i ] ; 4 uses
  %i.bi = add i64 %i.bh, %i.av
  store i64 %i.bi, ptr %i.at, align 8, !tbaa !210
  %i.bj = add i64 %i.bh, %i.ay
  store i64 %i.bj, ptr %i.aw, align 8, !tbaa !212
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bh
  %i.bl = sub i64 %i.ba, %i.bh
  store ptr %i.bk, ptr %i.d, align 8, !tbaa !101
  store i64 %i.bl, ptr %i.e, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit: ; preds = %_ZNK2c415basic_substringIKcE7left_ofEm.exit29, %bb.f, %bb.h
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0111.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.7.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !101 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !102 ; 4 uses
  %.not = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !87
  %i.f = icmp eq i8 %i.e, 32
  br i1 %i.f, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.0710.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.0710.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !87
  %.not.i = icmp eq i8 %i.h, 32
  br i1 %.not.i, label %bb.c, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = add nuw i64 %.0710.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %.sroa.5.0.copyload
  br i1 %exitcond.not.i, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread, label %.lr.ph.i, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit: ; preds = %.lr.ph.i
  %i.j = icmp eq i64 %.0710.i, -1
  br i1 %i.j, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread, label %bb.d

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread: ; preds = %bb.c, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit
  br label %bb.d

bb.d:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread
  %i.k = phi i64 [ %.sroa.5.0.copyload, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread ], [ %.0710.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !210
  %i.n = add i64 %i.m, %i.k
  store i64 %i.n, ptr %i.l, align 8, !tbaa !210
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !212
  %i.q = add i64 %i.p, %i.k
  store i64 %i.q, ptr %i.o, align 8, !tbaa !212
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.k
  %i.s = sub i64 %.sroa.5.0.copyload, %i.k
  store ptr %i.r, ptr %i.d, align 8, !tbaa !101
  store i64 %i.s, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE20_filter_scalar_plainENS_15basic_substringIcEEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  store ptr %1, ptr %4, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %2, ptr %i.a, align 8, !tbaa !233
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_filter_plainINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_m(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  ret { ptr, i64 } %i.c
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE20_filter_scalar_squotENS_15basic_substringIcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  store ptr %1, ptr %3, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %2, ptr %i.a, align 8, !tbaa !233
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_filter_squotedINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  ret { ptr, i64 } %i.c
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE20_filter_scalar_dquotENS_15basic_substringIcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %4 = alloca %"struct.c4::yml::FilterProcessorSrcDst", align 8 ; 8 uses
  %5 = alloca %"struct.c4::yml::FilterProcessorInplaceMidExtending", align 8 ; 9 uses
  %6 = alloca %"struct.c4::basic_substring", align 8 ; 4 uses
  %7 = alloca %"struct.c4::yml::FilterResultExtending", align 8 ; 6 uses
  %i.a = alloca [26 x i8], align 16               ; 3 uses
  store ptr %1, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58, !noalias !959
  store ptr %1, ptr %5, align 8, !tbaa !101, !noalias !959
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !102, !noalias !959
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.c, align 8, !tbaa !274, !noalias !959
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !959
  store i64 %2, ptr %i.e, align 8, !tbaa !275, !noalias !959
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48
end_hunk_13
begin_hunk_14_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_relocate_arenaENS_15basic_substringIKcEENS4_IcEE:bb.a

_ZNK2c415basic_substringIKcE8is_superES2_.exit41.thread: ; preds = %.split84, %bb.k
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %.087 ; 3 uses
  %.sroa.0.0.copyload.i31.1 = load ptr, ptr %i.cf, align 8, !tbaa !101 ; 3 uses
  %.sroa.2.0..sroa_idx.i32.1 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.2.0.copyload.i33.1 = load i64, ptr %.sroa.2.0..sroa_idx.i32.1, align 8, !tbaa !102
  %.not9.i38.1 = icmp uge ptr %.sroa.0.0.copyload.i31.1, %.fr92
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i31.1, i64 %.sroa.2.0.copyload.i33.1
  %i.ch = icmp ule ptr %i.cg, %i.af
  %i.ci = select i1 %.not9.i38.1, i1 %i.ch, i1 false
  br i1 %i.ci, label %bb.l, label %_ZNK2c415basic_substringIKcE8is_superES2_.exit41.thread.1

bb.l:                                             ; preds = %_ZNK2c415basic_substringIKcE8is_superES2_.exit41.thread
  %i.cj = ptrtoint ptr %.sroa.0.0.copyload.i31.1 to i64
  %i.ck = sub i64 %i.cj, %i.ag
  %i.cl = getelementptr inbounds i8, ptr %3, i64 %i.ck
  store ptr %i.cl, ptr %i.cf, align 8, !tbaa !1008
  br label %_ZNK2c415basic_substringIKcE8is_superES2_.exit41.thread.1

_ZNK2c415basic_substringIKcE8is_superES2_.exit41.thread.1: ; preds = %bb.l, %_ZNK2c415basic_substringIKcE8is_superES2_.exit41.thread
  %i.cm = add nuw i64 %.087, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit120.unr-lcssa, label %.split84, !llvm.loop !1004

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK2c415basic_substringIKcE8is_superES2_.exit46.thread.us.1
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %._crit_edge, label %.lr.ph89.split.us.split.epil.preheader

.lr.ph89.split.us.split.epil.preheader:           ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph89.split.us.split.preheader
  %.02788.us.epil.init = phi i64 [ 0, %.lr.ph89.split.us.split.preheader ], [ %i.bx, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod134 = trunc i64 %i.bf to i1
  tail call void @llvm.assume(i1 %lcmp.mod134)
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %.02788.us.epil.init ; 3 uses
  %.sroa.0.0.copyload.i28.us.epil = load ptr, ptr %i.cn, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i29.us.epil = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.2.0.copyload.i30.us.epil = load i64, ptr %.sroa.2.0..sroa_idx.i29.us.epil, align 8, !tbaa !102
  %i.co = icmp eq i64 %.sroa.2.0.copyload.i30.us.epil, 0
  %i.cp = icmp eq ptr %.sroa.0.0.copyload.i28.us.epil, %.fr92
  %or.cond91.epil = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond91.epil, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %.lr.ph89.split.us.split.epil.preheader
  store ptr %3, ptr %i.cn, align 8, !tbaa !1008
  br label %._crit_edge

._crit_edge.loopexit119.unr-lcssa:                ; preds = %_ZNK2c415basic_substringIKcE8is_superES2_.exit46.thread.1
  %lcmp.mod128.not = icmp eq i64 %xtraiter127, 0
  br i1 %lcmp.mod128.not, label %._crit_edge, label %.split86.epil.preheader

.split86.epil.preheader:                          ; preds = %._crit_edge.loopexit119.unr-lcssa, %.split86.preheader
  %.02788.epil.init = phi i64 [ 0, %.split86.preheader ], [ %i.dm, %._crit_edge.loopexit119.unr-lcssa ]
  %lcmp.mod129 = trunc i64 %i.bj to i1
  tail call void @llvm.assume(i1 %lcmp.mod129)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %.02788.epil.init ; 3 uses
  %.sroa.0.0.copyload.i28.epil = load ptr, ptr %i.cr, align 8, !tbaa !101 ; 3 uses
  %.sroa.2.0..sroa_idx.i29.epil = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.sroa.2.0.copyload.i30.epil = load i64, ptr %.sroa.2.0..sroa_idx.i29.epil, align 8, !tbaa !102
  %.not9.i43.epil = icmp uge ptr %.sroa.0.0.copyload.i28.epil, %.fr92
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i28.epil, i64 %.sroa.2.0.copyload.i30.epil
  %i.ct = icmp ule ptr %i.cs, %i.bk
  %i.cu = select i1 %.not9.i43.epil, i1 %i.ct, i1 false
  br i1 %i.cu, label %bb.n, label %._crit_edge

bb.n:                                             ; preds = %.split86.epil.preheader
  %i.cv = ptrtoint ptr %.sroa.0.0.copyload.i28.epil to i64
  %i.cw = sub i64 %i.cv, %i.bl
  %i.cx = getelementptr inbounds i8, ptr %3, i64 %i.cw
  store ptr %i.cx, ptr %i.cr, align 8, !tbaa !1008
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit119.unr-lcssa, %bb.n, %.split86.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.m, %.lr.ph89.split.us.split.epil.preheader, %.lr.ph.split.us, %.lr.ph89.split.us, %.preheader.thread, %.preheader
  ret void

.split86:                                         ; preds = %_ZNK2c415basic_substringIKcE8is_superES2_.exit46.thread.1, %.split86.preheader.new
  %.02788 = phi i64 [ 0, %.split86.preheader.new ], [ %i.dm, %_ZNK2c415basic_substringIKcE8is_superES2_.exit46.thread.1 ] ; 3 uses
  %niter131 = phi i64 [ 0, %.split86.preheader.new ], [ %niter131.next.1, %_ZNK2c415basic_substringIKcE8is_superES2_.exit46.thread.1 ]
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.bn, i64 %.02788 ; 3 uses
  %.sroa.0.0.copyload.i28 = load ptr, ptr %i.cy, align 8, !tbaa !101 ; 3 uses
  %.sroa.2.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.2.0.copyload.i30 = load i64, ptr %.sroa.2.0..sroa_idx.i29, align 8, !tbaa !102
  %.not9.i43 = icmp uge ptr %.sroa.0.0.copyload.i28, %.fr92
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i28, i64 %.sroa.2.0.copyload.i30
  %i.da = icmp ule ptr %i.cz, %i.bk
  %i.db = select i1 %.not9.i43, i1 %i.da, i1 false
  br i1 %i.db, label %bb.o, label %_ZNK2c415basic_substringIKcE8is_superES2_.exit46.thread

bb.o:                                             ; preds = %.split86
  %i.dc = ptrtoint ptr %.sroa.0.0.copyload.i28 to i64
  %i.dd = sub i64 %i.dc, %i.bl
  %i.de = getelementptr inbounds i8, ptr %3, i64 %i.dd
  store ptr %i.de, ptr %i.cy, align 8, !tbaa !1008
  br label %_ZNK2c415basic_substringIKcE8is_superES2_.exit46.thread

_ZNK2c415basic_substringIKcE8is_superES2_.exit46.thread: ; preds = %.split86, %bb.o
  %i.df = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %.02788 ; 3 uses
  %.sroa.0.0.copyload.i28.1 = load ptr, ptr %i.df, align 8, !tbaa !101 ; 3 uses
  %.sroa.2.0..sroa_idx.i29.1 = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.sroa.2.0.copyload.i30.1 = load i64, ptr %.sroa.2.0..sroa_idx.i29.1, align 8, !tbaa !102
  %.not9.i43.1 = icmp uge ptr %.sroa.0.0.copyload.i28.1, %.fr92
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i28.1, i64 %.sroa.2.0.copyload.i30.1
  %i.dh = icmp ule ptr %i.dg, %i.bk
  %i.di = select i1 %.not9.i43.1, i1 %i.dh, i1 false
  br i1 %i.di, label %bb.p, label %_ZNK2c415basic_substringIKcE8is_superES2_.exit46.thread.1

bb.p:                                             ; preds = %_ZNK2c415basic_substringIKcE8is_superES2_.exit46.thread
  %i.dj = ptrtoint ptr %.sroa.0.0.copyload.i28.1 to i64
  %i.dk = sub i64 %i.dj, %i.bl
  %i.dl = getelementptr inbounds i8, ptr %3, i64 %i.dk
  store ptr %i.dl, ptr %i.df, align 8, !tbaa !1008
  br label %_ZNK2c415basic_substringIKcE8is_superES2_.exit46.thread.1

_ZNK2c415basic_substringIKcE8is_superES2_.exit46.thread.1: ; preds = %bb.p, %_ZNK2c415basic_substringIKcE8is_superES2_.exit46.thread
  %i.dm = add nuw i64 %.02788, 2                  ; 2 uses
  %niter131.next.1 = add nuw i64 %niter131, 2     ; 2 uses
  %niter131.ncmp.1 = icmp eq i64 %niter131.next.1, %unroll_iter130
  br i1 %niter131.ncmp.1, label %._crit_edge.loopexit119.unr-lcssa, label %.split86, !llvm.loop !1005
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9add_flagsEiPNS0_11ParserStateE(i32 noundef %0, ptr noalias noundef %1) local_unnamed_addr #44 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !221
  %i.c = or i32 %i.b, %0
  store i32 %i.c, ptr %i.a, align 8, !tbaa !221
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE12addrem_flagsEiiPNS0_11ParserStateE(i32 noundef %0, i32 noundef %1, ptr noalias noundef %2) local_unnamed_addr #44 comdat align 2 {
bb.a:
  %i.a = xor i32 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !221
  %i.d = and i32 %i.c, %i.a
  %i.e = or i32 %i.d, %0
  store i32 %i.e, ptr %i.b, align 8, !tbaa !221
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9rem_flagsEiPNS0_11ParserStateE(i32 noundef %0, ptr noalias noundef %1) local_unnamed_addr #44 comdat align 2 {
bb.a:
  %i.a = xor i32 %0, -1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !221
  %i.d = and i32 %i.c, %i.a
  store i32 %i.d, ptr %i.b, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE18_prepare_locationsEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !136
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !138  ; 5 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNK2c415basic_substringIcE5countEcm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !139  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.0811.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.i, %bb.c ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0811.i.i.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !87
  %i.h = icmp eq i8 %i.g, 10
  br i1 %i.h, label %_ZNK2c415basic_substringIcE4findEcm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i64 %.0811.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.i, %i.d
  br i1 %exitcond.not.i.i.i, label %_ZNK2c415basic_substringIcE5countEcm.exit, label %bb.b, !llvm.loop !35

_ZNK2c415basic_substringIcE4findEcm.exit.i:       ; preds = %bb.b
  %.not13.i = icmp eq i64 %.0811.i.i.i, -1
  br i1 %.not13.i, label %_ZNK2c415basic_substringIcE5countEcm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK2c415basic_substringIcE4findEcm.exit.i, %_ZNK2c415basic_substringIcE4findEcm.exit11.i
  %.015.i = phi i64 [ %i.j, %_ZNK2c415basic_substringIcE4findEcm.exit11.i ], [ 0, %_ZNK2c415basic_substringIcE4findEcm.exit.i ]
  %.0714.i = phi i64 [ %.0811.i.i9.i, %_ZNK2c415basic_substringIcE4findEcm.exit11.i ], [ %.0811.i.i.i, %_ZNK2c415basic_substringIcE4findEcm.exit.i ]
  %i.j = add i64 %.015.i, 1                       ; 4 uses
  %i.k = add nuw i64 %.0714.i, 1                  ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %.lr.ph.i.i8.i, label %_ZNK2c415basic_substringIcE5countEcm.exit

.lr.ph.i.i8.i:                                    ; preds = %.lr.ph.i, %bb.d
  %.0811.i.i9.i = phi i64 [ %i.p, %bb.d ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0811.i.i9.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !87
  %i.o = icmp eq i8 %i.n, 10
  br i1 %i.o, label %_ZNK2c415basic_substringIcE4findEcm.exit11.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i8.i
  %i.p = add i64 %.0811.i.i9.i, 1                 ; 2 uses
  %exitcond.not.i.i10.i = icmp eq i64 %i.p, %i.d
  br i1 %exitcond.not.i.i10.i, label %_ZNK2c415basic_substringIcE5countEcm.exit, label %.lr.ph.i.i8.i, !llvm.loop !35

_ZNK2c415basic_substringIcE4findEcm.exit11.i:     ; preds = %.lr.ph.i.i8.i
  %.not.i = icmp eq i64 %.0811.i.i9.i, -1
  br i1 %.not.i, label %_ZNK2c415basic_substringIcE5countEcm.exit, label %.lr.ph.i, !llvm.loop !1010

_ZNK2c415basic_substringIcE5countEcm.exit:        ; preds = %bb.c, %.lr.ph.i, %_ZNK2c415basic_substringIcE4findEcm.exit11.i, %bb.d, %bb.a, %_ZNK2c415basic_substringIcE4findEcm.exit.i
  %.0.lcssa.i = phi i64 [ 0, %_ZNK2c415basic_substringIcE4findEcm.exit.i ], [ %i.j, %.lr.ph.i ], [ %i.j, %bb.d ], [ 0, %bb.a ], [ %i.j, %_ZNK2c415basic_substringIcE4findEcm.exit11.i ], [ 0, %bb.c ]
  %i.q = add i64 %.0.lcssa.i, 1                   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !192  ; 2 uses
  %i.t = icmp ugt i64 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_resize_locationsEm.exit

bb.e:                                             ; preds = %_ZNK2c415basic_substringIcE5countEcm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !171  ; 2 uses
  %.not.i6 = icmp eq ptr %i.v, null
  br i1 %.not.i6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !169  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2456
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 2472
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !191
  %i.ab = shl i64 %i.s, 3
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !193
  tail call void %i.aa(ptr noundef nonnull %i.v, i64 noundef %i.ab, ptr noundef %i.ac), !inline_history !199
  store ptr null, ptr %i.u, align 8, !tbaa !171
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !169 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2456
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 2464
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !198
  %i.ai = shl i64 %i.q, 3
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !193
  %i.ak = tail call noundef ptr %i.ah(i64 noundef %i.ai, ptr noundef null, ptr noundef %i.aj), !inline_history !199
  store ptr %i.ak, ptr %i.u, align 8, !tbaa !171
  store i64 %i.q, ptr %i.r, align 8, !tbaa !192
  %.pre = load i64, ptr %i.c, align 8, !tbaa !219
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_resize_locationsEm.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_resize_locationsEm.exit: ; preds = %_ZNK2c415basic_substringIcE5countEcm.exit, %bb.g
  %i.al = phi i64 [ %i.d, %_ZNK2c415basic_substringIcE5countEcm.exit ], [ %.pre, %bb.g ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  store i64 0, ptr %i.am, align 8, !tbaa !170
  %.not14 = icmp eq i64 %i.al, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_resize_locationsEm.exit
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.h

._crit_edge.loopexit:                             ; preds = %bb.j
  %.pre23 = load i64, ptr %i.am, align 8, !tbaa !170
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_resize_locationsEm.exit
  %i.ap = phi i64 [ 0, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_resize_locationsEm.exit ], [ %.pre23, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi i64 [ 0, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_resize_locationsEm.exit ], [ %i.bc, %._crit_edge.loopexit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !171
  %i.as = add i64 %i.ap, 1
  store i64 %i.as, ptr %i.am, align 8, !tbaa !170
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  store i64 %.lcssa, ptr %i.at, align 8, !tbaa !102
  ret void

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %i.au = phi i64 [ %i.al, %.lr.ph ], [ %i.bc, %bb.j ]
  %.013 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %bb.j ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 %.013
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !87
  %i.ax = icmp eq i8 %i.aw, 10
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.ao, align 8, !tbaa !171
  %i.az = load i64, ptr %i.am, align 8, !tbaa !170 ; 2 uses
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.am, align 8, !tbaa !170
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  store i64 %.013, ptr %i.bb, align 8, !tbaa !102
  %.pre22 = load i64, ptr %i.c, align 8, !tbaa !219
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.bc = phi i64 [ %i.au, %bb.h ], [ %.pre22, %bb.i ] ; 3 uses
  %i.bd = add nuw i64 %.013, 1                    ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  br i1 %i.be, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !1011
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_locations_dirtyEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load i64, ptr %i.a, align 8, !tbaa !170
  %.not = icmp eq i64 %i.b, 0
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA21_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, ptr noalias noundef nonnull align 1 dereferenceable(21) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %4 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %5 = alloca %class.anon.32, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  store ptr %i.a, ptr %4, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  store ptr %4, ptr %5, align 8, !tbaa !180
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA21_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA21_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(21) %3)
  %i.c = load i64, ptr %i.b, align 8, !tbaa !178  ; 3 uses
  %i.d = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !181
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZN2c43yml6detail13_SubstrWriter6appendEc.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c
  store i8 10, ptr %i.g, align 1, !tbaa !87
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !178
  br label %_ZN2c43yml6detail13_SubstrWriter6appendEc.exit

_ZN2c43yml6detail13_SubstrWriter6appendEc.exit:   ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.b, align 8, !tbaa !178
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA21_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.j = load i64, ptr %i.b, align 8, !tbaa !178
  %i.k = call i64 @llvm.umin.i64(i64 %i.j, i64 1024)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !169  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2520
  store ptr null, ptr %i.n, align 8, !tbaa !223
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 2480
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !224
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 2488
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !206
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 2456
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !193
  call void %i.p(ptr noundef nonnull %i.a, i64 noundef %i.k, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.s, ptr noundef %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE18_clear_annotationsEPNS3_10AnnotationE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef %1) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 0, ptr %i.a, align 8, !tbaa !256
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_has_pending_annotationsEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load i64, ptr %i.a, align 8, !tbaa !260
  %.not = icmp ne i64 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ne i64 %i.d, 0
  %i.f = select i1 %.not, i1 true, i1 %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA14_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, ptr noalias noundef nonnull align 1 dereferenceable(14) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %4 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %5 = alloca %class.anon.33, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  store ptr %i.a, ptr %4, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  store ptr %4, ptr %5, align 8, !tbaa !180
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA14_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA14_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(14) %3)
  %i.c = load i64, ptr %i.b, align 8, !tbaa !178  ; 3 uses
  %i.d = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !181
end_hunk_14
