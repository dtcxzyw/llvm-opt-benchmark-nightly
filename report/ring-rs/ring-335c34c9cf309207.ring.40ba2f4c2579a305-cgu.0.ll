Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RNvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB5_3Key3new:bb.a

bb.c:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #41, !noalias !2896
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs5yxAJGbRKSL_4ring4hmac3KeyNtNtNtBL_5error11unspecified11UnspecifiedE6unwrapBL_.exit: ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.f, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB5_3Key7try_new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.7.i = alloca [32 x i8], align 8          ; 6 uses
  %.sroa.8.i = alloca [24 x i8], align 8          ; 5 uses
  %i.e = alloca [208 x i8], align 8               ; 5 uses
  %i.f = alloca [208 x i8], align 8               ; 11 uses
  %.sroa.827 = alloca [32 x i8], align 8          ; 3 uses
  %.sroa.928 = alloca [24 x i8], align 8          ; 2 uses
  %i.g = alloca [128 x i8], align 1               ; 18 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.06.sroa.7 = alloca [32 x i8], align 8    ; 5 uses
  %.sroa.06.sroa.9 = alloca [24 x i8], align 8    ; 4 uses
  %i.j = alloca [160 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.sroa.9)
  %i.k = load i32, ptr %1, align 8, !range !45, !noundef !15
  %i.l = trunc nuw i32 %i.k to i1                 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.sroa.7, ptr noundef nonnull align 4 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.827, ptr noundef nonnull align 4 dereferenceable(32) %i.m, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.022.0.copyload = load ptr, ptr %i.n, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.524.0..sroa_idx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.423.0..sroa_idx, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.827, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.423.0..sroa_idx, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.928, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.524.0..sroa_idx, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.sroa.5.0..sroa_idx.val = phi ptr [ %1, %bb.b ], [ %.sroa.022.0.copyload, %bb.c ] ; 3 uses
  %i.o = phi ptr [ null, %bb.b ], [ %1, %bb.c ]   ; 4 uses
  store ptr %i.o, ptr %i.j, align 8
  %.sroa.06.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.06.sroa.5.0..sroa_idx.val, ptr %.sroa.06.sroa.5.0..sroa_idx, align 8
  %.sroa.06.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.sroa.7, i64 32, i1 false)
  %.sroa.06.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.sroa.9, i64 24, i1 false)
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 3 uses
  store i64 0, ptr %.sroa.57.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 3 uses
  store ptr %i.o, ptr %i.p, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 2 uses
  store ptr %.sroa.06.sroa.5.0..sroa_idx.val, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.08.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.827, i64 32, i1 false)
  %.sroa.08.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.928, i64 24, i1 false)
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 152 ; 3 uses
  store i64 0, ptr %.sroa.59.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.sroa.9)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 90
  %i.r = load i8, ptr %i.q, align 2, !range !32, !noundef !15
  %i.s = zext i8 %i.r to i64                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.not = icmp samesign ugt i64 %3, %i.s
  br i1 %.not, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2935)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2936
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !2937
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8, !alias.scope !2935, !noalias !2937
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.42.0..sroa_idx.i, i64 32, i1 false), !noalias !2937
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.53.0..sroa_idx.i, i64 24, i1 false), !noalias !2937
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.5.0.i = phi ptr [ %1, %bb.f ], [ %.sroa.0.0.copyload.i, %bb.g ]
  %.sroa.01.0.i = phi ptr [ null, %bb.f ], [ %1, %bb.g ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, i8 0, i64 128, i1 false), !noalias !2936
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  store ptr %.sroa.01.0.i, ptr %i.v, align 8, !noalias !2936
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store ptr %.sroa.5.0.i, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !2936
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !2936
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !2936
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2936
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3), !noalias !2938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %i.f, i64 208, i1 false), !noalias !2936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.v, i64 80, i1 false), !noalias !2936
  call fastcc void @_RNvMNtCs5yxAJGbRKSL_4ring6digestNtB2_12BlockContext10try_finish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.e), !noalias !2940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2939
  %i.w = load ptr, ptr %i.d, align 8, !noalias !2939, !noundef !15 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !2941 ; 2 uses
  br i1 %i.x, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !16

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #41, !noalias !2940
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !2939, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2936
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8
  store i64 1, ptr %0, align 8
  br label %bb.m

.thread:                                          ; preds = %bb.h
  %.sroa.1041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.1041.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2936
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  store ptr %i.w, ptr %i.i, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i64 %i.z, ptr %.sroa.3.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 89
  %i.af = load i8, ptr %i.ae, align 1, !range !44, !noundef !15
  %i.ag = zext nneg i8 %i.af to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.g, i8 54, i64 128, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.s
  br label %iter.check

bb.l:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.g, i8 54, i64 128, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.s ; 2 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %iter.check83, label %iter.check

