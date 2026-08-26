Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.10?download=true
inline.NumInlined: 1070
inline.NumDeleted: 542
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding8truncate:bb.a
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.aw, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTjjEEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB1E_7step_by6StepByINtNtNtB1I_3ops5range5RangejEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB3y_8Encoding8truncate0EE9from_iterB3C_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.j

_RNvMNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7step_byINtB2_6StepByINtNtB4_3rev3RevINtNtNtB8_3ops5range5RangejEEE3newCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.bv = add nsw i64 %i.bp, -1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 0, ptr %i.bw, align 8
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 %i.az, ptr %.sroa.4127.0..sroa_idx, align 8
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i64 %i.bv, ptr %.sroa.5128.0..sroa_idx, align 8
  %.sroa.6129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i8 1, ptr %.sroa.6129.0..sroa_idx, align 8
  store ptr %i.ax, ptr %i.ap, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.as, ptr %i.bx, align 8
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTjjEEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB1E_7step_by6StepByINtNtB1E_3rev3RevINtNtNtB1I_3ops5range5RangejEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB3Q_8Encoding8truncates_0EE9from_iterB3U_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.j

bb.j:                                             ; preds = %_RNvMNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7step_byINtB2_6StepByINtNtB4_3rev3RevINtNtNtB8_3ops5range5RangejEEE3newCs2JiOgHzbbc7_10tokenizers.exit, %_RNvMNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_3ops5range5RangejEE3newCs2JiOgHzbbc7_10tokenizers.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !4
  %.not39 = icmp eq i64 %i.ca, 0
  br i1 %.not39, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cb = load ptr, ptr %i.by, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !4 ; 17 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !4 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !4, !noundef !4
  %i.ch = load i64, ptr %i.ay, align 8, !noundef !4 ; 2 uses
  %i.ci = icmp ult i64 %i.ce, %i.cc
  br i1 %i.ci, label %bb.t, label %bb.s, !prof !18

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #25
          to label %bb.r unwind label %bb.q

bb.m:                                             ; preds = %.thread, %.body119, %bb.ac, %bb.q
  %.pn80 = phi { ptr, i32 } [ %i.cl, %bb.q ], [ %.pn78, %bb.ac ], [ %.pn66133, %.body119 ], [ %i.of, %.thread ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %.body unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %common.resume unwind label %bb.ex

bb.p:                                             ; preds = %bb.n
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.q:                                             ; preds = %bb.w, %bb.u, %bb.t, %bb.l
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.r:                                             ; preds = %bb.eo, %bb.ek, %bb.eg, %bb.ec, %bb.dy, %bb.dr, %bb.dn, %bb.dh, %bb.cx, %bb.ct, %bb.cn, %bb.cj, %bb.cg, %bb.ce, %bb.bx, %bb.bs, %bb.bo, %bb.bj, %bb.bf, %bb.ba, %bb.aw, %bb.ar, %bb.aj, %bb.af, %bb.aa, %bb.w, %bb.t, %bb.l
  unreachable

bb.s:                                             ; preds = %bb.k
  %i.cm = sub nuw i64 %i.ce, %i.cc                ; 27 uses
  %.not40 = icmp ugt i64 %i.ce, %i.ch
  br i1 %.not40, label %bb.t, label %bb.u, !prof !18

bb.t:                                             ; preds = %bb.s, %bb.k
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.cc, i64 noundef %i.ce, i64 noundef %i.ch, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #25
          to label %bb.r unwind label %bb.q

bb.u:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.cm, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.v unwind label %bb.q

bb.v:                                             ; preds = %bb.u
  %i.co = load i64, ptr %i.v, align 8, !range !16, !noundef !4
  %i.cp = trunc nuw i64 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !range !287, !noundef !4 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  br i1 %i.cp, label %bb.w, label %bb.x, !prof !18

bb.w:                                             ; preds = %bb.v
  %i.ct = load i64, ptr %i.cs, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cr, i64 %i.ct) #25
          to label %bb.r unwind label %bb.q

bb.x:                                             ; preds = %bb.v
  %i.cu = load ptr, ptr %i.cs, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cv = icmp ule i64 %i.cm, %i.cr
  call void @llvm.assume(i1 %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 %i.cr, ptr %i.an, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.cu, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  store i64 0, ptr %i.cx, align 8
  %.not41 = icmp eq i64 %i.ce, %i.cc              ; 6 uses
  br i1 %.not41, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.z, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !noundef !4 ; 2 uses
  %.not42 = icmp ugt i64 %i.ce, %i.da
  br i1 %.not42, label %bb.aa, label %bb.ab, !prof !18

bb.z:                                             ; preds = %bb.x
  %i.db = shl i64 %i.cm, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr nonnull align 4 %i.cn, i64 %i.db, i1 false)
  store i64 %i.cm, ptr %i.cx, align 8
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.cc, i64 noundef %i.ce, i64 noundef %i.da, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #25
          to label %bb.r unwind label %bb.ad

bb.ab:                                            ; preds = %bb.y
  %i.dc = load ptr, ptr %i.cy, align 8, !nonnull !4, !noundef !4
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.cm, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.ae unwind label %bb.ad

bb.ac:                                            ; preds = %.body83, %bb.ad
  %.pn78 = phi { ptr, i32 } [ %i.de, %bb.ad ], [ %.pn75.pn, %.body83 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.an) #28
          to label %bb.m unwind label %bb.ex

bb.ad:                                            ; preds = %bb.af, %bb.ab, %bb.aa
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ae:                                            ; preds = %bb.ab
  %i.df = load i64, ptr %i.u, align 8, !range !16, !noundef !4
  %i.dg = trunc nuw i64 %i.df to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !range !287, !noundef !4 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  br i1 %i.dg, label %bb.af, label %bb.ag, !prof !18

bb.af:                                            ; preds = %bb.ae
  %i.dk = load i64, ptr %i.dj, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.di, i64 %i.dk) #25
          to label %bb.r unwind label %bb.ad

bb.ag:                                            ; preds = %bb.ae
  %i.dl = load ptr, ptr %i.dj, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dm = icmp ule i64 %i.cm, %i.di
  call void @llvm.assume(i1 %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 %i.di, ptr %i.am, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.dl, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  store i64 0, ptr %i.do, align 8
  br i1 %.not41, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !noundef !4 ; 2 uses
  %.not43 = icmp ugt i64 %i.ce, %i.dr
  br i1 %.not43, label %bb.aj, label %bb.ak, !prof !18

bb.ai:                                            ; preds = %bb.ag
  %i.ds = shl i64 %i.cm, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dl, ptr nonnull align 4 %i.dd, i64 %i.ds, i1 false)
  store i64 %i.cm, ptr %i.do, align 8
  br label %bb.ah

bb.aj:                                            ; preds = %bb.ah
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.cc, i64 noundef %i.ce, i64 noundef %i.dr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #25
          to label %bb.r unwind label %bb.aq

bb.ak:                                            ; preds = %bb.ah
  %i.dt = load ptr, ptr %i.dp, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %i.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !987
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 384307168202282326) %i.cm, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.aq

.noexc:                                           ; preds = %bb.ak
  %i.dv = load i64, ptr %i.d, align 8, !range !16, !noalias !987, !noundef !4
  %i.dw = trunc nuw i64 %i.dv to i1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !range !287, !noalias !987, !noundef !4 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.dw, label %bb.al, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i, !prof !18

bb.al:                                            ; preds = %.noexc
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !987
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dy, i64 %i.ea) #25
          to label %.noexc82 unwind label %bb.aq

