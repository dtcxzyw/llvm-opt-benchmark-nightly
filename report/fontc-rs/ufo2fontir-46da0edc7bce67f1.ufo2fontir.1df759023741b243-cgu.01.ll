Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/ufo2fontir-46da0edc7bce67f1.ufo2fontir.1df759023741b243-cgu.01?download=true
inline.NumInlined: 1316
inline.NumDeleted: 526
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB5_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1U_6WorkIdNtNtB1W_5error5ErrorE4exec:bb.a
  br i1 %i.ce, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c, %bb.i, %bb.h
  store i64 2, ptr %i.bv, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store ptr null, ptr %i.cf, align 8
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.cg = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB7_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1W_6WorkIdNtNtB1Y_5error5ErrorE4exec10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.cg, label %bb.f [
    i8 0, label %bb.d
    i8 1, label %bb.g
    i8 2, label %bb.g
  ], !prof !27

bb.f:                                             ; preds = %bb.e
  %i.ch = invoke noundef i8 @_RNvMNtCs6CpVowoi7NE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB7_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1W_6WorkIdNtNtB1Y_5error5ErrorE4exec10___CALLSITE)
          to label %bb.h unwind label %bb.b       ; 2 uses

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.h
  %.sroa.010.0 = phi i8 [ %i.ch, %bb.h ], [ %i.cg, %bb.e ], [ %i.cg, %bb.e ]
  %i.ci = load ptr, ptr @_RNvNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB7_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1W_6WorkIdNtNtB1Y_5error5ErrorE4exec10___CALLSITE, align 8, !nonnull !4, !align !21, !noundef !4
  %i.cj = invoke noundef zeroext i1 @_RNvNtCseSYDGaa5U8h_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ci, i8 noundef %.sroa.010.0)
          to label %bb.i unwind label %bb.b

bb.h:                                             ; preds = %bb.f
  %.not = icmp eq i8 %i.ch, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.i:                                             ; preds = %bb.g
  br i1 %i.cj, label %bb.j, label %bb.d

bb.j:                                             ; preds = %bb.i
  %i.ck = load ptr, ptr @_RNvNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB7_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1W_6WorkIdNtNtB1Y_5error5ErrorE4exec10___CALLSITE, align 8, !nonnull !4, !align !21, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  store i64 1, ptr %i.bw, align 8
  %.sroa.4286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4286.0..sroa_idx, align 8
  %.sroa.5287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 0, ptr %.sroa.5287.0..sroa_idx, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.cl, ptr %i.cm, align 8
  invoke void @_RNvMNtCseSYDGaa5U8h_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ck, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bw)
          to label %bb.l unwind label %bb.b

bb.k:                                             ; preds = %bb.l, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bx, ptr noundef nonnull align 8 dereferenceable(40) %i.bv, i64 40, i1 false)
  %i.cn = load i64, ptr %i.bx, align 8, !range !8, !noundef !4
  %.not460 = icmp eq i64 %i.cn, 2
  br i1 %.not460, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %bb.k

bb.m:                                             ; preds = %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  invoke void @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.co)
          to label %bb.n unwind label %bb.b

bb.n:                                             ; preds = %bb.a, %bb.m, %bb.k
  %.sroa.0253.2 = phi i8 [ 0, %bb.a ], [ 1, %bb.m ], [ 1, %bb.k ] ; 14 uses
  %i.cp = load atomic i64, ptr @_RNvCsksibNCz2yVN_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 6
  call void @llvm.assume(i1 %i.cq)
  %i.cr = icmp samesign ugt i64 %i.cp, 3
  br i1 %i.cr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  store ptr %1, ptr %i.bu, align 8
  %.sroa.4293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr @_RNvXsW_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCs2zvA5OmMqFb_10ufo2fontir, ptr %.sroa.4293.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  store ptr @5, ptr %i.bt, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 18, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr @5, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store i64 18, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store ptr @110, ptr %i.cv, align 8
  invoke void @_RINvNtCsksibNCz2yVN_3log13___private_api3loguNtB2_12GlobalLoggerECs2zvA5OmMqFb_10ufo2fontir(ptr noundef nonnull @109, ptr noundef nonnull %i.bu, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bt)
          to label %bb.q unwind label %bb.b

bb.p:                                             ; preds = %bb.n, %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  invoke fastcc void @_RNvNtCs2zvA5OmMqFb_10ufo2fontir6source14default_master(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.da)
          to label %bb.r unwind label %bb.b

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.p

bb.r:                                             ; preds = %bb.p
  %i.db = load i64, ptr %i.bs, align 8, !range !22, !noundef !4 ; 2 uses
  %.not461 = icmp eq i64 %i.db, -1
  br i1 %.not461, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.4299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.4299.0.copyload = load i64, ptr %.sroa.4299.0..sroa_idx, align 8
  %.sroa.5300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.5300.0.copyload = load ptr, ptr %.sroa.5300.0..sroa_idx, align 8
  %.sroa.6301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.sroa.6305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6305.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6301.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  store i64 %i.db, ptr %0, align 8
  %.sroa.4303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4299.0.copyload, ptr %.sroa.4303.0..sroa_idx, align 8
  %.sroa.5304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5300.0.copyload, ptr %.sroa.5304.0..sroa_idx, align 8
  br label %bb.jw

bb.t:                                             ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !4, !align !21, !noundef !4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.522)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  %i.de = getelementptr i8, ptr %i.cx, i64 24     ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !4, !noundef !4
  %i.dg = getelementptr i8, ptr %i.cx, i64 32     ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !4
  %i.di = getelementptr i8, ptr %i.cz, i64 80     ; 2 uses
  %.val = load ptr, ptr %i.di, align 8
  %i.dj = getelementptr i8, ptr %i.cz, i64 88     ; 2 uses
  %.val536 = load i64, ptr %i.dj, align 8
  invoke fastcc void @_RNvNtCs2zvA5OmMqFb_10ufo2fontir6source10font_infos(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.df, i64 noundef %i.dh, ptr %.val, i64 %.val536)
          to label %bb.u unwind label %bb.b

bb.u:                                             ; preds = %bb.t
  %i.dk = load i64, ptr %i.bq, align 8, !range !14, !noundef !4
  %i.dl = trunc nuw i64 %i.dk to i1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.522, ptr noundef nonnull align 8 dereferenceable(48) %i.dm, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br i1 %i.dl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.sroa.4307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4307.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.522, i64 48, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.522)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCshMXdXt2UU3C_5norad8fontinfo8FontInfoEECs2zvA5OmMqFb_10ufo2fontir.exit562

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.br, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.522, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.522)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !1389, !noalias !1390, !noundef !4
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %select.unfold, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dq = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.dr = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dd)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  %i.ds = lshr i64 %i.dr, 57
  %i.dt = trunc nuw nsw i64 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !1393, !noalias !1394, !noundef !4 ; 2 uses
  %i.dw = load ptr, ptr %i.br, align 8, !alias.scope !1393, !noalias !1394, !nonnull !4, !noundef !4 ; 2 uses
  %i.dx = insertelement <16 x i8> poison, i8 %i.dt, i64 0
  %i.dy = shufflevector <16 x i8> %i.dx, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.noexc
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc ], [ %i.ep, %bb.aa ]
  %.pn.i.i = phi i64 [ %i.dr, %.noexc ], [ %i.eq, %bb.aa ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.dv     ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.dz, align 1, !noalias !1395 ; 2 uses
  %i.ea = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.dy
  %i.eb = bitcast <16 x i1> %i.ea to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.eb, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y, %bb.z
  %.sroa.06.0.i31.i.i = phi i16 [ %i.eo, %bb.z ], [ %i.eb, %bb.y ] ; 3 uses
  %i.ec = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.ed = zext nneg i16 %i.ec to i64
  %i.ee = add i64 %.sroa.01.0.i.i.i, %i.ed
  %i.ef = and i64 %i.ee, %i.dv
  %i.eg = sub nsw i64 0, %i.ef
  %i.eh = getelementptr inbounds [1960 x i8], ptr %i.dw, i64 %i.eg ; 69 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -1960
  %i.ej = invoke noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtCsgCecv3eZDcN_5alloc6string6StringINtB2_10EquivalentRBq_E10equivalentCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1960) %i.ei)
          to label %.noexc557 unwind label %.loopexit

