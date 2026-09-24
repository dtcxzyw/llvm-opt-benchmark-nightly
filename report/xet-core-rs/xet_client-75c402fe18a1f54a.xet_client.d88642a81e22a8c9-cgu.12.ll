Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.12?download=true
inline.NumInlined: 591
inline.NumDeleted: 305
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges:bb.a
bb.u:                                             ; preds = %bb.t
  %i.bw = icmp samesign ult i64 %i.bu, 21
  br i1 %i.bw, label %bb.w, label %bb.v, !prof !5

bb.v:                                             ; preds = %bb.u
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keymNCB11_0E0INtNtB39_3vec3VecBZ_EEB19_(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 384307168202282326) %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #22
          to label %thread-pre-split unwind label %bb.z

bb.w:                                             ; preds = %bb.u
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_11sort_by_keymNCB1o_0E0EB1w_(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 384307168202282326) %i.bu, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %thread-pre-split unwind label %bb.z

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB2K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateEEEB3n_.exit200 unwind label %bb.o

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateEEEB3n_.exit200: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bx = sub i64 %.sink404, %.sroa.025.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.591.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bx, ptr %.sroa.490.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.y

bb.y:                                             ; preds = %bb.i, %bb.bp, %bb.h, %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateEEEB3n_.exit200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  ret void

