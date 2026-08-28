Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.06?download=true
inline.NumInlined: 1216
inline.NumDeleted: 506
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPE9read_file:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @60, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bv = load i8, ptr %i.v, align 8, !range !255, !noundef !3
  %i.bw = icmp ne i8 %i.bv, 5                     ; 3 uses
  br i1 %i.bw, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit
  %i.bx = load ptr, ptr %.sroa.514.0..sroa_idx, align 8, !noundef !3 ; 3 uses
  %.not = icmp ne ptr %i.bx, null                 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = load i64, ptr %.sroa.615.0..sroa_idx, align 8
  %.sroa.076.sroa.0.0 = zext i1 %.not to i64      ; 2 uses
  %.sroa.577.0 = select i1 %.not, i64 %i.bz, i64 0
  %.sroa.076.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.ca, i64 undef ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %.sroa.076.sroa.0.0, ptr %i.s, align 8
  %.sroa.078.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr null, ptr %.sroa.078.sroa.5.0..sroa_idx, align 8
  %.sroa.078.sroa.5.sroa.5.0..sroa.078.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.bx, ptr %.sroa.078.sroa.5.sroa.5.0..sroa.078.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.078.sroa.5.sroa.6.0..sroa.078.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %.sroa.076.sroa.5.sroa.6.0, ptr %.sroa.078.sroa.5.sroa.6.0..sroa.078.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.078.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %.sroa.076.sroa.0.0, ptr %.sroa.078.sroa.6.0..sroa_idx, align 8
  %.sroa.078.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr null, ptr %.sroa.078.sroa.7.0..sroa_idx, align 8
  %.sroa.078.sroa.7.sroa.5.0..sroa.078.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr %i.bx, ptr %.sroa.078.sroa.7.sroa.5.0..sroa.078.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.078.sroa.7.sroa.6.0..sroa.078.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i64 %.sroa.076.sroa.5.sroa.6.0, ptr %.sroa.078.sroa.7.sroa.6.0..sroa.078.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store i64 %.sroa.577.0, ptr %.sroa.579.0..sroa_idx, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  br label %bb.ab

bb.x:                                             ; preds = %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 2, ptr %i.m, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1342
  %i.cd = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 32, i64 noundef range(i64 1, 9) 8) #28, !noalias !1342 ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.y, label %bb.by, !prof !19

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #29
          to label %.noexc164 unwind label %bb.z

.noexc164:                                        ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5ErrorEBH_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m) #30
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ab:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit186, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvXsA_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %bb.ac unwind label %.loopexit

.body176:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.bv, %bb.br, %.split, %.split.thread, %bb.bo
  %.pn.pn = phi { ptr, i32 } [ %.pn194, %.split.thread ], [ %eh.lpad-body152, %bb.bo ], [ %lpad.thr_comm.split-lp, %.split ], [ %i.dz, %bb.bv ], [ %i.dw, %bb.br ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.bt

.loopexit:                                        ; preds = %bb.ab, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i182
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body176

.loopexit.split-lp:                               ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body176

bb.ac:                                            ; preds = %bb.ab
  %i.ch = load i64, ptr %i.r, align 8, !range !111, !noundef !3
  %.not133 = icmp eq i64 %i.ch, -1
  br i1 %.not133, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i64 32, i1 false)
  %i.ci = load i8, ptr %i.p, align 8, !range !255, !noundef !3
  %i.cj = icmp eq i8 %i.ci, 2
  br i1 %i.cj, label %bb.bd, label %bb.bx

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit168 unwind label %bb.af

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.ap, %bb.aj, %bb.af, %bb.z, %.body176
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body176 ], [ %i.cr, %bb.aj ], [ %i.cf, %bb.z ], [ %i.ck, %bb.af ], [ %i.da, %bb.ap ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.bt

bb.af:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit, %bb.ae, %bb.am, %bb.al, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit168
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit168: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RINvMs2_NtCs2AWtUsOyxgP_3std2fsNtB6_4File4openReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.ag unwind label %bb.af

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit168
  %i.cl = load i32, ptr %i.l, align 8, !range !507, !noundef !3
  %i.cm = trunc nuw i32 %i.cl to i1
  br i1 %i.cm, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.cn = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.co, ptr %i.c, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.cp = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 8, i64 noundef range(i64 1, 9) 8) #28 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.ai, label %bb.bb, !prof !19

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #29
          to label %.noexc170 unwind label %bb.aj