.noexc82:                                         ; preds = %bb.al
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.noexc
  %i.eb = load ptr, ptr %i.dz, align 8, !noalias !987, !nonnull !4, !noundef !4 ; 2 uses
  %i.ec = icmp ule i64 %i.cm, %i.dy
  call void @llvm.assume(i1 %i.ec)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !987
  store i64 %i.dy, ptr %i.f, align 8, !noalias !987
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.eb, ptr %i.ed, align 8, !noalias !987
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %i.ce
  %i.eg = icmp eq i64 %i.dy, 0
  br i1 %i.eg, label %.loopexit163, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i, %bb.an
  %.sroa.10.023.i = phi i64 [ %i.eh, %bb.an ], [ %i.dy, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i ]
  %.sroa.012.022.i = phi ptr [ %i.ek, %bb.an ], [ %i.du, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i ] ; 3 uses
  %.sroa.7.021.i = phi i64 [ %i.ej, %bb.an ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i ] ; 3 uses
  %i.eh = add i64 %.sroa.10.023.i, -1             ; 2 uses
  %i.ei = icmp eq ptr %.sroa.012.022.i, %i.ef
  br i1 %i.ei, label %.loopexit163, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.022.i)
          to label %bb.an unwind label %bb.ap, !noalias !991

bb.an:                                            ; preds = %bb.am
  %i.ej = add nuw nsw i64 %.sroa.7.021.i, 1
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 24
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %.sroa.7.021.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !991
  %i.em = icmp eq i64 %i.eh, 0
  br i1 %i.em, label %.loopexit163, label %.lr.ph.i

bb.ao:                                            ; preds = %bb.ap
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !991
  unreachable

bb.ap:                                            ; preds = %bb.am
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021.i, ptr %i.ee, align 8, !noalias !987
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.f) #28
          to label %.body83 unwind label %bb.ao, !noalias !991

.body83:                                          ; preds = %bb.aq, %bb.ap, %bb.at
  %.pn75.pn = phi { ptr, i32 } [ %.pn75, %bb.at ], [ %i.eo, %bb.aq ], [ %lpad.loopexit.i, %bb.ap ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.am) #28
          to label %bb.ac unwind label %bb.ex

bb.aq:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body83

.loopexit163:                                     ; preds = %bb.an, %.lr.ph.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i
  store i64 %i.cm, ptr %i.ee, align 8, !noalias !987
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !noundef !4 ; 2 uses
  %.not44 = icmp ugt i64 %i.ce, %i.er
  br i1 %.not44, label %bb.ar, label %bb.as, !prof !18

bb.ar:                                            ; preds = %.loopexit163
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.cc, i64 noundef %i.ce, i64 noundef %i.er, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #25
          to label %bb.r unwind label %bb.au

bb.as:                                            ; preds = %.loopexit163
  %i.es = load ptr, ptr %i.ep, align 8, !nonnull !4, !noundef !4
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef %i.cm, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
          to label %bb.av unwind label %bb.au

bb.at:                                            ; preds = %bb.bc, %bb.au
  %.pn75 = phi { ptr, i32 } [ %i.eu, %bb.au ], [ %.pn73, %bb.bc ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.al) #28
          to label %.body83 unwind label %bb.ex

bb.au:                                            ; preds = %bb.aw, %bb.as, %bb.ar
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.av:                                            ; preds = %bb.as
  %i.ev = load i64, ptr %i.t, align 8, !range !16, !noundef !4
  %i.ew = trunc nuw i64 %i.ev to i1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !range !287, !noundef !4 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  br i1 %i.ew, label %bb.aw, label %bb.ax, !prof !18

bb.aw:                                            ; preds = %bb.av
  %i.fa = load i64, ptr %i.ez, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ey, i64 %i.fa) #25
          to label %bb.r unwind label %bb.au

bb.ax:                                            ; preds = %bb.av
  %i.fb = load ptr, ptr %i.ez, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.fc = icmp ule i64 %i.cm, %i.ey
  call void @llvm.assume(i1 %i.fc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %i.ey, ptr %i.ak, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.fb, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store i64 0, ptr %i.fe, align 8
  br i1 %.not41, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.az, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ugt i64 %i.ce, %i.fh
  br i1 %.not45, label %bb.ba, label %bb.bb, !prof !18

bb.az:                                            ; preds = %bb.ax
  %i.fi = shl i64 %i.cm, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fb, ptr nonnull align 4 %i.et, i64 %i.fi, i1 false)
  store i64 %i.cm, ptr %i.fe, align 8
  br label %bb.ay

bb.ba:                                            ; preds = %bb.ay
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.cc, i64 noundef %i.ce, i64 noundef %i.fh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #25
          to label %bb.r unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ay
  %i.fj = load ptr, ptr %i.ff, align 8, !nonnull !4, !noundef !4
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.fj, i64 %i.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %i.cm, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.be unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bl, %bb.bd
  %.pn73 = phi { ptr, i32 } [ %i.fl, %bb.bd ], [ %.pn71, %bb.bl ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.ak) #28
          to label %bb.at unwind label %bb.ex

bb.bd:                                            ; preds = %bb.bf, %bb.bb, %bb.ba
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.be:                                            ; preds = %bb.bb
  %i.fm = load i64, ptr %i.s, align 8, !range !16, !noundef !4
  %i.fn = trunc nuw i64 %i.fm to i1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !range !287, !noundef !4 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br i1 %i.fn, label %bb.bf, label %bb.bg, !prof !18

bb.bf:                                            ; preds = %bb.be
  %i.fr = load i64, ptr %i.fq, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.fp, i64 %i.fr) #25
          to label %bb.r unwind label %bb.bd

bb.bg:                                            ; preds = %bb.be
  %i.fs = load ptr, ptr %i.fq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ft = icmp ule i64 %i.cm, %i.fp
  call void @llvm.assume(i1 %i.ft)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i64 %i.fp, ptr %i.aj, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.fs, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  store i64 0, ptr %i.fv, align 8
  br i1 %.not41, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bi, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp ugt i64 %i.ce, %i.fy
  br i1 %.not46, label %bb.bj, label %bb.bk, !prof !18

bb.bi:                                            ; preds = %bb.bg
  %i.fz = shl i64 %i.cm, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fs, ptr nonnull align 8 %i.fk, i64 %i.fz, i1 false)
  store i64 %i.cm, ptr %i.fv, align 8
  br label %bb.bh

bb.bj:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.cc, i64 noundef %i.ce, i64 noundef %i.fy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #25
          to label %bb.r unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bh
  %i.ga = load ptr, ptr %i.fw, align 8, !nonnull !4, !noundef !4
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, i64 noundef %i.cm, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.bn unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bu, %bb.bm
  %.pn71 = phi { ptr, i32 } [ %i.gc, %bb.bm ], [ %.pn69, %bb.bu ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #28
          to label %bb.bc unwind label %bb.ex

bb.bm:                                            ; preds = %bb.bo, %bb.bk, %bb.bj
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bn:                                            ; preds = %bb.bk
  %i.gd = load i64, ptr %i.r, align 8, !range !16, !noundef !4
  %i.ge = trunc nuw i64 %i.gd to i1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !range !287, !noundef !4 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  br i1 %i.ge, label %bb.bo, label %bb.bp, !prof !18

bb.bo:                                            ; preds = %bb.bn
  %i.gi = load i64, ptr %i.gh, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.gg, i64 %i.gi) #25
          to label %bb.r unwind label %bb.bm

bb.bp:                                            ; preds = %bb.bn
  %i.gj = load ptr, ptr %i.gh, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.gk = icmp ule i64 %i.cm, %i.gg
  call void @llvm.assume(i1 %i.gk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 %i.gg, ptr %i.ai, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.gj, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store i64 0, ptr %i.gm, align 8
  br i1 %.not41, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.br, %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !noundef !4 ; 2 uses
  %.not47 = icmp ugt i64 %i.ce, %i.gp
  br i1 %.not47, label %bb.bs, label %bb.bt, !prof !18

bb.br:                                            ; preds = %bb.bp
  %i.gq = shl i64 %i.cm, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gj, ptr nonnull align 4 %i.gb, i64 %i.gq, i1 false)
  store i64 %i.cm, ptr %i.gm, align 8
  br label %bb.bq

