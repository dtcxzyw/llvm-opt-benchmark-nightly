Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs2fontir-373f4832af3edbd1.glyphs2fontir.df9a899fe87b069f-cgu.08?download=true
inline.NumInlined: 373
inline.NumDeleted: 181
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtCsjceHdiZFn9b_13glyphs2fontir4toir15new_color_glyph:bb.a
  store i64 0, ptr %.sroa.0.sroa.20.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 %i.am, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 193
  store i8 -1, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 194
  store i8 -1, ptr %.sroa.13.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !398)
  call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.aq = load i8, ptr %i.k, align 8, !range !8, !alias.scope !400, !noundef !5
  %switch.i.i49 = icmp samesign ult i8 %i.aq, 25
  br i1 %switch.i.i49, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit50, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9NoVXegZYB5_8smol_str7SmolStrEECsjceHdiZFn9b_13glyphs2fontir.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !403, !nonnull !5, !noundef !5
  %i.at = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !403
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit50

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ar) #23
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit50

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit50: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9NoVXegZYB5_8smol_str7SmolStrEECsjceHdiZFn9b_13glyphs2fontir.exit, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.u:                                             ; preds = %bb.n, %bb.v
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.v:                                             ; preds = %bb.r
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9NoVXegZYB5_8smol_str7SmolStrEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #24
          to label %.body unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsjceHdiZFn9b_13glyphs2fontir4toir20find_by_design_coord(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2, double noundef %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly captures(none) %6, i64 noundef range(i64 3, 8) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.04 = alloca [48 x i8], align 8           ; 5 uses
  %.idx = shl nuw nsw i64 %2, 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = fcmp uno double %3, 0.000000e+00
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.sroa.02.08.i = phi i64 [ 0, %.lr.ph.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.i = phi ptr [ %1, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val6.i = load double, ptr %i.j, align 8, !noalias !414, !noundef !5 ; 2 uses
  %i.k = fcmp uno double %.val6.i, 0.000000e+00
  %i.l = fcmp oeq double %.val6.i, %3
  %.sroa.0.0.in.i.i = select i1 %i.k, i1 %i.h, i1 %i.l
  br i1 %.sroa.0.0.in.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.02.08.i, 1
  %i.o = icmp eq ptr %i.m, %i.f
  br i1 %i.o, label %.loopexit, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i64 %.sroa.02.08.i, %2
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.08.i, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.t

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !415
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !415
  %i.r = load i64, ptr %i.c, align 8, !range !7, !noalias !415, !noundef !5
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !13, !noalias !415, !noundef !5 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !12

bb.e:                                             ; preds = %.loopexit
  %i.w = load i64, ptr %i.v, align 8, !noalias !415
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.u, i64 %i.w) #26, !noalias !415
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.x = load ptr, ptr %i.v, align 8, !noalias !415, !nonnull !5, !noundef !5 ; 2 uses
  %i.y = icmp ule i64 %5, %i.u
  tail call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !415
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  store i64 %i.u, ptr %i.e, align 8, !noalias !415
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !415
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %5, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !415
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.k unwind label %bb.j, !noalias !415

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %4, i64 %5, i1 false), !noalias !415
  br label %bb.g

bb.i:                                             ; preds = %bb.p, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.z, %bb.j ], [ %i.bg, %bb.p ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #24
          to label %bb.s unwind label %bb.q, !noalias !415

bb.j:                                             ; preds = %bb.l, %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.g
  %i.aa = load i64, ptr %i.b, align 8, !range !7, !noalias !415, !noundef !5
  %i.ab = trunc nuw i64 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !13, !noalias !415, !noundef !5 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.af = load i64, ptr %i.ae, align 8, !noalias !415
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ad, i64 %i.af) #26
          to label %bb.r unwind label %bb.j, !noalias !415

bb.m:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %i.ae, align 8, !noalias !415, !nonnull !5, !noundef !5 ; 2 uses
  %i.ah = icmp ule i64 %7, %i.ad
  tail call void @llvm.assume(i1 %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !415
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ag, ptr noundef nonnull align 1 dereferenceable(1) %6, i64 %7, i1 false), !noalias !415
  store i64 %i.ad, ptr %i.d, align 8, !noalias !415
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ag, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !415
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %7, ptr %.sroa.63.0..sroa_idx.i, align 8, !noalias !415
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !417
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc.i unwind label %bb.p, !noalias !415

.noexc.i:                                         ; preds = %bb.m
  %i.ai = load i64, ptr %i.a, align 8, !range !7, !noalias !417, !noundef !5
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !13, !noalias !417, !noundef !5 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.n, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjceHdiZFn9b_13glyphs2fontir.exit.i.i, !prof !12

bb.n:                                             ; preds = %.noexc.i
  %i.an = load i64, ptr %i.am, align 8, !noalias !417
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #26
          to label %.noexc9.i unwind label %bb.p, !noalias !415

.noexc9.i:                                        ; preds = %bb.n
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjceHdiZFn9b_13glyphs2fontir.exit.i.i: ; preds = %.noexc.i
  %i.ao = load ptr, ptr %i.am, align 8, !noalias !417, !nonnull !5, !noundef !5 ; 4 uses
  %i.ap = icmp samesign ule i64 %2, %i.al
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !417
  %i.aq = icmp eq i64 %i.al, 0
  br i1 %i.aq, label %_RNCNvNtCsjceHdiZFn9b_13glyphs2fontir4toir20find_by_design_coords_0B5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjceHdiZFn9b_13glyphs2fontir.exit.i.i
  %i.ar = add i64 %i.al, -1
  %i.as = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.ar) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.as, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.as, 576460752303423486      ; 4 uses
  %8 = shl nuw nsw i64 %n.vec, 4
  %9 = getelementptr i8, ptr %1, i64 %8
  %10 = sub i64 %i.al, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.at = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.at
  %i.au = getelementptr i8, ptr %1, i64 %i.at
  %next.gep18 = getelementptr i8, ptr %i.au, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !alias.scope !416, !noalias !418
  %wide.load19 = load <2 x double>, ptr %next.gep18, align 8, !alias.scope !416, !noalias !418
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %index
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %index
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <2 x double> %wide.load, ptr %i.av, align 8, !noalias !417
  store <2 x double> %wide.load19, ptr %i.ax, align 8, !noalias !417
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %.lr.ph.i.i.preheader22, label %vector.body, !llvm.loop !412

