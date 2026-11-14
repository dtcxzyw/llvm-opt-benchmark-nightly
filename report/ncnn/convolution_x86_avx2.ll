Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx2?download=true
inline.NumInlined: 86
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN4ncnn29unpack_output_tile_int32_avx2ERKNS_3MatERS0_iiii:bb.a
.lr.ph375.i:                                      ; preds = %.preheader248.i, %.lr.ph375.i
  %.17374.i = phi ptr [ %i.acx, %.lr.ph375.i ], [ %.16.lcssa.i, %.preheader248.i ] ; 2 uses
  %.1605373.i = phi i32 [ %i.acy, %.lr.ph375.i ], [ %.0604.lcssa.i, %.preheader248.i ]
  %.1609372.i = phi ptr [ %i.acw, %.lr.ph375.i ], [ %.0608.lcssa.i, %.preheader248.i ] ; 2 uses
  %i.acv = load <2 x i64>, ptr %.17374.i, align 1, !tbaa !18
  store <2 x i64> %i.acv, ptr %.1609372.i, align 1, !tbaa !18
  %i.acw = getelementptr inbounds nuw i8, ptr %.1609372.i, i64 16 ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.17374.i, i64 16 ; 2 uses
  %i.acy = add nuw nsw i32 %.1605373.i, 4         ; 3 uses
  %i.acz = or disjoint i32 %i.acy, 3
  %i.ada = icmp slt i32 %i.acz, %5
  br i1 %i.ada, label %.lr.ph375.i, label %.preheader247.i, !llvm.loop !480

.preheader.i:                                     ; preds = %.lr.ph382.i, %middle.block353, %vec.epilog.middle.block371, %.preheader247.i
  %.2610.lcssa.i = phi ptr [ %.1609.lcssa.i, %.preheader247.i ], [ %i.acs, %vec.epilog.middle.block371 ], [ %i.acj, %middle.block353 ], [ %i.aek, %.lr.ph382.i ] ; 6 uses
  %.2606.lcssa.i = phi i32 [ %.1605.lcssa.i, %.preheader247.i ], [ %i.acr, %vec.epilog.middle.block371 ], [ %i.aci, %middle.block353 ], [ %i.aem, %.lr.ph382.i ] ; 5 uses
  %.18.lcssa.i = phi ptr [ %.17.lcssa.i, %.preheader247.i ], [ %i.aco, %vec.epilog.middle.block371 ], [ %i.acf, %middle.block353 ], [ %i.ael, %.lr.ph382.i ] ; 7 uses
  %i.adb = icmp slt i32 %.2606.lcssa.i, %5
  br i1 %i.adb, label %iter.check303, label %._crit_edge390.i

iter.check303:                                    ; preds = %.preheader.i
  %.2610.lcssa.i285 = ptrtoaddr ptr %.2610.lcssa.i to i64
  %.18.lcssa.i284 = ptrtoaddr ptr %.18.lcssa.i to i64
  %i.adc = xor i32 %.2606.lcssa.i, -1
  %i.add = add i32 %5, %i.adc                     ; 3 uses
  %i.ade = zext i32 %i.add to i64
  %i.adf = add nuw nsw i64 %i.ade, 1              ; 5 uses
  %min.iters.check287 = icmp ult i32 %i.add, 7
  %i.adg = sub i64 %.18.lcssa.i284, %.2610.lcssa.i285
  %diff.check = icmp ugt i64 %i.adg, -128
  %or.cond = select i1 %min.iters.check287, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph389.i.preheader, label %vector.main.loop.iter.check289

vector.main.loop.iter.check289:                   ; preds = %iter.check303
  %min.iters.check290 = icmp ult i32 %i.add, 31
  br i1 %min.iters.check290, label %vec.epilog.ph307, label %vector.ph291

vector.ph291:                                     ; preds = %vector.main.loop.iter.check289
  %i.adh = and i64 %i.adf, 24
  %n.vec292 = and i64 %i.adf, 8589934560          ; 5 uses
  %i.adi = shl nuw nsw i64 %n.vec292, 2           ; 2 uses
  %i.adj = getelementptr i8, ptr %.18.lcssa.i, i64 %i.adi ; 2 uses
  %i.adk = trunc i64 %n.vec292 to i32
  %i.adl = add i32 %.2606.lcssa.i, %i.adk
  %i.adm = getelementptr i8, ptr %.2610.lcssa.i, i64 %i.adi
  br label %vector.body293

vector.body293:                                   ; preds = %vector.ph291, %vector.body293
  %index294 = phi i64 [ 0, %vector.ph291 ], [ %index.next300, %vector.body293 ] ; 2 uses
  %i.adn = shl i64 %index294, 2                   ; 2 uses
  %next.gep295 = getelementptr i8, ptr %.18.lcssa.i, i64 %i.adn ; 4 uses
  %next.gep296 = getelementptr i8, ptr %.2610.lcssa.i, i64 %i.adn ; 4 uses
  %i.ado = getelementptr i8, ptr %next.gep295, i64 32
  %i.adp = getelementptr i8, ptr %next.gep295, i64 64
  %i.adq = getelementptr i8, ptr %next.gep295, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep295, align 4, !tbaa !24
  %wide.load297 = load <8 x i32>, ptr %i.ado, align 4, !tbaa !24
  %wide.load298 = load <8 x i32>, ptr %i.adp, align 4, !tbaa !24
  %wide.load299 = load <8 x i32>, ptr %i.adq, align 4, !tbaa !24
  %i.adr = getelementptr i8, ptr %next.gep296, i64 32
  %i.ads = getelementptr i8, ptr %next.gep296, i64 64
  %i.adt = getelementptr i8, ptr %next.gep296, i64 96
  store <8 x i32> %wide.load, ptr %next.gep296, align 4, !tbaa !24
  store <8 x i32> %wide.load297, ptr %i.adr, align 4, !tbaa !24
  store <8 x i32> %wide.load298, ptr %i.ads, align 4, !tbaa !24
  store <8 x i32> %wide.load299, ptr %i.adt, align 4, !tbaa !24
  %index.next300 = add nuw i64 %index294, 32      ; 2 uses
  %i.adu = icmp eq i64 %index.next300, %n.vec292
  br i1 %i.adu, label %middle.block301, label %vector.body293, !llvm.loop !481

middle.block301:                                  ; preds = %vector.body293
  %cmp.n302 = icmp eq i64 %i.adf, %n.vec292
  br i1 %cmp.n302, label %._crit_edge390.i, label %vec.epilog.iter.check304

vec.epilog.iter.check304:                         ; preds = %middle.block301
  %min.epilog.iters.check306 = icmp eq i64 %i.adh, 0
  br i1 %min.epilog.iters.check306, label %.lr.ph389.i.preheader, label %vec.epilog.ph307, !prof !23

vec.epilog.ph307:                                 ; preds = %vector.main.loop.iter.check289, %vec.epilog.iter.check304
  %vec.epilog.resume.val308 = phi i64 [ %n.vec292, %vec.epilog.iter.check304 ], [ 0, %vector.main.loop.iter.check289 ]
  %n.vec309 = and i64 %i.adf, 8589934584          ; 4 uses
  %i.adv = shl nuw nsw i64 %n.vec309, 2           ; 2 uses
  %i.adw = getelementptr i8, ptr %.18.lcssa.i, i64 %i.adv ; 2 uses
  %i.adx = trunc i64 %n.vec309 to i32
  %i.ady = add i32 %.2606.lcssa.i, %i.adx
  %i.adz = getelementptr i8, ptr %.2610.lcssa.i, i64 %i.adv
  br label %vec.epilog.vector.body310

vec.epilog.vector.body310:                        ; preds = %vec.epilog.vector.body310, %vec.epilog.ph307
  %index311 = phi i64 [ %vec.epilog.resume.val308, %vec.epilog.ph307 ], [ %index.next315, %vec.epilog.vector.body310 ] ; 2 uses
  %i.aea = shl i64 %index311, 2                   ; 2 uses
  %next.gep312 = getelementptr i8, ptr %.18.lcssa.i, i64 %i.aea
  %next.gep313 = getelementptr i8, ptr %.2610.lcssa.i, i64 %i.aea
  %wide.load314 = load <8 x i32>, ptr %next.gep312, align 4, !tbaa !24
  store <8 x i32> %wide.load314, ptr %next.gep313, align 4, !tbaa !24
  %index.next315 = add nuw i64 %index311, 8       ; 2 uses
  %i.aeb = icmp eq i64 %index.next315, %n.vec309
  br i1 %i.aeb, label %vec.epilog.middle.block316, label %vec.epilog.vector.body310, !llvm.loop !482

vec.epilog.middle.block316:                       ; preds = %vec.epilog.vector.body310
  %cmp.n317 = icmp eq i64 %i.adf, %n.vec309
  br i1 %cmp.n317, label %._crit_edge390.i, label %.lr.ph389.i.preheader

.lr.ph389.i.preheader:                            ; preds = %iter.check303, %vec.epilog.iter.check304, %vec.epilog.middle.block316
  %.19388.i.ph = phi ptr [ %.18.lcssa.i, %iter.check303 ], [ %i.adj, %vec.epilog.iter.check304 ], [ %i.adw, %vec.epilog.middle.block316 ] ; 2 uses
  %.3607387.i.ph = phi i32 [ %.2606.lcssa.i, %iter.check303 ], [ %i.adl, %vec.epilog.iter.check304 ], [ %i.ady, %vec.epilog.middle.block316 ] ; 4 uses
  %.3611386.i.ph = phi ptr [ %.2610.lcssa.i, %iter.check303 ], [ %i.adm, %vec.epilog.iter.check304 ], [ %i.adz, %vec.epilog.middle.block316 ] ; 2 uses
  %i.aec = sub i32 %5, %.3607387.i.ph
  %xtraiter419 = and i32 %i.aec, 7                ; 2 uses
  %lcmp.mod420.not = icmp eq i32 %xtraiter419, 0
  br i1 %lcmp.mod420.not, label %.lr.ph389.i.prol.loopexit, label %.lr.ph389.i.prol

