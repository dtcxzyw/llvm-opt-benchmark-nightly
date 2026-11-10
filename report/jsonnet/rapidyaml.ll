Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/rapidyaml?download=true
inline.NumInlined: 4426
inline.NumDeleted: 407
loop-unroll.NumCompletelyUnrolled: 308
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 324
begin_hunk_0_@_ZNK2c43yml4Tree18num_tag_directivesEv:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN2c43yml4Tree20clear_tag_directivesEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(256) initializes((96, 256)) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %scevgep, i8 0, i64 160, i1 false), !tbaa !87
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i64 0, 4) i64 @_ZN2c43yml4Tree17add_tag_directiveERKNS0_12TagDirectiveE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(256) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %3 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %4 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %5 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %6 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %7 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.a = alloca [33 x i8], align 16               ; 3 uses
  %i.b = alloca [33 x i8], align 16               ; 3 uses
  %i.c = alloca [41 x i8], align 16               ; 3 uses
  %i.d = alloca [39 x i8], align 16               ; 3 uses
  %i.e = alloca [164 x i8], align 16              ; 3 uses
  %i.f = alloca [22 x i8], align 16               ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !92   ; 6 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = load ptr, ptr %1, align 8                ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = select i1 %i.i, i1 true, i1 %i.k
  br i1 %i.l, label %bb.b, label %bb.c, !prof !72

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %i.a, ptr noundef nonnull align 16 dereferenceable(33) @__const._ZN2c43yml4Tree17add_tag_directiveERKNS0_12TagDirectiveE.msg, i64 33, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 0, ptr %7, align 8
  %.sroa.244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 42436, ptr %.sroa.244.0..sroa_idx, align 8
  %.sroa.345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %.sroa.345.0..sroa_idx, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr @.str.1, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 74, ptr %.sroa.547.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !94
  call void %i.o(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %7, ptr noundef %i.p), !inline_history !105
  call void @abort() #61
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !92
  %i.t = icmp eq i64 %i.s, 0
  %i.u = load ptr, ptr %i.q, align 8
  %i.v = icmp eq ptr %i.u, null
  %i.w = select i1 %i.t, i1 true, i1 %i.v
  br i1 %i.w, label %bb.d, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit, !prof !72

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %i.b, ptr noundef nonnull align 16 dereferenceable(33) @__const._ZN2c43yml4Tree17add_tag_directiveERKNS0_12TagDirectiveE.msg.140, i64 33, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %6, align 8
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 42437, ptr %.sroa.239.0..sroa_idx, align 8
  %.sroa.340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %.sroa.340.0..sroa_idx, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @.str.1, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 74, ptr %.sroa.542.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !97
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !94
  call void %i.z(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %6, ptr noundef %i.aa), !inline_history !105
  call void @abort() #61
  unreachable

_ZNK2c415basic_substringIKcE11begins_withEc.exit: ; preds = %bb.c
  %i.ab = load i8, ptr %i.j, align 1, !tbaa !87
  %i.ac = icmp eq i8 %i.ab, 33
  br i1 %i.ac, label %_ZNK2c415basic_substringIKcE9ends_withEc.exit, label %bb.e, !prof !88

bb.e:                                             ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(41) %i.c, ptr noundef nonnull align 16 dereferenceable(41) @__const._ZN2c43yml4Tree17add_tag_directiveERKNS0_12TagDirectiveE.msg.141, i64 41, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 0, ptr %5, align 8
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 42438, ptr %.sroa.234.0..sroa_idx, align 8
  %.sroa.335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %.sroa.335.0..sroa_idx, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr @.str.1, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 74, ptr %.sroa.537.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !94
  call void %i.af(ptr noundef nonnull %i.c, i64 noundef 40, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %5, ptr noundef %i.ag), !inline_history !105
  call void @abort() #61
  unreachable

_ZNK2c415basic_substringIKcE9ends_withEc.exit:    ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit
  %i.ah = getelementptr i8, ptr %i.j, i64 %i.h
  %i.ai = getelementptr i8, ptr %i.ah, i64 -1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !87
  %i.ak = icmp eq i8 %i.aj, 33
  br i1 %i.ak, label %_ZNK2c415basic_substringIKcE7compareEc.exit, label %bb.f, !prof !88