bb.bs:                                            ; preds = %bb.bq
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.cc, i64 noundef %i.ce, i64 noundef %i.gp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #25
          to label %bb.r unwind label %bb.bv

bb.bt:                                            ; preds = %bb.bq
  %i.gr = load ptr, ptr %i.gn, align 8, !nonnull !4, !noundef !4
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %i.cm, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.bw unwind label %bb.bv

bb.bu:                                            ; preds = %bb.fd, %bb.bv
  %.pn69 = phi { ptr, i32 } [ %i.gt, %bb.bv ], [ %i.hq, %bb.fd ]
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding8truncate:bb.a
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.jg = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.jh = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ji = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.jj = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.jk = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.jl = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  %i.jm = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  %i.jn = getelementptr inbounds nuw i8, ptr %i.af, i64 168
  %i.jo = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ao, i64 184 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ao, i64 176
  br label %bb.cc

bb.cc:                                            ; preds = %.lr.ph, %bb.ew
  %i.jr = phi i64 [ %i.ia, %.lr.ph ], [ %i.ob, %bb.ew ] ; 2 uses
  %.sroa.01.0413 = phi i64 [ 0, %.lr.ph ], [ %i.js, %bb.ew ] ; 2 uses
  %i.js = add nuw nsw i64 %.sroa.01.0413, 1       ; 4 uses
  %i.jt = icmp samesign ult i64 %i.js, %i.jr
  br i1 %i.jt, label %bb.cd, label %bb.ce

._crit_edge:                                      ; preds = %bb.ew, %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.w, ptr noundef nonnull align 8 dereferenceable(256) %i.ao, i64 256, i1 false)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef align 8 dereferenceable(256) %0)
          to label %bb.ez unwind label %.thread

bb.cd:                                            ; preds = %bb.cc
  %i.ju = load ptr, ptr %i.by, align 8, !nonnull !4, !noundef !4
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.ju, i64 %i.js ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !noundef !4 ; 17 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jy = load i64, ptr %i.jx, align 8, !noundef !4 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.jz = load ptr, ptr %i.cf, align 8, !nonnull !4, !noundef !4
  %i.ka = load i64, ptr %i.ay, align 8, !noundef !4 ; 2 uses
  %i.kb = icmp ult i64 %i.jy, %i.jw
  br i1 %i.kb, label %bb.cg, label %bb.cf, !prof !18

bb.ce:                                            ; preds = %bb.cc
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.js, i64 noundef %i.jr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #25
          to label %bb.r unwind label %.body119.thread.loopexit.split-lp

.body119.thread.loopexit:                         ; preds = %bb.ch
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body119

.body119.thread.loopexit.split-lp:                ; preds = %bb.cj, %bb.cg, %bb.ce
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body119

bb.cf:                                            ; preds = %bb.cd
  %i.kc = sub nuw i64 %i.jy, %i.jw                ; 27 uses
  %.not48 = icmp ugt i64 %i.jy, %i.ka
  br i1 %.not48, label %bb.cg, label %bb.ch, !prof !18

bb.cg:                                            ; preds = %bb.cf, %bb.cd
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.jw, i64 noundef %i.jy, i64 noundef %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #25
          to label %bb.r unwind label %.body119.thread.loopexit.split-lp

bb.ch:                                            ; preds = %bb.cf
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef %i.kc, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.ci unwind label %.body119.thread.loopexit

bb.ci:                                            ; preds = %bb.ch
  %i.ke = load i64, ptr %i.n, align 8, !range !16, !noundef !4
  %i.kf = trunc nuw i64 %i.ke to i1
  %i.kg = load i64, ptr %i.ic, align 8, !range !287, !noundef !4 ; 3 uses
  br i1 %i.kf, label %bb.cj, label %bb.ck, !prof !18

bb.cj:                                            ; preds = %bb.ci
  %i.kh = load i64, ptr %i.id, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.kg, i64 %i.kh) #25
          to label %bb.r unwind label %.body119.thread.loopexit.split-lp

bb.ck:                                            ; preds = %bb.ci
  %i.ki = load ptr, ptr %i.id, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.kj = icmp ule i64 %i.kc, %i.kg
  call void @llvm.assume(i1 %i.kj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 %i.kg, ptr %i.ae, align 8
  store ptr %i.ki, ptr %i.ie, align 8
  store i64 0, ptr %i.if, align 8
  %.not49 = icmp eq i64 %i.jy, %i.jw              ; 6 uses
  br i1 %.not49, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.cm, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.kk = load i64, ptr %i.cz, align 8, !noundef !4 ; 2 uses
  %.not50 = icmp ugt i64 %i.jy, %i.kk
  br i1 %.not50, label %bb.cn, label %bb.co, !prof !18

bb.cm:                                            ; preds = %bb.ck
  %i.kl = shl i64 %i.kc, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ki, ptr nonnull align 4 %i.kd, i64 %i.kl, i1 false)
  store i64 %i.kc, ptr %i.if, align 8
  br label %bb.cl

bb.cn:                                            ; preds = %bb.cl
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.jw, i64 noundef %i.jy, i64 noundef %i.kk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #25
          to label %bb.r unwind label %.loopexit.split-lp

bb.co:                                            ; preds = %bb.cl
  %i.km = load ptr, ptr %i.cy, align 8, !nonnull !4, !noundef !4
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef %i.kc, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.cs unwind label %.loopexit134

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit107: ; preds = %.loopexit134, %.loopexit.split-lp, %bb.df
  %.pn64 = phi { ptr, i32 } [ %.pn61.pn, %bb.df ], [ %lpad.loopexit135, %.loopexit134 ], [ %lpad.loopexit.split-lp136, %.loopexit.split-lp ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.cq unwind label %bb.cp

bb.cp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit107
  %i.ko = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body unwind label %bb.cr

bb.cq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit107
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body119 unwind label %bb.ex

bb.cr:                                            ; preds = %bb.cp
  %i.kp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

.loopexit134:                                     ; preds = %bb.co
  %lpad.loopexit135 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit107

.loopexit.split-lp:                               ; preds = %bb.cn, %bb.ct
  %lpad.loopexit.split-lp136 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit107

bb.cs:                                            ; preds = %bb.co
  %i.kq = load i64, ptr %i.m, align 8, !range !16, !noundef !4
  %i.kr = trunc nuw i64 %i.kq to i1
  %i.ks = load i64, ptr %i.ig, align 8, !range !287, !noundef !4 ; 3 uses
  br i1 %i.kr, label %bb.ct, label %bb.cu, !prof !18

bb.ct:                                            ; preds = %bb.cs
  %i.kt = load i64, ptr %i.ih, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ks, i64 %i.kt) #25
          to label %bb.r unwind label %.loopexit.split-lp

bb.cu:                                            ; preds = %bb.cs
  %i.ku = load ptr, ptr %i.ih, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.kv = icmp ule i64 %i.kc, %i.ks
  call void @llvm.assume(i1 %i.kv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.ks, ptr %i.ad, align 8
  store ptr %i.ku, ptr %i.ii, align 8
  store i64 0, ptr %i.ij, align 8
  br i1 %.not49, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cw, %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.kw = load i64, ptr %i.dq, align 8, !noundef !4 ; 2 uses
  %.not51 = icmp ugt i64 %i.jy, %i.kw
  br i1 %.not51, label %bb.cx, label %bb.cy, !prof !18

bb.cw:                                            ; preds = %bb.cu
  %i.kx = shl i64 %i.kc, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ku, ptr nonnull align 4 %i.kn, i64 %i.kx, i1 false)
  store i64 %i.kc, ptr %i.ij, align 8
  br label %bb.cv