iter.check:                                       ; preds = %.thread, %bb.l
  %..i.i.i58 = phi i64 [ %i.ag, %.thread ], [ %3, %bb.l ] ; 8 uses
  %i.aj = phi ptr [ %i.ah, %.thread ], [ %i.ai, %bb.l ] ; 3 uses
  %.sroa.0.057 = phi ptr [ %.sroa.3.0..sroa_idx, %.thread ], [ %2, %bb.l ] ; 3 uses
  %min.iters.check = icmp samesign ult i64 %..i.i.i58, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check59 = icmp samesign ult i64 %..i.i.i58, 32
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %..i.i.i58, 28
  %n.vec = and i64 %..i.i.i58, 9223372036854775776 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 %index ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.057, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <16 x i8>, ptr %i.am, align 1, !noalias !2942
  %wide.load60 = load <16 x i8>, ptr %i.an, align 1, !noalias !2942
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %wide.load61 = load <16 x i8>, ptr %i.al, align 1, !alias.scope !2943, !noalias !2942
  %wide.load62 = load <16 x i8>, ptr %i.ao, align 1, !alias.scope !2943, !noalias !2942
  %i.ap = xor <16 x i8> %wide.load61, %wide.load
  %i.aq = xor <16 x i8> %wide.load62, %wide.load60
  store <16 x i8> %i.ap, ptr %i.al, align 1, !alias.scope !2943, !noalias !2942
  store <16 x i8> %i.aq, ptr %i.ao, align 1, !alias.scope !2943, !noalias !2942
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !2910

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %..i.i.i58, %n.vec
  br i1 %cmp.n, label %iter.check83, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec63 = and i64 %..i.i.i58, 9223372036854775804 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index64 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next67, %vec.epilog.vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 %index64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.057, i64 %index64
  %wide.load65 = load <4 x i8>, ptr %i.at, align 1, !noalias !2942
  %wide.load66 = load <4 x i8>, ptr %i.as, align 1, !alias.scope !2943, !noalias !2942
  %i.au = xor <4 x i8> %wide.load66, %wide.load65
  store <4 x i8> %i.au, ptr %i.as, align 1, !alias.scope !2943, !noalias !2942
  %index.next67 = add nuw i64 %index64, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next67, %n.vec63
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2911

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n68 = icmp eq i64 %..i.i.i58, %n.vec63
  br i1 %cmp.n68, label %iter.check83, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec63, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.08.i = phi i64 [ %i.aw, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.aw = add nuw nsw i64 %.sroa.0.08.i, 1        ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.08.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.057, i64 %.sroa.0.08.i
  %.val7.i = load i8, ptr %i.ay, align 1, !noalias !2942, !noundef !15
  %i.az = load i8, ptr %i.ax, align 1, !alias.scope !2943, !noalias !2942, !noundef !15
  %i.ba = xor i8 %i.az, %.val7.i
  store i8 %i.ba, ptr %i.ax, align 1, !alias.scope !2943, !noalias !2942
  %exitcond.not.i = icmp eq i64 %i.aw, %..i.i.i58
  br i1 %exitcond.not.i, label %iter.check83, label %.lr.ph.i, !llvm.loop !2912

iter.check83:                                     ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.l
  %i.bb = phi ptr [ %i.ai, %bb.l ], [ %i.aj, %middle.block ], [ %i.aj, %vec.epilog.middle.block ], [ %i.aj, %.lr.ph.i ] ; 2 uses
  %i.bc = ptrtoaddr ptr %i.bb to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !2944)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2945
  %i.bd = icmp eq ptr %i.o, null
  %i.be = select i1 %i.bd, ptr %.sroa.06.sroa.5.0..sroa_idx.val, ptr %i.o
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !2946, !nonnull !15, !noundef !15
  call void %i.bg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef range(i64 0, -9223372036854775808) %i.s), !inline_history !2920
  %i.bh = load i64, ptr %i.b, align 8, !noalias !2945, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2945
  %i.bi = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !2944, !noalias !2947, !noundef !15
  %i.bj = call i64 @llvm.uadd.sat.i64(i64 %i.bi, i64 %i.bh)
  store i64 %i.bj, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !2944, !noalias !2947
  %i.bk = sub i64 %i.bc, %i.h                     ; 7 uses
  %min.iters.check69 = icmp ult i64 %i.bk, 8
  br i1 %min.iters.check69, label %.lr.ph.i35.preheader, label %vector.main.loop.iter.check70

vector.main.loop.iter.check70:                    ; preds = %iter.check83
  %min.iters.check71 = icmp ult i64 %i.bk, 32
  br i1 %min.iters.check71, label %vec.epilog.ph87, label %vector.ph72

vector.ph72:                                      ; preds = %vector.main.loop.iter.check70
  %i.bl = and i64 %i.bk, 24
  %n.vec73 = and i64 %i.bk, -32                   ; 4 uses
  %i.bm = getelementptr i8, ptr %i.g, i64 %n.vec73
  br label %vector.body74

vector.body74:                                    ; preds = %vector.ph72, %vector.body74
  %index75 = phi i64 [ 0, %vector.ph72 ], [ %index.next78, %vector.body74 ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %index75 ; 3 uses
  %i.bn = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load76 = load <16 x i8>, ptr %next.gep, align 1, !alias.scope !2948, !noalias !2949
  %wide.load77 = load <16 x i8>, ptr %i.bn, align 1, !alias.scope !2948, !noalias !2949
  %i.bo = xor <16 x i8> %wide.load76, splat (i8 106)
  %i.bp = xor <16 x i8> %wide.load77, splat (i8 106)
  store <16 x i8> %i.bo, ptr %next.gep, align 1, !alias.scope !2948, !noalias !2949
  store <16 x i8> %i.bp, ptr %i.bn, align 1, !alias.scope !2948, !noalias !2949
  %index.next78 = add nuw i64 %index75, 32        ; 2 uses
  %i.bq = icmp eq i64 %index.next78, %n.vec73
  br i1 %i.bq, label %middle.block79, label %vector.body74, !llvm.loop !2925

middle.block79:                                   ; preds = %vector.body74
  %cmp.n80 = icmp eq i64 %i.bk, %n.vec73
  br i1 %cmp.n80, label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMuthENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes10xor_assignQShE0EB1S_.exit, label %vec.epilog.iter.check85

vec.epilog.iter.check85:                          ; preds = %middle.block79
  %min.epilog.iters.check86 = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check86, label %.lr.ph.i35.preheader, label %vec.epilog.ph87, !prof !2950

vec.epilog.ph87:                                  ; preds = %vector.main.loop.iter.check70, %vec.epilog.iter.check85
  %vec.epilog.resume.val81 = phi i64 [ %n.vec73, %vec.epilog.iter.check85 ], [ 0, %vector.main.loop.iter.check70 ]
  %n.vec88 = and i64 %i.bk, -8                    ; 3 uses
  %i.br = getelementptr i8, ptr %i.g, i64 %n.vec88
  br label %vec.epilog.vector.body89

vec.epilog.vector.body89:                         ; preds = %vec.epilog.vector.body89, %vec.epilog.ph87
  %index90 = phi i64 [ %vec.epilog.resume.val81, %vec.epilog.ph87 ], [ %index.next93, %vec.epilog.vector.body89 ] ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.g, i64 %index90 ; 2 uses
  %wide.load92 = load <8 x i8>, ptr %next.gep91, align 1, !alias.scope !2948, !noalias !2949
  %i.bs = xor <8 x i8> %wide.load92, splat (i8 106)
  store <8 x i8> %i.bs, ptr %next.gep91, align 1, !alias.scope !2948, !noalias !2949
  %index.next93 = add nuw i64 %index90, 8         ; 2 uses
  %i.bt = icmp eq i64 %index.next93, %n.vec88
  br i1 %i.bt, label %vec.epilog.middle.block94, label %vec.epilog.vector.body89, !llvm.loop !2926

vec.epilog.middle.block94:                        ; preds = %vec.epilog.vector.body89
  %cmp.n95 = icmp eq i64 %i.bk, %n.vec88
  br i1 %cmp.n95, label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMuthENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes10xor_assignQShE0EB1S_.exit, label %.lr.ph.i35.preheader

.lr.ph.i35.preheader:                             ; preds = %iter.check83, %vec.epilog.iter.check85, %vec.epilog.middle.block94
  %.sroa.0.02.i.ph = phi ptr [ %i.g, %iter.check83 ], [ %i.bm, %vec.epilog.iter.check85 ], [ %i.br, %vec.epilog.middle.block94 ]
  br label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %.lr.ph.i35.preheader, %.lr.ph.i35
  %.sroa.0.02.i = phi ptr [ %i.bu, %.lr.ph.i35 ], [ %.sroa.0.02.i.ph, %.lr.ph.i35.preheader ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 1 ; 2 uses
  %i.bv = load i8, ptr %.sroa.0.02.i, align 1, !alias.scope !2948, !noalias !2949, !noundef !15
  %i.bw = xor i8 %i.bv, 106
  store i8 %i.bw, ptr %.sroa.0.02.i, align 1, !alias.scope !2948, !noalias !2949
  %i.bx = icmp eq ptr %i.bu, %i.bb
  br i1 %i.bx, label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMuthENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes10xor_assignQShE0EB1S_.exit, label %.lr.ph.i35, !llvm.loop !2927

_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMuthENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes10xor_assignQShE0EB1S_.exit: ; preds = %.lr.ph.i35, %vec.epilog.middle.block94, %middle.block79
  call void @llvm.experimental.noalias.scope.decl(metadata !2951)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2952
  call void @llvm.experimental.noalias.scope.decl(metadata !2953)
  %i.by = load ptr, ptr %i.p, align 8, !alias.scope !2954, !noalias !2955, !noundef !15 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  %.sroa.gep.val = load ptr, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8, !nonnull !15, !align !17
  %i.ca = select i1 %i.bz, ptr %.sroa.gep.val, ptr %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !2956, !nonnull !15, !noundef !15
  call void %i.cc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef range(i64 0, -9223372036854775808) %i.s), !inline_history !2920
  %i.cd = load i64, ptr %i.a, align 8, !noalias !2952, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2952
  %i.ce = load i64, ptr %.sroa.59.0..sroa_idx, align 8, !alias.scope !2951, !noalias !2957, !noundef !15
  %i.cf = call i64 @llvm.uadd.sat.i64(i64 %i.ce, i64 %i.cd)
  store i64 %i.cf, ptr %.sroa.59.0..sroa_idx, align 8, !alias.scope !2951, !noalias !2957
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.cg, ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 160, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.m

bb.m:                                             ; preds = %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMuthENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes10xor_assignQShE0EB1S_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB5_3Key8generate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 5 uses
  %i.b = alloca [64 x i8], align 1                ; 5 uses
  %i.c = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val = load ptr, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2963)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2964
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !noalias !2964
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.f = load i8, ptr %i.e, align 1, !range !44, !alias.scope !2963, !noalias !2962, !noundef !15
  %i.g = zext nneg i8 %i.f to i64                 ; 2 uses
  %i.h = call noundef zeroext i1 %.val(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull %i.b, i64 noundef range(i64 20, 65) %i.g) #40, !noalias !2964, !inline_history !2961
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  store i64 1, ptr %0, align 8, !alias.scope !2962, !noalias !2963
  br label %_RINvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB6_3Key9constructNCNvB2_8generate0EB8_.exit