.noexc170:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #30
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.al:                                            ; preds = %bb.ag
  %i.ct = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !range !244, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvMNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB2_9BufReaderNtNtB8_2fs4FileE13with_capacityCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, i64 noundef 8192, i32 noundef %i.cu)
          to label %bb.am unwind label %bb.af

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RINvMNtNtCs2JiOgHzbbc7_10tokenizers5utils4iterINtB3_11ResultShuntINtNtCs2AWtUsOyxgP_3std2io5LinesINtNtNtB14_8buffered9bufreader9BufReaderNtNtB16_2fs4FileEENtNtB14_5error5ErrorE7processNCNvMs5_NtNtNtB7_6models3bpe5modelNtB34_3BPE9read_file0INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB4w_6string6StringB4Y_EEINtNtB4w_5boxed3BoxDNtNtB3U_5error5ErrorNtNtB3U_6marker4SendNtB66_4SyncEL_EEEB7_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.t)
          to label %bb.an unwind label %bb.af

bb.an:                                            ; preds = %bb.am
  %i.cv = load i64, ptr %i.k, align 8, !range !467, !noundef !3 ; 3 uses
  %i.cw = icmp eq i64 %i.cv, -2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8            ; 5 uses
  br i1 %i.cw, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.cy, ptr %i.d, align 8
  %i.cz = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 8)
          to label %bb.ba unwind label %bb.ap     ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #30
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ar:                                            ; preds = %bb.an
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5121.0.copyload = load ptr, ptr %.sroa.5122.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.dc = icmp eq i64 %i.cv, -1
  br i1 %i.dc, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cy) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5121.0.copyload) ]
  br label %bb.az

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 64, i1 false)
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.cv, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.cy, ptr %.sroa.560.0..sroa_idx, align 8
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.5121.0.copyload, ptr %.sroa.661.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.dd = load i8, ptr %i.v, align 8, !range !255, !noundef !3
  %i.de = icmp eq i8 %i.dd, 5
  br i1 %i.de, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.av, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.ax unwind label %bb.aw

bb.av:                                            ; preds = %bb.at
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.v)
          to label %bb.au unwind label %bb.g

.body190:                                         ; preds = %bb.cg, %bb.aw, %.body
  %.pn140 = phi { ptr, i32 } [ %.pn138, %.body ], [ %i.df, %bb.aw ], [ %i.eh, %bb.cg ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader9BufReaderNtNtBK_2fs4FileEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(48) %i.x) #30
  br label %common.resume

bb.aw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i189, %bb.au
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body190

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader9BufReaderNtNtBK_2fs4FileEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(48) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ay

bb.ay:                                            ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE3newCs2JiOgHzbbc7_10tokenizers.exit150, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader9BufReaderNtNtBK_2fs4FileEECs2JiOgHzbbc7_10tokenizers.exit, %bb.ax
  ret void

bb.az:                                            ; preds = %bb.ba, %bb.as
  %.sink210 = phi ptr [ %i.cz, %bb.ba ], [ %i.cy, %bb.as ]
  %.sink = phi ptr [ @96, %bb.ba ], [ %.sroa.5121.0.copyload, %bb.as ]
  store ptr %.sink210, ptr %0, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.dh, align 8
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ao
  store ptr %i.cy, ptr %i.cz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.az

bb.bb:                                            ; preds = %bb.ah
  store ptr %i.co, ptr %i.cp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.cp, ptr %0, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @96, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.dj, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.az, %bb.bb, %bb.by, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit180
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit173 unwind label %bb.v

bb.bd:                                            ; preds = %bb.ad
  %.sroa.0126.0.copyload = load i64, ptr %i.cc, align 8
  %.sroa.5127.0.copyload = load i64, ptr %.sroa.5127.0..sroa_idx, align 8
  %i.dk = icmp eq i64 %.sroa.0126.0.copyload, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  br i1 %i.dk, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i64 2, ptr %i.o, align 8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5ErrorEBH_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %bb.bk unwind label %bb.bj

bb.bf:                                            ; preds = %bb.bd
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.4112.0.copyload = load i64, ptr %.sroa.4112.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 2, ptr %i.f, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.4112.0.copyload, ptr %.sroa.433.0..sroa_idx, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1345
  %i.dl = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 32, i64 noundef range(i64 1, 9) 8) #28, !noalias !1345 ; 3 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.bg, label %bb.bp, !prof !19

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #29
          to label %.noexc174 unwind label %bb.bh

.noexc174:                                        ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %bb.bg
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5ErrorEBH_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f) #30
          to label %.body151 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.bj:                                            ; preds = %bb.bk, %bb.be
  %.sroa.062.0 = phi i1 [ false, %bb.bk ], [ true, %bb.be ]
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body151

.body151:                                         ; preds = %bb.bh, %bb.bj
  %.sroa.062.0.lpad-body = phi i1 [ %.sroa.062.0, %bb.bj ], [ true, %bb.bh ]
  %eh.lpad-body152 = phi { ptr, i32 } [ %i.dp, %bb.bj ], [ %i.dn, %bb.bh ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.p) #30
          to label %bb.bo unwind label %bb.bt