bb.cx:                                            ; preds = %bb.cv
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.jw, i64 noundef %i.jy, i64 noundef %i.kw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #25
          to label %bb.r unwind label %.loopexit.split-lp139

bb.cy:                                            ; preds = %bb.cv
  %i.ky = load ptr, ptr %i.dp, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.kz = getelementptr inbounds nuw [24 x i8], ptr %i.ky, i64 %i.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !996
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.kc, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc98 unwind label %.loopexit138

.noexc98:                                         ; preds = %bb.cy
  %i.la = load i64, ptr %i.a, align 8, !range !16, !noalias !996, !noundef !4
  %i.lb = trunc nuw i64 %i.la to i1
  %i.lc = load i64, ptr %i.ik, align 8, !range !287, !noalias !996, !noundef !4 ; 5 uses
  br i1 %i.lb, label %bb.cz, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i92, !prof !18

bb.cz:                                            ; preds = %.noexc98
  %i.ld = load i64, ptr %i.il, align 8, !noalias !996
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.lc, i64 %i.ld) #25
          to label %.noexc99 unwind label %.loopexit.split-lp139

.noexc99:                                         ; preds = %bb.cz
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i92: ; preds = %.noexc98
  %i.le = load ptr, ptr %i.il, align 8, !noalias !996, !nonnull !4, !noundef !4 ; 2 uses
  %i.lf = icmp ule i64 %i.kc, %i.lc
  call void @llvm.assume(i1 %i.lf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !996
  store i64 %i.lc, ptr %i.c, align 8, !noalias !996
  store ptr %i.le, ptr %i.im, align 8, !noalias !996
  %i.lg = getelementptr inbounds nuw [24 x i8], ptr %i.ky, i64 %i.jy
  %i.lh = icmp eq i64 %i.lc, 0
  br i1 %i.lh, label %.loopexit, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i92, %bb.db
  %.sroa.10.023.i94 = phi i64 [ %i.li, %bb.db ], [ %i.lc, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i92 ]
  %.sroa.012.022.i95 = phi ptr [ %i.ll, %bb.db ], [ %i.kz, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i92 ] ; 3 uses
  %.sroa.7.021.i96 = phi i64 [ %i.lk, %bb.db ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i92 ] ; 3 uses
  %i.li = add i64 %.sroa.10.023.i94, -1           ; 2 uses
  %i.lj = icmp eq ptr %.sroa.012.022.i95, %i.lg
  br i1 %i.lj, label %.loopexit, label %bb.da

bb.da:                                            ; preds = %.lr.ph.i93
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.022.i95)
          to label %bb.db unwind label %bb.dd, !noalias !1000

bb.db:                                            ; preds = %bb.da
  %i.lk = add nuw nsw i64 %.sroa.7.021.i96, 1
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i95, i64 24
  %i.lm = getelementptr inbounds nuw [24 x i8], ptr %i.le, i64 %.sroa.7.021.i96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lm, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1000
  %i.ln = icmp eq i64 %i.li, 0
  br i1 %i.ln, label %.loopexit, label %.lr.ph.i93

bb.dc:                                            ; preds = %bb.dd
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1000
  unreachable

bb.dd:                                            ; preds = %bb.da
  %lpad.loopexit.i97 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021.i96, ptr %i.in, align 8, !noalias !996
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.c) #28
          to label %.body100 unwind label %bb.dc, !noalias !1000

.body100:                                         ; preds = %.loopexit138, %.loopexit.split-lp139, %bb.dk, %bb.dd
  %.pn61.pn = phi { ptr, i32 } [ %lpad.loopexit.i97, %bb.dd ], [ %.pn61, %bb.dk ], [ %lpad.loopexit140, %.loopexit138 ], [ %lpad.loopexit.split-lp141, %.loopexit.split-lp139 ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.df unwind label %bb.de

bb.de:                                            ; preds = %.body100
  %i.lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body unwind label %bb.dg

bb.df:                                            ; preds = %.body100
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit107 unwind label %bb.ex

bb.dg:                                            ; preds = %bb.de
  %i.lq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

.loopexit138:                                     ; preds = %bb.cy
  %lpad.loopexit140 = landingpad { ptr, i32 }
          cleanup
  br label %.body100

.loopexit.split-lp139:                            ; preds = %bb.cx, %bb.cz
  %lpad.loopexit.split-lp141 = landingpad { ptr, i32 }
          cleanup
  br label %.body100

.loopexit:                                        ; preds = %bb.db, %.lr.ph.i93, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i92
  store i64 %i.kc, ptr %i.in, align 8, !noalias !996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.lr = load i64, ptr %i.eq, align 8, !noundef !4 ; 2 uses
  %.not52 = icmp ugt i64 %i.jy, %i.lr
  br i1 %.not52, label %bb.dh, label %bb.di, !prof !18

bb.dh:                                            ; preds = %.loopexit
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.jw, i64 noundef %i.jy, i64 noundef %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #25
          to label %bb.r unwind label %.loopexit.split-lp144

bb.di:                                            ; preds = %.loopexit
  %i.ls = load ptr, ptr %i.ep, align 8, !nonnull !4, !noundef !4
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.kc, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
          to label %bb.dm unwind label %.loopexit143

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.loopexit143, %.loopexit.split-lp144, %bb.dv
  %.pn61 = phi { ptr, i32 } [ %.pn59, %bb.dv ], [ %lpad.loopexit145, %.loopexit143 ], [ %lpad.loopexit.split-lp146, %.loopexit.split-lp144 ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.dk unwind label %bb.dj

bb.dj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.lu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body unwind label %bb.dl

bb.dk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body100 unwind label %bb.ex

bb.dl:                                            ; preds = %bb.dj
  %i.lv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

.loopexit143:                                     ; preds = %bb.di
  %lpad.loopexit145 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit

.loopexit.split-lp144:                            ; preds = %bb.dh, %bb.dn
  %lpad.loopexit.split-lp146 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit

bb.dm:                                            ; preds = %bb.di
  %i.lw = load i64, ptr %i.l, align 8, !range !16, !noundef !4
  %i.lx = trunc nuw i64 %i.lw to i1
  %i.ly = load i64, ptr %i.io, align 8, !range !287, !noundef !4 ; 3 uses
  br i1 %i.lx, label %bb.dn, label %bb.do, !prof !18

bb.dn:                                            ; preds = %bb.dm
  %i.lz = load i64, ptr %i.ip, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ly, i64 %i.lz) #25
          to label %bb.r unwind label %.loopexit.split-lp144

bb.do:                                            ; preds = %bb.dm
  %i.ma = load ptr, ptr %i.ip, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.mb = icmp ule i64 %i.kc, %i.ly
  call void @llvm.assume(i1 %i.mb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.ly, ptr %i.ab, align 8
  store ptr %i.ma, ptr %i.iq, align 8
  store i64 0, ptr %i.ir, align 8
  br i1 %.not49, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.dq, %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.mc = load i64, ptr %i.fg, align 8, !noundef !4 ; 2 uses
  %.not53 = icmp ugt i64 %i.jy, %i.mc
  br i1 %.not53, label %bb.dr, label %bb.ds, !prof !18

bb.dq:                                            ; preds = %bb.do
  %i.md = shl i64 %i.kc, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ma, ptr nonnull align 4 %i.lt, i64 %i.md, i1 false)
  store i64 %i.kc, ptr %i.ir, align 8
  br label %bb.dp

bb.dr:                                            ; preds = %bb.dp
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.jw, i64 noundef %i.jy, i64 noundef %i.mc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #25
          to label %bb.r unwind label %.loopexit.split-lp149

bb.ds:                                            ; preds = %bb.dp
  %i.me = load ptr, ptr %i.ff, align 8, !nonnull !4, !noundef !4
  %i.mf = getelementptr inbounds nuw [16 x i8], ptr %i.me, i64 %i.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %i.kc, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.dx unwind label %.loopexit148

bb.dt:                                            ; preds = %.loopexit148, %.loopexit.split-lp149, %bb.ee
  %.pn59 = phi { ptr, i32 } [ %.pn57, %bb.ee ], [ %lpad.loopexit150, %.loopexit148 ], [ %lpad.loopexit.split-lp151, %.loopexit.split-lp149 ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBJ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.dv unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.mg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBQ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body unwind label %bb.dw

bb.dv:                                            ; preds = %bb.dt
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBQ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ex

bb.dw:                                            ; preds = %bb.du
  %i.mh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

.loopexit148:                                     ; preds = %bb.ds
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

.loopexit.split-lp149:                            ; preds = %bb.dr, %bb.dy
  %lpad.loopexit.split-lp151 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dx:                                            ; preds = %bb.ds
  %i.mi = load i64, ptr %i.k, align 8, !range !16, !noundef !4
  %i.mj = trunc nuw i64 %i.mi to i1
  %i.mk = load i64, ptr %i.is, align 8, !range !287, !noundef !4 ; 3 uses
  br i1 %i.mj, label %bb.dy, label %bb.dz, !prof !18

bb.dy:                                            ; preds = %bb.dx
  %i.ml = load i64, ptr %i.it, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.mk, i64 %i.ml) #25
          to label %bb.r unwind label %.loopexit.split-lp149

bb.dz:                                            ; preds = %bb.dx
  %i.mm = load ptr, ptr %i.it, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.mn = icmp ule i64 %i.kc, %i.mk
  call void @llvm.assume(i1 %i.mn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %i.mk, ptr %i.aa, align 8
  store ptr %i.mm, ptr %i.iu, align 8
  store i64 0, ptr %i.iv, align 8
  br i1 %.not49, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.eb, %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.mo = load i64, ptr %i.fx, align 8, !noundef !4 ; 2 uses
  %.not54 = icmp ugt i64 %i.jy, %i.mo
  br i1 %.not54, label %bb.ec, label %bb.ed, !prof !18

bb.eb:                                            ; preds = %bb.dz
  %i.mp = shl i64 %i.kc, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mm, ptr nonnull align 8 %i.mf, i64 %i.mp, i1 false)
  store i64 %i.kc, ptr %i.iv, align 8
  br label %bb.ea

bb.ec:                                            ; preds = %bb.ea
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.jw, i64 noundef %i.jy, i64 noundef %i.mo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #25
          to label %bb.r unwind label %.loopexit.split-lp154

bb.ed:                                            ; preds = %bb.ea
  %i.mq = load ptr, ptr %i.fw, align 8, !nonnull !4, !noundef !4
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.kc, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.ef unwind label %.loopexit153

bb.ee:                                            ; preds = %.loopexit153, %.loopexit.split-lp154, %bb.em
  %.pn57 = phi { ptr, i32 } [ %.pn, %bb.em ], [ %lpad.loopexit155, %.loopexit153 ], [ %lpad.loopexit.split-lp156, %.loopexit.split-lp154 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.aa) #28
          to label %bb.dt unwind label %bb.ex

.loopexit153:                                     ; preds = %bb.ed
  %lpad.loopexit155 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

.loopexit.split-lp154:                            ; preds = %bb.ec, %bb.eg
  %lpad.loopexit.split-lp156 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ef:                                            ; preds = %bb.ed
  %i.ms = load i64, ptr %i.j, align 8, !range !16, !noundef !4
  %i.mt = trunc nuw i64 %i.ms to i1
  %i.mu = load i64, ptr %i.iw, align 8, !range !287, !noundef !4 ; 3 uses
  br i1 %i.mt, label %bb.eg, label %bb.eh, !prof !18

bb.eg:                                            ; preds = %bb.ef
  %i.mv = load i64, ptr %i.ix, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.mu, i64 %i.mv) #25
          to label %bb.r unwind label %.loopexit.split-lp154

