Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.08?download=true
inline.NumInlined: 450
inline.NumDeleted: 193
begin_hunk_0_@_RNvNtNtCskuiImRAV2ip_9elfshaker4repo6remote20open_remote_resource:bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCsuo3vitg1o0_6chrono6offset5fixed11FixedOffsetEECskuiImRAV2ip_9elfshaker.exit.i.i.i unwind label %bb.g, !noalias !671

bb.g:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %.body119 unwind label %bb.h, !noalias !671

bb.h:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !671
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCsuo3vitg1o0_6chrono6offset5fixed11FixedOffsetEECskuiImRAV2ip_9elfshaker.exit.i.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %bb.l unwind label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !671
  unreachable

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.r, ptr noundef nonnull align 8 dereferenceable(104) %i.x, i64 104, i1 false)
  call void @_RNvMs_NtCsk6GKf1Xiy0l_4ureq7requestNtB4_7Request4call(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.as = load i64, ptr %i.s, align 8, !range !9, !noundef !5
  %.not111 = icmp eq i64 %i.as, -2
  br i1 %.not111, label %bb.w, label %bb.s

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCsuo3vitg1o0_6chrono6offset5fixed11FixedOffsetEECskuiImRAV2ip_9elfshaker.exit.i.i.i, %.noexc117, %.noexc, %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body119

.body119:                                         ; preds = %bb.e, %bb.g, %bb.k
  %eh.lpad-body120 = phi { ptr, i32 } [ %i.at, %bb.k ], [ %i.ap, %bb.g ], [ %i.am, %bb.e ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk6GKf1Xiy0l_4ureq7request7RequestECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(104) %i.v) #19
          to label %.thread135 unwind label %bb.r

bb.l:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskuiImRAV2ip_9elfshaker.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCsuo3vitg1o0_6chrono6offset5fixed11FixedOffsetEECskuiImRAV2ip_9elfshaker.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !671
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !5, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !5
  invoke void @_RNvMs_NtCsk6GKf1Xiy0l_4ureq7requestNtB4_7Request3set(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.ax)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #19
          to label %.thread135 unwind label %bb.r

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef nonnull align 8 dereferenceable(104) %i.w, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.thread138 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread138

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.j

bb.r:                                             ; preds = %.thread138, %.body114.thread, %bb.m, %.body119
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.s:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.i, ptr noundef nonnull align 8 dereferenceable(272) %i.s, i64 272, i1 false)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !686
  %i.bc = call noundef align 8 dereferenceable_or_null(272) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 273) 272, i64 noundef 8) #21, !noalias !686 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.t, label %bb.ao, !prof !79

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 272) #20
          to label %.noexc126 unwind label %bb.u

.noexc126:                                        ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk6GKf1Xiy0l_4ureq5error5ErrorECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.i) #19
          to label %.thread135 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.w:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.451.sroa.4.0..sroa.451.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.451.sroa.6.0..sroa.451.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.427.sroa.6.0..sroa.427.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.427.sroa.6.0..sroa.427.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.451.sroa.6.0..sroa.451.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.552.0..sroa_idx, i64 200, i1 false)
  %i.bh = load <2 x i64>, ptr %i.bg, align 8
  %.sroa.427.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.bi = load <2 x ptr>, ptr %.sroa.451.sroa.4.0..sroa.451.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store <2 x i64> %i.bh, ptr %i.t, align 16
  store <2 x ptr> %i.bi, ptr %.sroa.427.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 256 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 16, !noundef !5 ; 2 uses
  store i16 %i.bk, ptr %i.q, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.bl = invoke { ptr, i64 } @_RNvMs_NtCsk6GKf1Xiy0l_4ureq8responseNtB4_8Response6header(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 14)
          to label %bb.x unwind label %.body114.thread151 ; 2 uses

.body114.thread151:                               ; preds = %bb.w, %bb.af, %bb.ac
  %lpad.thr_comm149 = landingpad { ptr, i32 }
          cleanup
  br label %.body114.thread