bb.bk:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.dq = trunc i64 %.sroa.5127.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.dr = invoke { i32, i32 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, i32 noundef %i.dq)
          to label %bb.bl unwind label %bb.bj     ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ds = load i8, ptr %i.p, align 8, !range !255, !noundef !3
  %i.dt = icmp eq i8 %i.ds, 2
  br i1 %i.dt, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bn, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit186

bb.bn:                                            ; preds = %bb.bl
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.p)
          to label %bb.bm unwind label %.split

bb.bo:                                            ; preds = %.body151
  br i1 %.sroa.062.0.lpad-body, label %.split.thread, label %.body176

.split.thread.loopexit:                           ; preds = %bb.bx
  %lpad.loopexit197 = landingpad { ptr, i32 }
          cleanup
  br label %.split.thread

.split.thread.loopexit.split-lp:                  ; preds = %bb.bp
  %lpad.loopexit.split-lp198 = landingpad { ptr, i32 }
          cleanup
  br label %.split.thread

.split:                                           ; preds = %bb.bn
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body176

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit186: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i182, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ab

bb.bp:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  store ptr %i.dl, ptr %0, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @20, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.dv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.p)
          to label %bb.bq unwind label %.split.thread.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body176 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.bq
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit180 unwind label %bb.af

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit180: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.bc

bb.bt:                                            ; preds = %bb.cd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit, %.body176, %bb.cc, %.split.thread, %.body151, %.body
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.bu:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i182 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body176 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i182: ; preds = %bb.bu
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit186 unwind label %.loopexit

bb.bx:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.p)
          to label %bb.bu unwind label %.split.thread.loopexit