bb.eh:                                            ; preds = %bb.ef
  %i.mw = load ptr, ptr %i.ix, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.mx = icmp ule i64 %i.kc, %i.mu
  call void @llvm.assume(i1 %i.mx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.mu, ptr %i.z, align 8
  store ptr %i.mw, ptr %i.iy, align 8
  store i64 0, ptr %i.iz, align 8
end_hunk_1
begin_hunk_2_@_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram4from:bb.a
  store i8 1, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 321
  store i8 1, ptr %.sroa.17.0..sroa_idx, align 1
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 322
  store i8 %i.bw, ptr %.sroa.18.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.n

bb.r:                                             ; preds = %bb.ab, %bb.aa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie4TriehEEBK_.exit, %bb.p, %bb.ac, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit53
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie4TriehEEBK_.exit: ; preds = %bb.p
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit53 unwind label %bb.r

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit53: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie4TriehEEBK_.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.i) #28
          to label %common.resume unwind label %bb.r

bb.s:                                             ; preds = %bb.o
  %i.by = load i64, ptr %i.a, align 8, !range !16, !noundef !4
  %i.bz = trunc nuw i64 %i.by to i1
  %i.ca = load i64, ptr %i.ay, align 8, !range !287, !noundef !4 ; 3 uses
  br i1 %i.bz, label %bb.t, label %bb.u, !prof !18

bb.t:                                             ; preds = %bb.s
  %i.cb = load i64, ptr %i.az, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ca, i64 %i.cb) #25
          to label %bb.z unwind label %.loopexit.split-lp

bb.u:                                             ; preds = %bb.s
  %i.cc = load ptr, ptr %i.az, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cd = icmp ule i64 %i.bt, %i.ca
  call void @llvm.assume(i1 %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not31 = icmp eq i64 %i.bt, 0
  br i1 %.not31, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.w, %bb.u
  store i64 %i.ca, ptr %i.j, align 8
  store ptr %i.cc, ptr %.sroa.423.0..sroa_idx, align 8
  store i64 %i.bt, ptr %.sroa.624.0..sroa_idx, align 8
  %i.ce = invoke { i32, i32 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, i32 noundef %.sroa.7.079)
          to label %bb.x unwind label %.loopexit  ; 0 uses

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr nonnull align 1 %i.br, i64 %i.bt, i1 false)
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trieINtB4_4TriehE4pushBa_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef %i.bt)
          to label %bb.y unwind label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.080, i64 24
  %i.cg = load double, ptr %i.cf, align 8, !noundef !4 ; 2 uses
  %i.ch = fcmp olt double %i.cg, %.sroa.04.081
  %.sroa.04.1 = select i1 %i.ch, double %i.cg, double %.sroa.04.081 ; 2 uses
  %i.ci = icmp eq ptr %i.bo, %i.av
  br i1 %i.ci, label %._crit_edge, label %bb.o

bb.z:                                             ; preds = %bb.t
  unreachable

.loopexit:                                        ; preds = %bb.o, %bb.v, %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %.invoke, %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableThINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie4NodehEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k)
          to label %bb.ab unwind label %bb.r