.noexc557:                                        ; preds = %.lr.ph.i.i
  br i1 %i.ej, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCshMXdXt2UU3C_5norad8fontinfo8FontInfoNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBP_ECs2zvA5OmMqFb_10ufo2fontir.exit, label %bb.z, !prof !5

._crit_edge.i.i:                                  ; preds = %bb.z, %bb.y
  %i.ek = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.el = bitcast <16 x i1> %i.ek to i16
  %i.em = icmp eq i16 %i.el, 0
  br i1 %i.em, label %bb.aa, label %select.unfold, !prof !6

bb.z:                                             ; preds = %.noexc557
  %i.en = add i16 %.sroa.06.0.i31.i.i, -1
  %i.eo = and i16 %i.en, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.eo, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.ep = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.eq = add i64 %.sroa.01.0.i.i.i, %i.ep
  br label %bb.y

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.jv, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapReNtNtCsbZq13ASDQ8l_10font_types3tag3TagEECs2zvA5OmMqFb_10ufo2fontir.exit, %bb.au, %.thread54.i, %bb.aj, %bb.an
  %.pn516 = phi { ptr, i32 } [ %.pn53.i, %.thread54.i ], [ %.pn512, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapReNtNtCsbZq13ASDQ8l_10font_types3tag3TagEECs2zvA5OmMqFb_10ufo2fontir.exit ], [ %i.fa, %bb.aj ], [ %.pn514.ph, %bb.jv ], [ %i.fc, %bb.an ], [ %i.fl, %bb.au ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCshMXdXt2UU3C_5norad8fontinfo8FontInfoEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.br)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCshMXdXt2UU3C_5norad8fontinfo8FontInfoEECs2zvA5OmMqFb_10ufo2fontir.exit unwind label %bb.iq

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCshMXdXt2UU3C_5norad8fontinfo8FontInfoNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBP_ECs2zvA5OmMqFb_10ufo2fontir.exit, %bb.x, %select.unfold, %.noexc559, %bb.ad, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VectEECs2zvA5OmMqFb_10ufo2fontir.exit.i, %bb.at, %.loopexit.i, %bb.jt
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCshMXdXt2UU3C_5norad8fontinfo8FontInfoNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBP_ECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %.noexc557
  %i.er = getelementptr inbounds i8, ptr %i.eh, i64 -1952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCshMXdXt2UU3C_5norad8fontinfo8FontInfoNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.br)
          to label %bb.ad unwind label %.loopexit.split-lp

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %.val537 = load ptr, ptr %i.de, align 8, !nonnull !4, !noundef !4
  %.val538 = load i64, ptr %i.dg, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1396
  invoke void @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinRNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val537, i64 noundef %.val538, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dd)
          to label %.noexc559 unwind label %.loopexit.split-lp

.noexc559:                                        ; preds = %select.unfold
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1396
  store i64 -9223372036854775807, ptr %i.o, align 8, !noalias !1396
  invoke void @_RINvMs_NtCs3v5ql5U6hxj_6fontir5errorNtB5_9BadSource3newNtNtCs5Xr050g3D4S_3std4path7PathBufNtB5_13BadSourceKindECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.ab unwind label %.loopexit.split-lp

bb.ab:                                            ; preds = %.noexc559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1396
  %.sroa.030.0.copyload = load i64, ptr %i.z, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.632.0.copyload = load ptr, ptr %.sroa.632.0..sroa_idx, align 8
  %.sroa.835.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.6321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6321.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.835.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.030.0.copyload, ptr %.sroa.4319.0..sroa_idx, align 8
  %.sroa.5320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.632.0.copyload, ptr %.sroa.5320.0..sroa_idx, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.as, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyNtNtCsgCecv3eZDcN_5alloc6string6StringEECs2zvA5OmMqFb_10ufo2fontir.exit626, %bb.ab
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCshMXdXt2UU3C_5norad8fontinfo8FontInfoEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.br)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCshMXdXt2UU3C_5norad8fontinfo8FontInfoEECs2zvA5OmMqFb_10ufo2fontir.exit562 unwind label %bb.b

bb.ad:                                            ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCshMXdXt2UU3C_5norad8fontinfo8FontInfoNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBP_ECs2zvA5OmMqFb_10ufo2fontir.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bp, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1397
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1397
  invoke void @_RINvNtNtCsf3Ta7LF998c_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesRNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCshMXdXt2UU3C_5norad8fontinfo8FontInfoENCINvNtCs2zvA5OmMqFb_10ufo2fontir6source12units_per_emB1k_E0EtINtNtB6_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error5ErrorENCINvXso_B4B_IB4z_INtNtB2j_3vec3VectEB4V_EINtNtNtB4_6traits7collect12FromIteratorIB4z_tB4V_EE9from_iterBQ_E0B5P_EB3F_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.bp)
          to label %.noexc564 unwind label %.loopexit.split-lp

.noexc564:                                        ; preds = %bb.ad
  %i.es = load i64, ptr %i.m, align 8, !range !22, !noalias !1397, !noundef !4 ; 2 uses
  %.not.i563 = icmp eq i64 %i.es, -1
  %i.et = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.6.i.sroa.0.0.copyload664 = load i16, ptr %i.et, align 8, !noalias !1397 ; 2 uses
  %.sroa.6.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6.i.sroa.7, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6.i.sroa.7.0..sroa_idx, i64 22, i1 false), !noalias !1397
  br i1 %.not.i563, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.noexc564
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13, i64 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(48) %.sroa.13.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.513.0..sroa_idx.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1397
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.13, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6.i.sroa.7, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.7)
  br label %bb.as

bb.af:                                            ; preds = %.noexc564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1397
  store i16 %.sroa.6.i.sroa.0.0.copyload664, ptr %i.n, align 8, !noalias !1397
  %.sroa.6.i.sroa.7.0..sroa_idx666 = getelementptr inbounds nuw i8, ptr %i.n, i64 2 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6.i.sroa.7.0..sroa_idx666, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6.i.sroa.7, i64 22, i1 false), !noalias !1397
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.7)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !1397, !nonnull !4, !noundef !4 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !1397, !noundef !4 ; 4 uses
  %i.ey = icmp ult i64 %i.ex, 2
  br i1 %i.ey, label %bb.ak, label %bb.ag, !prof !5