.lr.ph389.i.prol:                                 ; preds = %.lr.ph389.i.preheader, %.lr.ph389.i.prol
  %.19388.i.prol = phi ptr [ %i.aef, %.lr.ph389.i.prol ], [ %.19388.i.ph, %.lr.ph389.i.preheader ] ; 2 uses
  %.3607387.i.prol = phi i32 [ %i.aeg, %.lr.ph389.i.prol ], [ %.3607387.i.ph, %.lr.ph389.i.preheader ]
  %.3611386.i.prol = phi ptr [ %i.aee, %.lr.ph389.i.prol ], [ %.3611386.i.ph, %.lr.ph389.i.preheader ] ; 2 uses
  %prol.iter421 = phi i32 [ %prol.iter421.next, %.lr.ph389.i.prol ], [ 0, %.lr.ph389.i.preheader ]
  %i.aed = load i32, ptr %.19388.i.prol, align 4, !tbaa !24
  store i32 %i.aed, ptr %.3611386.i.prol, align 4, !tbaa !24
  %i.aee = getelementptr inbounds nuw i8, ptr %.3611386.i.prol, i64 4 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %.19388.i.prol, i64 4 ; 3 uses
  %i.aeg = add nuw nsw i32 %.3607387.i.prol, 1    ; 2 uses
  %prol.iter421.next = add i32 %prol.iter421, 1   ; 2 uses
  %prol.iter421.cmp.not = icmp eq i32 %prol.iter421.next, %xtraiter419
  br i1 %prol.iter421.cmp.not, label %.lr.ph389.i.prol.loopexit, label %.lr.ph389.i.prol, !llvm.loop !483

.lr.ph389.i.prol.loopexit:                        ; preds = %.lr.ph389.i.prol, %.lr.ph389.i.preheader
  %.lcssa384.unr = phi ptr [ poison, %.lr.ph389.i.preheader ], [ %i.aef, %.lr.ph389.i.prol ]
  %.19388.i.unr = phi ptr [ %.19388.i.ph, %.lr.ph389.i.preheader ], [ %i.aef, %.lr.ph389.i.prol ]
  %.3607387.i.unr = phi i32 [ %.3607387.i.ph, %.lr.ph389.i.preheader ], [ %i.aeg, %.lr.ph389.i.prol ]
  %.3611386.i.unr = phi ptr [ %.3611386.i.ph, %.lr.ph389.i.preheader ], [ %i.aee, %.lr.ph389.i.prol ]
  %i.aeh = sub i32 %.3607387.i.ph, %5
  %i.aei = icmp ugt i32 %i.aeh, -8
  br i1 %i.aei, label %._crit_edge390.i, label %.lr.ph389.i

.lr.ph382.i:                                      ; preds = %.lr.ph382.i.preheader, %.lr.ph382.i
  %.18381.i = phi ptr [ %i.ael, %.lr.ph382.i ], [ %.18381.i.ph, %.lr.ph382.i.preheader ] ; 2 uses
  %.2606380.i = phi i32 [ %i.aem, %.lr.ph382.i ], [ %.2606380.i.ph, %.lr.ph382.i.preheader ]
  %.2610379.i = phi ptr [ %i.aek, %.lr.ph382.i ], [ %.2610379.i.ph, %.lr.ph382.i.preheader ] ; 2 uses
  %i.aej = load <2 x i32>, ptr %.18381.i, align 4, !tbaa !24
  store <2 x i32> %i.aej, ptr %.2610379.i, align 4, !tbaa !24
  %i.aek = getelementptr inbounds nuw i8, ptr %.2610379.i, i64 8 ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %.18381.i, i64 8 ; 2 uses
  %i.aem = add nuw nsw i32 %.2606380.i, 2         ; 3 uses
  %i.aen = or disjoint i32 %i.aem, 1
  %i.aeo = icmp slt i32 %i.aen, %5
  br i1 %i.aeo, label %.lr.ph382.i, label %.preheader.i, !llvm.loop !484

.lr.ph389.i:                                      ; preds = %.lr.ph389.i.prol.loopexit, %.lr.ph389.i
  %.19388.i = phi ptr [ %i.afm, %.lr.ph389.i ], [ %.19388.i.unr, %.lr.ph389.i.prol.loopexit ] ; 9 uses
  %.3607387.i = phi i32 [ %i.afn, %.lr.ph389.i ], [ %.3607387.i.unr, %.lr.ph389.i.prol.loopexit ]
  %.3611386.i = phi ptr [ %i.afl, %.lr.ph389.i ], [ %.3611386.i.unr, %.lr.ph389.i.prol.loopexit ] ; 9 uses
  %i.aep = load i32, ptr %.19388.i, align 4, !tbaa !24
  store i32 %i.aep, ptr %.3611386.i, align 4, !tbaa !24
  %i.aeq = getelementptr inbounds nuw i8, ptr %.3611386.i, i64 4
  %i.aer = getelementptr inbounds nuw i8, ptr %.19388.i, i64 4
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !24
  store i32 %i.aes, ptr %i.aeq, align 4, !tbaa !24
  %i.aet = getelementptr inbounds nuw i8, ptr %.3611386.i, i64 8
  %i.aeu = getelementptr inbounds nuw i8, ptr %.19388.i, i64 8
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !24
  store i32 %i.aev, ptr %i.aet, align 4, !tbaa !24
  %i.aew = getelementptr inbounds nuw i8, ptr %.3611386.i, i64 12
  %i.aex = getelementptr inbounds nuw i8, ptr %.19388.i, i64 12
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !24
  store i32 %i.aey, ptr %i.aew, align 4, !tbaa !24
  %i.aez = getelementptr inbounds nuw i8, ptr %.3611386.i, i64 16
  %i.afa = getelementptr inbounds nuw i8, ptr %.19388.i, i64 16
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !24
  store i32 %i.afb, ptr %i.aez, align 4, !tbaa !24
  %i.afc = getelementptr inbounds nuw i8, ptr %.3611386.i, i64 20
  %i.afd = getelementptr inbounds nuw i8, ptr %.19388.i, i64 20
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !24
  store i32 %i.afe, ptr %i.afc, align 4, !tbaa !24
  %i.aff = getelementptr inbounds nuw i8, ptr %.3611386.i, i64 24
  %i.afg = getelementptr inbounds nuw i8, ptr %.19388.i, i64 24
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !24
  store i32 %i.afh, ptr %i.aff, align 4, !tbaa !24
  %i.afi = getelementptr inbounds nuw i8, ptr %.3611386.i, i64 28
  %i.afj = getelementptr inbounds nuw i8, ptr %.19388.i, i64 28
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !24
  store i32 %i.afk, ptr %i.afi, align 4, !tbaa !24
  %i.afl = getelementptr inbounds nuw i8, ptr %.3611386.i, i64 32
  %i.afm = getelementptr inbounds nuw i8, ptr %.19388.i, i64 32 ; 2 uses
  %i.afn = add nuw nsw i32 %.3607387.i, 8         ; 2 uses
  %exitcond447.not.i.7 = icmp eq i32 %i.afn, %5
  br i1 %exitcond447.not.i.7, label %._crit_edge390.i, label %.lr.ph389.i, !llvm.loop !485

._crit_edge390.i:                                 ; preds = %.lr.ph389.i.prol.loopexit, %.lr.ph389.i, %middle.block301, %vec.epilog.middle.block316, %.preheader.i
  %.19.lcssa.i = phi ptr [ %.18.lcssa.i, %.preheader.i ], [ %i.adw, %vec.epilog.middle.block316 ], [ %i.adj, %middle.block301 ], [ %.lcssa384.unr, %.lr.ph389.i.prol.loopexit ], [ %i.afm, %.lr.ph389.i ]
  %indvars.iv.next449.i = add nuw nsw i64 %indvars.iv448.i, 1 ; 2 uses
  %exitcond451.not.i = icmp eq i64 %indvars.iv.next449.i, %wide.trip.count.i
  br i1 %exitcond451.not.i, label %_ZN4ncnnL24unpack_output_tile_int32ERKNS_3MatERS0_iiii.exit, label %bb.s, !llvm.loop !486