bb.d:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2964
  call fastcc void @_RNvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB5_3Key7try_new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.g), !noalias !2962
  %i.i = load i64, ptr %i.a, align 8, !range !22, !noalias !2964, !noundef !15
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull align 8 dereferenceable(160) %i.k, i64 160, i1 false), !noalias !2963
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi i64 [ 0, %bb.e ], [ 1, %bb.d ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !2962, !noalias !2963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2964
  br label %_RINvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB6_3Key9constructNCNvB2_8generate0EB8_.exit

_RINvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB6_3Key9constructNCNvB2_8generate0EB8_.exit: ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2964
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairINtB5_15PrivateCrtPrimeNtB5_1PE3newB9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = icmp ult i64 %2, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %2, -2                           ; 3 uses
  %i.e = lshr i64 %i.d, 1                         ; 4 uses
  %i.f = add nuw i64 %i.e, 2                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !2985, !noalias !2986, !noundef !15
  %.not.i.i = icmp eq i64 %i.h, %i.e
  br i1 %.not.i.i, label %bb.d, label %bb.f, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult i64 %i.d, 8
  br i1 %i.i, label %bb.f, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.j = icmp ugt i64 %i.d, 257
  br i1 %i.j, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.42.0.ph.i = phi i64 [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ]
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1PEEB6_(i64 noundef %.sroa.42.0.ph.i) #39
          to label %.noexc28 unwind label %bb.o

.noexc28:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.k = invoke fastcc { ptr, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigintINtNtB2_4elem5BoxedNtNtNtB6_3rsa7keypair1PE20from_be_bytes_paddedB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr nonnull %1, i64 %i.f)
          to label %.noexc30 unwind label %.thread70 ; 2 uses

.thread70:                                        ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i36

.noexc30:                                         ; preds = %bb.g
  %i.m = extractvalue { ptr, i64 } %i.k, 0        ; 8 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit, label %bb.h

bb.h:                                             ; preds = %.noexc30
  %i.o = extractvalue { ptr, i64 } %i.k, 1        ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2987)
  %.not.i.i29 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i29, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit, label %_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_reject_even_leak_bit.exit.i

_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_reject_even_leak_bit.exit.i: ; preds = %bb.h
  %i.p = load i64, ptr %i.m, align 8, !alias.scope !2987, !noalias !2988, !noundef !15
  %i.q = and i64 %i.p, 1
  %i.r = tail call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.q) #36, !noalias !2989
end_hunk_0
begin_hunk_1_@_RNvNtNtCs5yxAJGbRKSL_4ring3rsa7padding4mgf1:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 9 uses
  %..i.i.i41 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %4) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %..i.i.i41
  %i.u = sub nuw nsw i64 %4, %..i.i.i41
  %scevgep45 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  br label %bb.c

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i: ; preds = %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRB4b_E0E0EB3h_.exit
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %i.ab) ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.ac, i64 %..i.i.i
  %i.z = sub nuw nsw i64 %i.ab, %..i.i.i
  %i.aa = icmp eq i64 %i.ad, -1
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336) #41, !noalias !4821
  unreachable

bb.c:                                             ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i.lr.ph, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i
  %i.ab = phi i64 [ %i.u, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i.lr.ph ], [ %i.z, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i ] ; 3 uses
  %i.ac = phi ptr [ %i.t, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i.lr.ph ], [ %i.y, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i ] ; 2 uses
  %..i.i.i44 = phi i64 [ %..i.i.i41, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i.lr.ph ], [ %..i.i.i, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i ] ; 2 uses
  %.sroa.10.03343 = phi i64 [ 0, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i.lr.ph ], [ %i.ad, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i ] ; 3 uses
  %.sroa.0.03542 = phi ptr [ %3, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i.lr.ph ], [ %i.ac, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i ] ; 13 uses
  %i.ad = add nuw i64 %.sroa.10.03343, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  br i1 %i.n, label %bb.d, label %bb.e