bb.ag:                                            ; preds = %bb.af
  %i.ez = icmp ult i64 %i.ex, 21
  br i1 %i.ez, label %bb.ai, label %bb.ah, !prof !5

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsorttNvYtNtNtB8_3cmp10PartialOrd2ltECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 2 %i.ev, i64 noundef %i.ex, ptr noalias nofree noundef nonnull %i.a)
          to label %bb.ak unwind label %bb.aj, !noalias !1397

bb.ai:                                            ; preds = %bb.ag
  invoke void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_lefttNvYtNtNtBa_3cmp10PartialOrd2ltECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 2 %i.ev, i64 noundef %i.ex, i64 noundef 1, ptr noalias nofree noundef nonnull %i.a)
          to label %bb.ak unwind label %bb.aj, !noalias !1397

bb.aj:                                            ; preds = %bb.ak, %bb.ai, %bb.ah
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VectEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #26
          to label %.body unwind label %bb.ar, !noalias !1397

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.af
  invoke void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VectE8dedup_byNCNvMs5_B5_Bv_5dedup0ECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.al unwind label %bb.aj, !noalias !1397

bb.al:                                            ; preds = %bb.ak
  %i.fb = load i64, ptr %i.ew, align 8, !noalias !1397, !noundef !4
  switch i64 %i.fb, label %bb.aq [
    i64 0, label %bb.am
    i64 1, label %bb.ap
  ]

bb.am:                                            ; preds = %bb.ap, %bb.al
  %.sink.i = phi i16 [ %i.ff, %bb.ap ], [ 1000, %bb.al ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VectENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VectEECs2zvA5OmMqFb_10ufo2fontir.exit.i unwind label %bb.an, !noalias !1397

bb.an:                                            ; preds = %bb.am
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVectENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body unwind label %bb.ao, !noalias !1397

bb.ao:                                            ; preds = %bb.an
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !noalias !1397
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VectEECs2zvA5OmMqFb_10ufo2fontir.exit.i: ; preds = %bb.am
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVectENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.at unwind label %.loopexit.split-lp

bb.ap:                                            ; preds = %bb.al
  %i.fe = load ptr, ptr %i.eu, align 8, !noalias !1397, !nonnull !4, !noundef !4
  %i.ff = load i16, ptr %i.fe, align 2, !noalias !1397, !noundef !4
  br label %bb.am

bb.aq:                                            ; preds = %bb.al
  %.sroa.8.8.copyload638 = load i16, ptr %i.n, align 8, !noalias !1398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.13, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6.i.sroa.7.0..sroa_idx666, i64 22, i1 false)
  br label %bb.as

bb.ar:                                            ; preds = %bb.aj
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !noalias !1397
  unreachable

bb.as:                                            ; preds = %bb.aq, %bb.ae
  %.sroa.8.0.ph = phi i16 [ %.sroa.6.i.sroa.0.0.copyload664, %bb.ae ], [ %.sroa.8.8.copyload638, %bb.aq ]
  %.sroa.0636.0.ph = phi i64 [ %i.es, %bb.ae ], [ -9223372036854775803, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  store i64 %.sroa.0636.0.ph, ptr %0, align 8
  %.sroa.4330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.8.0.ph, ptr %.sroa.4330.0..sroa_idx, align 8
  %.sroa.5331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(70) %.sroa.5331.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(70) %.sroa.13, i64 70, i1 false)
  br label %bb.ac

bb.at:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VectEECs2zvA5OmMqFb_10ufo2fontir.exit.i
end_hunk_0
begin_hunk_1_@_RNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB5_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1U_6WorkIdNtNtB1W_5error5ErrorE4exec:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6199.0..sroa_idx200, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6199, i64 40, i1 false)
  br label %.thread731

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEEECs2zvA5OmMqFb_10ufo2fontir.exit589: ; preds = %bb.gv, %bb.gw
  store ptr %.sroa.0196.0, ptr %i.rl, align 8
  %.sroa.6199.0..sroa_idx201 = getelementptr inbounds nuw i8, ptr %i.ar, i64 520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6199.0..sroa_idx201, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6199, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6199)
  %i.rp = getelementptr inbounds i8, ptr %i.eh, i64 -56
  %i.rq = load i32, ptr %i.rp, align 8, !range !28, !noundef !4
  %i.rr = trunc nuw i32 %i.rq to i1
  br i1 %i.rr, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEEECs2zvA5OmMqFb_10ufo2fontir.exit589
  %i.rs = getelementptr inbounds i8, ptr %i.eh, i64 -52
  %i.rt = getelementptr inbounds i8, ptr %i.eh, i64 -20
  %i.ru = load i32, ptr %i.rt, align 4, !noundef !4
  %i.rv = trunc i32 %i.ru to i8
  %i.rw = getelementptr inbounds i8, ptr %i.eh, i64 -16
  %i.rx = load i32, ptr %i.rw, align 8, !noundef !4
  %i.ry = trunc i32 %i.rx to i8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ar, i64 606
  %.sroa.4204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 607
  %i.sa = load <8 x i32>, ptr %i.rs, align 4
  %i.sb = trunc <8 x i32> %i.sa to <8 x i8>
  store i8 1, ptr %i.rz, align 2
  store <8 x i8> %i.sb, ptr %.sroa.4204.0..sroa_idx, align 1
  %.sroa.4204.sroa.11.0..sroa.4204.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 615
  store i8 %i.rv, ptr %.sroa.4204.sroa.11.0..sroa.4204.0..sroa_idx.sroa_idx, align 1
  %.sroa.4204.sroa.12.0..sroa.4204.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 616
  store i8 %i.ry, ptr %.sroa.4204.sroa.12.0..sroa.4204.0..sroa_idx.sroa_idx, align 8
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEEECs2zvA5OmMqFb_10ufo2fontir.exit589
  %i.sc = load i32, ptr %i.fr, align 8, !range !28, !noundef !4
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ar, i64 580 ; 2 uses
  %i.se = load i32, ptr %i.sd, align 4, !noundef !4
  %i.sf = trunc nuw i32 %i.sc to i1
  br i1 %i.sf, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.sg = load i32, ptr %i.fs, align 4
  br label %bb.hc

bb.hc:                                            ; preds = %bb.ha, %bb.hb
  %.sroa.0216.0 = phi i32 [ %i.sg, %bb.hb ], [ %i.se, %bb.ha ]
  store i32 %.sroa.0216.0, ptr %i.sd, align 4
  %i.sh = load i32, ptr %i.ft, align 8, !range !28, !noundef !4
  %i.si = getelementptr inbounds nuw i8, ptr %i.ar, i64 584 ; 2 uses
  %i.sj = load i32, ptr %i.si, align 8, !noundef !4
  %i.sk = trunc nuw i32 %i.sh to i1
  br i1 %i.sk, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.sl = load i32, ptr %i.fu, align 4
  br label %bb.he