.lr.ph.i.i.preheader22:                           ; preds = %vector.body, %.lr.ph.i.i.preheader
  %.sroa.014.023.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.preheader ], [ %9, %vector.body ]
  %.sroa.7.022.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %vector.body ]
  %.sroa.10.021.i.i.ph = phi i64 [ %i.al, %.lr.ph.i.i.preheader ], [ %10, %vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader22, %bb.o
  %.sroa.014.023.i.i = phi ptr [ %i.bc, %bb.o ], [ %.sroa.014.023.i.i.ph, %.lr.ph.i.i.preheader22 ] ; 3 uses
  %.sroa.7.022.i.i = phi i64 [ %i.bb, %bb.o ], [ %.sroa.7.022.i.i.ph, %.lr.ph.i.i.preheader22 ] ; 2 uses
  %.sroa.10.021.i.i = phi i64 [ %i.ba, %bb.o ], [ %.sroa.10.021.i.i.ph, %.lr.ph.i.i.preheader22 ]
  %i.az = icmp eq ptr %.sroa.014.023.i.i, %i.f
  br i1 %i.az, label %_RNCNvNtCsjceHdiZFn9b_13glyphs2fontir4toir20find_by_design_coords_0B5_.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.ba = add i64 %.sroa.10.021.i.i, -1           ; 2 uses
  %i.bb = add nuw nsw i64 %.sroa.7.022.i.i, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i.i, i64 16
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %.sroa.7.022.i.i
  %i.be = load <2 x double>, ptr %.sroa.014.023.i.i, align 8, !alias.scope !416, !noalias !418
  store <2 x double> %i.be, ptr %i.bd, align 8, !noalias !417
  %i.bf = icmp eq i64 %i.ba, 0
  br i1 %i.bf, label %_RNCNvNtCsjceHdiZFn9b_13glyphs2fontir4toir20find_by_design_coords_0B5_.exit, label %.lr.ph.i.i, !llvm.loop !413

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #24
          to label %bb.i unwind label %bb.q, !noalias !415

bb.q:                                             ; preds = %bb.p, %bb.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !415
  unreachable

bb.r:                                             ; preds = %bb.l
  unreachable

bb.s:                                             ; preds = %bb.i
  resume { ptr, i32 } %.pn.i

_RNCNvNtCsjceHdiZFn9b_13glyphs2fontir4toir20find_by_design_coords_0B5_.exit: ; preds = %.lr.ph.i.i, %bb.o, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjceHdiZFn9b_13glyphs2fontir.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !421
  %.sroa.04.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.04, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.al, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ao, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.86.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %3, ptr %.sroa.86.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04)
  br label %bb.t

bb.t:                                             ; preds = %_RNCNvNtCsjceHdiZFn9b_13glyphs2fontir4toir20find_by_design_coords_0B5_.exit, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsjceHdiZFn9b_13glyphs2fontir4toir29to_ir_contours_and_components(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 36028797018963968) %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca [23 x i8], align 1          ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [96 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 9 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %i.v = alloca [96 x i8], align 8                ; 15 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [64 x i8], align 8                ; 9 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [48 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 10 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [96 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 13 uses
  %i.ah = alloca [24 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, i64 noundef %3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %bb.e unwind label %bb.d

.body42:                                          ; preds = %bb.ck, %bb.d, %.body39
  %.pn28 = phi { ptr, i32 } [ %.pn, %.body39 ], [ %i.an, %bb.d ], [ %i.fn, %bb.ck ]
  call void @llvm.experimental.noalias.scope.decl(metadata !535)
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %i.ai = load i8, ptr %1, align 8, !range !8, !alias.scope !538, !noundef !5
  %switch.i.i.i = icmp samesign ult i8 %i.ai, 25
  br i1 %switch.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.b

bb.b:                                             ; preds = %.body42
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !539)
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !541, !nonnull !5, !noundef !5
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !541
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aj) #23
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.ds

bb.d:                                             ; preds = %bb.cl, %bb.f, %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body42

bb.e:                                             ; preds = %bb.a
  %i.ao = load i64, ptr %i.aa, align 8, !range !7, !noundef !5
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !13, !noundef !5 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  br i1 %i.ap, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.at = load i64, ptr %i.as, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ar, i64 %i.at) #26
          to label %bb.dt unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %i.as, align 8, !nonnull !5, !noundef !5
  %i.av = icmp samesign ule i64 %3, %i.ar
  tail call void @llvm.assume(i1 %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 %i.ar, ptr %i.ah, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  store ptr %i.au, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  store i64 0, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 0, ptr %i.ag, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  store i64 0, ptr %i.az, align 8
  %.idx = shl nuw nsw i64 %3, 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.bb = icmp eq i64 %3, 0
  br i1 %i.bb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 25
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %.sroa.14.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.22.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.24.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.14.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.22.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.24.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx79.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.22.8..sroa.7.0..sroa_idx79.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.24.8..sroa.7.0..sroa_idx79.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.14.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.22.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.24.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %.sroa.22.9..sroa.532.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.24.9..sroa.532.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.p, i64 16
end_hunk_0