._crit_edge:                                      ; preds = %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRB4b_E0E0EB3h_.exit, %bb.a
  ret void

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(32) %i.p, i64 32, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.49.0..sroa_idx, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510.0..sroa_idx, i64 24, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.06.0 = phi ptr [ null, %bb.d ], [ %0, %bb.e ]
  %.sroa.57.0 = phi ptr [ %0, %bb.d ], [ %.sroa.08.0.copyload, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.h, i8 0, i64 128, i1 false)
  store ptr %.sroa.06.0, ptr %i.q, align 8
  store ptr %.sroa.57.0, ptr %.sroa.04.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.45.0..sroa_idx, align 8
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ae = icmp ugt i64 %.sroa.10.03343, 4294967295
  %i.af = shl nuw i64 %.sroa.10.03343, 32
  %.sroa.011.0.insert.insert = select i1 %i.ae, i64 513, i64 %i.af ; 2 uses
  %i.ag = trunc i64 %.sroa.011.0.insert.insert to i1
  br i1 %i.ag, label %bb.g, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit, !prof !16

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4822
  store i8 2, ptr %i.d, align 1, !noalias !4822
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @211) #41
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit: ; preds = %bb.f
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.011.0.insert.insert, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  %i.ah = call i32 @llvm.bswap.i32(i32 %.sroa.6.0.extract.trunc.i)
  store i32 %i.ah, ptr %i.g, align 4
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %i.h, i64 208, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !4823)
  %i.ai = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4, !noalias !4824
  %.not.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i, label %bb.h, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i, !prof !16

bb.h:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit
  call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i: ; preds = %bb.h, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.r, i64 80, i1 false), !noalias !4826
  call fastcc void @_RNvMNtCs5yxAJGbRKSL_4ring6digestNtB2_12BlockContext10try_finish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.e), !noalias !4826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4825
  %i.aj = load ptr, ptr %i.c, align 8, !noalias !4825, !noundef !15 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = load i64, ptr %i.s, align 8, !noalias !4827 ; 2 uses
  br i1 %i.ak, label %bb.i, label %iter.check

bb.i:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %bb.j, label %bb.k, !prof !16

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #41, !noalias !4826
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4825
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #41, !noalias !4828
  unreachable