bb.x:                                             ; preds = %bb.w
  %i.bm = extractvalue { ptr, i64 } %i.bl, 0      ; 2 uses
  %.not112 = icmp eq ptr %i.bm, null              ; 2 uses
  %i.bn = extractvalue { ptr, i64 } %i.bl, 1
  %.sroa.329.0 = select i1 %.not112, i64 1, i64 %i.bn ; 3 uses
  %.sroa.028.0 = select i1 %.not112, ptr @48, ptr %i.bm ; 3 uses
  switch i64 %.sroa.329.0, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.bo = load i8, ptr %.sroa.028.0, align 1, !alias.scope !689, !noalias !692, !noundef !5 ; 2 uses
  switch i8 %i.bo, label %bb.z [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.x
  %.pr.i = load i8, ptr %.sroa.028.0, align 1, !alias.scope !689, !noalias !692
  br label %bb.z

bb.z:                                             ; preds = %thread-pre-split.i, %bb.y
  %i.bp = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.bo, %bb.y ]
  %cond.i = icmp eq i8 %i.bp, 43                  ; 2 uses
  %i.bq = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.329.0, %i.bq ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.br = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.br, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.z
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %.loopexit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.aa
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i5, i64 1
  %i.bt = add nsw i64 %.sroa.15.1.i4, -1          ; 2 uses
  %.not52.i = icmp eq i64 %i.bt, 0
  br i1 %.not52.i, label %.loopexit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.z, %.preheader56.i
  %.sroa.0.1.i5 = phi ptr [ %i.bs, %.preheader56.i ], [ %.sroa.0.0.i, %bb.z ] ; 2 uses
  %.sroa.15.1.i4 = phi i64 [ %i.bt, %.preheader56.i ], [ %.sroa.15.0.i, %bb.z ]
  %.sroa.042.0.i3 = phi i64 [ %i.bz, %.preheader56.i ], [ 0, %bb.z ] ; 2 uses
  %6 = icmp ugt i64 %.sroa.042.0.i3, 1844674407370955161
  br i1 %6, label %.loopexit, label %bb.aa, !prof !79

bb.aa:                                            ; preds = %.preheader56.i.preheader
  %7 = mul nuw i64 %.sroa.042.0.i3, 10            ; 2 uses
  %i.bu = load i8, ptr %.sroa.0.1.i5, align 1, !alias.scope !689, !noalias !692, !noundef !5
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add nsw i32 %i.bv, -48                  ; 2 uses
  %i.bx = icmp ugt i32 %i.bw, 9
  %i.by = zext nneg i32 %i.bw to i64
  %i.bz = add i64 %7, %i.by                       ; 3 uses
  %i.ca = icmp ult i64 %i.bz, %7
  %or.cond = select i1 %i.bx, i1 true, i1 %i.ca, !prof !694
  br i1 %or.cond, label %.loopexit, label %.preheader56.i, !prof !694

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.ab
  %.sroa.0.269.i = phi ptr [ %i.ch, %bb.ab ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.cg, %bb.ab ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.cj, %bb.ab ], [ 0, %.preheader.i ]
  %i.cb = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !689, !noalias !692, !noundef !5
  %i.cc = zext i8 %i.cb to i32
  %i.cd = add nsw i32 %i.cc, -48                  ; 2 uses
  %i.ce = icmp ult i32 %i.cd, 10
  br i1 %i.ce, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %.lr.ph.i
  %i.cf = mul i64 %.sroa.042.267.i, 10
  %i.cg = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.ci = zext nneg i32 %i.cd to i64
  %i.cj = add i64 %i.cf, %i.ci                    ; 2 uses
  %.not53.i = icmp eq i64 %i.cg, 0
  br i1 %.not53.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %.preheader56.i.preheader, %bb.aa, %.preheader56.i, %.lr.ph.i, %bb.ab, %.preheader.i, %bb.y, %bb.y, %bb.x
  %.sink.i = phi i64 [ 0, %bb.y ], [ 0, %.preheader.i ], [ %.sroa.329.0, %bb.x ], [ 0, %bb.y ], [ 0, %.lr.ph.i ], [ %i.cj, %bb.ab ], [ 0, %bb.aa ], [ %i.bz, %.preheader56.i ], [ 0, %.preheader56.i.preheader ]
  store i64 %.sink.i, ptr %i.p, align 8
  %i.ck = load atomic i64, ptr @_RNvCse7cAXHj51Pq_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cl = icmp ult i64 %i.ck, 6
  call void @llvm.assume(i1 %i.cl)
  %i.cm = icmp samesign ugt i64 %i.ck, 2
  br i1 %i.cm, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.y, ptr %i.o, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtCs96EQFXyf2I9_3url3UrlNtB6_7Display3fmtCskuiImRAV2ip_9elfshaker, ptr %.sroa.494.0..sroa_idx, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.q, ptr %i.cn, align 8
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.498.0..sroa_idx, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.p, ptr %i.co, align 8
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4102.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr @40, ptr %i.n, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 23, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr @40, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 23, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr @50, ptr %i.cs, align 8
  invoke void @_RINvNtCse7cAXHj51Pq_3log13___private_api3loguNtB2_12GlobalLoggerECskuiImRAV2ip_9elfshaker(ptr noundef nonnull @49, ptr noundef nonnull %i.o, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n)
          to label %bb.ae unwind label %.body114.thread151