_ZN4ncnnL24unpack_output_tile_int32ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge390.i, %.preheader249.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn47conv3x3s1_winograd23_transform_kernel_int8_avx2ERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) local_unnamed_addr #15 personality ptr @__gxx_personality_v0 {
_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit.i:
  %5 = alloca i32, align 4                        ; 4 uses
  %6 = alloca i32, align 4                        ; 5 uses
  %7 = alloca i32, align 4                        ; 5 uses
  %8 = alloca i32, align 4                        ; 6 uses
  %9 = alloca i32, align 4                        ; 4 uses
  %10 = alloca i32, align 4                       ; 6 uses
  %11 = alloca i32, align 4                       ; 5 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %5, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store i32 %3, ptr %6, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  store i32 %2, ptr %7, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %15 = load i32, ptr %14, align 4, !tbaa !32
  call fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %3, i32 noundef 0, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %16 = load i32, ptr %8, align 4, !tbaa !24      ; 4 uses
  %17 = add i32 %3, -1
  %i.a = add i32 %17, %16
  %i.b = sdiv i32 %i.a, %16                       ; 2 uses
  store i32 %i.b, ptr %11, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %i.c = shl nsw i32 %16, 4
  %18 = load i32, ptr %10, align 4, !tbaa !24     ; 4 uses
  %i.d = mul nsw i32 %i.c, %18
  %i.e = load i32, ptr %14, align 4, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 0, ptr %i.h, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.g, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.d, i32 noundef 1, i32 noundef %i.e, i64 noundef 2, ptr noundef null)
  %i.i = mul nsw i32 %18, %16
  %19 = add i32 %2, -1
  %i.j = add i32 %19, %18
  %i.k = sdiv i32 %i.j, %18
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.i, i32 noundef 16, i32 noundef %i.k, i32 noundef %i.b, i64 noundef 2, ptr noundef null)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit.i
  %i.l = load i32, ptr %14, align 4, !tbaa !32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %i.l)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %11, ptr nonnull %8, ptr nonnull %12, ptr nonnull %7, ptr nonnull %10, ptr nonnull %6, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull %5, ptr nonnull align 8 dereferenceable(72) %1)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = atomicrmw add ptr %i.m, i32 -1 acq_rel, align 4
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.c, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !37   ; 3 uses
  %.not3.i.i = icmp eq ptr %i.p, null
  %i.q = load ptr, ptr %12, align 8, !tbaa !15    ; 3 uses
  br i1 %.not3.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.q)
          to label %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit unwind label %bb.g, !inline_history !0

bb.e:                                             ; preds = %bb.c
  %.not.i14.i = icmp eq ptr %i.q, null
  br i1 %.not.i14.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.q) #8
  br label %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit

bb.g:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #23
  unreachable

bb.h:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %.not.i9.i = icmp eq ptr %i.x, null
  br i1 %.not.i9.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = atomicrmw add ptr %i.x, i32 -1 acq_rel, align 4
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !37  ; 3 uses
  %.not3.i10.i = icmp eq ptr %i.aa, null
  %i.ab = load ptr, ptr %12, align 8, !tbaa !15   ; 3 uses
  br i1 %.not3.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef %i.ab)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.n, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %.not.i13.i = icmp eq ptr %i.ab, null
  br i1 %.not.i13.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.ab) #8
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.n:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  resume { ptr, i32 } %i.w