iter.check:                                       ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx8.i, i64 56, i1 false), !noalias !4829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4825
  call void @llvm.experimental.noalias.scope.decl(metadata !4830)
  call void @llvm.experimental.noalias.scope.decl(metadata !4831)
  store i64 %i.al, ptr %.sroa.6.0..sroa_idx2.i, align 8, !alias.scope !4828, !noalias !4832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 89
  %i.ao = load i8, ptr %i.an, align 1, !range !44, !noundef !15
  %i.ap = zext nneg i8 %i.ao to i64
  %..i.i.i15 = call noundef i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.ap, i64 %..i.i.i44) ; 11 uses
  %min.iters.check = icmp ult i64 %..i.i.i44, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.sroa.0.03542, i64 %..i.i.i15
  %scevgep46 = getelementptr i8, ptr %scevgep45, i64 %..i.i.i15
  %bound0 = icmp ult ptr %.sroa.0.03542, %scevgep46
  %bound1 = icmp ult ptr %.sroa.6.0..sroa_idx2.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check47 = icmp samesign ult i64 %..i.i.i15, 32
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aq = and i64 %..i.i.i15, 28
  %n.vec = and i64 %..i.i.i15, 96                 ; 4 uses
  %wide.load = load <16 x i8>, ptr %.sroa.6.0..sroa_idx2.i, align 8, !alias.scope !4833, !noalias !4834
  %wide.load48 = load <16 x i8>, ptr %i.v, align 8, !alias.scope !4833, !noalias !4834
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 16 ; 2 uses
  %wide.load49 = load <16 x i8>, ptr %.sroa.0.03542, align 1, !alias.scope !4835, !noalias !4836
  %wide.load50 = load <16 x i8>, ptr %i.ar, align 1, !alias.scope !4835, !noalias !4836
  %i.as = xor <16 x i8> %wide.load49, %wide.load
  %i.at = xor <16 x i8> %wide.load50, %wide.load48
  store <16 x i8> %i.as, ptr %.sroa.0.03542, align 1, !alias.scope !4835, !noalias !4836
  store <16 x i8> %i.at, ptr %i.ar, align 1, !alias.scope !4835, !noalias !4836
  %i.au = icmp eq i64 %n.vec, 32
  br i1 %i.au, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 32 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.w, align 8, !alias.scope !4833, !noalias !4834
  %wide.load48.1 = load <16 x i8>, ptr %i.x, align 8, !alias.scope !4833, !noalias !4834
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 48 ; 2 uses
  %wide.load49.1 = load <16 x i8>, ptr %i.av, align 1, !alias.scope !4835, !noalias !4836
  %wide.load50.1 = load <16 x i8>, ptr %i.aw, align 1, !alias.scope !4835, !noalias !4836
  %i.ax = xor <16 x i8> %wide.load49.1, %wide.load.1
  %i.ay = xor <16 x i8> %wide.load50.1, %wide.load48.1
  store <16 x i8> %i.ax, ptr %i.av, align 1, !alias.scope !4835, !noalias !4836
  store <16 x i8> %i.ay, ptr %i.aw, align 1, !alias.scope !4835, !noalias !4836
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %..i.i.i15, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRB4b_E0E0EB3h_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec51 = and i64 %..i.i.i15, 124              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 %index52 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.6.0..sroa_idx2.i, i64 %index52
  %wide.load53 = load <4 x i8>, ptr %i.ba, align 4, !alias.scope !4833, !noalias !4834
  %wide.load54 = load <4 x i8>, ptr %i.az, align 1, !alias.scope !4835, !noalias !4836
  %i.bb = xor <4 x i8> %wide.load54, %wide.load53
  store <4 x i8> %i.bb, ptr %i.az, align 1, !alias.scope !4835, !noalias !4836
  %index.next55 = add nuw i64 %index52, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next55, %n.vec51
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4818

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %..i.i.i15, %n.vec51
  br i1 %cmp.n56, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRB4b_E0E0EB3h_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec51, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %..i.i.i15, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.08.i.prol = phi i64 [ %i.bd, %.lr.ph.i.prol ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bd = add nuw nsw i64 %.sroa.0.08.i.prol, 1   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 %.sroa.0.08.i.prol ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.6.0..sroa_idx2.i, i64 %.sroa.0.08.i.prol
  %.val7.i.prol = load i8, ptr %i.bf, align 1, !noalias !4834, !noundef !15
  %i.bg = load i8, ptr %i.be, align 1, !alias.scope !4837, !noalias !4834, !noundef !15
  %i.bh = xor i8 %i.bg, %.val7.i.prol
  store i8 %i.bh, ptr %i.be, align 1, !alias.scope !4837, !noalias !4834
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !4819

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.0.08.i.unr = phi i64 [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader ], [ %i.bd, %.lr.ph.i.prol ]
  %i.bi = sub nsw i64 %.sroa.0.08.i.ph, %..i.i.i15
  %i.bj = icmp ugt i64 %i.bi, -4
  br i1 %i.bj, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRB4b_E0E0EB3h_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.08.i = phi i64 [ %i.bz, %.lr.ph.i ], [ %.sroa.0.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.bk = add nuw nsw i64 %.sroa.0.08.i, 1        ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 %.sroa.0.08.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.6.0..sroa_idx2.i, i64 %.sroa.0.08.i
  %.val7.i = load i8, ptr %i.bm, align 1, !noalias !4834, !noundef !15
  %i.bn = load i8, ptr %i.bl, align 1, !alias.scope !4837, !noalias !4834, !noundef !15
  %i.bo = xor i8 %i.bn, %.val7.i
  store i8 %i.bo, ptr %i.bl, align 1, !alias.scope !4837, !noalias !4834
  %i.bp = add nuw nsw i64 %.sroa.0.08.i, 2        ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 %i.bk ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.6.0..sroa_idx2.i, i64 %i.bk
  %.val7.i.1 = load i8, ptr %i.br, align 1, !noalias !4834, !noundef !15
  %i.bs = load i8, ptr %i.bq, align 1, !alias.scope !4837, !noalias !4834, !noundef !15
  %i.bt = xor i8 %i.bs, %.val7.i.1
  store i8 %i.bt, ptr %i.bq, align 1, !alias.scope !4837, !noalias !4834
  %i.bu = add nuw nsw i64 %.sroa.0.08.i, 3        ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 %i.bp ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.6.0..sroa_idx2.i, i64 %i.bp
  %.val7.i.2 = load i8, ptr %i.bw, align 1, !noalias !4834, !noundef !15
  %i.bx = load i8, ptr %i.bv, align 1, !alias.scope !4837, !noalias !4834, !noundef !15
  %i.by = xor i8 %i.bx, %.val7.i.2
  store i8 %i.by, ptr %i.bv, align 1, !alias.scope !4837, !noalias !4834
  %i.bz = add nuw nsw i64 %.sroa.0.08.i, 4        ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 %i.bu ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.6.0..sroa_idx2.i, i64 %i.bu
  %.val7.i.3 = load i8, ptr %i.cb, align 1, !noalias !4834, !noundef !15
  %i.cc = load i8, ptr %i.ca, align 1, !alias.scope !4837, !noalias !4834, !noundef !15
  %i.cd = xor i8 %i.cc, %.val7.i.3
  store i8 %i.cd, ptr %i.ca, align 1, !alias.scope !4837, !noalias !4834
  %exitcond.not.i.3 = icmp eq i64 %i.bz, %..i.i.i15
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRB4b_E0E0EB3h_.exit, label %.lr.ph.i, !llvm.loop !4820

_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRB4b_E0E0EB3h_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ce = icmp eq i64 %i.ab, 0
  br i1 %i.ce, label %._crit_edge, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly13056finish(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef nonnull align 64 captures(none) dead_on_return dereferenceable(128) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.a, align 8, !alias.scope !4853, !noalias !4854
  store i64 %3, ptr %i.b, align 8, !alias.scope !4855, !noalias !4856
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4858)
  call fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead8poly1305NtB4_7Context15update_internal(ptr noalias nofree noundef nonnull align 64 dereferenceable(128) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 16), !noalias !4857
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 64, !alias.scope !4858, !noalias !4859
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !4858, !noalias !4859
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4858, !noalias !4859
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !4858, !noalias !4859
  %.sroa.71.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.71.0.copyload.i = load i32, ptr %.sroa.71.0..sroa_idx.i, align 4, !alias.scope !4858, !noalias !4859 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !4858, !noalias !4859
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !4858, !noalias !4859
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.10.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 64, !alias.scope !4858, !noalias !4859
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.sroa.11.0.copyload.i = load i32, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !4858, !noalias !4859
  %i.c = lshr i32 %.sroa.71.0.copyload.i, 26
  %i.d = and i32 %.sroa.71.0.copyload.i, 67108863
  %i.e = add i32 %.sroa.8.0.copyload.i, %i.c      ; 2 uses
  %i.f = lshr i32 %i.e, 26
  %i.g = and i32 %i.e, 67108863                   ; 2 uses
  %i.h = add i32 %i.f, %.sroa.9.0.copyload.i      ; 2 uses
  %i.i = lshr i32 %i.h, 26
  %i.j = and i32 %i.h, 67108863                   ; 2 uses
  %i.k = add i32 %i.i, %.sroa.10.0.copyload.i     ; 2 uses
  %i.l = lshr i32 %i.k, 26
  %i.m = and i32 %i.k, 67108863                   ; 2 uses
  %i.n = add i32 %i.l, %.sroa.11.0.copyload.i     ; 3 uses
  %i.o = lshr i32 %i.n, 26
  %i.p = mul nuw nsw i32 %i.o, 5
  %i.q = add nuw nsw i32 %i.p, %i.d               ; 2 uses
  %i.r = add nuw nsw i32 %i.q, 5                  ; 2 uses
  %i.s = lshr i32 %i.r, 26
  %i.t = add nuw nsw i32 %i.s, %i.g               ; 2 uses
  %i.u = lshr i32 %i.t, 26
  %i.v = add nuw nsw i32 %i.u, %i.j               ; 2 uses
  %i.w = lshr i32 %i.v, 26
  %i.x = add nuw nsw i32 %i.w, %i.m               ; 2 uses
  %i.y = lshr i32 %i.x, 26
  %i.z = or i32 %i.n, -67108864
  %i.aa = add nsw i32 %i.y, %i.z                  ; 3 uses
  %.neg.i.i = ashr i32 %i.aa, 31                  ; 5 uses
  %i.ab = lshr i32 %i.aa, 31
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.ad = and i32 %.neg.i.i, %i.q
  %i.ae = and i32 %i.ac, 67108863                 ; 4 uses
  %i.af = and i32 %i.ae, %i.r
  %i.ag = or i32 %i.af, %i.ad
  %i.ah = and i32 %.neg.i.i, %i.g
  %i.ai = and i32 %i.ae, %i.t
  %i.aj = or i32 %i.ai, %i.ah                     ; 2 uses
  %i.ak = and i32 %.neg.i.i, %i.j
  %i.al = and i32 %i.ae, %i.v
  %i.am = or i32 %i.al, %i.ak                     ; 2 uses
  %i.an = and i32 %.neg.i.i, %i.m
  %i.ao = and i32 %i.ae, %i.x
  %i.ap = or i32 %i.ao, %i.an                     ; 2 uses
  %i.aq = and i32 %.neg.i.i, %i.n
  %i.ar = and i32 %i.ac, %i.aa
  %i.as = or i32 %i.ar, %i.aq
  %i.at = shl i32 %i.aj, 26
  %i.au = or i32 %i.ag, %i.at                     ; 2 uses
  %add.narrowed.i.i = add i32 %i.au, %.sroa.0.0.copyload.i ; 2 uses
  %add.narrowed.overflow.i.i = icmp ult i32 %add.narrowed.i.i, %i.au
  %i.av = lshr i32 %i.aj, 6
  %i.aw = shl i32 %i.am, 20
  %i.ax = or disjoint i32 %i.av, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %i.az = zext i32 %.sroa.4.0.copyload.i to i64
  %i.ba = add nuw nsw i64 %i.ay, %i.az
  %i.bb = lshr i32 %i.am, 12
  %i.bc = shl i32 %i.ap, 14
  %i.bd = or disjoint i32 %i.bb, %i.bc
  %i.be = zext i32 %i.bd to i64
  %i.bf = zext i32 %.sroa.5.0.copyload.i to i64
  %i.bg = add nuw nsw i64 %i.be, %i.bf
  %i.bh = lshr i32 %i.ap, 18
  %i.bi = shl i32 %i.as, 8
  %i.bj = or disjoint i32 %i.bh, %i.bi
  %i.bk = zext i32 %i.bj to i64
  %i.bl = zext i32 %.sroa.6.0.copyload.i to i64
  %i.bm = add nuw nsw i64 %i.bk, %i.bl
  %i.bn = zext i1 %add.narrowed.overflow.i.i to i64
  %i.bo = add nuw nsw i64 %i.ba, %i.bn            ; 2 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = lshr i64 %i.bo, 32
  %i.br = add nuw nsw i64 %i.bg, %i.bq            ; 2 uses
  %i.bs = trunc i64 %i.br to i32
  %i.bt = lshr i64 %i.br, 32
  %i.bu = add nuw nsw i64 %i.bm, %i.bt
  %i.bv = trunc i64 %i.bu to i32
  store i32 %add.narrowed.i.i, ptr %0, align 1, !alias.scope !4860, !noalias !4861
  %.sroa.5.0..sroa_idx39.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bp, ptr %.sroa.5.0..sroa_idx39.i.i, align 1, !alias.scope !4860, !noalias !4861
  %.sroa.6.0..sroa_idx41.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bs, ptr %.sroa.6.0..sroa_idx41.i.i, align 1, !alias.scope !4860, !noalias !4861
  %.sroa.7.0..sroa_idx43.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bv, ptr %.sroa.7.0..sroa_idx43.i.i, align 1, !alias.scope !4860, !noalias !4861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtNtCs5yxAJGbRKSL_4ring4aead4quic12aes_init_128(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) initializes((0, 4)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [244 x i8], align 4               ; 5 uses
  %i.b = alloca [256 x i8], align 8               ; 7 uses
  %i.c = icmp eq i64 %2, 16
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4866)
  %i.d = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !4866, !noundef !15 ; 4 uses
  %i.e = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i32 %i.d, 36
  %brmerge.i.not.i = icmp eq i32 %i.f, 36
  br i1 %brmerge.i.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.d, 64
  %.not7.not.i = icmp eq i32 %i.g, 0
end_hunk_1
begin_hunk_2_@_RNvXs0_NtNtCs5yxAJGbRKSL_4ring5error12key_rejectedNtB5_11KeyRejectedNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RNvXs0_NtNtCs5yxAJGbRKSL_4ring5error16into_unspecifiedNtNtB7_11unspecified11UnspecifiedINtNtCs3oUPovFnLWP_4core7convert4FromNtNtB7_12key_rejected11KeyRejectedE4from(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #20 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCs5yxAJGbRKSL_4ring8testutil4randNtB5_24FixedSliceSequenceRandomNtNtNtB9_4rand6sealed12SecureRandom9fill_impl(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !15 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.b ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !15, !noundef !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !15 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6469)
  %.not.i = icmp eq i64 %2, %i.j
  br i1 %.not.i, label %bb.e, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #41, !noalias !6470
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #41
  unreachable

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.h, i64 range(i64 0, -9223372036854775808) %2, i1 false), !alias.scope !6470, !noalias !6471
  %i.k = add nuw i64 %i.b, 1
  store i64 %i.k, ptr %i.a, align 8
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa7padding3pssNtB5_3PSSNtB7_12Verification6verify(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(72) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [1024 x i8], align 1              ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15 ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 89
  %.val = load i8, ptr %i.d, align 1              ; 2 uses
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %3, -1                           ; 5 uses
  %i.g = and i64 %i.f, 7
  %i.h = icmp ne i64 %i.g, 0
  %i.i = zext i1 %i.h to i64
  %i.j = lshr i64 %i.f, 3
  %i.k = add nuw nsw i64 %i.j, %i.i               ; 4 uses
  %i.l = icmp samesign ugt i64 %i.k, 2305843009213693951
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = shl nuw i64 %i.k, 3                      ; 3 uses
  %i.n = sub nuw i64 %i.m, %i.f                   ; 2 uses
  %i.o = icmp ult i64 %i.m, %i.f
  br i1 %i.o, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #41, !noalias !6497
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = icmp ult i64 %i.n, 8
  br i1 %i.p, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #41, !noalias !6497
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = trunc nuw nsw i64 %i.n to i8
  %i.r = lshr i8 -1, %i.q                         ; 2 uses
  %i.s = zext nneg i8 %.val to i64                ; 8 uses
  %i.t = add nuw nsw i64 %i.s, 1                  ; 3 uses
  %.not.i = icmp samesign ugt i64 %i.k, %i.s
  br i1 %.not.i, label %bb.i, label %bb.w

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_shr_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #41, !noalias !6497
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.u = sub nuw nsw i64 %i.k, %i.t               ; 12 uses
  %.not22.i = icmp samesign ugt i64 %i.u, %i.s
  br i1 %.not22.i, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.v = sub nuw nsw i64 %i.u, %i.t
  %i.w = icmp eq i64 %i.m, %i.f
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8              ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load i64, ptr %i.z, align 8             ; 4 uses
  br i1 %i.w, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.ab = icmp ult i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.l, label %bb.w

._crit_edge:                                      ; preds = %bb.j, %bb.l
  %i.ac = phi i64 [ %i.ag, %bb.l ], [ %i.y, %bb.j ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ae = add i64 %i.ac, %i.u                     ; 7 uses
  %i.af = icmp ult i64 %i.ae, %i.ac
  %.not.i45 = icmp ugt i64 %i.ae, %i.aa
  %or.cond.i = select i1 %i.af, i1 true, i1 %.not.i45, !prof !28
  br i1 %or.cond.i, label %bb.w, label %bb.m, !prof !28

bb.l:                                             ; preds = %bb.k
  %i.ag = add nuw i64 %i.y, 1                     ; 2 uses
  %i.ah = load ptr, ptr %2, align 8, !nonnull !15, !noundef !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.y
  store i64 %i.ag, ptr %i.x, align 8
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !15
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %._crit_edge, label %bb.w

bb.m:                                             ; preds = %._crit_edge
  %i.al = load ptr, ptr %2, align 8, !alias.scope !6498, !nonnull !15, !noundef !15 ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ac  ; 2 uses
  store i64 %i.ae, ptr %i.ad, align 8, !alias.scope !6498
  %i.an = add i64 %i.ae, %i.s                     ; 6 uses
  %i.ao = icmp ult i64 %i.an, %i.ae
  %.not.i46 = icmp ugt i64 %i.an, %i.aa
  %or.cond.i47 = select i1 %i.ao, i1 true, i1 %.not.i46, !prof !28
  br i1 %or.cond.i47, label %bb.w, label %bb.n, !prof !28

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ae ; 2 uses
  store i64 %i.an, ptr %i.ad, align 8, !alias.scope !6499
  %i.aq = icmp ult i64 %i.an, %i.aa
  br i1 %i.aq, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.ar = add nuw i64 %i.an, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  store i64 %i.ar, ptr %i.ad, align 8
  %i.at = load i8, ptr %i.as, align 1, !noundef !15
  %i.au = icmp eq i8 %i.at, -68
  br i1 %i.au, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false)
  %i.av = icmp samesign ult i64 %i.u, 1025
  br i1 %i.av, label %bb.r, label %bb.q, !prof !36

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.u, i64 noundef 1024, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @277) #41
  unreachable

bb.r:                                             ; preds = %bb.p
  call fastcc void @_RNvNtNtCs5yxAJGbRKSL_4ring3rsa7padding4mgf1(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.s, ptr noalias nofree noundef nonnull %i.b, i64 noundef %i.u)
  %i.aw = load i8, ptr %i.am, align 1, !noalias !6500, !noundef !15 ; 2 uses
  %.not = icmp ugt i8 %i.aw, %i.r
  br i1 %.not, label %.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = load i8, ptr %i.b, align 1, !noalias !6500, !noundef !15
  %i.ay = xor i8 %i.ax, %i.aw
  %i.az = add nsw i64 %i.u, -1                    ; 7 uses
  %i.ba = getelementptr i8, ptr %i.am, i64 1      ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %.not.i10.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i10.i.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.s
  %min.iters.check = icmp samesign ult i64 %i.u, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.u
  %scevgep90 = getelementptr i8, ptr %i.al, i64 %i.ae
  %bound0 = icmp ult ptr %i.bb, %scevgep90
  %bound1 = icmp ult ptr %i.ba, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check91 = icmp samesign ult i64 %i.u, 33
  br i1 %min.iters.check91, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %i.az, 28
  %n.vec = and i64 %i.az, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load = load <16 x i8>, ptr %i.be, align 1, !alias.scope !6501, !noalias !6502
  %wide.load92 = load <16 x i8>, ptr %i.bf, align 1, !alias.scope !6501, !noalias !6502
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %wide.load93 = load <16 x i8>, ptr %i.bd, align 1, !alias.scope !6503, !noalias !6504
  %wide.load94 = load <16 x i8>, ptr %i.bg, align 1, !alias.scope !6503, !noalias !6504
  %i.bh = xor <16 x i8> %wide.load93, %wide.load
  %i.bi = xor <16 x i8> %wide.load94, %wide.load92
  store <16 x i8> %i.bh, ptr %i.bd, align 1, !alias.scope !6503, !noalias !6504
  store <16 x i8> %i.bi, ptr %i.bg, align 1, !alias.scope !6503, !noalias !6504
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !6492

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec95 = and i64 %i.az, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index96 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next99, %vec.epilog.vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index96 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 %index96
  %wide.load97 = load <4 x i8>, ptr %i.bl, align 1, !alias.scope !6501, !noalias !6502
  %wide.load98 = load <4 x i8>, ptr %i.bk, align 1, !alias.scope !6503, !noalias !6504
  %i.bm = xor <4 x i8> %wide.load98, %wide.load97
  store <4 x i8> %i.bm, ptr %i.bk, align 1, !alias.scope !6503, !noalias !6504
  %index.next99 = add nuw i64 %index96, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next99, %n.vec95
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6493

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n100 = icmp eq i64 %i.az, %n.vec95
  br i1 %cmp.n100, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec95, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.sroa.0.08.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i ], [ %.sroa.0.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bo = add nuw nsw i64 %.sroa.0.08.i.i.i, 1    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.0.08.i.i.i ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sroa.0.08.i.i.i
  %.val7.i.i.i = load i8, ptr %i.bq, align 1, !noalias !6502, !noundef !15
  %i.br = load i8, ptr %i.bp, align 1, !alias.scope !6505, !noalias !6502, !noundef !15
  %i.bs = xor i8 %i.br, %.val7.i.i.i
  store i8 %i.bs, ptr %i.bp, align 1, !alias.scope !6505, !noalias !6502
  %exitcond.not.i.i.i = icmp eq i64 %i.bo, %i.az
  br i1 %exitcond.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !6494

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.s
  %i.bt = and i8 %i.ay, %i.r
  store i8 %i.bt, ptr %i.b, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.v ; 2 uses
  %.not2.not.not.i.not89 = icmp eq i64 %i.u, %i.t
  br i1 %.not2.not.not.i.not89, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa7padding3pssNtB1J_3PSSNtB1L_12Verification6verifys_0EB1P_.exit, label %.lr.ph

bb.t:                                             ; preds = %.lr.ph
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 2 uses
  %.not2.not.not.i.not = icmp eq ptr %i.bv, %i.bu
  br i1 %.not2.not.not.i.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa7padding3pssNtB1J_3PSSNtB1L_12Verification6verifys_0EB1P_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit, %bb.t
  %i.bw = phi ptr [ %i.bv, %bb.t ], [ %i.b, %.loopexit ] ; 2 uses
  %.val.i = load i8, ptr %i.bw, align 1, !noalias !6506, !noundef !15
  %.not.i52 = icmp eq i8 %.val.i, 0
  br i1 %.not.i52, label %bb.t, label %.sink.split

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa7padding3pssNtB1J_3PSSNtB1L_12Verification6verifys_0EB1P_.exit: ; preds = %bb.t, %.loopexit
  %i.bx = load i8, ptr %i.bu, align 1, !noundef !15
  %i.by = icmp eq i8 %i.bx, 1
  br i1 %i.by, label %bb.u, label %.sink.split

bb.u:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa7padding3pssNtB1J_3PSSNtB1L_12Verification6verifys_0EB1P_.exit
  %i.bz = sub nuw nsw i64 %i.u, %i.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring3rsa7padding3pss10pss_digest(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef %i.s)
  %i.cb = load ptr, ptr %i.a, align 8, !nonnull !15, !align !17, !noundef !15
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 89
  %i.cd = load i8, ptr %i.cc, align 1, !range !44, !noundef !15
  %i.ce = icmp eq i8 %.val, %i.cd
  br i1 %i.ce, label %bb.v, label %.sink.split.sink.split

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %bcmp = call i32 @bcmp(ptr nonnull %i.ap, ptr nonnull %i.cf, i64 %i.s)
  %.not42 = icmp ne i32 %bcmp, 0
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.v, %bb.u
  %.sroa.0.1.ph.ph = phi i1 [ %.not42, %bb.v ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph, %.sink.split.sink.split, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa7padding3pssNtB1J_3PSSNtB1L_12Verification6verifys_0EB1P_.exit, %bb.r
  %.sroa.0.1.ph = phi i1 [ true, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa7padding3pssNtB1J_3PSSNtB1L_12Verification6verifys_0EB1P_.exit ], [ %.sroa.0.1.ph.ph, %.sink.split.sink.split ], [ true, %bb.r ], [ true, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.l, %bb.k, %bb.n, %bb.m, %._crit_edge, %bb.o, %bb.g, %bb.a, %bb.i
  %.sroa.0.1 = phi i1 [ true, %bb.k ], [ true, %bb.i ], [ true, %bb.a ], [ true, %bb.g ], [ true, %bb.l ], [ true, %bb.o ], [ true, %._crit_edge ], [ true, %bb.m ], [ true, %bb.n ], [ %.sroa.0.1.ph, %.sink.split ]
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa7padding5pkcs1NtB5_5PKCS1NtB7_12Verification6verify(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1024 x i8], align 1              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.b = and i64 %3, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = zext i1 %i.c to i64
  %i.e = lshr i64 %3, 3
  %i.f = add nuw nsw i64 %i.e, %i.d               ; 5 uses
  %i.g = icmp samesign ult i64 %i.f, 1025
  br i1 %i.g, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.f, i64 noundef 1024, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  call fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring3rsa7padding5pkcs112pkcs1_encode(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(72) %1, ptr noalias nofree noundef nonnull %i.a, i64 noundef %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !15 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !15 ; 3 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsjVYLllkLn3D_9untrusted5input5InputNtNtBL_6reader10EndOfInputE6unwrapCs5yxAJGbRKSL_4ring.exit

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsjVYLllkLn3D_9untrusted5input5InputNtNtBL_6reader10EndOfInputE6unwrapCs5yxAJGbRKSL_4ring.exit: ; preds = %bb.c
  %i.m = sub nuw i64 %i.i, %i.k
  %i.n = load ptr, ptr %2, align 8, !alias.scope !6509, !nonnull !15, !noundef !15
  store i64 %i.i, ptr %i.j, align 8, !alias.scope !6509
  %i.o = icmp eq i64 %i.m, %i.f
  br i1 %i.o, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #41
  unreachable

bb.e:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsjVYLllkLn3D_9untrusted5input5InputNtNtBL_6reader10EndOfInputE6unwrapCs5yxAJGbRKSL_4ring.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  %bcmp = call i32 @bcmp(ptr nonnull %i.p, ptr nonnull %i.a, i64 %i.f)
  %.not = icmp ne i32 %bcmp, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsjVYLllkLn3D_9untrusted5input5InputNtNtBL_6reader10EndOfInputE6unwrapCs5yxAJGbRKSL_4ring.exit
  %.sroa.0.0 = phi i1 [ %.not, %bb.e ], [ true, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsjVYLllkLn3D_9untrusted5input5InputNtNtBL_6reader10EndOfInputE6unwrapCs5yxAJGbRKSL_4ring.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB5_3KeyNtB7_12EncryptBlock13encrypt_block(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(244) %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6522
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6522
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(16) %2, i64 16, i1 false), !noalias !6523
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a) #36, !noalias !6524, !inline_history !1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !6525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6522
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB5_3KeyNtB7_12EncryptBlock20encrypt_iv_xor_block(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(244) %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %2, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
_RNvXs1_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within.exit:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 16, i1 false)
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a) #36, !noalias !6533, !inline_history !1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2vpNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(244) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6542)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !6543, !noalias !6544, !noundef !15 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6543, !noalias !6544, !noundef !15 ; 3 uses
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #41, !noalias !6545
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i: ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !alias.scope !6543, !noalias !6544, !nonnull !15, !noundef !15 ; 2 uses
  %i.h = sub nuw i64 %i.c, %i.e                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  %i.j = lshr i64 %i.h, 4                         ; 3 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvMs4_NtNtBa_3aes3ffiNtB1J_7AES_KEY20ctr32_encrypt_blocks0EBc_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i
  %i.k = icmp ugt i64 %i.h, 68719476735
  %i.l = shl nuw i64 %i.j, 32
  %.sroa.020.0.insert.insert.i.i = select i1 %i.k, i64 513, i64 %i.l ; 2 uses
  %i.m = trunc i64 %.sroa.020.0.insert.insert.i.i to i1
  br i1 %i.m, label %bb.d, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeromENtNtBM_5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit.i.i, !prof !16

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6546
  store i8 2, ptr %i.a, align 1, !noalias !6546
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #41, !noalias !6546
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeromENtNtBM_5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit.i.i: ; preds = %bb.c
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.020.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  tail call void @ring_core_0_17_16000__vpaes_ctr32_encrypt_blocks(ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, i64 noundef %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %2) #36, !noalias !6546, !inline_history !1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.o = load i32, ptr %i.n, align 1, !noalias !6546
  %i.p = tail call i32 @llvm.bswap.i32(i32 %i.o)
  %i.q = add i32 %i.p, %.sroa.6.0.extract.trunc.i.i.i
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  store i32 %i.r, ptr %i.n, align 1, !noalias !6546
end_hunk_2