bb.f:                                             ; preds = %_ZNK2c415basic_substringIKcE9ends_withEc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(39) %i.d, ptr noundef nonnull align 16 dereferenceable(39) @__const._ZN2c43yml4Tree17add_tag_directiveERKNS0_12TagDirectiveE.msg.142, i64 39, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 0, ptr %4, align 8
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 42439, ptr %.sroa.229.0..sroa_idx, align 8
  %.sroa.330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %.sroa.330.0..sroa_idx, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @.str.1, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 74, ptr %.sroa.532.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !97
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !94
  call void %i.an(ptr noundef nonnull %i.d, i64 noundef 38, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %4, ptr noundef %i.ao), !inline_history !105
  call void @abort() #61
  unreachable

_ZNK2c415basic_substringIKcE7compareEc.exit:      ; preds = %_ZNK2c415basic_substringIKcE9ends_withEc.exit
  %i.ap = and i64 %i.h, 4294967295
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %.critedge, label %.lr.ph.i

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !87, !noalias !489
  %.not.i16.1 = icmp eq i8 %i.as, 33
  %.not = icmp eq i64 %i.h, 2
  %or.cond100 = and i1 %.not.i16.1, %.not
  br i1 %or.cond100, label %.critedge, label %.lr.ph.i.i.i.preheader