_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit: ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #15 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.b = ashr i32 %i.a, 1
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = icmp eq i32 %6, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.b ], [ %6, %bb.a ]    ; 3 uses
  %i.f = uitofp fast i64 %i.c to float            ; 2 uses
  %i.g = fmul fast float %i.f, f0x3EAAAAAB
  %i.h = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.g)
  %i.i = fptosi float %i.h to i32
  %7 = sdiv i32 %i.i, 8
  %8 = shl nsw i32 %7, 3
  %.sroa.speculated86 = tail call i32 @llvm.smax.i32(i32 %8, i32 8)
  store i32 %.sroa.speculated86, ptr %3, align 4, !tbaa !24
  %i.j = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %.0)
  %i.k = load i32, ptr %3, align 4, !tbaa !24
  %i.l = mul nsw i32 %i.k, %.sroa.speculated82    ; 3 uses
  %i.m = add i32 %0, -1                           ; 2 uses
  %i.n = add i32 %i.m, %i.l
  %i.o = sdiv i32 %i.n, %i.l                      ; 2 uses
  %i.p = add i32 %i.m, %i.o
  %i.q = sdiv i32 %i.p, %i.o
  %i.r = add nsw i32 %i.q, 7
  %i.s = sdiv i32 %i.r, 8
  %i.t = shl nsw i32 %i.s, 3
  %.sroa.speculated78 = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %i.l) ; 3 uses
  %i.u = icmp sgt i32 %.0, 1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = sdiv i32 %.sroa.speculated78, %.0
  %.sroa.speculated68 = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1)
  %i.w = add nuw nsw i32 %.sroa.speculated68, 7
  %i.x = and i32 %i.w, 2147483640
  %.sroa.speculated74 = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %.sroa.speculated78)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %.sroa.speculated74, %bb.d ], [ %.sroa.speculated78, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr %3, align 4, !tbaa !24
  %i.y = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.z = sitofp fast i32 %storemerge to float
  %i.aa = fsub fast float %i.y, %i.z
  %i.ab = fptosi float %i.aa to i32
  %i.ac = sdiv i32 %i.ab, 8
  %i.ad = shl nsw i32 %i.ac, 3
  %.sroa.speculated62 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 8) ; 3 uses
  %i.ae = add i32 %2, -1                          ; 2 uses
  %i.af = add i32 %i.ae, %.sroa.speculated62
  %i.ag = sdiv i32 %i.af, %.sroa.speculated62     ; 2 uses
  %i.ah = add i32 %i.ae, %i.ag
  %i.ai = sdiv i32 %i.ah, %i.ag
  %i.aj = add nsw i32 %i.ai, 7
  %i.ak = sdiv i32 %i.aj, 8
  %i.al = shl nsw i32 %i.ak, 3
  %.sroa.speculated58 = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %.sroa.speculated62) ; 3 uses
  store i32 %.sroa.speculated58, ptr %5, align 4, !tbaa !24
  %i.am = icmp sgt i32 %1, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %3, align 4, !tbaa !24    ; 2 uses
  %i.ao = mul nsw i32 %i.an, %.sroa.speculated58
  %i.ap = sext i32 %i.ao to i64
  %i.aq = sub nsw i64 %i.c, %i.ap
  %i.ar = shl nsw i32 %i.an, 1
  %i.as = add nsw i32 %i.ar, %.sroa.speculated58
  %i.at = sext i32 %i.as to i64
  %i.au = udiv i64 %i.aq, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = sdiv i32 %i.av, 4
  %i.ax = shl nsw i32 %i.aw, 2
  %.sroa.speculated52 = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 4) ; 3 uses
  %i.ay = add nsw i32 %1, -1                      ; 2 uses
  %i.az = add nuw i32 %i.ay, %.sroa.speculated52
  %i.ba = udiv i32 %i.az, %.sroa.speculated52     ; 2 uses
  %i.bb = add nuw i32 %i.ay, %i.ba
  %i.bc = udiv i32 %i.bb, %i.ba
  %i.bd = add nuw nsw i32 %i.bc, 3
  %i.be = and i32 %i.bd, -4
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.be, i32 %.sroa.speculated52)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !24     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !24
  %i.h = load i32, ptr %0, align 4, !tbaa !24     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !24
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !24
  %i.k = load i32, ptr %i.a, align 4, !tbaa !24   ; 2 uses
  %.not84 = icmp sgt i32 %i.k, %i.j
  br i1 %.not84, label %._crit_edge, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph86, %_ZN4ncnn3MatD2Ev.exit
  %.03385 = phi i32 [ %i.k, %.lr.ph86 ], [ %i.am, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.aa = load i32, ptr %3, align 4, !tbaa !24
  %i.ab = mul nsw i32 %i.aa, %.03385              ; 3 uses
  %i.ac = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc34 unwind label %bb.e

.noexc34:                                         ; preds = %bb.c
  %i.ad = load ptr, ptr %4, align 8, !tbaa !15, !noalias !503
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !503
  %i.af = sext i32 %i.ac to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !503
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %5, align 4, !tbaa !24    ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %.noexc34
  %.pre = load i32, ptr %6, align 4, !tbaa !24
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.noexc, %.noexc34
  %i.am = add nsw i32 %.03385, 1
  %i.an = load i32, ptr %i.b, align 4, !tbaa !24
  %.not.not = icmp slt i32 %.03385, %i.an
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.noexc
  %i.ao = phi i32 [ %i.fc, %.noexc ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.ap = phi i32 [ %i.fe, %.noexc ], [ %i.ak, %.lr.ph.preheader ]
  %.083 = phi i32 [ %i.fd, %.noexc ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.aq = load i32, ptr %7, align 4, !tbaa !24
  %i.ar = sub nsw i32 %i.aq, %i.ab
  %i.as = load i32, ptr %3, align 4, !tbaa !24    ; 2 uses
  %.sroa.speculated68 = call i32 @llvm.smin.i32(i32 %i.as, i32 %i.ar) ; 3 uses
  %i.at = sub nsw i32 %i.ap, %.083
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.at) ; 3 uses
  %.val = load ptr, ptr %8, align 8
  %i.au = icmp sgt i32 %.sroa.speculated68, 0
  br i1 %i.au, label %.preheader4.lr.ph.i, label %.noexc

.preheader4.lr.ph.i:                              ; preds = %.lr.ph
  %i.av = load i32, ptr %9, align 4, !tbaa !24
  %i.aw = icmp sgt i32 %.sroa.speculated, 0
  %i.ax = mul i32 %i.av, 9
  br i1 %i.aw, label %.preheader4.preheader.i, label %.noexc

.preheader4.preheader.i:                          ; preds = %.preheader4.lr.ph.i
  %i.ay = sext i32 %.083 to i64
  %wide.trip.count20.i = zext nneg i32 %.sroa.speculated68 to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64
  br label %.preheader4.i

.preheader4.i:                                    ; preds = %._crit_edge.i, %.preheader4.preheader.i
  %indvars.iv17.i = phi i64 [ 0, %.preheader4.preheader.i ], [ %indvars.iv.next18.i, %._crit_edge.i ] ; 2 uses
  %.012.i = phi ptr [ %i.aj, %.preheader4.preheader.i ], [ %i.ef, %._crit_edge.i ]
  %i.az = trunc i64 %indvars.iv17.i to i32
  %i.ba = add i32 %i.ab, %i.az
  %i.bb = mul i32 %i.ax, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %.val, i64 %i.bc
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i, %.preheader4.i
  %indvars.iv.i = phi i64 [ 0, %.preheader4.i ], [ %indvars.iv.next.i, %.preheader.preheader.i ] ; 2 uses
  %.110.i = phi ptr [ %.012.i, %.preheader4.i ], [ %i.ef, %.preheader.preheader.i ] ; 2 uses
  %i.be = add nsw i64 %indvars.iv.i, %i.ay
  %i.bf = mul nsw i64 %i.be, 9
  %i.bg = getelementptr inbounds i8, ptr %i.bd, i64 %i.bf ; 9 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !18  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined:bb.a
  %i.my = or disjoint i32 %i.mx, 1
  %i.mz = icmp slt i32 %i.my, %i.ke
  br i1 %i.mz, label %.lr.ph358, label %.preheader, !llvm.loop !667

.lr.ph389:                                        ; preds = %.lr.ph389.preheader, %._crit_edge385
  %i.na = phi i32 [ %i.nw, %._crit_edge385 ], [ %i.ix, %.lr.ph389.preheader ]
  %i.nb = phi i32 [ %i.ny, %._crit_edge385 ], [ %.pre439, %.lr.ph389.preheader ] ; 2 uses
  %i.nc = phi ptr [ %i.nz, %._crit_edge385 ], [ %.pre438, %.lr.ph389.preheader ] ; 2 uses
  %i.nd = phi i32 [ %i.nw, %._crit_edge385 ], [ %i.iy, %.lr.ph389.preheader ] ; 2 uses
  %.12388 = phi ptr [ %.15.lcssa, %._crit_edge385 ], [ %.8.lcssa, %.lr.ph389.preheader ] ; 2 uses
  %.3244387 = phi i32 [ %i.qi, %._crit_edge385 ], [ %.2243.lcssa, %.lr.ph389.preheader ] ; 3 uses
  %i.ne = mul nsw i32 %i.nd, %i.ja
  %i.nf = add nsw i32 %i.ne, %.3244387            ; 2 uses
  %i.ng = shl nsw i32 %i.nf, 3
  %i.nh = sext i32 %i.ng to i64                   ; 2 uses
  %i.ni = getelementptr inbounds [2 x i8], ptr %i.nc, i64 %i.nh ; 2 uses
  %i.nj = icmp sgt i32 %i.nb, 7
  br i1 %i.nj, label %.lr.ph365, label %._crit_edge366

.lr.ph365:                                        ; preds = %.lr.ph389, %.lr.ph365
  %.0228363 = phi i32 [ %i.ns, %.lr.ph365 ], [ 0, %.lr.ph389 ]
  %.0229362 = phi ptr [ %i.nq, %.lr.ph365 ], [ %i.ni, %.lr.ph389 ] ; 2 uses
  %.13361 = phi ptr [ %i.nr, %.lr.ph365 ], [ %.12388, %.lr.ph389 ] ; 2 uses
  %i.nk = load <2 x i64>, ptr %.0229362, align 16, !tbaa !18
  store <2 x i64> %i.nk, ptr %.13361, align 1, !tbaa !18
  %i.nl = load i32, ptr %4, align 4, !tbaa !24    ; 4 uses
  %i.nm = load i32, ptr %2, align 4, !tbaa !24
  %i.nn = shl i32 %i.nl, 3
  %i.no = mul i32 %i.nn, %i.nm
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds [2 x i8], ptr %.0229362, i64 %i.np ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.13361, i64 16 ; 2 uses
  %i.ns = add nuw nsw i32 %.0228363, 8            ; 3 uses
  %i.nt = or disjoint i32 %i.ns, 7
  %i.nu = load i32, ptr %6, align 4, !tbaa !24    ; 2 uses
  %i.nv = icmp slt i32 %i.nt, %i.nu
  br i1 %i.nv, label %.lr.ph365, label %._crit_edge366.loopexit, !llvm.loop !668

._crit_edge366.loopexit:                          ; preds = %.lr.ph365
  %.pre437 = load ptr, ptr %5, align 8, !tbaa !15
  %.pre473 = mul nsw i32 %i.nl, %i.ja
  %.pre475 = add nsw i32 %.pre473, %.3244387      ; 2 uses
  %.pre477 = shl nsw i32 %.pre475, 3
  %.pre479 = sext i32 %.pre477 to i64
  br label %._crit_edge366

._crit_edge366:                                   ; preds = %._crit_edge366.loopexit, %.lr.ph389
  %.pre-phi480 = phi i64 [ %.pre479, %._crit_edge366.loopexit ], [ %i.nh, %.lr.ph389 ]
  %.pre-phi476 = phi i32 [ %.pre475, %._crit_edge366.loopexit ], [ %i.nf, %.lr.ph389 ] ; 2 uses
  %i.nw = phi i32 [ %i.nl, %._crit_edge366.loopexit ], [ %i.na, %.lr.ph389 ] ; 5 uses
  %i.nx = phi i32 [ %i.nl, %._crit_edge366.loopexit ], [ %i.nd, %.lr.ph389 ] ; 2 uses
  %i.ny = phi i32 [ %i.nu, %._crit_edge366.loopexit ], [ %i.nb, %.lr.ph389 ] ; 7 uses
  %i.nz = phi ptr [ %.pre437, %._crit_edge366.loopexit ], [ %i.nc, %.lr.ph389 ]
  %.13.lcssa = phi ptr [ %i.nr, %._crit_edge366.loopexit ], [ %.12388, %.lr.ph389 ] ; 2 uses
  %.0229.lcssa = phi ptr [ %i.nq, %._crit_edge366.loopexit ], [ %i.ni, %.lr.ph389 ]
  %.0228.lcssa = phi i32 [ %i.ns, %._crit_edge366.loopexit ], [ 0, %.lr.ph389 ] ; 3 uses
  %i.oa = sub nsw i64 0, %.pre-phi480
  %i.ob = getelementptr inbounds [2 x i8], ptr %.0229.lcssa, i64 %i.oa
  %i.oc = shl nsw i32 %.pre-phi476, 1
  %i.od = sext i32 %i.oc to i64                   ; 2 uses
  %i.oe = getelementptr inbounds [2 x i8], ptr %i.ob, i64 %i.od ; 2 uses
  %i.of = or disjoint i32 %.0228.lcssa, 1
  %i.og = icmp slt i32 %i.of, %i.ny
  br i1 %i.og, label %.lr.ph375, label %._crit_edge376

.lr.ph375:                                        ; preds = %._crit_edge366
  %i.oh = load i32, ptr %2, align 4, !tbaa !24
  %i.oi = shl i32 %i.nx, 1
  %i.oj = mul i32 %i.oi, %i.oh
  %i.ok = sext i32 %i.oj to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph375, %bb.e
  %.1373 = phi i32 [ %.0228.lcssa, %.lr.ph375 ], [ %i.or, %bb.e ]
  %.1230372 = phi ptr [ %i.oe, %.lr.ph375 ], [ %i.op, %bb.e ] ; 3 uses
  %.14371 = phi ptr [ %.13.lcssa, %.lr.ph375 ], [ %i.oq, %bb.e ] ; 3 uses
  %i.ol = load i16, ptr %.1230372, align 2, !tbaa !41
  store i16 %i.ol, ptr %.14371, align 2, !tbaa !41
  %i.om = getelementptr inbounds nuw i8, ptr %.1230372, i64 2
  %i.on = load i16, ptr %i.om, align 2, !tbaa !41
  %i.oo = getelementptr inbounds nuw i8, ptr %.14371, i64 2
  store i16 %i.on, ptr %i.oo, align 2, !tbaa !41
  %i.op = getelementptr inbounds [2 x i8], ptr %.1230372, i64 %i.ok ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.14371, i64 4 ; 2 uses
  %i.or = add nuw nsw i32 %.1373, 2               ; 3 uses
  %i.os = or disjoint i32 %i.or, 1
  %i.ot = icmp slt i32 %i.os, %i.ny
  br i1 %i.ot, label %bb.e, label %._crit_edge376, !llvm.loop !669

._crit_edge376:                                   ; preds = %bb.e, %._crit_edge366
  %.14.lcssa = phi ptr [ %.13.lcssa, %._crit_edge366 ], [ %i.oq, %bb.e ] ; 3 uses
  %.1230.lcssa = phi ptr [ %i.oe, %._crit_edge366 ], [ %i.op, %bb.e ]
  %.1.lcssa = phi i32 [ %.0228.lcssa, %._crit_edge366 ], [ %i.or, %bb.e ] ; 5 uses
  %i.ou = icmp slt i32 %.1.lcssa, %i.ny
  br i1 %i.ou, label %.lr.ph384, label %._crit_edge385

.lr.ph384:                                        ; preds = %._crit_edge376
  %i.ov = sub nsw i64 0, %i.od
  %i.ow = getelementptr inbounds [2 x i8], ptr %.1230.lcssa, i64 %i.ov
  %i.ox = sext i32 %.pre-phi476 to i64
  %i.oy = getelementptr inbounds [2 x i8], ptr %i.ow, i64 %i.ox ; 2 uses
  %i.oz = load i32, ptr %2, align 4, !tbaa !24
  %i.pa = mul nsw i32 %i.oz, %i.nx
  %i.pb = sext i32 %i.pa to i64                   ; 9 uses
  %i.pc = sub i32 %i.ny, %.1.lcssa
  %xtraiter681 = and i32 %i.pc, 7                 ; 2 uses
  %lcmp.mod682.not = icmp eq i32 %xtraiter681, 0
  br i1 %lcmp.mod682.not, label %.prol.loopexit680, label %.prol.preheader679

.prol.preheader679:                               ; preds = %.lr.ph384, %.prol.preheader679
  %.2382.prol = phi i32 [ %i.pg, %.prol.preheader679 ], [ %.1.lcssa, %.lr.ph384 ]
  %.2231381.prol = phi ptr [ %i.pe, %.prol.preheader679 ], [ %i.oy, %.lr.ph384 ] ; 2 uses
  %.15380.prol = phi ptr [ %i.pf, %.prol.preheader679 ], [ %.14.lcssa, %.lr.ph384 ] ; 2 uses
  %prol.iter683 = phi i32 [ %prol.iter683.next, %.prol.preheader679 ], [ 0, %.lr.ph384 ]
  %i.pd = load i16, ptr %.2231381.prol, align 2, !tbaa !41
  store i16 %i.pd, ptr %.15380.prol, align 2, !tbaa !41
  %i.pe = getelementptr inbounds [2 x i8], ptr %.2231381.prol, i64 %i.pb ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.15380.prol, i64 2 ; 3 uses
  %i.pg = add nuw nsw i32 %.2382.prol, 1          ; 2 uses
  %prol.iter683.next = add i32 %prol.iter683, 1   ; 2 uses
  %prol.iter683.cmp.not = icmp eq i32 %prol.iter683.next, %xtraiter681
  br i1 %prol.iter683.cmp.not, label %.prol.loopexit680, label %.prol.preheader679, !llvm.loop !670

.prol.loopexit680:                                ; preds = %.prol.preheader679, %.lr.ph384
  %.lcssa673.unr = phi ptr [ poison, %.lr.ph384 ], [ %i.pf, %.prol.preheader679 ]
  %.2382.unr = phi i32 [ %.1.lcssa, %.lr.ph384 ], [ %i.pg, %.prol.preheader679 ]
  %.2231381.unr = phi ptr [ %i.oy, %.lr.ph384 ], [ %i.pe, %.prol.preheader679 ]
  %.15380.unr = phi ptr [ %.14.lcssa, %.lr.ph384 ], [ %i.pf, %.prol.preheader679 ]
  %i.ph = sub i32 %.1.lcssa, %i.ny
  %i.pi = icmp ugt i32 %i.ph, -8
  br i1 %i.pi, label %._crit_edge385, label %.lr.ph384.new

.lr.ph384.new:                                    ; preds = %.prol.loopexit680, %.lr.ph384.new
  %.2382 = phi i32 [ %i.qh, %.lr.ph384.new ], [ %.2382.unr, %.prol.loopexit680 ]
  %.2231381 = phi ptr [ %i.qf, %.lr.ph384.new ], [ %.2231381.unr, %.prol.loopexit680 ] ; 2 uses
  %.15380 = phi ptr [ %i.qg, %.lr.ph384.new ], [ %.15380.unr, %.prol.loopexit680 ] ; 9 uses
  %i.pj = load i16, ptr %.2231381, align 2, !tbaa !41
  store i16 %i.pj, ptr %.15380, align 2, !tbaa !41
  %i.pk = getelementptr inbounds [2 x i8], ptr %.2231381, i64 %i.pb ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.15380, i64 2
  %i.pm = load i16, ptr %i.pk, align 2, !tbaa !41
  store i16 %i.pm, ptr %i.pl, align 2, !tbaa !41
  %i.pn = getelementptr inbounds [2 x i8], ptr %i.pk, i64 %i.pb ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.15380, i64 4
  %i.pp = load i16, ptr %i.pn, align 2, !tbaa !41
  store i16 %i.pp, ptr %i.po, align 2, !tbaa !41
  %i.pq = getelementptr inbounds [2 x i8], ptr %i.pn, i64 %i.pb ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.15380, i64 6
  %i.ps = load i16, ptr %i.pq, align 2, !tbaa !41
  store i16 %i.ps, ptr %i.pr, align 2, !tbaa !41
  %i.pt = getelementptr inbounds [2 x i8], ptr %i.pq, i64 %i.pb ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.15380, i64 8
  %i.pv = load i16, ptr %i.pt, align 2, !tbaa !41
  store i16 %i.pv, ptr %i.pu, align 2, !tbaa !41
  %i.pw = getelementptr inbounds [2 x i8], ptr %i.pt, i64 %i.pb ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.15380, i64 10
  %i.py = load i16, ptr %i.pw, align 2, !tbaa !41
  store i16 %i.py, ptr %i.px, align 2, !tbaa !41
  %i.pz = getelementptr inbounds [2 x i8], ptr %i.pw, i64 %i.pb ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.15380, i64 12
  %i.qb = load i16, ptr %i.pz, align 2, !tbaa !41
  store i16 %i.qb, ptr %i.qa, align 2, !tbaa !41
  %i.qc = getelementptr inbounds [2 x i8], ptr %i.pz, i64 %i.pb ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.15380, i64 14
  %i.qe = load i16, ptr %i.qc, align 2, !tbaa !41
  store i16 %i.qe, ptr %i.qd, align 2, !tbaa !41
  %i.qf = getelementptr inbounds [2 x i8], ptr %i.qc, i64 %i.pb
  %i.qg = getelementptr inbounds nuw i8, ptr %.15380, i64 16 ; 2 uses
  %i.qh = add nuw nsw i32 %.2382, 8               ; 2 uses
  %exitcond431.not.7 = icmp eq i32 %i.qh, %i.ny
  br i1 %exitcond431.not.7, label %._crit_edge385, label %.lr.ph384.new, !llvm.loop !671

._crit_edge385:                                   ; preds = %.prol.loopexit680, %.lr.ph384.new, %._crit_edge376
  %.15.lcssa = phi ptr [ %.14.lcssa, %._crit_edge376 ], [ %.lcssa673.unr, %.prol.loopexit680 ], [ %i.qg, %.lr.ph384.new ]
  %i.qi = add nuw nsw i32 %.3244387, 1            ; 2 uses
  %i.qj = icmp slt i32 %i.qi, %i.nw
  br i1 %i.qj, label %.lr.ph389, label %._crit_edge390, !llvm.loop !672

._crit_edge390:                                   ; preds = %._crit_edge385, %.preheader
  %i.qk = phi i32 [ %i.ix, %.preheader ], [ %i.nw, %._crit_edge385 ]
  %i.ql = phi i32 [ %i.iy, %.preheader ], [ %i.nw, %._crit_edge385 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond433.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond433.not, label %._crit_edge395, label %bb.c

._crit_edge395:                                   ; preds = %._crit_edge390, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge395, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn47conv3x3s1_winograd43_transform_kernel_int8_avx2ERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) local_unnamed_addr #15 personality ptr @__gxx_personality_v0 {
_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit.i:
  %5 = alloca i32, align 4                        ; 4 uses
  %6 = alloca i32, align 4                        ; 5 uses
  %7 = alloca i32, align 4                        ; 5 uses
  %8 = alloca i32, align 4                        ; 6 uses
  %9 = alloca i32, align 4                        ; 4 uses
  %10 = alloca i32, align 4                       ; 6 uses
  %11 = alloca i32, align 4                       ; 5 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %5, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store i32 %3, ptr %6, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  store i32 %2, ptr %7, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %15 = load i32, ptr %14, align 4, !tbaa !32
  call fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %3, i32 noundef 0, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %16 = load i32, ptr %8, align 4, !tbaa !24      ; 3 uses
  %17 = add i32 %3, -1
  %i.a = add i32 %17, %16
  %i.b = sdiv i32 %i.a, %16                       ; 2 uses
  store i32 %i.b, ptr %11, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %18 = load i32, ptr %10, align 4, !tbaa !24     ; 3 uses
  %i.c = mul i32 %18, %16                         ; 2 uses
  %i.d = mul i32 %i.c, 36
  %i.e = load i32, ptr %14, align 4, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 0, ptr %i.h, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.g, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.d, i32 noundef 1, i32 noundef %i.e, i64 noundef 4, ptr noundef null)
  %19 = add i32 %2, -1
  %i.i = add i32 %19, %18
  %i.j = sdiv i32 %i.i, %18
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.c, i32 noundef 36, i32 noundef %i.j, i32 noundef %i.b, i64 noundef 4, ptr noundef null)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit.i
  %i.k = load i32, ptr %14, align 4, !tbaa !32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %i.k)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %11, ptr nonnull %8, ptr nonnull %12, ptr nonnull %7, ptr nonnull %10, ptr nonnull %6, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull %5, ptr nonnull align 8 dereferenceable(72) %1)
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = atomicrmw add ptr %i.l, i32 -1 acq_rel, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !37   ; 3 uses
  %.not3.i.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %12, align 8, !tbaa !15    ; 3 uses
  br i1 %.not3.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.p)
          to label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit unwind label %bb.g, !inline_history !0