.body.thread:                                     ; preds = %bb.ad, %.body.thread242, %.body, %bb.z
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %i.cd, %bb.ad ], [ %i.by, %bb.z ], [ %lpad.thr_comm, %.body.thread242 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateEEB1i_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #25
          to label %.body203 unwind label %bb.am

bb.z:                                             ; preds = %bb.w, %bb.v
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

thread-pre-split:                                 ; preds = %bb.w, %bb.v
  %.pr = load i64, ptr %i.bo, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %thread-pre-split, %bb.t
  %i.bz = phi i64 [ %.pr, %thread-pre-split ], [ %i.bu, %bb.t ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bp, align 8
  store i64 0, ptr %i.bq, align 8
  %i.ca = icmp ult i64 %i.bz, 384307168202282326
  call void @llvm.assume(i1 %i.ca)
  %.not335 = icmp eq i64 %i.bz, 0
  br i1 %.not335, label %._crit_edge333, label %.lr.ph332

._crit_edge333:                                   ; preds = %bb.ak, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  invoke void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEINtNtBR_18passthrough_hasher15U64DirectHasherBN_EE6insertB2C_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.ab unwind label %.body.thread242

.body.thread242:                                  ; preds = %._crit_edge333, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEB1g_.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %bb.aj
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #25
          to label %.body.thread unwind label %bb.am

bb.ab:                                            ; preds = %._crit_edge333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cb = load i64, ptr %i.h, align 8, !range !13, !alias.scope !884, !noundef !4
  %i.cc = icmp eq i64 %i.cb, -1
  br i1 %i.cc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB1C_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEB1g_.exit.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.thread unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEB1g_.exit.i: ; preds = %bb.ac
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB1C_.exit unwind label %.body.thread242

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB1C_.exit: ; preds = %bb.ab, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEB1g_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB1C_.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body203 unwind label %bb.ah

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB1C_.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateEEB1i_.exit unwind label %bb.r

bb.ah:                                            ; preds = %bb.af
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateEEB1i_.exit: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.q

bb.ai:                                            ; preds = %bb.bl
  unreachable

.lr.ph332:                                        ; preds = %bb.aa, %bb.ak
  %i.ch = phi i64 [ %i.cy, %bb.ak ], [ 0, %bb.aa ] ; 3 uses
  %i.ci = phi i64 [ %i.cz, %bb.ak ], [ %i.bz, %bb.aa ] ; 3 uses
  %.sroa.080.0330 = phi i64 [ %.lcssa, %bb.ak ], [ 0, %bb.aa ] ; 2 uses
  %i.cj = load ptr, ptr %i.bn, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %.sroa.080.0330 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %.val = load i32, ptr %i.cl, align 4, !alias.scope !885, !noundef !4
  %i.cm = getelementptr i8, ptr %i.ck, i64 20
  %.val195 = load i32, ptr %i.cm, align 4, !alias.scope !886, !noundef !4 ; 2 uses
  %.val196 = load i64, ptr %i.ck, align 8, !alias.scope !887, !noundef !4
  %i.cn = getelementptr i8, ptr %i.ck, i64 8
  %.val197 = load i64, ptr %i.cn, align 8, !alias.scope !888, !noundef !4 ; 2 uses
  %i.co = add nuw nsw i64 %.sroa.080.0330, 1      ; 3 uses
  %i.cp = icmp samesign ult i64 %i.co, %i.ci
  br i1 %i.cp, label %.lr.ph321, label %._crit_edge322

._crit_edge322:                                   ; preds = %bb.al, %.lr.ph321, %.lr.ph332
  %.sroa.2.0.lcssa = phi i32 [ %.val195, %.lr.ph332 ], [ %.sroa.2.0318, %.lr.ph321 ], [ %..i206, %bb.al ]
  %.sroa.2160.0.lcssa = phi i64 [ %.val197, %.lr.ph332 ], [ %.sroa.2160.0319, %.lr.ph321 ], [ %..i207, %bb.al ]
  %.lcssa = phi i64 [ %i.co, %.lr.ph332 ], [ %i.cs, %.lr.ph321 ], [ %i.ci, %bb.al ] ; 2 uses
  %i.cq = load i64, ptr %i.i, align 8, !range !9, !alias.scope !889, !noalias !890, !noundef !4
  %i.cr = icmp eq i64 %i.ch, %i.cq
  br i1 %i.cr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge322
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #22
          to label %bb.ak unwind label %.body

.lr.ph321:                                        ; preds = %.lr.ph332, %bb.al
  %i.cs = phi i64 [ %i.dg, %bb.al ], [ %i.co, %.lr.ph332 ] ; 3 uses
  %.sroa.2160.0319 = phi i64 [ %..i207, %bb.al ], [ %.val197, %.lr.ph332 ] ; 2 uses
  %.sroa.2.0318 = phi i32 [ %..i206, %bb.al ], [ %.val195, %.lr.ph332 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.cs ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i32, ptr %i.cu, align 8, !noundef !4
  %.not179 = icmp ugt i32 %i.cv, %.sroa.2.0318
  br i1 %.not179, label %._crit_edge322, label %bb.al

bb.ak:                                            ; preds = %._crit_edge322, %bb.aj
  %i.cw = load ptr, ptr %i.bp, align 8, !alias.scope !889, !noalias !890, !nonnull !4, !noundef !4
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.ch ; 4 uses
  store i64 %.val196, ptr %i.cx, align 8
  %.sroa.4230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %.sroa.2160.0.lcssa, ptr %.sroa.4230.0..sroa_idx, align 8
  %.sroa.5231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i32 %.val, ptr %.sroa.5231.0..sroa_idx, align 8
  %.sroa.6232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 20
  store i32 %.sroa.2.0.lcssa, ptr %.sroa.6232.0..sroa_idx, align 4
  %i.cy = add i64 %i.ch, 1                        ; 2 uses
  store i64 %i.cy, ptr %i.bq, align 8
  %i.cz = load i64, ptr %i.bo, align 8, !noundef !4 ; 3 uses
  %i.da = icmp ult i64 %i.cz, 384307168202282326
  call void @llvm.assume(i1 %i.da)
  %i.db = icmp ult i64 %.lcssa, %i.cz
  br i1 %i.db, label %.lr.ph332, label %._crit_edge333

bb.al:                                            ; preds = %.lr.ph321
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %i.dd = load i32, ptr %i.dc, align 4, !noundef !4
  %..i206 = call noundef i32 @llvm.umax.i32(i32 %i.dd, i32 %.sroa.2.0318) ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.df = load i64, ptr %i.de, align 8, !noundef !4
  %..i207 = call noundef i64 @llvm.umax.i64(i64 %i.df, i64 %.sroa.2160.0319) ; 2 uses
  %i.dg = add i64 %i.cs, 1                        ; 2 uses
  %exitcond354.not = icmp eq i64 %i.dg, %i.ci
  br i1 %exitcond354.not, label %._crit_edge322, label %.lr.ph321

bb.am:                                            ; preds = %bb.bq, %.loopexit.split-lp, %.body203, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils29compute_reconstruction_ranges21FetchInfoIntermediateEEEB3n_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19passthrough_hashmap18PassThroughHashMapNtNtBG_9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils11MergedRangeEEEB3d_.exit, %.body, %.body.thread
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.an:                                            ; preds = %.lr.ph315, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format10XorbObjectECsiAynQAjgDuT_10xet_client.exit213
  %i.di = phi i64 [ %i.ao, %.lr.ph315 ], [ %i.fp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format10XorbObjectECsiAynQAjgDuT_10xet_client.exit213 ] ; 3 uses
  %.sroa.025.0313 = phi i64 [ %i.ao, %.lr.ph315 ], [ %.sroa.025.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format10XorbObjectECsiAynQAjgDuT_10xet_client.exit213 ] ; 2 uses
  %.sroa.017.1312 = phi i64 [ %.sroa.017.0300, %.lr.ph315 ], [ %i.fq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format10XorbObjectECsiAynQAjgDuT_10xet_client.exit213 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.dj = getelementptr inbounds nuw [48 x i8], ptr %i.an, i64 %.sroa.017.1312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.dj, i64 48, i1 false)
  %i.dk = load i32, ptr %i.bb, align 8, !noundef !4 ; 3 uses
  %i.dl = load i32, ptr %i.bc, align 4, !noundef !4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void %i.be(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.s, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u)
          to label %bb.ao unwind label %.loopexit258

.loopexit258:                                     ; preds = %bb.an, %bb.bj
  %lpad.loopexit260 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit.split-lp259:                            ; preds = %bb.bk
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.ao:                                            ; preds = %bb.an
  %i.dm = load i64, ptr %i.s, align 8, !range !13, !noundef !4 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4111.0..sroa_idx, i64 40, i1 false)
  br i1 %i.dn, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.do, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format10XorbObjectECsiAynQAjgDuT_10xet_client.exit215

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.546.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.445.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 %i.dm, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.dp = icmp ult i64 %i.di, %.sink404
  %i.dq = icmp ult i32 %i.dk, %i.dl
  %or.cond334 = and i1 %i.dp, %i.dq
  %.pre = load i32, ptr %i.bg, align 4            ; 2 uses
  br i1 %or.cond334, label %.lr.ph303, label %.loopexit254

.loopexit254:                                     ; preds = %bb.au, %bb.at, %bb.aq
  %.promoted310 = phi i32 [ %.pre, %bb.aq ], [ %i.dw, %bb.at ], [ %i.ee, %bb.au ] ; 3 uses
  %.sroa.025.1 = phi i64 [ %.sroa.025.0313, %bb.aq ], [ %.sroa.025.2301, %bb.at ], [ %i.ed, %bb.au ] ; 2 uses
  %.sroa.027.0 = phi i32 [ %i.dk, %bb.aq ], [ %.sroa.027.1302, %bb.at ], [ %i.dl, %bb.au ] ; 5 uses
  %i.dr = phi i64 [ %i.di, %bb.aq ], [ %i.dx, %bb.at ], [ %i.ec, %bb.au ] ; 3 uses
  %i.ds = zext i32 %.promoted310 to i64
  %i.dt = add i64 %i.dr, %i.ds
  %i.du = icmp ugt i64 %i.dt, %.sink
  %i.dv = icmp ugt i32 %i.dl, %.sroa.027.0
  %or.cond431 = and i1 %i.du, %i.dv
  br i1 %or.cond431, label %.lr.ph427, label %.loopexit

.lr.ph303:                                        ; preds = %bb.aq, %bb.au
  %i.dw = phi i32 [ %i.ee, %bb.au ], [ %.pre, %bb.aq ] ; 2 uses
  %i.dx = phi i64 [ %i.ec, %bb.au ], [ %i.di, %bb.aq ] ; 2 uses
  %.sroa.027.1302 = phi i32 [ %i.ef, %bb.au ], [ %i.dk, %bb.aq ] ; 3 uses
  %.sroa.025.2301 = phi i64 [ %i.ed, %bb.au ], [ %.sroa.025.0313, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB5_10XorbObject25uncompressed_chunk_length(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.t, i32 noundef %.sroa.027.1302)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit

.loopexit252:                                     ; preds = %.lr.ph427
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph303
  %lpad.loopexit255 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.loopexit, %bb.bd, %bb.bc, %bb.bf, %bb.bi
  %lpad.loopexit262 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bl
  %lpad.loopexit.split-lp263 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit252
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit252 ], [ %lpad.loopexit255, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit262, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp263, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format16XorbObjectInfoV1ECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.t)
          to label %bb.bq unwind label %bb.am

bb.ar:                                            ; preds = %.lr.ph303
  %i.dy = load i64, ptr %i.r, align 8, !range !10, !noundef !4 ; 2 uses
  %.not183 = icmp eq i64 %i.dy, -1
  %i.dz = load i32, ptr %i.bf, align 8            ; 3 uses
  br i1 %.not183, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5123.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5117.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dy, ptr %i.ea, align 8
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.dz, ptr %.sroa.4122.0..sroa_idx, align 8
  br label %bb.bk

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.eb = zext i32 %i.dz to i64                   ; 2 uses
  %i.ec = add i64 %i.dx, %i.eb                    ; 4 uses
  %.not184 = icmp ugt i64 %i.ec, %.sink404
  br i1 %.not184, label %.loopexit254, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i64 %i.ec, ptr %i.x, align 8
  %i.ed = add i64 %.sroa.025.2301, %i.eb          ; 2 uses
  %i.ee = sub i32 %i.dw, %i.dz                    ; 3 uses
  store i32 %i.ee, ptr %i.bg, align 4
  %i.ef = add nuw i32 %.sroa.027.1302, 1          ; 2 uses
  %exitcond353.not = icmp eq i32 %i.ef, %i.dl
  br i1 %exitcond353.not, label %.loopexit254, label %.lr.ph303

.loopexit:                                        ; preds = %.preheader, %bb.ax, %.loopexit254
  %i.eg = phi i32 [ %.promoted310, %.loopexit254 ], [ %i.en, %.preheader ], [ %i.ei, %bb.ax ]
  %.sroa.9.0 = phi i32 [ %i.dl, %.loopexit254 ], [ %i.ej, %.preheader ], [ %.sroa.9.1426, %bb.ax ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB5_10XorbObject15get_byte_offset(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.t, i32 noundef %.sroa.027.0, i32 noundef %.sroa.9.0)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.preheader:                                       ; preds = %bb.ay
  %i.eh = icmp ugt i32 %i.ej, %.sroa.027.0
  br i1 %i.eh, label %.lr.ph427, label %.loopexit

.lr.ph427:                                        ; preds = %.loopexit254, %.preheader
  %.sroa.9.1426 = phi i32 [ %i.ej, %.preheader ], [ %i.dl, %.loopexit254 ] ; 2 uses
  %i.ei = phi i32 [ %i.en, %.preheader ], [ %.promoted310, %.loopexit254 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ej = add i32 %.sroa.9.1426, -1               ; 4 uses
  invoke void @_RNvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB5_10XorbObject25uncompressed_chunk_length(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.t, i32 noundef %i.ej)
          to label %bb.av unwind label %.loopexit252

bb.av:                                            ; preds = %.lr.ph427
  %i.ek = load i64, ptr %i.q, align 8, !range !10, !noundef !4 ; 2 uses
  %.not185 = icmp eq i64 %i.ek, -1
  %i.el = load i32, ptr %i.bh, align 8            ; 3 uses
  br i1 %.not185, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %.sroa.5135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5135.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5129.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ek, ptr %i.em, align 8
  %.sroa.4134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.el, ptr %.sroa.4134.0..sroa_idx, align 8
  br label %bb.bk

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.en = sub i32 %i.ei, %i.el                    ; 4 uses
  %i.eo = zext i32 %i.en to i64
  %i.ep = add i64 %i.dr, %i.eo
  %.not186 = icmp ult i64 %i.ep, %.sink
  br i1 %.not186, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i32 %i.en, ptr %i.bg, align 4
  %.not189 = icmp eq i32 %i.ei, %i.el
  br i1 %.not189, label %bb.bl, label %.preheader, !prof !8

bb.az:                                            ; preds = %.loopexit
  %i.eq = load i64, ptr %i.p, align 8, !range !10, !noundef !4 ; 2 uses
  %.not187 = icmp eq i64 %i.eq, -1
  %i.er = load i32, ptr %i.bi, align 8            ; 2 uses
  %i.es = load i32, ptr %i.bj, align 4            ; 2 uses
  br i1 %.not187, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.sroa.6143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.6151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6151.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6143.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
end_hunk_0