bb.ab:                                            ; preds = %bb.c, %bb.aa
  %.pn33.ph = phi { ptr, i32 } [ %i.aj, %bb.c ], [ %lpad.phi, %bb.aa ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %bb.ac unwind label %bb.r

bb.ac:                                            ; preds = %bb.b, %bb.ab
  %.pn35.ph = phi { ptr, i32 } [ %i.y, %bb.b ], [ %.pn33.ph, %bb.ab ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %1) #28
          to label %common.resume unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram6encode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 16 uses
  %i.o = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.6.sroa.0.i = alloca [16 x i8], align 8   ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 12 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [56 x i8], align 8                ; 16 uses
  %i.t = alloca [24 x i8], align 8                ; 15 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [48 x i8], align 8                ; 3 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 9 uses
  %i.ae = alloca [24 x i8], align 8               ; 9 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = icmp eq i64 %3, 0
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !16, !noundef !4
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.h, %bb.ev, %bb.i, %bb.t, %bb.b
  ret void

bb.e:                                             ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  call void @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils5cacheINtB6_5CacheNtNtCscdodAO9FK5_5alloc6string6StringINtNtB12_3vec3VecBY_EE3geteEBa_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noundef nonnull align 8 %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.ak = load i64, ptr %i.af, align 8, !range !19, !noundef !4
  %.not45 = icmp eq i64 %i.ak, -1
  br i1 %.not45, label %bb.p, label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load double, ptr %i.al, align 8, !noundef !4
  %i.an = fcmp oeq double %i.am, 0.000000e+00
  br i1 %i.an, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call fastcc void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram18encode_unoptimized(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.z, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.ao = load i64, ptr %i.z, align 8, !range !19, !noundef !4 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.av, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.i:                                             ; preds = %bb.g
  store i64 %i.ao, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.d

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1082
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef range(i64 0, 384307168202282326) %i.az, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.j
  %i.ba = load i64, ptr %i.u, align 8, !range !16, !noalias !1082, !noundef !4
  %i.bb = trunc nuw i64 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !range !287, !noalias !1082, !noundef !4 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  br i1 %i.bb, label %bb.k, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i, !prof !18

bb.k:                                             ; preds = %.noexc
  %i.bf = load i64, ptr %i.be, align 8, !noalias !1082
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bd, i64 %i.bf) #25
          to label %.noexc49 unwind label %bb.q

.noexc49:                                         ; preds = %bb.k
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.noexc
  %i.bg = load ptr, ptr %i.be, align 8, !noalias !1082, !nonnull !4, !noundef !4 ; 2 uses
  %i.bh = icmp ule i64 %i.az, %i.bd
  tail call void @llvm.assume(i1 %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1082
  store i64 %i.bd, ptr %i.w, align 8, !noalias !1082
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.bg, ptr %i.bi, align 8, !noalias !1082
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.az
  %i.bl = icmp eq i64 %i.bd, 0
  br i1 %i.bl, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i, %bb.m
  %.sroa.10.023.i = phi i64 [ %i.bm, %bb.m ], [ %i.bd, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i ]
  %.sroa.012.022.i = phi ptr [ %i.bp, %bb.m ], [ %i.ax, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i ] ; 3 uses
  %.sroa.7.021.i = phi i64 [ %i.bo, %bb.m ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i ] ; 3 uses
  %i.bm = add i64 %.sroa.10.023.i, -1             ; 2 uses
  %i.bn = icmp eq ptr %.sroa.012.022.i, %i.bk
  br i1 %i.bn, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.022.i)
          to label %bb.m unwind label %bb.o, !noalias !1086

bb.m:                                             ; preds = %bb.l
  %i.bo = add nuw nsw i64 %.sroa.7.021.i, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 24
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %.sroa.7.021.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !1086
  %i.br = icmp eq i64 %i.bm, 0
  br i1 %i.br, label %.loopexit, label %.lr.ph.i

bb.n:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1086
  unreachable

bb.o:                                             ; preds = %bb.l
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021.i, ptr %i.bj, align 8, !noalias !1082
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.w) #28
          to label %.body unwind label %bb.n, !noalias !1086

bb.p:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 321
  %i.bu = load i8, ptr %i.bt, align 1, !range !3, !noundef !4
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.w, label %bb.v

bb.q:                                             ; preds = %bb.k, %bb.j
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.bw, %bb.q ], [ %lpad.loopexit.i, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.ae) #28
          to label %common.resume unwind label %bb.u

.loopexit:                                        ; preds = %bb.m, %.lr.ph.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i
  store i64 %i.az, ptr %i.bj, align 8, !noalias !1082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.y, %bb.ap, %bb.cs, %bb.dw, %.body, %bb.ez, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.ez ], [ %i.bx, %bb.r ], [ %eh.lpad-body, %.body ], [ %i.ml, %bb.dw ], [ %i.cu, %bb.y ], [ %i.fl, %bb.ap ], [ %.pn105.pn.i, %bb.cs ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.loopexit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.t

bb.t:                                             ; preds = %bb.ex, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.d

bb.u:                                             ; preds = %bb.fh, %bb.ez, %.body
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call fastcc void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram18encode_unoptimized(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ac, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.ca = load i64, ptr %i.ac, align 8, !range !19, !noundef !4 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br i1 %i.cb, label %bb.ev, label %bb.eu

bb.w:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.ch = load double, ptr %i.cg, align 8, !noalias !1090, !noundef !4
  %i.ci = fadd double %i.ch, -1.000000e+01
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1090
  %i.cj = add i64 %3, 1                           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1092
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 2, 1) %i.cj, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !1092
  %i.ck = load i64, ptr %i.b, align 8, !range !16, !noalias !1092, !noundef !4
  %i.cl = trunc nuw i64 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !range !287, !noalias !1092, !noundef !4 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.cl, label %bb.x, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i, !prof !18

bb.x:                                             ; preds = %bb.w
  %i.cp = load i64, ptr %i.co, align 8, !noalias !1092
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cn, i64 %i.cp) #25, !noalias !1096
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.w
  %i.cq = load ptr, ptr %i.co, align 8, !noalias !1092, !nonnull !4, !noundef !4
  %i.cr = icmp ule i64 %i.cj, %i.cn
  tail call void @llvm.assume(i1 %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1092
  store i64 %i.cn, ptr %i.d, align 8, !noalias !1092
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cq, ptr %i.cs, align 8, !noalias !1092
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.ct, align 8, !noalias !1092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1092
  store i64 0, ptr %i.c, align 8, !noalias !1097
  %.sroa.4199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4199.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !1090
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBM_7Unigram16encode_optimized12BestPathNodeE11extend_withBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef range(i64 2, 1) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c)
          to label %_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBS_7Unigram16encode_optimized12BestPathNodeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBY_.exit.i unwind label %bb.y, !noalias !1096

bb.y:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB1f_7Unigram16encode_optimized12BestPathNodeEEB1l_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #28
          to label %common.resume unwind label %bb.z, !noalias !1096

bb.z:                                             ; preds = %bb.y
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1096
  unreachable

_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBS_7Unigram16encode_optimized12BestPathNodeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBY_.exit.i: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1092
  %i.cw = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %invariant.op.i = add i64 %3, -1
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.027.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.027.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.da = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.6.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  br label %bb.ab

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit176._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1090
  store i64 0, ptr %i.o, align 8, !noalias !1090
  %i.dl = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dl, align 8, !noalias !1090
  %i.dm = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 9 uses
  store i64 0, ptr %i.dm, align 8, !noalias !1090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1090
  store i64 0, ptr %i.n, align 8, !noalias !1090
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 8 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dn, align 8, !noalias !1090
  %i.do = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 9 uses
  store i64 0, ptr %i.do, align 8, !noalias !1090
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.676.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.468.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.669.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %bb.ad

bb.ab:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit176._crit_edge.i, %_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBS_7Unigram16encode_optimized12BestPathNodeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBY_.exit.i
  %.sroa.011.0356.i = phi i64 [ 0, %_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBS_7Unigram16encode_optimized12BestPathNodeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBY_.exit.i ], [ %.pre471.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit176._crit_edge.i ] ; 15 uses
  %i.du = load i64, ptr %i.cx, align 8, !noalias !1090, !noundef !4 ; 2 uses
  %i.dv = icmp ult i64 %.sroa.011.0356.i, %i.du
  br i1 %i.dv, label %bb.cv, label %.invoke599.i