bb.ad:                                            ; preds = %.loopexit, %bb.ae
  %i.ct = phi i16 [ %i.bk, %.loopexit ], [ %.pre, %bb.ae ]
  switch i16 %i.ct, label %bb.af [
    i16 200, label %bb.ag
    i16 304, label %bb.ah
  ]

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.pre = load i16, ptr %i.q, align 2
  br label %bb.ad

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cu = load i16, ptr %i.bj, align 16, !noundef !5
  store i16 %i.cu, ptr %i.k, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.4106.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @51, ptr noundef nonnull %i.j)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskuiImRAV2ip_9elfshaker.exit unwind label %.body114.thread151

bb.ag:                                            ; preds = %bb.ad
  %i.cv = load i64, ptr %i.p, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.m, ptr noundef nonnull align 16 dereferenceable(264) %i.t, i64 264, i1 false)
  %i.cw = call { ptr, ptr } @_RNvMs_NtCsk6GKf1Xiy0l_4ureq8responseNtB4_8Response11into_reader(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(264) %i.m) ; 2 uses
  %i.cx = extractvalue { ptr, ptr } %i.cw, 0
  %i.cy = extractvalue { ptr, ptr } %i.cw, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cv, ptr %i.cz, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cx, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cy, ptr %.sroa.539.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.an

bb.ah:                                            ; preds = %bb.ad
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.341.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.am, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk6GKf1Xiy0l_4ureq8response8ResponseECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(264) %i.t)
  br label %bb.an

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !695
  %i.da = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 273) 24, i64 noundef 8) #21, !noalias !695 ; 3 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.aj, label %bb.am, !prof !79

bb.aj:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskuiImRAV2ip_9elfshaker.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #20
          to label %.noexc128 unwind label %bb.ak

.noexc128:                                        ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #19
          to label %.body114.thread unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.am:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskuiImRAV2ip_9elfshaker.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 -9223372036854775793, ptr %0, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.da, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @53, ptr %.sroa.545.0..sroa_idx, align 8
  br label %bb.ai

bb.an:                                            ; preds = %bb.ag, %bb.ai, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

.body114.thread:                                  ; preds = %bb.ak, %.body114.thread151
  %eh.lpad-body115148 = phi { ptr, i32 } [ %lpad.thr_comm149, %.body114.thread151 ], [ %i.dc, %bb.ak ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk6GKf1Xiy0l_4ureq8response8ResponseECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(264) %i.t) #19
          to label %.thread135 unwind label %bb.r

bb.ao:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.bc, ptr noundef nonnull align 8 dereferenceable(272) %i.s, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i64 -9223372036854775793, ptr %0, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %.sroa.488.0..sroa_idx, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @55, ptr %.sroa.589.0..sroa_idx, align 8
  br label %bb.an

.thread135:                                       ; preds = %.body119, %bb.m, %.body114.thread, %bb.u, %.thread138
  %.pn134 = phi { ptr, i32 } [ %i.be, %bb.u ], [ %eh.lpad-body124141, %.thread138 ], [ %eh.lpad-body115148, %.body114.thread ], [ %eh.lpad-body120, %.body119 ], [ %i.ay, %bb.m ]
  resume { ptr, i32 } %.pn134