bb.e:                                             ; preds = %bb.c
  %.not.i14.i = icmp eq ptr %i.p, null
  br i1 %.not.i14.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.p) #8
  br label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit

bb.g:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

bb.h:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %.not.i9.i = icmp eq ptr %i.w, null
  br i1 %.not.i9.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = atomicrmw add ptr %i.w, i32 -1 acq_rel, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit.i

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !37   ; 3 uses
  %.not3.i10.i = icmp eq ptr %i.z, null
  %i.aa = load ptr, ptr %12, align 8, !tbaa !15   ; 3 uses
  br i1 %.not3.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.aa)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.n, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %.not.i13.i = icmp eq ptr %i.aa, null
  br i1 %.not.i13.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.aa) #8
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.n:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  resume { ptr, i32 } %i.v

_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.exit: ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !24     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !24
  %i.h = load i32, ptr %0, align 4, !tbaa !24     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !24
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !24
  %i.k = load i32, ptr %i.a, align 4, !tbaa !24   ; 2 uses
  %.not110 = icmp sgt i32 %i.k, %i.j
  br i1 %.not110, label %._crit_edge, label %.lr.ph112

.lr.ph112:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph112, %_ZN4ncnn3MatD2Ev.exit
  %.033111 = phi i32 [ %i.k, %.lr.ph112 ], [ %i.am, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.aa = load i32, ptr %3, align 4, !tbaa !24
  %i.ab = mul nsw i32 %i.aa, %.033111             ; 3 uses
  %i.ac = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc34 unwind label %bb.e

.noexc34:                                         ; preds = %bb.c
  %i.ad = load ptr, ptr %4, align 8, !tbaa !15, !noalias !686
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !686
  %i.af = sext i32 %i.ac to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !686
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %5, align 4, !tbaa !24    ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %.noexc34
  %.pre = load i32, ptr %6, align 4, !tbaa !24
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.noexc, %.noexc34
  %i.am = add nsw i32 %.033111, 1
  %i.an = load i32, ptr %i.b, align 4, !tbaa !24
  %.not.not = icmp slt i32 %.033111, %i.an
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.noexc
  %i.ao = phi i32 [ %i.awn, %.noexc ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.ap = phi i32 [ %i.awp, %.noexc ], [ %i.ak, %.lr.ph.preheader ]
  %.0109 = phi i32 [ %i.awo, %.noexc ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.aq = load i32, ptr %7, align 4, !tbaa !24
  %i.ar = sub nsw i32 %i.aq, %i.ab
  %i.as = load i32, ptr %3, align 4, !tbaa !24    ; 2 uses
  %.sroa.speculated68 = call i32 @llvm.smin.i32(i32 %i.as, i32 %i.ar) ; 3 uses
  %i.at = sub i32 %i.ap, %.0109
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.at) ; 4 uses
  %.val52 = load ptr, ptr %8, align 8             ; 3 uses
  %i.au = icmp sgt i32 %.sroa.speculated68, 0
  br i1 %i.au, label %.preheader11.lr.ph.i, label %.noexc

.preheader11.lr.ph.i:                             ; preds = %.lr.ph
  %i.av = load i32, ptr %9, align 4, !tbaa !24
  %i.aw = icmp sgt i32 %.sroa.speculated, 0
  %i.ax = mul i32 %i.av, 9
  br i1 %i.aw, label %.preheader11.preheader.i, label %.noexc

.preheader11.preheader.i:                         ; preds = %.preheader11.lr.ph.i
  %i.ay = sext i32 %.0109 to i64                  ; 11 uses
  %wide.trip.count27.i = zext nneg i32 %.sroa.speculated68 to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 5 uses
  %i.az = mul nsw i64 %i.ay, 9
  %i.ba = add nsw i64 %i.ay, %wide.trip.count.i
  %i.bb = mul nsw i64 %i.ba, 9
  %scevgep = getelementptr i8, ptr %.val52, i64 %i.bb
  %scevgep121 = getelementptr i8, ptr %.val52, i64 %i.az
  %i.bc = mul nuw nsw i64 %wide.trip.count.i, 72
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.bd = mul nuw nsw i64 %n.vec, 72
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.preheader11.i

.preheader11.i:                                   ; preds = %._crit_edge.i, %.preheader11.preheader.i
  %indvars.iv24.i = phi i64 [ 0, %.preheader11.preheader.i ], [ %indvars.iv.next25.i, %._crit_edge.i ] ; 2 uses
  %.019.i = phi ptr [ %i.aj, %.preheader11.preheader.i ], [ %.lcssa, %._crit_edge.i ] ; 13 uses
  %i.be = trunc i64 %indvars.iv24.i to i32
  %i.bf = add i32 %i.ab, %i.be
  %i.bg = mul i32 %i.ax, %i.bf
  %i.bh = sext i32 %i.bg to i64                   ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %.val52, i64 %i.bh ; 9 uses
  br i1 %min.iters.check, label %.preheader.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader11.i
  %i.bj = getelementptr i8, ptr %.019.i, i64 %i.bc
  %i.bk = getelementptr i8, ptr %scevgep121, i64 %i.bh
  %i.bl = getelementptr i8, ptr %scevgep, i64 %i.bh
  %bound0 = icmp ult ptr %.019.i, %i.bl
  %bound1 = icmp ult ptr %i.bk, %i.bj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.preheader.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bm = getelementptr i8, ptr %.019.i, i64 %i.bd ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.bn = or disjoint i64 %index, 1
  %i.bo = or disjoint i64 %index, 2
  %i.bp = or disjoint i64 %index, 3
  %i.bq = or disjoint i64 %index, 4
  %i.br = or disjoint i64 %index, 5
  %i.bs = or disjoint i64 %index, 6
  %i.bt = or disjoint i64 %index, 7
  %i.bu = mul i64 %index, 72                      ; 8 uses
  %next.gep = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %i.bv = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep122 = getelementptr i8, ptr %i.bv, i64 72
  %i.bw = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep123 = getelementptr i8, ptr %i.bw, i64 144
  %i.bx = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep124 = getelementptr i8, ptr %i.bx, i64 216
  %i.by = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep125 = getelementptr i8, ptr %i.by, i64 288
  %i.bz = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep126 = getelementptr i8, ptr %i.bz, i64 360
  %i.ca = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep127 = getelementptr i8, ptr %i.ca, i64 432
  %i.cb = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep128 = getelementptr i8, ptr %i.cb, i64 504
  %i.cc = add nsw i64 %index, %i.ay
  %i.cd = add nsw i64 %i.bn, %i.ay
  %i.ce = add nsw i64 %i.bo, %i.ay
  %i.cf = add nsw i64 %i.bp, %i.ay
  %i.cg = add nsw i64 %i.bq, %i.ay
  %i.ch = add nsw i64 %i.br, %i.ay
  %i.ci = add nsw i64 %i.bs, %i.ay
  %i.cj = add nsw i64 %i.bt, %i.ay
  %i.ck = mul nsw i64 %i.cc, 9
  %i.cl = mul nsw i64 %i.cd, 9
  %i.cm = mul nsw i64 %i.ce, 9
  %i.cn = mul nsw i64 %i.cf, 9
  %i.co = mul nsw i64 %i.cg, 9
  %i.cp = mul nsw i64 %i.ch, 9
  %i.cq = mul nsw i64 %i.ci, 9
  %i.cr = mul nsw i64 %i.cj, 9
  %i.cs = getelementptr inbounds i8, ptr %i.bi, i64 %i.ck ; 9 uses
  %i.ct = getelementptr inbounds i8, ptr %i.bi, i64 %i.cl ; 9 uses
  %i.cu = getelementptr inbounds i8, ptr %i.bi, i64 %i.cm ; 9 uses
  %i.cv = getelementptr inbounds i8, ptr %i.bi, i64 %i.cn ; 9 uses
  %i.cw = getelementptr inbounds i8, ptr %i.bi, i64 %i.co ; 9 uses
  %i.cx = getelementptr inbounds i8, ptr %i.bi, i64 %i.cp ; 9 uses
  %i.cy = getelementptr inbounds i8, ptr %i.bi, i64 %i.cq ; 9 uses
  %i.cz = getelementptr inbounds i8, ptr %i.bi, i64 %i.cr ; 9 uses
  %i.da = load i8, ptr %i.cs, align 1, !tbaa !18, !alias.scope !687
  %i.db = load i8, ptr %i.ct, align 1, !tbaa !18, !alias.scope !687
  %i.dc = load i8, ptr %i.cu, align 1, !tbaa !18, !alias.scope !687
  %i.dd = load i8, ptr %i.cv, align 1, !tbaa !18, !alias.scope !687
  %i.de = load i8, ptr %i.cw, align 1, !tbaa !18, !alias.scope !687
  %i.df = load i8, ptr %i.cx, align 1, !tbaa !18, !alias.scope !687
  %i.dg = load i8, ptr %i.cy, align 1, !tbaa !18, !alias.scope !687
  %i.dh = load i8, ptr %i.cz, align 1, !tbaa !18, !alias.scope !687
  %i.di = insertelement <8 x i8> poison, i8 %i.da, i64 0
  %i.dj = insertelement <8 x i8> %i.di, i8 %i.db, i64 1
  %i.dk = insertelement <8 x i8> %i.dj, i8 %i.dc, i64 2
end_hunk_1
begin_hunk_2_@_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined:bb.a
  %i.ajd = shl <8 x i16> %i.rc, splat (i16 2)
  %i.aje = sub <8 x i16> %i.abs, %i.ajd           ; 2 uses
  %i.ajf = sub <8 x i16> %i.wk, %i.lu
  %i.ajg = shl <8 x i16> %i.ajf, splat (i16 1)    ; 2 uses
  %i.ajh = sub <8 x i16> %i.abs, %i.rc            ; 2 uses
  %i.aji = shl <8 x i16> %i.gm, splat (i16 2)
  %.neg.1 = mul <8 x i16> %i.rc, splat (i16 -5)
  %i.ajj = add <8 x i16> %.neg.1, %i.aji
  %i.ajk = add <8 x i16> %i.ajj, %i.abs
  %i.ajl = add <8 x i16> %i.aje, %i.ajc
  %i.ajm = sub <8 x i16> %i.aje, %i.ajc
  %i.ajn = add <8 x i16> %i.ajh, %i.ajg
  %i.ajo = sub <8 x i16> %i.ajh, %i.ajg
  %.neg246.1 = mul <8 x i16> %i.wk, splat (i16 -5)
  %i.ajp = add <8 x i16> %.neg246.1, %i.ajb
  %i.ajq = add <8 x i16> %i.ajp, %i.aha
  store <8 x i16> %i.ajk, ptr %i.aiv, align 16, !tbaa !18
  store <8 x i16> %i.ajl, ptr %i.aiw, align 16, !tbaa !18
  store <8 x i16> %i.ajm, ptr %i.aix, align 16, !tbaa !18
  store <8 x i16> %i.ajn, ptr %i.aiy, align 16, !tbaa !18
  store <8 x i16> %i.ajo, ptr %i.aiz, align 16, !tbaa !18
  store <8 x i16> %i.ajq, ptr %i.aja, align 16, !tbaa !18
  %i.ajr = load i32, ptr %4, align 4, !tbaa !24
  %i.ajs = mul nsw i32 %i.ajr, 48
  %i.ajt = sext i32 %i.ajs to i64                 ; 6 uses
  %i.aju = getelementptr inbounds [2 x i8], ptr %i.aiv, i64 %i.ajt ; 2 uses
  %i.ajv = getelementptr inbounds [2 x i8], ptr %i.aiw, i64 %i.ajt ; 2 uses
  %i.ajw = getelementptr inbounds [2 x i8], ptr %i.aix, i64 %i.ajt ; 2 uses
  %i.ajx = getelementptr inbounds [2 x i8], ptr %i.aiy, i64 %i.ajt ; 2 uses
  %i.ajy = getelementptr inbounds [2 x i8], ptr %i.aiz, i64 %i.ajt ; 2 uses
  %i.ajz = getelementptr inbounds [2 x i8], ptr %i.aja, i64 %i.ajt ; 2 uses
  %i.aka = shl <8 x i16> %i.lv, splat (i16 2)     ; 2 uses
  %i.akb = sub <8 x i16> %i.wl, %i.aka            ; 2 uses
  %i.akc = shl <8 x i16> %i.rd, splat (i16 2)
  %i.akd = sub <8 x i16> %i.abt, %i.akc           ; 2 uses
  %i.ake = sub <8 x i16> %i.wl, %i.lv
  %i.akf = shl <8 x i16> %i.ake, splat (i16 1)    ; 2 uses
  %i.akg = sub <8 x i16> %i.abt, %i.rd            ; 2 uses
  %i.akh = shl <8 x i16> %i.gn, splat (i16 2)
  %.neg.2 = mul <8 x i16> %i.rd, splat (i16 -5)
  %i.aki = add <8 x i16> %.neg.2, %i.akh
  %i.akj = add <8 x i16> %i.aki, %i.abt
  %i.akk = add <8 x i16> %i.akd, %i.akb
  %i.akl = sub <8 x i16> %i.akd, %i.akb
  %i.akm = add <8 x i16> %i.akg, %i.akf
  %i.akn = sub <8 x i16> %i.akg, %i.akf
  %.neg246.2 = mul <8 x i16> %i.wl, splat (i16 -5)
  %i.ako = add <8 x i16> %.neg246.2, %i.aka
  %i.akp = add <8 x i16> %i.ako, %i.ahb
  store <8 x i16> %i.akj, ptr %i.aju, align 16, !tbaa !18
  store <8 x i16> %i.akk, ptr %i.ajv, align 16, !tbaa !18
  store <8 x i16> %i.akl, ptr %i.ajw, align 16, !tbaa !18
  store <8 x i16> %i.akm, ptr %i.ajx, align 16, !tbaa !18
  store <8 x i16> %i.akn, ptr %i.ajy, align 16, !tbaa !18
  store <8 x i16> %i.akp, ptr %i.ajz, align 16, !tbaa !18
  %i.akq = load i32, ptr %4, align 4, !tbaa !24
  %i.akr = mul nsw i32 %i.akq, 48
  %i.aks = sext i32 %i.akr to i64                 ; 6 uses
  %i.akt = getelementptr inbounds [2 x i8], ptr %i.aju, i64 %i.aks ; 2 uses
  %i.aku = getelementptr inbounds [2 x i8], ptr %i.ajv, i64 %i.aks ; 2 uses
  %i.akv = getelementptr inbounds [2 x i8], ptr %i.ajw, i64 %i.aks ; 2 uses
  %i.akw = getelementptr inbounds [2 x i8], ptr %i.ajx, i64 %i.aks ; 2 uses
  %i.akx = getelementptr inbounds [2 x i8], ptr %i.ajy, i64 %i.aks ; 2 uses
  %i.aky = getelementptr inbounds [2 x i8], ptr %i.ajz, i64 %i.aks ; 2 uses
  %i.akz = shl <8 x i16> %i.lw, splat (i16 2)     ; 2 uses
  %i.ala = sub <8 x i16> %i.wm, %i.akz            ; 2 uses
  %i.alb = shl <8 x i16> %i.re, splat (i16 2)
  %i.alc = sub <8 x i16> %i.abu, %i.alb           ; 2 uses
  %i.ald = sub <8 x i16> %i.wm, %i.lw
  %i.ale = shl <8 x i16> %i.ald, splat (i16 1)    ; 2 uses
  %i.alf = sub <8 x i16> %i.abu, %i.re            ; 2 uses
  %i.alg = shl <8 x i16> %i.go, splat (i16 2)
  %.neg.3 = mul <8 x i16> %i.re, splat (i16 -5)
  %i.alh = add <8 x i16> %.neg.3, %i.alg
  %i.ali = add <8 x i16> %i.alh, %i.abu
  %i.alj = add <8 x i16> %i.alc, %i.ala
  %i.alk = sub <8 x i16> %i.alc, %i.ala
  %i.all = add <8 x i16> %i.alf, %i.ale
  %i.alm = sub <8 x i16> %i.alf, %i.ale
  %.neg246.3 = mul <8 x i16> %i.wm, splat (i16 -5)
  %i.aln = add <8 x i16> %.neg246.3, %i.akz
  %i.alo = add <8 x i16> %i.aln, %i.ahc
  store <8 x i16> %i.ali, ptr %i.akt, align 16, !tbaa !18
  store <8 x i16> %i.alj, ptr %i.aku, align 16, !tbaa !18
  store <8 x i16> %i.alk, ptr %i.akv, align 16, !tbaa !18
  store <8 x i16> %i.all, ptr %i.akw, align 16, !tbaa !18
  store <8 x i16> %i.alm, ptr %i.akx, align 16, !tbaa !18
  store <8 x i16> %i.alo, ptr %i.aky, align 16, !tbaa !18
  %i.alp = load i32, ptr %4, align 4, !tbaa !24
  %i.alq = mul nsw i32 %i.alp, 48
  %i.alr = sext i32 %i.alq to i64                 ; 6 uses
  %i.als = getelementptr inbounds [2 x i8], ptr %i.akt, i64 %i.alr ; 2 uses
  %i.alt = getelementptr inbounds [2 x i8], ptr %i.aku, i64 %i.alr ; 2 uses
  %i.alu = getelementptr inbounds [2 x i8], ptr %i.akv, i64 %i.alr ; 2 uses
  %i.alv = getelementptr inbounds [2 x i8], ptr %i.akw, i64 %i.alr ; 2 uses
  %i.alw = getelementptr inbounds [2 x i8], ptr %i.akx, i64 %i.alr ; 2 uses
  %i.alx = getelementptr inbounds [2 x i8], ptr %i.aky, i64 %i.alr ; 2 uses
  %i.aly = shl <8 x i16> %i.lx, splat (i16 2)     ; 2 uses
  %i.alz = sub <8 x i16> %i.wn, %i.aly            ; 2 uses
  %i.ama = shl <8 x i16> %i.rf, splat (i16 2)
  %i.amb = sub <8 x i16> %i.abv, %i.ama           ; 2 uses
  %i.amc = sub <8 x i16> %i.wn, %i.lx
  %i.amd = shl <8 x i16> %i.amc, splat (i16 1)    ; 2 uses
  %i.ame = sub <8 x i16> %i.abv, %i.rf            ; 2 uses
  %i.amf = shl <8 x i16> %i.gp, splat (i16 2)
  %.neg.4 = mul <8 x i16> %i.rf, splat (i16 -5)
  %i.amg = add <8 x i16> %.neg.4, %i.amf
  %i.amh = add <8 x i16> %i.amg, %i.abv
  %i.ami = add <8 x i16> %i.amb, %i.alz
  %i.amj = sub <8 x i16> %i.amb, %i.alz
  %i.amk = add <8 x i16> %i.ame, %i.amd
  %i.aml = sub <8 x i16> %i.ame, %i.amd
  %.neg246.4 = mul <8 x i16> %i.wn, splat (i16 -5)
  %i.amm = add <8 x i16> %.neg246.4, %i.aly
  %i.amn = add <8 x i16> %i.amm, %i.ahd
  store <8 x i16> %i.amh, ptr %i.als, align 16, !tbaa !18
  store <8 x i16> %i.ami, ptr %i.alt, align 16, !tbaa !18
  store <8 x i16> %i.amj, ptr %i.alu, align 16, !tbaa !18
  store <8 x i16> %i.amk, ptr %i.alv, align 16, !tbaa !18
  store <8 x i16> %i.aml, ptr %i.alw, align 16, !tbaa !18
  store <8 x i16> %i.amn, ptr %i.alx, align 16, !tbaa !18
  %i.amo = load i32, ptr %4, align 4, !tbaa !24
  %i.amp = mul nsw i32 %i.amo, 48
  %i.amq = sext i32 %i.amp to i64                 ; 6 uses
  %i.amr = getelementptr inbounds [2 x i8], ptr %i.als, i64 %i.amq
  %i.ams = getelementptr inbounds [2 x i8], ptr %i.alt, i64 %i.amq
  %i.amt = getelementptr inbounds [2 x i8], ptr %i.alu, i64 %i.amq
  %i.amu = getelementptr inbounds [2 x i8], ptr %i.alv, i64 %i.amq
  %i.amv = getelementptr inbounds [2 x i8], ptr %i.alw, i64 %i.amq
  %i.amw = getelementptr inbounds [2 x i8], ptr %i.alx, i64 %i.amq
  %i.amx = shl <8 x i16> %i.lz, splat (i16 2)     ; 2 uses
  %i.amy = sub <8 x i16> %i.wp, %i.amx            ; 2 uses
  %i.amz = shl <8 x i16> %i.rh, splat (i16 2)
  %i.ana = sub <8 x i16> %i.abx, %i.amz           ; 2 uses
  %i.anb = sub <8 x i16> %i.wp, %i.lz
  %i.anc = shl <8 x i16> %i.anb, splat (i16 1)    ; 2 uses
  %i.and = sub <8 x i16> %i.abx, %i.rh            ; 2 uses
  %i.ane = shl <8 x i16> %i.gr, splat (i16 2)
  %.neg.5 = mul <8 x i16> %i.rh, splat (i16 -5)
  %i.anf = add <8 x i16> %.neg.5, %i.ane
  %i.ang = add <8 x i16> %i.anf, %i.abx
  %i.anh = add <8 x i16> %i.ana, %i.amy
  %i.ani = sub <8 x i16> %i.ana, %i.amy
  %i.anj = add <8 x i16> %i.and, %i.anc
  %i.ank = sub <8 x i16> %i.and, %i.anc
  %.neg246.5 = mul <8 x i16> %i.wp, splat (i16 -5)
  %i.anl = add <8 x i16> %.neg246.5, %i.amx
  %i.anm = add <8 x i16> %i.anl, %i.ahf
  store <8 x i16> %i.ang, ptr %i.amr, align 16, !tbaa !18
  store <8 x i16> %i.anh, ptr %i.ams, align 16, !tbaa !18
  store <8 x i16> %i.ani, ptr %i.amt, align 16, !tbaa !18
  store <8 x i16> %i.anj, ptr %i.amu, align 16, !tbaa !18
  store <8 x i16> %i.ank, ptr %i.amv, align 16, !tbaa !18
  store <8 x i16> %i.anm, ptr %i.amw, align 16, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ann = load i32, ptr %4, align 4, !tbaa !24   ; 3 uses
  %i.ano = sext i32 %i.ann to i64
  %i.anp = icmp slt i64 %indvars.iv.next, %i.ano
  br i1 %i.anp, label %_ZN4ncnn3MatD2Ev.exit, label %._crit_edge, !llvm.loop !760

._crit_edge:                                      ; preds = %.thread.5, %.lr.ph.split
  %i.anq = phi i32 [ %i.q, %.lr.ph.split ], [ %i.ann, %.thread.5 ]
  %i.anr = add i32 %.0260, 1
  %exitcond.not = icmp eq i32 %.0260, %i.j
  br i1 %exitcond.not, label %._crit_edge262, label %.lr.ph.split, !llvm.loop !761

._crit_edge262:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.dy

bb.dy:                                            ; preds = %._crit_edge262, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smulh.v8i16(<8 x i16>, <8 x i16>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 int", !10, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 _ZTSN4ncnn9AllocatorE", !10, i64 0}
!14 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !11, i64 8, !12, i64 16, !7, i64 24, !13, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !12, i64 64}
!15 = !{!14, !10, i64 0}
!16 = !{!14, !12, i64 64}
!17 = !{!14, !12, i64 16}
!18 = !{!6, !6, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!"branch_weights", i32 8, i32 24}
!24 = !{!7, !7, i64 0}
!25 = !{!14, !7, i64 44}
!26 = !{!14, !7, i64 24}
!27 = !{!14, !7, i64 56}
!28 = !{!14, !7, i64 48}
!29 = !{!11, !11, i64 0}
!30 = !{!"bool", !6, i64 0}
!31 = !{!"_ZTSN4ncnn6OptionE", !30, i64 0, !30, i64 1, !30, i64 2, !30, i64 3, !7, i64 4, !13, i64 8, !13, i64 16, !7, i64 24, !30, i64 28, !30, i64 29, !30, i64 30, !30, i64 31, !30, i64 32, !30, i64 33, !30, i64 34, !30, i64 35, !30, i64 36, !30, i64 37, !30, i64 38, !30, i64 39, !7, i64 40, !30, i64 44, !30, i64 45, !30, i64 46, !30, i64 47, !6, i64 48, !30, i64 49, !30, i64 50, !30, i64 51, !30, i64 52, !30, i64 53, !30, i64 54, !30, i64 55, !30, i64 56, !30, i64 57, !30, i64 58, !30, i64 59, !30, i64 60, !30, i64 61, !30, i64 62, !30, i64 63}
!32 = !{!31, !7, i64 4}
!33 = !{!"branch_weights", i32 4, i32 12}
!34 = !{i64 2, i64 -1, i64 -1, i1 true}
!35 = !{!34}
!36 = !{!14, !11, i64 8}
!37 = !{!14, !13, i64 32}
!38 = !{!"vtable pointer", !5, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"short", !6, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!14, !7, i64 40}
!43 = !{!31, !13, i64 16}
!44 = !{!12, !12, i64 0}
!45 = !{!14, !7, i64 52}
!46 = !{!"llvm.loop.unswitch.partial.disable"}
!47 = distinct !{!47, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!48 = distinct !{!48, !47, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!49 = distinct !{!49, !19}
!50 = distinct !{!50, !19}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!57 = distinct !{!57, !56, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!58 = distinct !{!58, !19}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!67 = distinct !{!67, !66, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!68 = distinct !{!68, !19}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !20}
!72 = distinct !{!72, !19}
!73 = distinct !{!73, i1 false, !"LVerDomain"}
!74 = distinct !{!74, !73}
!75 = distinct !{!75, !73}
!76 = distinct !{!76, !73}
!77 = distinct !{!77, !19, !21, !22}
!78 = distinct !{!78, !19, !21, !22}
!79 = distinct !{!79, !20}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !19, !21}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!84 = distinct !{!84, !83, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !19}
!87 = distinct !{!87, i1 false, !"LVerDomain"}
!88 = distinct !{!88, !87}
!89 = distinct !{!89, !87}
!90 = distinct !{!90, !87}
!91 = distinct !{!91, !19, !21, !22}
!92 = distinct !{!92, !19, !21, !22}
!93 = distinct !{!93, !20}
!94 = distinct !{!94, !19, !21}
!95 = distinct !{!95, !19}
!96 = distinct !{!96, !19, !21, !22}
!97 = distinct !{!97, !19, !21, !22}
!98 = distinct !{!98, !20}
!99 = distinct !{!99, !19}
!100 = distinct !{!100, !19, !21}
!101 = distinct !{!101, !19}
!102 = !{!48}
!103 = !{!57}
!104 = !{!67}
!105 = !{!74}
!106 = !{!75}
!107 = !{!76}
!108 = !{!75, !74}
!109 = !{!84}
!110 = !{!88}
!111 = !{!89}
!112 = !{!90}
!113 = !{!89, !88}
!114 = !{!"branch_weights", i32 8, i32 56}
!115 = !{!"branch_weights", i32 8, i32 120}
!116 = distinct !{!116, !19, !21, !22}
!117 = distinct !{!117, !19, !21, !22}
!118 = distinct !{!118, !19}
!119 = distinct !{!119, !19, !22, !21}
!120 = distinct !{!120, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!121 = distinct !{!121, !120, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!122 = distinct !{!122, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!123 = distinct !{!123, !122, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!124 = distinct !{!124, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!125 = distinct !{!125, !124, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!126 = distinct !{!126, !19}
!127 = distinct !{!127, !19}
!128 = distinct !{!128, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!129 = distinct !{!129, !128, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!130 = distinct !{!130, !19}
!131 = distinct !{!131, !19}
!132 = distinct !{!132, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!133 = distinct !{!133, !132, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!134 = distinct !{!134, !19}
!135 = distinct !{!135, !19}
!136 = distinct !{!136, !19}
!137 = distinct !{!137, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!138 = distinct !{!138, !137, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!139 = distinct !{!139, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!140 = distinct !{!140, !139, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!141 = distinct !{!141, !19}
!142 = distinct !{!142, !19}
!143 = distinct !{!143, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!144 = distinct !{!144, !143, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!145 = distinct !{!145, !19}
!146 = distinct !{!146, !19}
!147 = distinct !{!147, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!148 = distinct !{!148, !147, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!149 = distinct !{!149, !19}
!150 = distinct !{!150, !19}
end_hunk_2