bb.ac:                                            ; preds = %bb.cf
  %i.dw = load i64, ptr %i.do, align 8, !noalias !1090, !noundef !4 ; 5 uses
  %i.dx = icmp ult i64 %i.dw, 384307168202282326
  call void @llvm.assume(i1 %i.dx)
  %i.dy = icmp eq i64 %i.dw, 0
  br i1 %i.dy, label %._crit_edge469.i, label %bb.ae

._crit_edge469.i:                                 ; preds = %bb.ac
  %.pre470.i = load i64, ptr %i.dm, align 8, !noalias !1090
  br label %bb.af

bb.ad:                                            ; preds = %bb.cf, %bb.aa
  %.sroa.0.0358.i = phi i64 [ %3, %bb.aa ], [ %i.fr, %bb.cf ] ; 16 uses
  %i.dz = load i64, ptr %i.cx, align 8, !noalias !1090, !noundef !4 ; 2 uses
  %i.ea = icmp ult i64 %.sroa.0.0358.i, %i.dz
  br i1 %i.ea, label %bb.ar, label %bb.as

bb.ae:                                            ; preds = %bb.ac
  %i.eb = load ptr, ptr %i.dn, align 8, !noalias !1090, !nonnull !4, !noundef !4 ; 3 uses
  %i.ec = lshr i64 %i.dw, 1                       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %.not.i108.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i108.i, label %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i: ; preds = %bb.ae
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %i.dw
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.el, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i ] ; 3 uses
  %i.ee = xor i64 %.sroa.0.016.i.i, -1
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %.sroa.0.016.i.i ; 3 uses
  %i.eg = getelementptr [24 x i8], ptr %i.ed, i64 %i.ee ; 3 uses
  %i.eh = load <2 x i64>, ptr %i.ef, align 1, !alias.scope !1104, !noalias !1108
  %i.ei = load <2 x i64>, ptr %i.eg, align 1, !alias.scope !1109, !noalias !1112
  store <2 x i64> %i.ei, ptr %i.ef, align 1, !alias.scope !1104, !noalias !1108
  store <2 x i64> %i.eh, ptr %i.eg, align 1, !alias.scope !1109, !noalias !1112
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %.sroa.0.0.copyload.i.i.2.i.i.i.i.i = load i64, ptr %i.ej, align 1, !alias.scope !1117, !noalias !1118
  %.sroa.02.0.copyload.i.i.2.i.i.i.i.i = load i64, ptr %i.ek, align 1, !alias.scope !1119, !noalias !1120
end_hunk_2
begin_hunk_3_@_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram6encode:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1143
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i189.i: ; preds = %.loopexit.split-lp242.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body.i unwind label %bb.cq, !noalias !1143

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.noexc187.i
  %i.oa = getelementptr inbounds i8, ptr %i.no, i64 -8
  %i.ob = load i64, ptr %i.dh, align 8, !noalias !1090, !noundef !4
  %i.oc = load i32, ptr %i.oa, align 4, !noalias !1143, !noundef !4
  %i.od = zext i32 %i.oc to i64                   ; 3 uses
  %i.oe = icmp ugt i64 %i.ob, %i.od
  br i1 %i.oe, label %bb.eo, label %.invoke601.i, !prof !432

.invoke601.i:                                     ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.eg, %._crit_edge.i.i.i
  %i.of = phi ptr [ @123, %._crit_edge.i.i.i ], [ @123, %bb.eg ], [ @124, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.of) #25
          to label %.cont602.i unwind label %.loopexit.split-lp242.loopexit.split-lp.i, !noalias !1143

.cont602.i:                                       ; preds = %.invoke601.i
  unreachable

bb.eo:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.og = load ptr, ptr %i.di, align 8, !noalias !1090, !nonnull !4, !noundef !4
  %i.oh = getelementptr inbounds nuw [32 x i8], ptr %i.og, i64 %i.od
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %i.oj = load double, ptr %i.oi, align 8, !noalias !1143, !noundef !4
  %i.ok = fadd double %i.jj, %i.oj                ; 2 uses
  %i.ol = load i64, ptr %i.mw, align 8, !range !16, !noalias !1143, !noundef !4
  %i.om = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %.not103.i = icmp eq i64 %i.ol, 0
  br i1 %.not103.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.on = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  %i.oo = load double, ptr %i.on, align 8, !noalias !1143, !noundef !4
  %i.op = fcmp ogt double %i.ok, %i.oo
  br i1 %i.op, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  store double %i.ok, ptr %i.oq, align 8, !noalias !1143
  store i64 1, ptr %i.mw, align 8, !noalias !1143
  store i64 %.sroa.011.0356.i, ptr %i.om, align 8, !noalias !1143
  %i.or = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store i64 %i.od, ptr %i.or, align 8, !noalias !1143
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i194.i unwind label %bb.es, !noalias !1143

bb.es:                                            ; preds = %bb.er
  %i.os = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body.i unwind label %bb.et, !noalias !1143

bb.et:                                            ; preds = %bb.es
  %i.ot = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1143
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i194.i: ; preds = %bb.er
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit198.i unwind label %bb.df, !noalias !1143

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit198.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i194.i
  %i.ou = icmp ne i64 %i.li, %.sroa.023.0.i
  %i.ov = trunc nuw i8 %.sroa.021.0.i to i1
  %or.cond.not.i = or i1 %i.ou, %i.ov
  %spec.store.select.i = select i1 %or.cond.not.i, i8 %.sroa.021.0.i, i8 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1090
  br label %bb.dc

_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBT_7Unigram16encode_optimized12BestPathNodeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !1143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1090
  %i.ow = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %i.ow, label %bb.ew, label %bb.eu

bb.eu:                                            ; preds = %bb.v, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit ], [ %i.ca, %bb.v ]
  %.sroa.6.0.copyload.sink = phi ptr [ %.sroa.6.0.copyload, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit ], [ %i.cd, %bb.v ]
  %.sroa.9.0.copyload.sink = phi ptr [ %.sroa.9.0.copyload, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit ], [ %i.cf, %bb.v ]
  store i64 %.sroa.0.0.copyload.sink, ptr %i.ad, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.sroa.6.0.copyload.sink, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.sroa.9.0.copyload.sink, ptr %.sroa.59.0..sroa_idx, align 8
  %i.ox = icmp ult i64 %3, 256
  br i1 %i.ox, label %bb.ey, label %bb.ex

bb.ev:                                            ; preds = %bb.v, %bb.ew
  %.sroa.6.055.sink = phi ptr [ %.sroa.6.055, %bb.ew ], [ %i.cd, %bb.v ]
  %.sroa.9.054.sink = phi ptr [ %.sroa.9.054, %bb.ew ], [ %i.cf, %bb.v ]
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.055.sink, ptr %i.oy, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.054.sink, ptr %i.oz, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.d

bb.ew:                                            ; preds = %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit.thread, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit
  %.sroa.6.055 = phi ptr [ %i.mj, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit.thread ], [ %.sroa.6.0.copyload, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit ] ; 2 uses
  %.sroa.9.054 = phi ptr [ @120, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit.thread ], [ %.sroa.9.0.copyload, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.055) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.054) ]
  br label %bb.ev

bb.ex:                                            ; preds = %bb.fg, %bb.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.t

bb.ey:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.fb unwind label %bb.fa

bb.ez:                                            ; preds = %bb.fe, %bb.fh, %bb.fa
  %.pn = phi { ptr, i32 } [ %i.pa, %bb.fa ], [ %i.pl, %bb.fh ], [ %i.pj, %bb.fe ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.ad) #28
          to label %common.resume unwind label %bb.u