end_hunk_0
begin_hunk_1_@_RNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers6models3bpeNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt:bb.a
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 9, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @168)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.b, align 8
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 25, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @170)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.a, align 8
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @170)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @173, i64 noundef 14)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.d ], [ %i.m, %bb.e ], [ %i.o, %bb.f ], [ %i.q, %bb.g ], [ %i.r, %bb.h ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternINtB5_6InvertRNtNtNtB9_5utils4onig8SysRegexENtB5_7Pattern12find_matchesB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternRNtNtNtB9_5utils4onig8SysRegexNtB5_7Pattern12find_matches(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.c = load i64, ptr %i.a, align 8, !range !111, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.j, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = icmp ult ptr %i.h, inttoptr (i64 384307168202282326 to ptr)
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.k
  store ptr %i.f, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.m, ptr %.sroa.7.0..sroa_idx, align 8
  call void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecTTjjEbEEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterBX_ENCNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternINtB3b_6InvertRNtNtNtB3f_5utils4onig8SysRegexENtB3b_7Pattern12find_matches0EE9from_iterB3f_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternINtB5_6InvertRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexENtB5_7Pattern12find_matchesB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexNtB5_7Pattern12find_matches(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.c = load i64, ptr %i.a, align 8, !range !111, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.j, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = icmp ult ptr %i.h, inttoptr (i64 384307168202282326 to ptr)
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.k
  store ptr %i.f, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.m, ptr %.sroa.7.0..sroa_idx, align 8
  call void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecTTjjEbEEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterBX_ENCNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternINtB3b_6InvertRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexENtB3b_7Pattern12find_matches0EE9from_iterB3f_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCsgbNVBrIJ05E_5rayon4iter8flat_mapINtB5_13FlatMapFolderINtNtNtB7_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB23_10BpeTrainer8do_trains_0INtB15_13CollectResultB1K_EEINtNtB7_8plumbing6FolderRjE8completeB29_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #11 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !109, !noundef !3
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i64, ptr %i.f, align 8, !noundef !3
  store ptr %i.e, ptr %0, align 8, !alias.scope !1698
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1698
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1698
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCsgbNVBrIJ05E_5rayon4iter8flat_mapINtB5_13FlatMapFolderNtNtB7_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1F_10BpeTrainer8do_trains_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB35_3vec3VecTTTmmElEjEEEEINtNtB7_8plumbing6FolderRjE8completeB1L_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %1, align 8, !range !109, !noundef !3
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !alias.scope !1702
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1702
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1702
  call void @_RNvXs0_NtNtCsgbNVBrIJ05E_5rayon4iter6extendINtB5_13ListVecFolderTTTmmElEjEEINtNtB7_8plumbing6FolderB10_E8completeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([304 x i8]) align 8 captures(none) dereferenceable(304) %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [64 x i8], align 8                ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 5 uses
  %i.k = load i64, ptr %1, align 8, !range !109, !noundef !3
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !3
  %i.o = atomicrmw add ptr @_RNvNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model13NEXT_CACHE_ID, i64 1 monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.sroa.2.0.a = phi i64 [ %i.o, %bb.b ], [ undef, %bb.a ]
  %.sroa.3.sroa.0.0 = phi i64 [ %i.n, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 168
  invoke void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapmNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.q)
          to label %bb.e unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmEB1i_EECs2JiOgHzbbc7_10tokenizers.exit, %bb.d
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.r, %bb.d ], [ %.pn.pn.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmEB1i_EECs2JiOgHzbbc7_10tokenizers.exit ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.x

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 232
  invoke void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapTmmEBK_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.s)
          to label %bb.g unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmEB1i_EECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.k, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.t, %bb.f ], [ %.pn.pn, %bb.k ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTmNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.x

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmEB1i_EECs2JiOgHzbbc7_10tokenizers.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.v = load i32, ptr %i.u, align 8, !range !507, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.x = load float, ptr %i.w, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !range !111, !noundef !3
  %.not = icmp eq i64 %i.z, -1
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %bb.m unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  store i64 -1, ptr %i.g, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !111, !noundef !3
  %.not10.a = icmp eq i64 %i.ab, -1
  br i1 %.not10.a, label %bb.o, label %bb.n

bb.k:                                             ; preds = %bb.q, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.ac, %bb.l ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTmmEBP_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmEB1i_EECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.x

bb.l:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %bb.s unwind label %bb.r

bb.o:                                             ; preds = %bb.j
  store i64 -1, ptr %i.f, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !range !111, !noundef !3
  %.not11 = icmp eq i64 %i.ae, -1
  br i1 %.not11, label %bb.u, label %bb.t

bb.q:                                             ; preds = %bb.v, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.v ], [ %i.af, %bb.r ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #30
          to label %bb.k unwind label %bb.x

bb.r:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %bb.w unwind label %bb.v

bb.u:                                             ; preds = %bb.p, %bb.w
  %.sroa.02.0 = phi i64 [ %.sroa.02.0.copyload3, %bb.w ], [ -1, %bb.p ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.ah = load i8, ptr %i.ag, align 8, !range !104, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 297
  %i.aj = load i8, ptr %i.ai, align 1, !range !104, !noundef !3
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 298
  %i.al = load i8, ptr %i.ak, align 2, !range !104, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.sroa.2.0.a, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.sroa.0.0, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.v, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float %i.x, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.02.0, ptr %i.at, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 %i.ah, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 297
  store i8 %i.aj, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 298
  store i8 %i.al, ptr %i.aw, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.v:                                             ; preds = %bb.t
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #30
          to label %bb.q unwind label %bb.x

bb.w:                                             ; preds = %bb.t
  %.sroa.02.0.copyload3 = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.u

bb.x:                                             ; preds = %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmEB1i_EECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit, %bb.v, %bb.q
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevelNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !104, !noundef !3
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 24)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 56)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @175, i64 noundef 56)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevelNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !104, !noundef !3
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 13, i64 15
  %.1 = select i1 %i.b, ptr @167, ptr @185
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @185, i64 noundef 15)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPENtNtBb_9tokenizer5Model11get_trainer(ptr dead_on_unwind noalias noundef writable sret([256 x i8]) align 8 captures(address) dereferenceable(256) %0, ptr nofree noundef nonnull readnone align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5_10BpeTrainerNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr noalias noundef nonnull sret([256 x i8]) align 8 captures(address) dereferenceable(256) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPENtNtBb_9tokenizer5Model11id_to_token(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1, i32 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1705, !noalias !1708, !noundef !3
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.g = call noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRmECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1710)
  call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1716, !noalias !1717, !noundef !3 ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !1716, !noalias !1717, !nonnull !3, !noundef !3 ; 2 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.af, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.k    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !1720 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.n
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ad, %bb.d ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.k
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -32
  %i.y = call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownmINtB2_10EquivalentmE10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x), !noalias !1723
  br i1 %i.y, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapmNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getmECs2JiOgHzbbc7_10tokenizers.exit, label %bb.d, !prof !59

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %select.unfold, !prof !4

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ac = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ad = and i16 %i.ac, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ae = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.af = add i64 %.sroa.01.0.i.i.i, %i.ae
  br label %bb.c

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapmNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getmECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -24
  call void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
  br label %bb.f

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %select.unfold, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapmNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getmECs2JiOgHzbbc7_10tokenizers.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPENtNtBb_9tokenizer5Model11token_to_id(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1726, !noalias !1729, !noundef !3
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = tail call noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1737, !noalias !1738, !noundef !3 ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !1737, !noalias !1738, !nonnull !3, !noundef !3 ; 2 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
end_hunk_1