bb.he:                                            ; preds = %bb.hc, %bb.hd
  %.sroa.0220.0 = phi i32 [ %i.sl, %bb.hd ], [ %i.sj, %bb.hc ]
  store i32 %.sroa.0220.0, ptr %i.si, align 8
  %i.sm = getelementptr inbounds i8, ptr %i.eh, i64 -336
  %i.sn = load i32, ptr %i.sm, align 8, !range !28, !noundef !4
  %i.so = trunc nuw i32 %i.sn to i1
  br i1 %i.so, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.sp = getelementptr inbounds i8, ptr %i.eh, i64 -332
  %i.sq = load i32, ptr %i.sp, align 4
  %i.sr = trunc i32 %i.sq to i16
  br label %bb.hh

bb.hg:                                            ; preds = %bb.he
  %i.ss = getelementptr inbounds nuw i8, ptr %i.ar, i64 604
  %i.st = load i16, ptr %i.ss, align 4, !noundef !4
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hf, %bb.hg
  %.sroa.0226.0 = phi i16 [ %i.st, %bb.hg ], [ %i.sr, %bb.hf ]
  %i.su = getelementptr inbounds nuw i8, ptr %i.ar, i64 604
  store i16 %.sroa.0226.0, ptr %i.su, align 4
  %i.sv = getelementptr inbounds i8, ptr %i.eh, i64 -1560
  %i.sw = load i64, ptr %i.sv, align 8, !range !7, !noundef !4
  %.not485 = icmp eq i64 %i.sw, -1
  br i1 %.not485, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.sx = getelementptr i8, ptr %i.eh, i64 -1552
  %.val550 = load ptr, ptr %i.sx, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.sy = getelementptr i8, ptr %i.eh, i64 -1544
  %.val551 = load i64, ptr %i.sy, align 8, !noundef !4 ; 9 uses
  %i.sz = icmp samesign eq i64 %.val551, 0
  br i1 %i.sz, label %_RNCNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB7_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1W_6WorkIdNtNtB1Y_5error5ErrorE4execsg_0B9_.exit, label %iter.check881

iter.check881:                                    ; preds = %bb.hi
  %min.iters.check864 = icmp ult i64 %.val551, 8
  br i1 %min.iters.check864, label %.preheader.i590.preheader, label %vector.main.loop.iter.check865

vector.main.loop.iter.check865:                   ; preds = %iter.check881
  %min.iters.check866 = icmp ult i64 %.val551, 16
  br i1 %min.iters.check866, label %vec.epilog.ph885, label %vector.ph867

vector.ph867:                                     ; preds = %vector.main.loop.iter.check865
  %i.ta = and i64 %.val551, 8
  %n.vec868 = and i64 %.val551, -16               ; 4 uses
  br label %vector.body869

vector.body869:                                   ; preds = %vector.ph867, %vector.body869
  %index870 = phi i64 [ 0, %vector.ph867 ], [ %index.next875, %vector.body869 ] ; 2 uses
  %vec.phi871 = phi <8 x i16> [ zeroinitializer, %vector.ph867 ], [ %i.tj, %vector.body869 ]
  %vec.phi872 = phi <8 x i16> [ zeroinitializer, %vector.ph867 ], [ %i.tk, %vector.body869 ]
  %i.tb = getelementptr inbounds nuw i8, ptr %.val550, i64 %index870 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %wide.load873 = load <8 x i8>, ptr %i.tb, align 1
  %wide.load874 = load <8 x i8>, ptr %i.tc, align 1
  %i.td = and <8 x i8> %wide.load873, splat (i8 15)
  %i.te = and <8 x i8> %wide.load874, splat (i8 15)
  %i.tf = zext nneg <8 x i8> %i.td to <8 x i16>
  %i.tg = zext nneg <8 x i8> %i.te to <8 x i16>
  %i.th = shl nuw <8 x i16> splat (i16 1), %i.tf
  %i.ti = shl nuw <8 x i16> splat (i16 1), %i.tg
  %i.tj = or <8 x i16> %i.th, %vec.phi871         ; 2 uses
  %i.tk = or <8 x i16> %i.ti, %vec.phi872         ; 2 uses
  %index.next875 = add nuw i64 %index870, 16      ; 2 uses
  %i.tl = icmp eq i64 %index.next875, %n.vec868
  br i1 %i.tl, label %middle.block876, label %vector.body869, !llvm.loop !1356

middle.block876:                                  ; preds = %vector.body869
  %bin.rdx877 = or <8 x i16> %i.tk, %i.tj
  %i.tm = call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %bin.rdx877) ; 3 uses
  %cmp.n878 = icmp eq i64 %.val551, %n.vec868
  br i1 %cmp.n878, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters3map8map_foldRhttNCNCNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB2p_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4f_6WorkIdNtNtB4h_5error5ErrorE4execsg_00NCB2h_s_0E0EB2r_.exit.loopexit.i, label %vec.epilog.iter.check883

vec.epilog.iter.check883:                         ; preds = %middle.block876
  %min.epilog.iters.check884.not.not = icmp eq i64 %i.ta, 0
  br i1 %min.epilog.iters.check884.not.not, label %.preheader.i590.preheader, label %vec.epilog.ph885, !prof !1412

vec.epilog.ph885:                                 ; preds = %vector.main.loop.iter.check865, %vec.epilog.iter.check883
  %vec.epilog.resume.val879 = phi i64 [ %n.vec868, %vec.epilog.iter.check883 ], [ 0, %vector.main.loop.iter.check865 ]
  %bc.merge.rdx880 = phi i16 [ %i.tm, %vec.epilog.iter.check883 ], [ 0, %vector.main.loop.iter.check865 ]
  %n.vec886 = and i64 %.val551, -8                ; 3 uses
  %i.tn = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx880, i64 0
  br label %vec.epilog.vector.body887

vec.epilog.vector.body887:                        ; preds = %vec.epilog.vector.body887, %vec.epilog.ph885
  %index888 = phi i64 [ %vec.epilog.resume.val879, %vec.epilog.ph885 ], [ %index.next891, %vec.epilog.vector.body887 ] ; 2 uses
  %vec.phi889 = phi <8 x i16> [ %i.tn, %vec.epilog.ph885 ], [ %i.ts, %vec.epilog.vector.body887 ]
  %i.to = getelementptr inbounds nuw i8, ptr %.val550, i64 %index888
  %wide.load890 = load <8 x i8>, ptr %i.to, align 1
  %i.tp = and <8 x i8> %wide.load890, splat (i8 15)
  %i.tq = zext nneg <8 x i8> %i.tp to <8 x i16>
  %i.tr = shl nuw <8 x i16> splat (i16 1), %i.tq
  %i.ts = or <8 x i16> %i.tr, %vec.phi889         ; 2 uses
  %index.next891 = add nuw i64 %index888, 8       ; 2 uses
  %i.tt = icmp eq i64 %index.next891, %n.vec886
  br i1 %i.tt, label %vec.epilog.middle.block892, label %vec.epilog.vector.body887, !llvm.loop !1357