bb.fa:                                            ; preds = %bb.fc, %bb.ey
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.fb:                                            ; preds = %bb.ey
  %i.pb = load i64, ptr %i.y, align 8, !range !16, !noundef !4
  %i.pc = trunc nuw i64 %i.pb to i1
  %i.pd = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.pe = load i64, ptr %i.pd, align 8, !range !287, !noundef !4 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  br i1 %i.pc, label %bb.fc, label %bb.fd, !prof !18

bb.fc:                                            ; preds = %bb.fb
  %i.pg = load i64, ptr %i.pf, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.pe, i64 %i.pg) #25
          to label %bb.fi unwind label %bb.fa

bb.fd:                                            ; preds = %bb.fb
  %i.ph = load ptr, ptr %i.pf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.pi = icmp samesign ule i64 %3, %i.pe
  call void @llvm.assume(i1 %i.pi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ph, ptr nonnull align 1 %2, i64 %3, i1 false)
  store i64 %i.pe, ptr %i.ab, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ph, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %3, ptr %.sroa.639.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %bb.ff unwind label %bb.fh

bb.fe:                                            ; preds = %bb.ff
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ff:                                            ; preds = %bb.fd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.pk = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pk, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  invoke void @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils5cacheINtB6_5CacheNtNtCscdodAO9FK5_5alloc6string6StringINtNtB12_3vec3VecBY_EE10set_valuesINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceTBY_B1z_EEEBa_(ptr noundef nonnull align 8 %i.aj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.x)
          to label %bb.fg unwind label %bb.fe

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ex

bb.fh:                                            ; preds = %bb.fd
  %i.pl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.ab) #28
          to label %bb.ez unwind label %bb.u

bb.fi:                                            ; preds = %bb.fc
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs3_NtNtCseKCDlm5CXZl_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtNtCshIVG2s6J0nm_9rand_core2os5OsRngE19reseed_and_generateCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 16 dereferenceable(64) %0, ptr noalias noundef align 4 dereferenceable(256) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_RINvYNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtCshIVG2s6J0nm_9rand_core11SeedableRng12try_from_rngNtNtBV_2os5OsRngECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull %i.d)
  %i.e = load i32, ptr %i.a, align 16, !range !259, !noalias !1239, !noundef !4
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !range !1242, !noalias !1239, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.h, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXNtCshIVG2s6J0nm_9rand_core2osNtB2_7OsErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @127, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %2 = load i64, ptr %i.j, align 16, !alias.scope !1239, !noalias !1243, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.k, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = add i64 %2, -256
  store i64 %i.l, ptr %i.i, align 8
  tail call void @_RNvNtCse8lV02w4rfA_11rand_chacha4guts11refill_wide(ptr noalias noundef nonnull align 16 dereferenceable(48) %0, i32 noundef 6, ptr noalias noundef nonnull align 4 dereferenceable(256) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB4_9ByteLevel8alphabet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10BYTES_CHAR, i64 64) acquire, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0ECs2JiOgHzbbc7_10tokenizers.exit, label %bb.b, !prof !432

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10BYTES_CHAR, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  call void @_RNvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10BYTES_CHAR, i64 64), i1 noundef zeroext true, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0ECs2JiOgHzbbc7_10tokenizers.exit

_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1247
  call void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE4iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10BYTES_CHAR)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1247
  %i.h = call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE), !noalias !1251 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1251, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1251, !nonnull !4, !align !13, !noundef !4
  %i.l = call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS), !noalias !1251 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !4, !noalias !1251, !nonnull !4
  %i.p = call noundef i64 %i.o(ptr noundef nonnull %i.i), !noalias !1251, !inline_history !1254
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m, i64 noundef %i.p), !noalias !1247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @67, i64 32, i1 false), !noalias !1247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !1247
  invoke void @_RINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6_7HashSetcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendINtNtNtB1M_8adapters6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map6ValueshcEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %_RINvXsc_NtCsiTTz6JxaXqu_5ahash8hash_setINtB6_8AHashSetcEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBZ_8adapters6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map6ValueshcEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.c, !noalias !1247

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0ECs2JiOgHzbbc7_10tokenizers.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTcuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.d, !noalias !1247

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1247
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.r

_RINvXsc_NtCsiTTz6JxaXqu_5ahash8hash_setINtB6_8AHashSetcEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBZ_8adapters6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map6ValueshcEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0ECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !1255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  store i64 0, ptr %i.e, align 8
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivehEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i24 noundef 8265984)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivehEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i24 noundef -5463808)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivehEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i24 noundef -20992)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4IterhENCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char0EE9from_iterB2U_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i)
          to label %.preheader unwind label %bb.b

.preheader:                                       ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.l
  %.sroa.07.056 = phi i32 [ 0, %.preheader ], [ %.sroa.07.1, %bb.l ] ; 3 uses
  %.sroa.5.055 = phi i8 [ 0, %.preheader ], [ %i.m, %bb.l ] ; 5 uses
  %i.l = icmp eq i8 %.sroa.5.055, -1
  %i.m = add nuw i8 %.sroa.5.055, 1
  %i.n = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = load i64, ptr %i.e, align 8, !noundef !4 ; 5 uses
  %i.p = icmp samesign ult i64 %i.o, 16
  br i1 %i.p, label %.preheader.i, label %bb.g

.preheader.i:                                     ; preds = %bb.f
  %.not.i23 = icmp eq i64 %i.o, 0
  br i1 %.not.i23, label %._crit_edge.i, label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  %i.q = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef %.sroa.5.055, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef range(i64 0, -9223372036854775808) %i.o)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit unwind label %bb.p

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph.i, %.preheader.i
  %.sroa.01.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.o, %bb.h ], [ %.sroa.01.05.i, %.lr.ph.i ]
  %.sroa.0.1.i = phi i64 [ 0, %.preheader.i ], [ 0, %bb.h ], [ 1, %.lr.ph.i ]
  %i.r = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %.sroa.01.0.lcssa.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.h
  %.sroa.01.05.i = phi i64 [ %i.w, %bb.h ], [ 0, %.preheader.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.05.i
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !1256, !noundef !4
  %i.v = icmp eq i8 %i.u, %.sroa.5.055
  br i1 %i.v, label %._crit_edge.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.w = add nuw nsw i64 %.sroa.01.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.o
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.y = load i64, ptr %i.c, align 8, !range !93, !noundef !4
  %i.z = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  %.sroa.033.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.434.0.copyload = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.535.0.copyload = load i64, ptr %i.j, align 8 ; 2 uses
  %i.ac = icmp ult i64 %.sroa.535.0.copyload, 2305843009213693952
  call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.434.0.copyload, i64 %.sroa.535.0.copyload
  %.sroa.828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.828.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.x, ptr %i.a, align 8
  %.sroa.026.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.x, ptr %.sroa.026.sroa.4.0..sroa_idx, align 8
  %.sroa.026.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.y, ptr %.sroa.026.sroa.5.0..sroa_idx, align 8
  %.sroa.026.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ab, ptr %.sroa.026.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.434.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %.sroa.434.0.copyload, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %.sroa.033.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.ad, ptr %.sroa.7.0..sroa_idx, align 8
  call void @_RINvXsb_NtCsiTTz6JxaXqu_5ahash8hash_mapINtB6_8AHashMaphcEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorThcEE9from_iterINtNtNtB10_8adapters3map3MapINtNtB2d_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB2S_mEENCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0EEB3W_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit: ; preds = %._crit_edge.i, %bb.g
  %.merged.i = phi { i64, i64 } [ %i.s, %._crit_edge.i ], [ %i.q, %bb.g ]
  %i.ae = extractvalue { i64, i64 } %.merged.i, 0
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit
  %i.ag = load i64, ptr %i.e, align 8, !alias.scope !1259, !noundef !4 ; 3 uses
  %i.ah = load i64, ptr %i.c, align 8, !range !93, !alias.scope !1259, !noundef !4
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
end_hunk_3