.lr.ph.i:                                         ; preds = %_ZNK2c415basic_substringIKcE7compareEc.exit
  %i.at = load i8, ptr %i.j, align 1, !tbaa !87, !noalias !489
  %.not.i16 = icmp eq i8 %i.at, 33
  br i1 %.not.i16, label %.lr.ph.i.1, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i, %.lr.ph.i.1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.g
  %.0710.i.i.i = phi i64 [ %i.aw, %bb.g ], [ 0, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 %.0710.i.i.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !87
  %.not.i.i.i = icmp eq i8 %i.av, 33
  br i1 %.not.i.i.i, label %bb.g, label %_ZNK2c415basic_substringIKcE5trimlEc.exit.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.aw = add nuw i64 %.0710.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.aw, %i.h
  br i1 %exitcond.not.i.i.i, label %.critedge, label %.lr.ph.i.i.i, !llvm.loop !7

_ZNK2c415basic_substringIKcE5trimlEc.exit.i:      ; preds = %.lr.ph.i.i.i
  %.not.not.i.i = icmp eq i64 %.0710.i.i.i, -1    ; 2 uses
  %i.ax = sub nuw i64 %i.h, %.0710.i.i.i          ; 3 uses
  %spec.select.idx.i.i = select i1 %.not.not.i.i, i64 0, i64 %.0710.i.i.i
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %spec.select.idx.i.i ; 2 uses
  %.not.i10.i.i90 = icmp eq i64 %i.ax, 0
  %or.cond = select i1 %.not.not.i.i, i1 true, i1 %.not.i10.i.i90
  br i1 %or.cond, label %.critedge, label %.lr.ph

.preheader.i.i:                                   ; preds = %.lr.ph
  %.not.i10.i.i = icmp eq i64 %.09.i.i.i, 0
  br i1 %.not.i10.i.i, label %.critedge, label %.lr.ph, !llvm.loop !18

.lr.ph:                                           ; preds = %_ZNK2c415basic_substringIKcE5trimlEc.exit.i, %.preheader.i.i
  %.09.in.i.i.i91 = phi i64 [ %.09.i.i.i, %.preheader.i.i ], [ %i.ax, %_ZNK2c415basic_substringIKcE5trimlEc.exit.i ] ; 3 uses
  %.09.i.i.i = add i64 %.09.in.i.i.i91, -1        ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 %.09.i.i.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !87
  %.not13.i.i.i = icmp eq i8 %i.az, 33
  br i1 %.not13.i.i.i, label %.preheader.i.i, label %_ZNK2c415basic_substringIKcE11last_not_ofEcm.exit.i.i, !llvm.loop !18

_ZNK2c415basic_substringIKcE11last_not_ofEcm.exit.i.i: ; preds = %.lr.ph
  %.not.i.i2.i = icmp eq i64 %.09.in.i.i.i91, -1
  %spec.select = select i1 %.not.i.i2.i, i64 %i.ax, i64 %.09.in.i.i.i91
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %_ZNK2c415basic_substringIKcE11last_not_ofEcm.exit.i.i
  %.01326.i = phi i64 [ %i.bc, %bb.h ], [ 0, %_ZNK2c415basic_substringIKcE11last_not_ofEcm.exit.i.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 %.01326.i
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.bb, label %8 [
    i8 48, label %bb.h
    i8 49, label %bb.h
    i8 50, label %bb.h
    i8 51, label %bb.h
    i8 52, label %bb.h
    i8 53, label %bb.h
    i8 54, label %bb.h
    i8 55, label %bb.h
    i8 56, label %bb.h
    i8 57, label %bb.h
    i8 97, label %bb.h
    i8 98, label %bb.h
    i8 99, label %bb.h
    i8 100, label %bb.h
    i8 101, label %bb.h
    i8 102, label %bb.h
    i8 103, label %bb.h
    i8 104, label %bb.h
    i8 105, label %bb.h
    i8 106, label %bb.h
    i8 107, label %bb.h
    i8 108, label %bb.h
    i8 109, label %bb.h
    i8 110, label %bb.h
    i8 111, label %bb.h
    i8 112, label %bb.h
    i8 113, label %bb.h
    i8 114, label %bb.h
    i8 115, label %bb.h
    i8 116, label %bb.h
    i8 117, label %bb.h
    i8 118, label %bb.h
    i8 119, label %bb.h
    i8 120, label %bb.h
    i8 121, label %bb.h
    i8 122, label %bb.h
    i8 65, label %bb.h
    i8 66, label %bb.h
    i8 67, label %bb.h
    i8 68, label %bb.h
    i8 69, label %bb.h
    i8 70, label %bb.h
  ]

8:                                                ; preds = %.preheader.i
  switch i8 %i.bb, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit [
    i8 71, label %bb.h
    i8 72, label %bb.h
    i8 73, label %bb.h
    i8 74, label %bb.h
    i8 75, label %bb.h
    i8 76, label %bb.h
    i8 77, label %bb.h
    i8 78, label %bb.h
    i8 79, label %bb.h
    i8 80, label %bb.h
    i8 81, label %bb.h
    i8 82, label %bb.h
    i8 83, label %bb.h
    i8 84, label %bb.h
    i8 85, label %bb.h
    i8 86, label %bb.h
    i8 87, label %bb.h
    i8 88, label %bb.h
    i8 89, label %bb.h
    i8 90, label %bb.h
    i8 45, label %bb.h
  ]

_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit: ; preds = %8
  %.not63 = icmp eq i64 %.01326.i, -1
  br i1 %.not63, label %.critedge, label %bb.i, !prof !490

bb.h:                                             ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  %i.bc = add nuw i64 %.01326.i, 1                ; 2 uses
  %exitcond30.not.i = icmp eq i64 %i.bc, %spec.select
  br i1 %exitcond30.not.i, label %.critedge, label %.preheader.i, !llvm.loop !4

bb.i:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(164) %i.e, ptr noundef nonnull align 16 dereferenceable(164) @__const._ZN2c43yml4Tree17add_tag_directiveERKNS0_12TagDirectiveE.msg.144, i64 164, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 0, ptr %3, align 8
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 42441, ptr %.sroa.221.0..sroa_idx, align 8
  %.sroa.322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %.sroa.322.0..sroa_idx, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @.str.1, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 74, ptr %.sroa.524.0..sroa_idx, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !97
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !94
  call void %i.bf(ptr noundef nonnull %i.e, i64 noundef 163, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %3, ptr noundef %i.bg), !inline_history !105
  call void @abort() #61
  unreachable

.critedge:                                        ; preds = %.lr.ph.i.1, %bb.g, %.preheader.i.i, %bb.h, %_ZNK2c415basic_substringIKcE5trimlEc.exit.i, %_ZNK2c415basic_substringIKcE7compareEc.exit, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !92
  %i.bk = icmp eq i64 %i.bj, 0
  %i.bl = load ptr, ptr %i.bh, align 8
  %i.bm = icmp eq ptr %i.bl, null
  %i.bn = select i1 %i.bk, i1 true, i1 %i.bm
  br i1 %i.bn, label %select.unfold, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !92
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = load ptr, ptr %i.bo, align 8
  %i.bt = icmp eq ptr %i.bs, null
  %i.bu = select i1 %i.br, i1 true, i1 %i.bt
  br i1 %i.bu, label %select.unfold, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !92
  %i.by = icmp eq i64 %i.bx, 0
  %i.bz = load ptr, ptr %i.bv, align 8
  %i.ca = icmp eq ptr %i.bz, null
  %i.cb = select i1 %i.by, i1 true, i1 %i.ca
  br i1 %i.cb, label %select.unfold, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !92
  %i.cf = icmp eq i64 %i.ce, 0
  %i.cg = load ptr, ptr %i.cc, align 8
  %i.ch = icmp eq ptr %i.cg, null
  %i.ci = select i1 %i.cf, i1 true, i1 %i.ch
  br i1 %i.ci, label %select.unfold, label %_ZNK2c43yml4Tree18num_tag_directivesEv.exit

_ZNK2c43yml4Tree18num_tag_directivesEv.exit:      ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(22) %i.f, ptr noundef nonnull align 16 dereferenceable(22) @__const._ZN2c43yml4Tree17add_tag_directiveERKNS0_12TagDirectiveE.msg.145, i64 22, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 0, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 42443, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @.str.1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 74, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !97
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !94
  call void %i.cl(ptr noundef nonnull %i.f, i64 noundef 21, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %2, ptr noundef %i.cm), !inline_history !105
  call void @abort() #61
  unreachable

select.unfold:                                    ; preds = %bb.l, %.critedge, %bb.k, %bb.j
  %.ph = phi i64 [ 0, %.critedge ], [ 1, %bb.j ], [ 2, %bb.k ], [ 3, %bb.l ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [40 x i8], ptr %i.bh, i64 %.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cn, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !137
  ret i64 %.ph
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN2c43yml4Tree17add_tag_directiveENS_15basic_substringIKcEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(256) %0, ptr %1, i64 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %4 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.a = alloca [46 x i8], align 16               ; 3 uses
  %i.b = alloca [22 x i8], align 16               ; 3 uses
  %5 = alloca %"struct.c4::yml::TagDirective", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #59
  %i.c = icmp ult i64 %2, 5
  br i1 %i.c, label %.loopexit34.i, label %.lr.ph.i.preheader.i, !prof !492

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1, !tbaa !87
  %.not.i.i = icmp eq i8 %i.d, 37
  br i1 %.not.i.i, label %.lr.ph.i.1.i, label %.loopexit34.i, !prof !154

.lr.ph.i.1.i:                                     ; preds = %.lr.ph.i.preheader.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !87
  %.not.i.1.i = icmp eq i8 %i.f, 84
  br i1 %.not.i.1.i, label %.lr.ph.i.2.i, label %.loopexit34.i, !prof !154

.lr.ph.i.2.i:                                     ; preds = %.lr.ph.i.1.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !87
  %.not.i.2.i = icmp eq i8 %i.h, 65
  br i1 %.not.i.2.i, label %.lr.ph.i.3.i, label %.loopexit34.i, !prof !154

.lr.ph.i.3.i:                                     ; preds = %.lr.ph.i.2.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !87
  %.not.i.3.i = icmp eq i8 %i.j, 71
  br i1 %.not.i.3.i, label %.lr.ph.i.4.i, label %.loopexit34.i, !prof !154

.lr.ph.i.4.i:                                     ; preds = %.lr.ph.i.3.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !87
  %.not.i.4.i = icmp eq i8 %i.l, 32
  br i1 %.not.i.4.i, label %.lr.ph.i.i.i.preheader.i, label %.loopexit34.i, !prof !154

.loopexit34.i:                                    ; preds = %.lr.ph.i.4.i, %.lr.ph.i.3.i, %.lr.ph.i.2.i, %.lr.ph.i.1.i, %.lr.ph.i.preheader.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(46) %i.a, ptr noundef nonnull align 16 dereferenceable(46) @__const._ZN2c43yml12_GLOBAL__N_130_create_tag_directive_from_strENS_15basic_substringIKcEEPNS0_12TagDirectiveEPNS0_4TreeE.msg, i64 46, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 0, ptr %4, align 8
  %.sroa.219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 42451, ptr %.sroa.219.0..sroa_idx.i, align 8
  %.sroa.320.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %.sroa.320.0..sroa_idx.i, align 8
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @.str.1, ptr %.sroa.421.0..sroa_idx.i, align 8
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 74, ptr %.sroa.522.0..sroa_idx.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !94
  call void %i.o(ptr noundef nonnull %i.a, i64 noundef 45, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %4, ptr noundef %i.p), !inline_history !491
  call void @abort() #61
  unreachable

.lr.ph.i.i.i.preheader.i:                         ; preds = %.lr.ph.i.4.i
  %i.q = add i64 %2, -4                           ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.preheader.i
  %.0710.i.i.i.i = phi i64 [ %i.t, %bb.b ], [ 0, %.lr.ph.i.i.i.preheader.i ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0710.i.i.i.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.s, 32
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZNK2c415basic_substringIKcE5trimlEc.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.t = add nuw i64 %.0710.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.t, %i.q
  br i1 %exitcond.not.i.i.i.i, label %.loopexit32.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZNK2c415basic_substringIKcE5trimlEc.exit.i.i:    ; preds = %.lr.ph.i.i.i.i
  %.not.not.i.i.i = icmp eq i64 %.0710.i.i.i.i, -1 ; 2 uses
  %i.u = sub nuw i64 %i.q, %.0710.i.i.i.i         ; 2 uses
  %spec.select.idx.i.i.i = select i1 %.not.not.i.i.i, i64 0, i64 %.0710.i.i.i.i
  %spec.select.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 %spec.select.idx.i.i.i ; 3 uses
  br i1 %.not.not.i.i.i, label %.loopexit32.i, label %.lr.ph.i.i35.i.i

.lr.ph.i.i35.i.i:                                 ; preds = %_ZNK2c415basic_substringIKcE5trimlEc.exit.i.i, %bb.c
  %.0811.i.i.i.i = phi i64 [ %i.y, %bb.c ], [ 0, %_ZNK2c415basic_substringIKcE5trimlEc.exit.i.i ] ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 %.0811.i.i.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !87
  %i.x = icmp eq i8 %i.w, 32
  br i1 %i.x, label %_ZNK2c415basic_substringIKcE4findEcm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i35.i.i
  %i.y = add nuw i64 %.0811.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i36.i.i = icmp eq i64 %i.y, %i.u
  br i1 %exitcond.not.i.i36.i.i, label %.loopexit32.i, label %.lr.ph.i.i35.i.i, !llvm.loop !6

_ZNK2c415basic_substringIKcE4findEcm.exit.i.i:    ; preds = %.lr.ph.i.i35.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 %.0811.i.i.i.i ; 3 uses
  %.not100.i.i = icmp eq i64 %.0811.i.i.i.i, -1
  br i1 %.not100.i.i, label %.loopexit32.i, label %.lr.ph.i.i37.preheader.i.i

.lr.ph.i.i37.preheader.i.i:                       ; preds = %_ZNK2c415basic_substringIKcE4findEcm.exit.i.i
  store ptr %spec.select.i.i.i, ptr %5, align 8, !tbaa !101
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.0811.i.i.i.i, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !tbaa !102
  %i.aa = sub nuw i64 %i.u, %.0811.i.i.i.i        ; 2 uses
end_hunk_0