vec.epilog.middle.block892:                       ; preds = %vec.epilog.vector.body887
  %i.tu = call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.ts) ; 2 uses
  %cmp.n893 = icmp eq i64 %.val551, %n.vec886
  br i1 %cmp.n893, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters3map8map_foldRhttNCNCNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB2p_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4f_6WorkIdNtNtB4h_5error5ErrorE4execsg_00NCB2h_s_0E0EB2r_.exit.loopexit.i, label %.preheader.i590.preheader

.preheader.i590.preheader:                        ; preds = %iter.check881, %vec.epilog.iter.check883, %vec.epilog.middle.block892
  %.sroa.04.0.i.i591.ph = phi i64 [ 0, %iter.check881 ], [ %n.vec868, %vec.epilog.iter.check883 ], [ %n.vec886, %vec.epilog.middle.block892 ]
  %.sroa.02.0.i.i592.ph = phi i16 [ 0, %iter.check881 ], [ %i.tm, %vec.epilog.iter.check883 ], [ %i.tu, %vec.epilog.middle.block892 ]
  br label %.preheader.i590

.preheader.i590:                                  ; preds = %.preheader.i590.preheader, %.preheader.i590
  %.sroa.04.0.i.i591 = phi i64 [ %i.ua, %.preheader.i590 ], [ %.sroa.04.0.i.i591.ph, %.preheader.i590.preheader ] ; 2 uses
  %.sroa.02.0.i.i592 = phi i16 [ %i.tz, %.preheader.i590 ], [ %.sroa.02.0.i.i592.ph, %.preheader.i590.preheader ]
  %i.tv = getelementptr inbounds nuw i8, ptr %.val550, i64 %.sroa.04.0.i.i591
  %.val.i.i593 = load i8, ptr %i.tv, align 1, !noundef !4
  %i.tw = and i8 %.val.i.i593, 15
  %i.tx = zext nneg i8 %i.tw to i16
  %i.ty = shl nuw i16 1, %i.tx
  %i.tz = or i16 %i.ty, %.sroa.02.0.i.i592        ; 2 uses
  %i.ua = add nuw i64 %.sroa.04.0.i.i591, 1       ; 2 uses
  %i.ub = icmp eq i64 %i.ua, %.val551
  br i1 %i.ub, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters3map8map_foldRhttNCNCNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB2p_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4f_6WorkIdNtNtB4h_5error5ErrorE4execsg_00NCB2h_s_0E0EB2r_.exit.loopexit.i, label %.preheader.i590, !llvm.loop !1358

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters3map8map_foldRhttNCNCNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB2p_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4f_6WorkIdNtNtB4h_5error5ErrorE4execsg_00NCB2h_s_0E0EB2r_.exit.loopexit.i: ; preds = %.preheader.i590, %vec.epilog.middle.block892, %middle.block876
  %.lcssa = phi i16 [ %i.tu, %vec.epilog.middle.block892 ], [ %i.tm, %middle.block876 ], [ %i.tz, %.preheader.i590 ]
  %i.uc = and i16 %.lcssa, 30751
  br label %_RNCNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB7_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1W_6WorkIdNtNtB1Y_5error5ErrorE4execsg_0B9_.exit

bb.hj:                                            ; preds = %bb.hh
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ar, i64 602
  %i.ue = load i16, ptr %i.ud, align 2, !noundef !4
  br label %_RNCNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB7_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1W_6WorkIdNtNtB1Y_5error5ErrorE4execsg_0B9_.exit

_RNCNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB7_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1W_6WorkIdNtNtB1Y_5error5ErrorE4execsg_0B9_.exit: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters3map8map_foldRhttNCNCNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB2p_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4f_6WorkIdNtNtB4h_5error5ErrorE4execsg_00NCB2h_s_0E0EB2r_.exit.loopexit.i, %bb.hi, %bb.hj
  %.sroa.0230.0 = phi i16 [ %i.ue, %bb.hj ], [ 0, %bb.hi ], [ %i.uc, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters3map8map_foldRhttNCNCNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB2p_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4f_6WorkIdNtNtB4h_5error5ErrorE4execsg_00NCB2h_s_0E0EB2r_.exit.loopexit.i ]
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ar, i64 602
  store i16 %.sroa.0230.0, ptr %i.uf, align 2
  %i.ug = getelementptr inbounds i8, ptr %i.eh, i64 -12
  %i.uh = load i8, ptr %i.ug, align 4, !range !24, !noundef !4
  %i.ui = trunc nuw i8 %i.uh to i1
  br i1 %i.ui, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %_RNCNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB7_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1W_6WorkIdNtNtB1Y_5error5ErrorE4execsg_0B9_.exit
  %i.uj = getelementptr inbounds i8, ptr %i.eh, i64 -11
  %.val552 = load i16, ptr %i.uj, align 1
  %3 = call i16 @llvm.bswap.i16(i16 %.val552)
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %_RNCNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB7_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1W_6WorkIdNtNtB1Y_5error5ErrorE4execsg_0B9_.exit
  %.sroa.0231.0 = phi i16 [ 0, %_RNCNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB7_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1W_6WorkIdNtNtB1Y_5error5ErrorE4execsg_0B9_.exit ], [ 1, %bb.hk ]
  %.sroa.5232.0 = phi i16 [ undef, %_RNCNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB7_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB1W_6WorkIdNtNtB1Y_5error5ErrorE4execsg_0B9_.exit ], [ %3, %bb.hk ]
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ar, i64 564
  store i16 %.sroa.0231.0, ptr %i.uk, align 4
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ar, i64 566
  store i16 %.sroa.5232.0, ptr %i.ul, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.um = getelementptr inbounds i8, ptr %i.eh, i64 -1584 ; 2 uses
  %i.un = load i64, ptr %i.um, align 8, !range !7, !noundef !4
  %.not486 = icmp eq i64 %i.un, -1
  %.523 = select i1 %.not486, ptr null, ptr %i.um
  invoke fastcc void @_RNvNtCs2zvA5OmMqFb_10ufo2fontir6source14try_parse_date(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.523)
          to label %bb.hm unwind label %.thread743

bb.hm:                                            ; preds = %bb.hl
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ar, i64 588 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ah, ptr noundef nonnull align 4 dereferenceable(12) %i.uo, i64 12, i1 false)
  %i.up = load i32, ptr %i.ai, align 4, !noundef !4
  %.not487 = icmp eq i32 %i.up, 0
  br i1 %.not487, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ah, ptr noundef nonnull align 4 dereferenceable(12) %i.ai, i64 12, i1 false)
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hm, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.uo, ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.uq = invoke noundef align 16 ptr @_RINvMs3_NtCsbeZck1VjBmm_8indexmap3mapINtB6_8IndexMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsaGmGRvprAGn_5plist5value5ValueE3geteECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 19)
          to label %bb.hp unwind label %.thread743 ; 2 uses

bb.hp:                                            ; preds = %bb.ho
  %.not488 = icmp eq ptr %i.uq, null
  br i1 %.not488, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  invoke fastcc void @_RNvNtCs2zvA5OmMqFb_10ufo2fontir6source23parse_meta_table_values(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.ag, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(80) %i.uq)
          to label %bb.hs unwind label %.thread743