.thread138:                                       ; preds = %bb.o, %bb.q
  %eh.lpad-body124141 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.q ], [ %i.az, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk6GKf1Xiy0l_4ureq7request7RequestECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(104) %i.x) #19
          to label %.thread135 unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCskuiImRAV2ip_9elfshaker4repo6remote20read_remote_resource(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 16               ; 9 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvNtNtCskuiImRAV2ip_9elfshaker4repo6remote20open_remote_resource(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %2, i32 noundef 0, i64 %3, i32 noundef %4)
  %i.e = load i64, ptr %i.d, align 8, !range !156, !noundef !5
  %.not = icmp eq i64 %i.e, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtB5_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE6map_orIBJ_IBw_B14_EB1D_ENCNCNvNtB1H_6remote20read_remote_resource0s_0EB1J_.exit

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCskuiImRAV2ip_9elfshaker:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCskuiImRAV2ip_9elfshaker(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @87, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtNtCs1xwejQucwHj_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtNtCs1xwejQucwHj_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderRShEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs9open_fileRNtNtCsaL1QbXo9JQH_3std4path4PathEB6_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileE13with_capacityCskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i32 noundef range(i32 0, -1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteINtNtCs3oUPovFnLWP_4core6result6ResultNtB6_11RemoteIndexNtNtB8_5error5ErrorENtB6_17ReifyRemoteResult5reifyNtNtCsaL1QbXo9JQH_3std4path7DisplayEBa_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCs96EQFXyf2I9_3urlNtB2_12ParseOptions5parse(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs2_Cs7s9T68JqHVf_3hexINtNtCs1xwejQucwHj_5alloc3vec3VechENtB6_7FromHex8from_hexReECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsF_NtCs1xwejQucwHj_5alloc3vecAhj14_INtNtCs3oUPovFnLWP_4core7convert7TryFromINtB5_3VechEE8try_fromCskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsg_Cs1XKMWD4UPJk_13generic_arrayINtB6_12GenericArrayhINtNtCs6q71FM3kdqy_7typenum4uint4UIntIBV_IBV_IBV_IBV_IBV_IBV_NtBX_5UTermNtNtBZ_3bit2B1ENtB26_2B0EB2j_EB2j_EB2j_EB2j_EB2j_EEINtNtB6_8sequence15GenericSequencehE8generateNCNvXNtB6_5implsBz_NtNtCs3oUPovFnLWP_4core7default7Default7default0ECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 1 captures(none) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsuo3vitg1o0_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsuo3vitg1o0_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE15new_with_offsetNtNtNtB7_6offset3utc3UtcECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), i32 noundef, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBI_10FileHandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCs96EQFXyf2I9_3url3UrlENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsk6GKf1Xiy0l_4ureq6header6HeaderENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo6remote10RemotePackENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBP_10FileHandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCs96EQFXyf2I9_3url3UrlENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsk6GKf1Xiy0l_4ureq6header6HeaderENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo6remote10RemotePackENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTAhj14_mEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringmEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E3newCskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs3oUPovFnLWP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsm_NtCsaL1QbXo9JQH_3std2fsNtB5_8Metadata8modified(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs18FmLiCbOr5_4sha18compress8compress(ptr noalias nofree noundef align 4 dereferenceable(20), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, 144115188075855872)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions() unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo6remote10RemotePackE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB2_9BufReaderRShE13with_capacityCskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteINtNtCs3oUPovFnLWP_4core6result6ResultNtB6_11RemoteIndexNtNtB8_5error5ErrorENtB6_17ReifyRemoteResult5reifyNtCs96EQFXyf2I9_3url3UrlEBa_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs11create_fileRNtNtCsaL1QbXo9JQH_3std4path4PathEB6_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef range(i32 0, 2), i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtCsaL1QbXo9JQH_3std2fs4FileNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path11to_path_buf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaL1QbXo9JQH_3std2fs8read_dirRNtNtB4_4path4PathECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_6filter6FilterINtNtB2_10filter_map9FilterMapNtNtCsaL1QbXo9JQH_3std2fs7ReadDirNCNvNtNtCskuiImRAV2ip_9elfshaker4repo6remote12load_remotes0ENCB2v_s_0ENCB2v_s0_0ENtB2x_11RemoteIndexINtNtB6_6result6ResultzNtNtB2z_5error5ErrorENCINvXso_B48_IB46_INtNtCs1xwejQucwHj_5alloc3vec3VecB3M_EB4s_EINtNtNtB4_6traits7collect12FromIteratorIB46_B3M_B4s_EE9from_iterBQ_E0B55_EB2B_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noundef nonnull, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaL1QbXo9JQH_3std2fs8metadataRNtNtB4_4path7PathBufECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs11create_fileRNtNtCsaL1QbXo9JQH_3std4path7PathBufEB6_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i32 noundef range(i32 0, 2), i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCsaL1QbXo9JQH_3std2fsNtB6_4File4openRNtNtB8_4path4PathECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsD_NtCsuo3vitg1o0_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcEINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCsaL1QbXo9JQH_3std4time10SystemTimeE4from(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(address) dereferenceable(12), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCsuo3vitg1o0_6chrono6format10formattingINtB4_13DelayedFormatNtNtB6_8strftime13StrftimeItemsENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaL1QbXo9JQH_3std2fs8metadataRNtNtB4_4path4PathECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMse_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_9PackIndex5parseRShEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([264 x i8]) align 8 captures(none) dereferenceable(264), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtCs96EQFXyf2I9_3url3UrlNtB6_7Display3fmtCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCskuiImRAV2ip_9elfshaker7packidxNtB4_9PackErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCse7cAXHj51Pq_3log13___private_api3loguNtB2_12GlobalLoggerECskuiImRAV2ip_9elfshaker(ptr noundef nonnull, ptr noundef nonnull, i64 noundef range(i64 1, 6), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCsaL1QbXo9JQH_3std2fs5writeRNtNtB4_4path4PathRShECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtCs1xwejQucwHj_5alloc2io4copy4copyINtNtB6_5boxed3BoxDNtNtB4_4read4ReadNtNtCs3oUPovFnLWP_4core6marker4SendNtB1f_4SyncEL_EINtNtCskuiImRAV2ip_9elfshaker8progress14ProgressWriterQINtNtB6_3vec3VechEEEB26_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCsk6GKf1Xiy0l_4ureq5agentNtB5_5Agent3get(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsk6GKf1Xiy0l_4ureq7requestNtB4_7Request3set(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsk6GKf1Xiy0l_4ureq7requestNtB4_7Request4call(ptr dead_on_unwind noalias nofree noundef writable sret([272 x i8]) align 8 captures(address) dereferenceable(272), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs_NtCsk6GKf1Xiy0l_4ureq8responseNtB4_8Response6header(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvMs_NtCsk6GKf1Xiy0l_4ureq8responseNtB4_8Response11into_reader(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(264)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBd_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB12_6marker4SendNtB1z_4SyncEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCsk6GKf1Xiy0l_4ureq5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCsk6GKf1Xiy0l_4ureq5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_Cs96EQFXyf2I9_3urlNtB4_3Url13path_segments(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCskuiImRAV2ip_9elfshaker8progressNtB4_16ProgressReporter22checkpoint_with_detail(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef, i64 noundef range(i64 0, 2), i64, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCs3oUPovFnLWP_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXsa_NtCsaL1QbXo9JQH_3std2fsNtB5_4FileNtNtNtCs1xwejQucwHj_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr15memrchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsa_NtCs3oUPovFnLWP_4core5arrayAhj14_NtNtB7_3fmt5Debug3fmtCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(20), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsa_NtCs3oUPovFnLWP_4core5arrayAhj4_NtNtB7_3fmt5Debug3fmtCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtCs3oUPovFnLWP_4core3fmtNtB5_9ArgumentsNtB5_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1y_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsb_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtB8_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtB6_5Debug3fmtCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsk6GKf1Xiy0l_4ureq5agent10AgentStateE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #12

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsk6GKf1Xiy0l_4ureq5agent11AgentConfigE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impaNtB8_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtNtCs3oUPovFnLWP_4core3fmt3numaNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core3fmt3numaNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCs3oUPovFnLWP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCs3oUPovFnLWP_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCs3oUPovFnLWP_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCs3oUPovFnLWP_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsk6GKf1Xiy0l_4ureq8response8ResponseNtB6_5Debug3fmtCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsk6GKf1Xiy0l_4ureq5error9TransportNtB6_5Debug3fmtCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_Cs6kU8M6Zwtah_12block_bufferINtB5_11BlockBufferINtNtCs6q71FM3kdqy_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtCs3oUPovFnLWP_4core7default7Default7defaultCskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([65 x i8]) align 1 captures(none) dereferenceable(65)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsg_Cs1XKMWD4UPJk_13generic_arrayINtB6_12GenericArrayhINtNtCs6q71FM3kdqy_7typenum4uint4UIntIBV_IBV_IBV_IBV_NtBX_5UTermNtNtBZ_3bit2B1ENtB1Y_2B0EB1W_EB2b_EB2b_EEINtNtB6_8sequence15GenericSequencehE8generateNCNvXNtB6_5implsBz_NtNtCs3oUPovFnLWP_4core7default7Default7default0ECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([20 x i8]) align 1 captures(none) dereferenceable(20)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { cold }
attributes #20 = { noreturn }
attributes #21 = { nounwind }
attributes #22 = { noinline }
attributes #23 = { noinline noreturn }
attributes #24 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{i64 -1, i64 -9223372036854775808}
!5 = !{}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskuiImRAV2ip_9elfshaker: argument 0"}
!8 = distinct !{!8, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskuiImRAV2ip_9elfshaker"}
!9 = !{i64 -2, i64 -9223372036854775808}
!10 = !{!11, !13, !15, !17, !18, !20, !21, !23, !24, !26, !28}
!11 = distinct !{!11, !12, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECskuiImRAV2ip_9elfshaker: argument 0"}
!12 = distinct !{!12, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECskuiImRAV2ip_9elfshaker"}
!13 = distinct !{!13, !14, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!14 = distinct !{!14, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!15 = distinct !{!15, !16, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_: argument 0"}
!16 = distinct !{!16, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_"}
!17 = distinct !{!17, !16, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_: argument 1"}
!18 = distinct !{!18, !19, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_: argument 0"}
!19 = distinct !{!19, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_"}
!20 = distinct !{!20, !19, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_: argument 1"}
!21 = distinct !{!21, !22, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_: argument 0"}
!22 = distinct !{!22, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_"}
!23 = distinct !{!23, !22, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_: argument 1"}
!24 = distinct !{!24, !25, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB12_11RemoteIndex18is_field_separatorE4nextB16_: argument 0"}
!25 = distinct !{!25, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB12_11RemoteIndex18is_field_separatorE4nextB16_"}
!26 = distinct !{!26, !27, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBT_11RemoteIndex18is_field_separatorENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBX_: argument 0"}
!27 = distinct !{!27, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBT_11RemoteIndex18is_field_separatorENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBX_"}
!28 = distinct !{!28, !29, !"_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBO_11RemoteIndex18is_field_separatorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB25_4find5checkReQNCINvBK_15read_keyed_lineINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEE0E0INtNtNtBa_3ops12control_flow11ControlFlowB3g_EEBS_: argument 0"}
!29 = distinct !{!29, !"_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBO_11RemoteIndex18is_field_separatorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB25_4find5checkReQNCINvBK_15read_keyed_lineINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEE0E0INtNtNtBa_3ops12control_flow11ControlFlowB3g_EEBS_"}
!30 = !{!31, !33, !35, !37, !38, !40, !41, !43, !44, !46, !48}
!31 = distinct !{!31, !32, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECskuiImRAV2ip_9elfshaker: argument 0"}
!32 = distinct !{!32, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECskuiImRAV2ip_9elfshaker"}
!33 = distinct !{!33, !34, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!34 = distinct !{!34, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!35 = distinct !{!35, !36, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_: argument 0"}
!36 = distinct !{!36, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_"}
!37 = distinct !{!37, !36, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_: argument 1"}
!38 = distinct !{!38, !39, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_: argument 0"}
!39 = distinct !{!39, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_"}
!40 = distinct !{!40, !39, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_: argument 1"}
!41 = distinct !{!41, !42, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_: argument 0"}
!42 = distinct !{!42, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_"}
!43 = distinct !{!43, !42, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_: argument 1"}
!44 = distinct !{!44, !45, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB12_11RemoteIndex18is_field_separatorE4nextB16_: argument 0"}
!45 = distinct !{!45, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB12_11RemoteIndex18is_field_separatorE4nextB16_"}
!46 = distinct !{!46, !47, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBT_11RemoteIndex18is_field_separatorENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBX_: argument 0"}
!47 = distinct !{!47, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBT_11RemoteIndex18is_field_separatorENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBX_"}
!48 = distinct !{!48, !49, !"_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBO_11RemoteIndex18is_field_separatorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB25_4find5checkReQNCINvBK_15read_keyed_lineINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEE0E0INtNtNtBa_3ops12control_flow11ControlFlowB3g_EEBS_: argument 0"}
!49 = distinct !{!49, !"_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBO_11RemoteIndex18is_field_separatorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB25_4find5checkReQNCINvBK_15read_keyed_lineINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEE0E0INtNtNtBa_3ops12control_flow11ControlFlowB3g_EEBS_"}
!50 = !{!51, !53, !55, !57, !58, !60, !61, !63, !64, !66, !68}
!51 = distinct !{!51, !52, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECskuiImRAV2ip_9elfshaker: argument 0"}
!52 = distinct !{!52, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECskuiImRAV2ip_9elfshaker"}
!53 = distinct !{!53, !54, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!54 = distinct !{!54, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!55 = distinct !{!55, !56, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_: argument 0"}
!56 = distinct !{!56, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_"}
!57 = distinct !{!57, !56, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_: argument 1"}
!58 = distinct !{!58, !59, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_: argument 0"}
!59 = distinct !{!59, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_"}
!60 = distinct !{!60, !59, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_: argument 1"}
!61 = distinct !{!61, !62, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_: argument 0"}
!62 = distinct !{!62, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_"}
!63 = distinct !{!63, !62, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_: argument 1"}
!64 = distinct !{!64, !65, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB12_11RemoteIndex18is_field_separatorE4nextB16_: argument 0"}
!65 = distinct !{!65, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB12_11RemoteIndex18is_field_separatorE4nextB16_"}
!66 = distinct !{!66, !67, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBT_11RemoteIndex18is_field_separatorENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBX_: argument 0"}
!67 = distinct !{!67, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBT_11RemoteIndex18is_field_separatorENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBX_"}
!68 = distinct !{!68, !69, !"_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBO_11RemoteIndex18is_field_separatorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB25_4find5checkReQNCINvBK_15read_keyed_lineINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEE0E0INtNtNtBa_3ops12control_flow11ControlFlowB3g_EEBS_: argument 0"}
!69 = distinct !{!69, !"_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBO_11RemoteIndex18is_field_separatorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB25_4find5checkReQNCINvBK_15read_keyed_lineINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEE0E0INtNtNtBa_3ops12control_flow11ControlFlowB3g_EEBS_"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_RNCINvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB8_11RemoteIndex15read_keyed_lineINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEs_0Bc_: argument 0"}
!72 = distinct !{!72, !"_RNCINvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB8_11RemoteIndex15read_keyed_lineINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEs_0Bc_"}
!73 = !{!71, !74, !75}
!74 = distinct !{!74, !72, !"_RNCINvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB8_11RemoteIndex15read_keyed_lineINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEs_0Bc_: argument 1"}
!75 = distinct !{!75, !72, !"_RNCINvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB8_11RemoteIndex15read_keyed_lineINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEs_0Bc_: argument 2"}
!76 = !{!74, !75}
!77 = !{i64 0, i64 2}
!78 = !{i64 0, i64 -9223372036854775807}
!79 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!80 = !{!81, !83, !85, !87, !88, !90, !91, !93, !94, !96, !98}
!81 = distinct !{!81, !82, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECskuiImRAV2ip_9elfshaker: argument 0"}
!82 = distinct !{!82, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECskuiImRAV2ip_9elfshaker"}
!83 = distinct !{!83, !84, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!84 = distinct !{!84, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!85 = distinct !{!85, !86, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_: argument 0"}
!86 = distinct !{!86, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_"}
!87 = distinct !{!87, !86, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_: argument 1"}
!88 = distinct !{!88, !89, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_: argument 0"}
!89 = distinct !{!89, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_"}
!90 = distinct !{!90, !89, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_: argument 1"}
!91 = distinct !{!91, !92, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_: argument 0"}
!92 = distinct !{!92, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_"}
!93 = distinct !{!93, !92, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_: argument 1"}
!94 = distinct !{!94, !95, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB12_11RemoteIndex18is_field_separatorE4nextB16_: argument 0"}
!95 = distinct !{!95, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB12_11RemoteIndex18is_field_separatorE4nextB16_"}
!96 = distinct !{!96, !97, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBT_11RemoteIndex18is_field_separatorENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBX_: argument 0"}
!97 = distinct !{!97, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBT_11RemoteIndex18is_field_separatorENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBX_"}
!98 = distinct !{!98, !99, !"_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBO_11RemoteIndex18is_field_separatorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB25_4find5checkReQNCINvBK_15read_keyed_lineINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEE0E0INtNtNtBa_3ops12control_flow11ControlFlowB3g_EEBS_: argument 0"}
!99 = distinct !{!99, !"_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBO_11RemoteIndex18is_field_separatorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB25_4find5checkReQNCINvBK_15read_keyed_lineINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEE0E0INtNtNtBa_3ops12control_flow11ControlFlowB3g_EEBS_"}
!100 = !{!101, !103, !105, !107, !108, !110, !111, !113, !114, !116, !118}
!101 = distinct !{!101, !102, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECskuiImRAV2ip_9elfshaker: argument 0"}
!102 = distinct !{!102, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECskuiImRAV2ip_9elfshaker"}
!103 = distinct !{!103, !104, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!104 = distinct !{!104, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!105 = distinct !{!105, !106, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_: argument 0"}
!106 = distinct !{!106, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_"}
!107 = distinct !{!107, !106, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_: argument 1"}
!108 = distinct !{!108, !109, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_: argument 0"}
!109 = distinct !{!109, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_"}
!110 = distinct !{!110, !109, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_: argument 1"}
!111 = distinct !{!111, !112, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_: argument 0"}
!112 = distinct !{!112, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_"}
!113 = distinct !{!113, !112, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_: argument 1"}
!114 = distinct !{!114, !115, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB12_11RemoteIndex18is_field_separatorE4nextB16_: argument 0"}
!115 = distinct !{!115, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB12_11RemoteIndex18is_field_separatorE4nextB16_"}
!116 = distinct !{!116, !117, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBT_11RemoteIndex18is_field_separatorENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBX_: argument 0"}
!117 = distinct !{!117, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBT_11RemoteIndex18is_field_separatorENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBX_"}
!118 = distinct !{!118, !119, !"_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBO_11RemoteIndex18is_field_separatorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB25_4find5checkReQNCINvBK_15read_keyed_lineINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEE0E0INtNtNtBa_3ops12control_flow11ControlFlowB3g_EEBS_: argument 0"}
!119 = distinct !{!119, !"_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBO_11RemoteIndex18is_field_separatorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB25_4find5checkReQNCINvBK_15read_keyed_lineINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEE0E0INtNtNtBa_3ops12control_flow11ControlFlowB3g_EEBS_"}
!120 = !{!121, !123, !125, !127, !128, !130, !131, !133, !134, !136, !138}
!121 = distinct !{!121, !122, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECskuiImRAV2ip_9elfshaker: argument 0"}
!122 = distinct !{!122, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECskuiImRAV2ip_9elfshaker"}
!123 = distinct !{!123, !124, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!124 = distinct !{!124, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!125 = distinct !{!125, !126, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_: argument 0"}
!126 = distinct !{!126, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_"}
!127 = distinct !{!127, !126, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_: argument 1"}
!128 = distinct !{!128, !129, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_: argument 0"}
!129 = distinct !{!129, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_"}
!130 = distinct !{!130, !129, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_: argument 1"}
!131 = distinct !{!131, !132, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_: argument 0"}
!132 = distinct !{!132, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_"}
!133 = distinct !{!133, !132, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_: argument 1"}
!134 = distinct !{!134, !135, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB12_11RemoteIndex18is_field_separatorE4nextB16_: argument 0"}
!135 = distinct !{!135, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB12_11RemoteIndex18is_field_separatorE4nextB16_"}
!136 = distinct !{!136, !137, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBT_11RemoteIndex18is_field_separatorENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBX_: argument 0"}
!137 = distinct !{!137, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBT_11RemoteIndex18is_field_separatorENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBX_"}
!138 = distinct !{!138, !139, !"_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBO_11RemoteIndex18is_field_separatorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB25_4find5checkReQNCINvBK_15read_keyed_lineINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEE0E0INtNtNtBa_3ops12control_flow11ControlFlowB3g_EEBS_: argument 0"}
!139 = distinct !{!139, !"_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBO_11RemoteIndex18is_field_separatorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB25_4find5checkReQNCINvBK_15read_keyed_lineINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEE0E0INtNtNtBa_3ops12control_flow11ControlFlowB3g_EEBS_"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_RNCINvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB8_11RemoteIndex15read_keyed_lineINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEEs_0Bc_: argument 0"}
!142 = distinct !{!142, !"_RNCINvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB8_11RemoteIndex15read_keyed_lineINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEEs_0Bc_"}
!143 = !{!141, !144, !145}
!144 = distinct !{!144, !142, !"_RNCINvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB8_11RemoteIndex15read_keyed_lineINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEEs_0Bc_: argument 1"}
!145 = distinct !{!145, !142, !"_RNCINvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB8_11RemoteIndex15read_keyed_lineINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEEs_0Bc_: argument 2"}
!146 = !{!144, !145}
!147 = !{i32 0, i32 2}
!148 = !{i32 0, i32 -1}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker: argument 0"}
!151 = distinct !{!151, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker"}
!152 = !{!153, !155}
!153 = distinct !{!153, !154, !"_RNvYINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB9_8buf_read7BufRead5linesCskuiImRAV2ip_9elfshaker: argument 0"}
!154 = distinct !{!154, !"_RNvYINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB9_8buf_read7BufRead5linesCskuiImRAV2ip_9elfshaker"}
!155 = distinct !{!155, !154, !"_RNvYINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB9_8buf_read7BufRead5linesCskuiImRAV2ip_9elfshaker: argument 1"}
!156 = !{i64 -2, i64 -9223372036854775792}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_RNCINvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB8_11RemoteIndex4readINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Bc_: argument 0"}
!159 = distinct !{!159, !"_RNCINvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB8_11RemoteIndex4readINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Bc_"}
!160 = !{!158, !161, !162}
!161 = distinct !{!161, !159, !"_RNCINvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB8_11RemoteIndex4readINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Bc_: argument 1"}
!162 = distinct !{!162, !159, !"_RNCINvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB8_11RemoteIndex4readINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Bc_: argument 2"}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc2io4util5LinesINtNtNtBG_8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEECskuiImRAV2ip_9elfshaker: argument 0"}
!165 = distinct !{!165, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc2io4util5LinesINtNtNtBG_8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEECskuiImRAV2ip_9elfshaker"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEECskuiImRAV2ip_9elfshaker: argument 0"}
!168 = distinct !{!168, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEECskuiImRAV2ip_9elfshaker"}
!169 = !{!167, !164}
!170 = !{!171, !173, !175, !177, !178, !180, !181, !183, !184, !186, !188}
!171 = distinct !{!171, !172, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECskuiImRAV2ip_9elfshaker: argument 0"}
!172 = distinct !{!172, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECskuiImRAV2ip_9elfshaker"}
!173 = distinct !{!173, !174, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!174 = distinct !{!174, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!175 = distinct !{!175, !176, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_: argument 0"}
!176 = distinct !{!176, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_"}
!177 = distinct !{!177, !176, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1b_11RemoteIndex18is_field_separatorENtB5_8Searcher4nextB1f_: argument 1"}
!178 = distinct !{!178, !179, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_: argument 0"}
!179 = distinct !{!179, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_"}
!180 = distinct !{!180, !179, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB15_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB19_: argument 1"}
!181 = distinct !{!181, !182, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_: argument 0"}
!182 = distinct !{!182, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_"}
!183 = distinct !{!183, !182, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB1d_11RemoteIndex18is_field_separatorENtB5_8Searcher10next_matchB1h_: argument 1"}
!184 = distinct !{!184, !185, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB12_11RemoteIndex18is_field_separatorE4nextB16_: argument 0"}
!185 = distinct !{!185, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtB12_11RemoteIndex18is_field_separatorE4nextB16_"}
!186 = distinct !{!186, !187, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteNtBT_11RemoteIndex18is_field_separatorENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBX_: argument 0"}
end_hunk_1