bb.hr:                                            ; preds = %bb.hp
  store i64 -1, ptr %i.ag, align 8
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hq, %bb.hr
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ar, i64 392 ; 4 uses
  %i.us = load i64, ptr %i.ur, align 8, !range !7, !alias.scope !1419, !noundef !4
  %i.ut = icmp eq i64 %i.us, -1
  br i1 %i.ut, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata15MetaTableValuesEECs2zvA5OmMqFb_10ufo2fontir.exit, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata15MetaTableValuesECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ur)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata15MetaTableValuesEECs2zvA5OmMqFb_10ufo2fontir.exit unwind label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.uu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ur, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 48, i1 false)
  br label %.thread731

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata15MetaTableValuesEECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.hs, %bb.ht
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ur, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke fastcc void @_RNvNtCs2zvA5OmMqFb_10ufo2fontir6source24feature_writers_from_lib(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.jj)
          to label %bb.hv unwind label %.thread743

bb.hv:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata15MetaTableValuesEECs2zvA5OmMqFb_10ufo2fontir.exit
  %i.uv = load i64, ptr %i.af, align 8, !range !22, !noundef !4 ; 2 uses
  %.not489 = icmp eq i64 %i.uv, -1
  %i.uw = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6239, ptr noundef nonnull align 8 dereferenceable(24) %i.uw, i64 24, i1 false)
  br i1 %.not489, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %.sroa.5451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.5454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5454.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5451.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %.sroa.4453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4453.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6239, i64 24, i1 false)
  store i64 %i.uv, ptr %0, align 8
  br label %bb.gl

bb.hx:                                            ; preds = %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ar, i64 440 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs3v5ql5U6hxj_6fontir2ir15feature_writers17FeatureWriterSpecEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ux)
          to label %bb.hz unwind label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.uy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ux, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6239, i64 24, i1 false)
  br label %.thread731

bb.hz:                                            ; preds = %bb.hx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ux, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6239, i64 24, i1 false)
  %i.uz = getelementptr inbounds i8, ptr %i.eh, i64 -1608
  %i.va = load i64, ptr %i.uz, align 8, !range !7, !noundef !4
  %.not490 = icmp eq i64 %i.va, -1
  br i1 %.not490, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.vb = getelementptr inbounds i8, ptr %i.eh, i64 -1600
  %i.vc = load ptr, ptr %i.vb, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.vd = getelementptr inbounds i8, ptr %i.eh, i64 -1592
  %i.ve = load i64, ptr %i.vd, align 8, !noundef !4
  %i.vf = getelementptr inbounds nuw [32 x i8], ptr %i.vc, i64 %i.ve
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp9GaspRangeEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2A_5slice4iter4IterNtNtCshMXdXt2UU3C_5norad8fontinfo15GaspRangeRecordENCNvXs0_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB4D_18StaticMetadataWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB6t_6WorkIdNtNtB6v_5error5ErrorE4execsi_0EE9from_iterB4F_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noundef nonnull %i.vc, ptr noundef nonnull %i.vf)
          to label %bb.ic unwind label %.thread743

bb.ib:                                            ; preds = %bb.hz, %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.bk, i64 48, i1 false)
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ar, i64 624 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata15VariableFeatureEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(48) %i.vg)
          to label %bb.ig unwind label %bb.if

bb.ic:                                            ; preds = %bb.ia
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp9GaspRangeEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.om)
          to label %bb.ie unwind label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.vh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.om, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  br label %.thread731

bb.ie:                                            ; preds = %bb.ic
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.om, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ib

bb.if:                                            ; preds = %bb.ib
  %i.vi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.vg, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false)
  br label %.thread731

bb.ig:                                            ; preds = %bb.ib
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.vg, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.vj = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noundef nonnull align 8 dereferenceable(72) %i.ay, i64 72, i1 false)
  invoke void @_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtB5_6WorkIdNtNtB7_2ir10GlyphOrderE3setCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.ac)
          to label %bb.ih unwind label %.thread743

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(832) %i.ab, ptr noundef nonnull align 8 dereferenceable(832) %i.ar, i64 832, i1 false)
  invoke void @_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtB5_6WorkIdNtNtNtB7_2ir15static_metadata14StaticMetadataE3setCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(832) %i.ab)
          to label %bb.ii unwind label %.thread774

.thread774:                                       ; preds = %bb.ih
  %lpad.thr_comm.split-lp776 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1S_EEECs2zvA5OmMqFb_10ufo2fontir.exit615

bb.ii:                                            ; preds = %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.vk = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(56) %i.at, i64 56, i1 false)
  invoke void @_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtB5_6WorkIdNtNtNtB7_2ir15static_metadata25PreliminaryGdefCategoriesE3setCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.aa)
          to label %bb.ij unwind label %bb.fl

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.vl = trunc nuw i8 %.sroa.0247.3 to i1
  br i1 %i.vl, label %bb.ik, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEECs2zvA5OmMqFb_10ufo2fontir.exit597

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEECs2zvA5OmMqFb_10ufo2fontir.exit597: ; preds = %bb.ik, %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaGmGRvprAGn_5plist10dictionary10DictionaryECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(72) %i.bb)
          to label %bb.il unwind label %bb.ec

bb.ik:                                            ; preds = %bb.ij
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEECs2zvA5OmMqFb_10ufo2fontir.exit597 unwind label %bb.ev

bb.il:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEECs2zvA5OmMqFb_10ufo2fontir.exit597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %bb.im unwind label %bb.dn

bb.im:                                            ; preds = %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTReNtNtCsbZq13ASDQ8l_10font_types3tag3TagEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bl)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapReNtNtCsbZq13ASDQ8l_10font_types3tag3TagEECs2zvA5OmMqFb_10ufo2fontir.exit599 unwind label %bb.df

end_hunk_1
begin_hunk_2_@_RNvMsl_NtCs3v5ql5U6hxj_6fontir2irNtB5_13AnchorBuilder3new

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs2zvA5OmMqFb_10ufo2fontir4toir11to_ir_glyph(ptr dead_on_unwind noalias nofree noundef writable sret([152 x i8]) align 8 captures(none) dereferenceable(152), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i1 noundef zeroext, i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 288230376151711744), ptr noalias nofree noundef align 8 dereferenceable(96)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsl_NtCs3v5ql5U6hxj_6fontir2irNtB5_13AnchorBuilder5build(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_10ContextMapNtB5_6WorkIdNtNtB7_2ir12GlyphAnchorsE3setCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_10ContextMapNtB5_6WorkIdNtNtB7_2ir5GlyphE3setCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(152)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB16_15NormalizedSpaceEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2Q_5slice4iter4IterIB14_NtB16_11DesignSpaceEENCNvXs6_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB4u_11GlyphIrWorkINtNtB18_13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB5R_6WorkIdNtNtB5T_5error5ErrorE4exec0EE9from_iterB4w_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtCs3v5ql5U6hxj_6fontir2irNtB5_13ColorPalettes3new(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtB5_6WorkIdNtNtB7_2ir13ColorPalettesE3setCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB4_11ContextItemNtB4_6WorkIdNtNtB6_2ir13ColorPalettesE7try_getCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtB5_6WorkIdNtNtB7_2ir11ColorGlyphsE3setCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1b_NtCs5Xr050g3D4S_3std4pathNtB6_7DisplayNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtCshMXdXt2UU3C_5norad5errorNtB5_20DesignSpaceLoadErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEE9drop_slowCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenEE9drop_slowB10_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameIBH_NtNtBP_4path7PathBufINtNtB7_3vec3VecINtNtB1F_6coords8LocationNtB32_11DesignSpaceEEEEE9drop_slowCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE9drop_slowCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13ColorPalettesE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs5Xr050g3D4S_3std4path7PathBufE9drop_slowCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshMXdXt2UU3C_5norad11designspace19DesignSpaceDocumentE9drop_slowCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCscScJTt9VrQp_6fea_rs5parse6source10SourceListE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCscScJTt9VrQp_6fea_rs5parse6source9SourceMapE9drop_slowCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorE9drop_slowCsaGmGRvprAGn_5plist(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtB1G_4path7PathBufINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBR_6coords8LocationNtB3n_11DesignSpaceEEENtNtNtB1G_4hash6random11RandomStateE4iterCs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtB1D_4path7PathBufINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBO_6coords8LocationNtB3k_11DesignSpaceEEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCsbeZck1VjBmm_8indexmap3mapINtB2_8IndexMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsaGmGRvprAGn_5plist5value5ValueENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsf3Ta7LF998c_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCshMXdXt2UU3C_5norad11designspace4AxisENCNvXs_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB2k_19DesignSpaceIrSourceNtNtCs3v5ql5U6hxj_6fontir6source6Source3news_0ETReNtNtCsbZq13ASDQ8l_10font_types3tag3TagEINtNtB6_6result6ResultzNtNtB3o_5error5ErrorENCINvXso_B4O_IB4M_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB46_B48_EB58_EINtNtNtB4_6traits7collect12FromIteratorIB4M_B45_B58_EE9from_iterBQ_E0B5L_EB2m_(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEE9from_iterCs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtB2e_5slice4iter4IterNtNtCshMXdXt2UU3C_5norad11designspace6SourceENCNvXs_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB4o_19DesignSpaceIrSourceNtNtCs3v5ql5U6hxj_6fontir6source6Source3news1_0EE9from_iterB4q_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsA_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs5Xr050g3D4S_3std2fs8metadataRNtNtB4_4path4PathECs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtB1H_4path7PathBufINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBS_6coords8LocationNtB3o_11DesignSpaceEEENtNtNtB1H_4hash6random11RandomStateE12contains_keyBO_ECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsbDKHzkXHCUM_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtB1S_4path7PathBufINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB13_6coords8LocationNtB3z_11DesignSpaceEEENtNtNtB1S_4hash6random11RandomStateE11rustc_entryCs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsbDKHzkXHCUM_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs5Xr050g3D4S_3std4path7PathBufINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB28_11DesignSpaceEENtNtNtB13_4hash6random11RandomStateE11rustc_entryCs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_11DesignSpaceEEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsW_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshMXdXt2UU3C_5norad11designspace19DesignSpaceDocumentENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENtB6_5Debug3fmtCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshMXdXt2UU3C_5norad11designspace19DesignSpaceDocumentENtB6_5Debug3fmtCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBB_3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEENtB6_5Debug3fmtCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBz_15NormalizedSpaceENtB6_5Debug3fmtCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCsf3Ta7LF998c_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsaGmGRvprAGn_5plist10dictionary10DictionaryNtB6_5Debug3fmtCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtBF_4path7PathBufINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2l_11DesignSpaceEEENtB6_5Debug3fmtCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsaGmGRvprAGn_5plist5value5ValueENtB6_5Debug3fmtCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRbNtB6_5Debug3fmtCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_5Debug3fmtCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsaGmGRvprAGn_5plist4date4DateNtB6_5Debug3fmtCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRdNtB6_5Debug3fmtCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsaGmGRvprAGn_5plist7integer7IntegerNtB6_5Debug3fmtCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_5Debug3fmtCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsaGmGRvprAGn_5plist3uid3UidNtB6_5Debug3fmtCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsaGmGRvprAGn_5plist5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2zvA5OmMqFb_10ufo2fontir(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsgdm2QMcbaeA_10fontdrasil5typesNtB2_9GlyphName5empty(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v8i16(<8 x i16>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.rint.v2f64(<2 x double>) #18

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { noinline }
attributes #26 = { cold }
attributes #27 = { nounwind }
attributes #28 = { noinline noreturn }
attributes #29 = { noreturn }
attributes #30 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i64 -1, i64 -9223372036854775808}
!8 = !{i64 0, i64 3}
!9 = !{i64 -1, i64 3}
!10 = !{i8 0, i8 26}
!11 = !{i64 0, i64 -9223372036854775808}
!12 = !{i8 -1, i8 28}
!13 = !{i64 0, i64 5}
!14 = !{i64 0, i64 2}
!15 = !{i64 0, i64 -9223372036854775803}
!16 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!17 = !{i64 0, i64 -9223372036854775799}
!18 = !{i64 1, i64 0}
!19 = !{i64 -1, i64 -9223372036854775789}
!20 = !{i64 -1, i64 -9223372036854775799}
!21 = !{i64 8}
!22 = !{i64 -1, i64 -9223372036854775777}
!23 = !{!"address", !"read_provenance"}
!24 = !{i8 0, i8 2}
!25 = !{i64 0, i64 -9223372036854775807}
!26 = !{i8 -1, i8 4}
!27 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!28 = !{i32 0, i32 2}
!29 = distinct !{!29, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyNtNtCsgCecv3eZDcN_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1J_E0ECs2zvA5OmMqFb_10ufo2fontir"}
!30 = distinct !{!30, !29, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyNtNtCsgCecv3eZDcN_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1J_E0ECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!31 = distinct !{!31, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!32 = distinct !{!32, !31, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!33 = distinct !{!33, !31, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!34 = distinct !{!34, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!35 = distinct !{!35, !34, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!36 = distinct !{!36, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyNtNtCsgCecv3eZDcN_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1L_E0E0Cs2zvA5OmMqFb_10ufo2fontir"}
!37 = distinct !{!37, !36, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyNtNtCsgCecv3eZDcN_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1L_E0E0Cs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!38 = !{!30}
!39 = !{!32}
!40 = !{!32, !30}
!41 = !{!33}
!42 = !{!35, !32, !33, !30}
!43 = !{!37, !32, !33, !30}
!44 = distinct !{!44, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNCNvXs5_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtBL_19KerningInstanceWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB2B_6WorkIdNtNtB2D_5error5ErrorE4execs1_00EBN_"}
!45 = distinct !{!45, !44, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNCNvXs5_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtBL_19KerningInstanceWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB2B_6WorkIdNtNtB2D_5error5ErrorE4execs1_00EBN_: argument 0"}
!46 = distinct !{!46, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshMXdXt2UU3C_5norad4name4NameECs2zvA5OmMqFb_10ufo2fontir"}
!47 = distinct !{!47, !46, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshMXdXt2UU3C_5norad4name4NameECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!48 = distinct !{!48, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECs2zvA5OmMqFb_10ufo2fontir"}
!49 = distinct !{!49, !48, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!50 = distinct !{!50, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir"}
!51 = distinct !{!51, !50, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!52 = distinct !{!52, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterNtNtCshMXdXt2UU3C_5norad4name4NamedENCNCNvXs5_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB2S_19KerningInstanceWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4J_6WorkIdNtNtB4L_5error5ErrorE4execs1_00EEB2U_"}
!53 = distinct !{!53, !52, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterNtNtCshMXdXt2UU3C_5norad4name4NamedENCNCNvXs5_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtB2S_19KerningInstanceWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB4J_6WorkIdNtNtB4L_5error5ErrorE4execs1_00EEB2U_: argument 0"}
!54 = distinct !{!54, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNCNvXs5_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtBL_19KerningInstanceWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB2B_6WorkIdNtNtB2D_5error5ErrorE4execs1_00EBN_"}
!55 = distinct !{!55, !54, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNCNvXs5_NtCs2zvA5OmMqFb_10ufo2fontir6sourceNtBL_19KerningInstanceWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextNtB2B_6WorkIdNtNtB2D_5error5ErrorE4execs1_00EBN_: argument 0"}
!56 = distinct !{!56, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshMXdXt2UU3C_5norad4name4NameECs2zvA5OmMqFb_10ufo2fontir"}
!57 = distinct !{!57, !56, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshMXdXt2UU3C_5norad4name4NameECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!58 = distinct !{!58, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECs2zvA5OmMqFb_10ufo2fontir"}
!59 = distinct !{!59, !58, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!60 = distinct !{!60, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir"}
!61 = distinct !{!61, !60, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!62 = !{!45}
!63 = !{!47}
!64 = !{!49}
!65 = !{!51}
!66 = !{!51, !49, !47, !45, !53}
!67 = !{!51, !49, !47, !45}
!68 = !{!55}
!69 = !{!57}
!70 = !{!59}
!71 = !{!61}
!72 = !{!61, !59, !57, !55, !53}
!73 = !{!61, !59, !57, !55}
!74 = distinct !{!74, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECs2zvA5OmMqFb_10ufo2fontir"}
!75 = distinct !{!75, !74, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!76 = distinct !{!76, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir"}
!77 = distinct !{!77, !76, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!78 = distinct !{!78, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir"}
!79 = distinct !{!79, !78, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!80 = distinct !{!80, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECs2zvA5OmMqFb_10ufo2fontir"}
!81 = distinct !{!81, !80, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!82 = distinct !{!82, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECs2zvA5OmMqFb_10ufo2fontir"}
!83 = distinct !{!83, !82, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!84 = distinct !{!84, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir"}
!85 = distinct !{!85, !84, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!86 = distinct !{!86, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupECs2zvA5OmMqFb_10ufo2fontir"}
!87 = distinct !{!87, !86, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!88 = distinct !{!88, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir"}
!89 = distinct !{!89, !88, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!90 = distinct !{!90, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECs2zvA5OmMqFb_10ufo2fontir"}
!91 = distinct !{!91, !90, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!92 = distinct !{!92, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECs2zvA5OmMqFb_10ufo2fontir"}
!93 = distinct !{!93, !92, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!94 = distinct !{!94, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir"}
!95 = distinct !{!95, !94, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!96 = distinct !{!96, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir"}
!97 = distinct !{!97, !96, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!98 = distinct !{!98, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECs2zvA5OmMqFb_10ufo2fontir"}
!99 = distinct !{!99, !98, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!100 = distinct !{!100, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECs2zvA5OmMqFb_10ufo2fontir"}
!101 = distinct !{!101, !100, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!102 = distinct !{!102, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir"}
!103 = distinct !{!103, !102, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!104 = !{!75}
!105 = !{!77}
!106 = !{!79}
!107 = !{!81}
!108 = !{!81, !79, !77, !75}
!109 = !{!83}
!110 = !{!85}
!111 = !{!85, !83, !81, !79, !77, !75}
!112 = !{!87}
!113 = !{!89}
!114 = !{!91}
!115 = !{!91, !89, !87, !75}
!116 = !{!93}
!117 = !{!95}
!118 = !{!95, !93, !91, !89, !87, !75}
!119 = !{!97}
!120 = !{!99}
!121 = !{!99, !97, !87, !75}
!122 = !{!101}
!123 = !{!103}
!124 = !{!103, !101, !99, !97, !87, !75}
!125 = distinct !{!125, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span5InnerECs2zvA5OmMqFb_10ufo2fontir"}
!126 = distinct !{!126, !125, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span5InnerECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!127 = distinct !{!127, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6CpVowoi7NE_12tracing_core10dispatcher8DispatchECs2zvA5OmMqFb_10ufo2fontir"}
!128 = distinct !{!128, !127, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6CpVowoi7NE_12tracing_core10dispatcher8DispatchECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!129 = distinct !{!129, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6CpVowoi7NE_12tracing_core10dispatcher4KindINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECs2zvA5OmMqFb_10ufo2fontir"}
!130 = distinct !{!130, !129, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6CpVowoi7NE_12tracing_core10dispatcher4KindINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!131 = distinct !{!131, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECs2zvA5OmMqFb_10ufo2fontir"}
!132 = distinct !{!132, !131, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!133 = distinct !{!133, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir"}
!134 = distinct !{!134, !133, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!135 = !{!126}
!136 = !{!128}
!137 = !{!130}
!138 = !{!132}
!139 = !{!134}
!140 = !{!134, !132, !130, !128, !126}
!141 = distinct !{!141, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshMXdXt2UU3C_5norad11designspace12AxisMappingsECs2zvA5OmMqFb_10ufo2fontir"}
!142 = distinct !{!142, !141, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshMXdXt2UU3C_5norad11designspace12AxisMappingsECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!143 = distinct !{!143, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs2zvA5OmMqFb_10ufo2fontir"}
!144 = distinct !{!144, !143, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!145 = !{!144, !142}
!146 = distinct !{!146, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshMXdXt2UU3C_5norad8fontinfo18WoffMetadataVendorECs2zvA5OmMqFb_10ufo2fontir"}
!147 = distinct !{!147, !146, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshMXdXt2UU3C_5norad8fontinfo18WoffMetadataVendorECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!148 = distinct !{!148, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs2zvA5OmMqFb_10ufo2fontir"}
!149 = distinct !{!149, !148, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!150 = !{!149, !147}
!151 = distinct !{!151, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshMXdXt2UU3C_5norad8fontinfo19WoffMetadataLicenseECs2zvA5OmMqFb_10ufo2fontir"}
!152 = distinct !{!152, !151, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshMXdXt2UU3C_5norad8fontinfo19WoffMetadataLicenseECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!153 = distinct !{!153, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs2zvA5OmMqFb_10ufo2fontir"}
!154 = distinct !{!154, !153, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!155 = distinct !{!155, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs2zvA5OmMqFb_10ufo2fontir"}
!156 = distinct !{!156, !155, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!157 = !{!154, !152}
!158 = !{!156, !152}
!159 = distinct !{!159, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshMXdXt2UU3C_5norad8fontinfo20WoffMetadataLicenseeECs2zvA5OmMqFb_10ufo2fontir"}
end_hunk_2
