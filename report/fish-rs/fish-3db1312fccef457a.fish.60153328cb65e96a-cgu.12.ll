Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.12?download=true
inline.NumInlined: 2410
inline.NumDeleted: 784
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 27
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvNtCs8frGy5WneL6_4fish4path19make_base_directory:bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body34 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.body34:                                          ; preds = %bb.l, %bb.n
  %eh.lpad-body35 = phi { ptr, i32 } [ %i.ah, %bb.n ], [ %i.af, %bb.l ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !3090)
  call void @llvm.experimental.noalias.scope.decl(metadata !3091)
  call void @llvm.experimental.noalias.scope.decl(metadata !3092)
  %i.ai = load ptr, ptr %i.m, align 8, !alias.scope !3093, !nonnull !9, !noundef !9
  %i.aj = atomicrmw add ptr %i.ai, i64 -1 release, align 8, !noalias !3093
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit38

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit38 unwind label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit38: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit52, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit38
  %.sroa.0.0 = phi i8 [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit38 ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit52 ], [ 0, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.al = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !9, !noundef !9
  %i.am = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !9
  invoke void @_RNvCskr4qsHYS30i_15fish_widestring12wcs2osstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.al, i64 noundef %i.am)
          to label %.peel.begin unwind label %bb.b

bb.q:                                             ; preds = %bb.u, %bb.f, %bb.bm, %bb.bn, %bb.bp, %.loopexit.split-lp
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.r:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.j, align 8, !noundef !9
  %.not15 = icmp eq ptr %i.ao, null
  br i1 %.not15, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar9as_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.w unwind label %bb.v

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.p

.body42:                                          ; preds = %bb.x, %bb.v, %.body47
  %.pn = phi { ptr, i32 } [ %eh.lpad-body48, %.body47 ], [ %i.as, %bb.v ], [ %i.at, %bb.x ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3094)
  call void @llvm.experimental.noalias.scope.decl(metadata !3095)
  call void @llvm.experimental.noalias.scope.decl(metadata !3096)
  %i.ap = load ptr, ptr %i.i, align 8, !alias.scope !3097, !nonnull !9, !noundef !9
  %i.aq = atomicrmw add ptr %i.ap, i64 -1 release, align 8, !noalias !3097
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.u, label %bb.bp

bb.u:                                             ; preds = %.body42
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #37
          to label %bb.bp unwind label %bb.q

bb.v:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body42

bb.w:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !3098)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef range(i64 0, 4611686018427387904) %4)
          to label %bb.z unwind label %bb.x, !noalias !3099

bb.x:                                             ; preds = %bb.w
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #36
          to label %.body42 unwind label %bb.y, !noalias !3099

bb.y:                                             ; preds = %bb.x
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33, !noalias !3099
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !3100, !noundef !9 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 2305843009213693952
  call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !3100, !nonnull !9, !noundef !9
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.aw
  %i.bb = shl nuw nsw i64 %4, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ba, ptr noundef nonnull readonly align 4 dereferenceable(1) %3, i64 %i.bb, i1 false), !noalias !3098
  %.pre.i.i.i41 = load i64, ptr %i.av, align 8, !alias.scope !3100
  %i.bc = add i64 %.pre.i.i.i41, %4
  store i64 %i.bc, ptr %i.av, align 8, !alias.scope !3100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !alias.scope !3101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i46 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body47 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i46: ; preds = %bb.z
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit50 unwind label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i46
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body47

.body47:                                          ; preds = %bb.aa, %bb.ac
  %eh.lpad-body48 = phi { ptr, i32 } [ %i.bf, %bb.ac ], [ %i.bd, %bb.aa ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %.body42

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit50: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !3102)
  call void @llvm.experimental.noalias.scope.decl(metadata !3103)
  call void @llvm.experimental.noalias.scope.decl(metadata !3104)
  %i.bg = load ptr, ptr %i.i, align 8, !alias.scope !3105, !nonnull !9, !noundef !9
  %i.bh = atomicrmw add ptr %i.bg, i64 -1 release, align 8, !noalias !3105
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit52

bb.ad:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit50
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit52 unwind label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit52: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit50, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.p

.peel.begin:                                      ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3106)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3106
  store i8 0, ptr %i.bj, align 4, !noalias !3106
  store i32 448, ptr %i.c, align 4, !noalias !3106
  %.val.i.i.peel = load ptr, ptr %i.bk, align 8, !alias.scope !3106, !nonnull !9, !noundef !9
  %.val1.i.i.peel = load i64, ptr %i.bl, align 8, !alias.scope !3106, !noundef !9
  %i.bn = invoke noundef ptr @_RINvMsD_NtCsaL1QbXo9JQH_3std2fsNtB6_10DirBuilder6createRNtNtB8_4path4PathECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.peel, i64 noundef %.val1.i.i.peel)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 13 uses

bb.ae:                                            ; preds = %.peel.begin
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3106
  %.not19.peel = icmp eq ptr %i.bn, null
  br i1 %.not19.peel, label %.loopexit104, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bo = ptrtoint ptr %i.bn to i64               ; 6 uses
  %i.bp = and i64 %i.bo, 3                        ; 4 uses
  switch i64 %i.bp, label %default.unreachable [
    i64 2, label %bb.aj
    i64 3, label %bb.ai
    i64 0, label %bb.ah
    i64 1, label %bb.ag
  ], !prof !19

bb.ag:                                            ; preds = %bb.af
  %i.bq = getelementptr i8, ptr %i.bn, i64 31
  %i.br = load i8, ptr %i.bq, align 8, !range !3107, !noundef !9
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.peel

bb.ah:                                            ; preds = %bb.af
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bt = load i8, ptr %i.bs, align 8, !range !3107, !noundef !9
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.peel

bb.ai:                                            ; preds = %bb.af
  %i.bu = lshr i64 %i.bo, 32
  %i.bv = icmp ult ptr %i.bn, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.peel = trunc i64 %i.bu to i8 ; 2 uses
  %i.bw = icmp ne i8 %switch.idx.cast.i.i.i.peel, -1
  call void @llvm.assume(i1 %i.bv)
  call void @llvm.assume(i1 %i.bw)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.peel

bb.aj:                                            ; preds = %bb.af
  %i.bx = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc54.peel unwind label %.loopexit.split-lp139

.noexc54.peel:                                    ; preds = %bb.aj
  %i.by = lshr i64 %i.bo, 32
  %i.bz = trunc nuw i64 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !9, !noundef !9
  %i.cc = invoke noundef i8 %i.cb(i32 noundef %i.bz)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.peel unwind label %.loopexit.split-lp139, !inline_history !2

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.peel: ; preds = %.noexc54.peel, %bb.ai, %bb.ah, %bb.ag
  %.sroa.0.0.i.peel = phi i8 [ %i.br, %bb.ag ], [ %switch.idx.cast.i.i.i.peel, %bb.ai ], [ %i.bt, %bb.ah ], [ %i.cc, %.noexc54.peel ]
  %i.cd = icmp eq i8 %.sroa.0.0.i.peel, 12
  br i1 %i.cd, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.peel
  %i.ce = load ptr, ptr %i.bk, align 8, !nonnull !9, !noundef !9
  %i.cf = load i64, ptr %i.bl, align 8, !noundef !9
  %i.cg = invoke noundef zeroext i1 @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path6is_dir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cf)
          to label %bb.al unwind label %.loopexit.split-lp139

bb.al:                                            ; preds = %bb.ak
  br i1 %i.cg, label %.loopexit142, label %bb.am

bb.am:                                            ; preds = %bb.al, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.peel
  switch i64 %i.bp, label %default.unreachable [
    i64 2, label %bb.aq
    i64 3, label %bb.ap
    i64 0, label %bb.ao
    i64 1, label %bb.an
  ], !prof !19

bb.an:                                            ; preds = %bb.am
  %i.ch = getelementptr i8, ptr %i.bn, i64 31
  %i.ci = load i8, ptr %i.ch, align 8, !range !3107, !noundef !9
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64.peel

bb.ao:                                            ; preds = %bb.am
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.ck = load i8, ptr %i.cj, align 8, !range !3107, !noundef !9
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64.peel

bb.ap:                                            ; preds = %bb.am
  %i.cl = lshr i64 %i.bo, 32
  %i.cm = icmp ult ptr %i.bn, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i60.peel = trunc i64 %i.cl to i8 ; 2 uses
  %i.cn = icmp ne i8 %switch.idx.cast.i.i.i60.peel, -1
  call void @llvm.assume(i1 %i.cm)
  call void @llvm.assume(i1 %i.cn)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64.peel

bb.aq:                                            ; preds = %bb.am
  %i.co = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc62.peel unwind label %.loopexit.split-lp139

.noexc62.peel:                                    ; preds = %bb.aq
  %i.cp = lshr i64 %i.bo, 32
  %i.cq = trunc nuw i64 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !9, !noundef !9
  %i.ct = invoke noundef i8 %i.cs(i32 noundef %i.cq)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64.peel unwind label %.loopexit.split-lp139, !inline_history !2

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64.peel: ; preds = %.noexc62.peel, %bb.ap, %bb.ao, %bb.an
  %.sroa.0.0.i59.peel = phi i8 [ %i.ci, %bb.an ], [ %switch.idx.cast.i.i.i60.peel, %bb.ap ], [ %i.ck, %bb.ao ], [ %i.ct, %.noexc62.peel ]
  %i.cu = icmp eq i8 %.sroa.0.0.i59.peel, 0
  br i1 %i.cu, label %bb.ar, label %.loopexit104

bb.ar:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.bp, label %default.unreachable [
    i64 2, label %.peel.next.preheader
    i64 3, label %.peel.next.sink.split
    i64 0, label %.peel.next.preheader
    i64 1, label %.invoke
  ], !prof !19

.peel.next.sink.split:                            ; preds = %bb.bj, %bb.ar
  %.sink164.a = phi ptr [ %i.bn, %bb.ar ], [ %i.cy, %bb.bj ]
  %.sink = phi i64 [ %i.bo, %bb.ar ], [ %i.cz, %bb.bj ]
  %i.cv = icmp ult ptr %.sink164.a, inttoptr (i64 188978561024 to ptr)
  %i.cw = and i64 %.sink, 1095216660480
  %i.cx = icmp ne i64 %i.cw, 1095216660480
  call void @llvm.assume(i1 %i.cv)
  call void @llvm.assume(i1 %i.cx)
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.ar, %bb.ar, %.peel.next.sink.split, %.invoke
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.backedge, %.peel.next.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !3108)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3108
  store i8 1, ptr %i.bj, align 4, !noalias !3108
  store i32 448, ptr %i.c, align 4, !noalias !3108
  %.val.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !3108, !nonnull !9, !noundef !9
  %.val1.i.i = load i64, ptr %i.bl, align 8, !alias.scope !3108, !noundef !9
  %i.cy = invoke noundef ptr @_RINvMsD_NtCsaL1QbXo9JQH_3std2fsNtB6_10DirBuilder6createRNtNtB8_4path4PathECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 13 uses

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bn
  %.pn20 = phi { ptr, i32 } [ %lpad.phi141, %bb.bn ], [ %lpad.loopexit.split-lp169, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #36
          to label %bb.bp unwind label %bb.q

bb.as:                                            ; preds = %.peel.next
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3108
  %.not19 = icmp eq ptr %i.cy, null               ; 3 uses
  br i1 %.not19, label %.loopexit104, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cz = ptrtoint ptr %i.cy to i64               ; 6 uses
  %i.da = and i64 %i.cz, 3                        ; 4 uses
  switch i64 %i.da, label %.unreachabledefault [
    i64 2, label %bb.au
    i64 3, label %bb.av
    i64 0, label %bb.aw
    i64 1, label %bb.ax
  ], !prof !19

.unreachabledefault:                              ; preds = %bb.at
  unreachable

default.unreachable:                              ; preds = %bb.bj, %bb.bb, %.loopexit142, %bb.ar, %bb.am, %bb.af
  unreachable

bb.au:                                            ; preds = %bb.at
  %i.db = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc54 unwind label %.loopexit

.noexc54:                                         ; preds = %bb.au
  %i.dc = lshr i64 %i.cz, 32
  %i.dd = trunc nuw i64 %i.dc to i32
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !9, !noundef !9
  %i.dg = invoke noundef i8 %i.df(i32 noundef %i.dd)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit unwind label %.loopexit, !inline_history !2

bb.av:                                            ; preds = %bb.at
  %i.dh = lshr i64 %i.cz, 32
  %i.di = icmp ult ptr %i.cy, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.dh to i8  ; 2 uses
  %i.dj = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.di)
  call void @llvm.assume(i1 %i.dj)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

bb.aw:                                            ; preds = %bb.at
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dl = load i8, ptr %i.dk, align 8, !range !3107, !noundef !9
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

bb.ax:                                            ; preds = %bb.at
  %i.dm = getelementptr i8, ptr %i.cy, i64 31
  %i.dn = load i8, ptr %i.dm, align 8, !range !3107, !noundef !9
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

.loopexit104:                                     ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64, %bb.as, %bb.ae, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64.peel, %bb.bk
  %i.do = phi ptr [ %.lcssa133, %bb.bk ], [ null, %bb.ae ], [ %i.bn, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64.peel ], [ null, %bb.as ], [ %i.cy, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64 ] ; 2 uses
  %.sroa.9.0 = phi i8 [ 0, %bb.bk ], [ 1, %bb.ae ], [ 1, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64.peel ], [ 1, %bb.as ], [ 1, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64 ]
  %.not22 = phi i1 [ true, %bb.bk ], [ true, %bb.ae ], [ false, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64.peel ], [ %.not19, %bb.as ], [ %.not19, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64 ]
  %.sroa.0.083 = phi i8 [ 0, %bb.bk ], [ 0, %bb.ae ], [ 1, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64.peel ], [ 0, %bb.as ], [ 1, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64 ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit.i unwind label %bb.ay

bb.ay:                                            ; preds = %.loopexit104
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bp unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit.i: ; preds = %.loopexit104
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit unwind label %bb.b

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %.peel.begin, %bb.bi, %.invoke
  %lpad.loopexit.split-lp169 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.ax, %bb.aw, %bb.av, %.noexc54
  %.sroa.0.0.i = phi i8 [ %i.dn, %bb.ax ], [ %switch.idx.cast.i.i.i, %bb.av ], [ %i.dl, %bb.aw ], [ %i.dg, %.noexc54 ]
  %i.dr = icmp eq i8 %.sroa.0.0.i, 12
  br i1 %i.dr, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit
  %i.ds = load ptr, ptr %i.bk, align 8, !nonnull !9, !noundef !9
  %i.dt = load i64, ptr %i.bl, align 8, !noundef !9
  %i.du = invoke noundef zeroext i1 @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path6is_dir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ds, i64 noundef %i.dt)
          to label %bb.bg unwind label %.loopexit

bb.bb:                                            ; preds = %bb.bg, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit
  switch i64 %i.da, label %default.unreachable [
    i64 2, label %bb.bc
    i64 3, label %bb.bd
    i64 0, label %bb.be
    i64 1, label %bb.bf
  ], !prof !19

bb.bc:                                            ; preds = %bb.bb
  %i.dv = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc62 unwind label %.loopexit

.noexc62:                                         ; preds = %bb.bc
  %i.dw = lshr i64 %i.cz, 32
  %i.dx = trunc nuw i64 %i.dw to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !nonnull !9, !noundef !9
  %i.ea = invoke noundef i8 %i.dz(i32 noundef %i.dx)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64 unwind label %.loopexit, !inline_history !2

bb.bd:                                            ; preds = %bb.bb
  %i.eb = lshr i64 %i.cz, 32
  %i.ec = icmp ult ptr %i.cy, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i60 = trunc i64 %i.eb to i8 ; 2 uses
  %i.ed = icmp ne i8 %switch.idx.cast.i.i.i60, -1
  call void @llvm.assume(i1 %i.ec)
  call void @llvm.assume(i1 %i.ed)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64

bb.be:                                            ; preds = %bb.bb
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.ef = load i8, ptr %i.ee, align 8, !range !3107, !noundef !9
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64

bb.bf:                                            ; preds = %bb.bb
  %i.eg = getelementptr i8, ptr %i.cy, i64 31
  %i.eh = load i8, ptr %i.eg, align 8, !range !3107, !noundef !9
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64

bb.bg:                                            ; preds = %bb.ba
  br i1 %i.du, label %.loopexit142, label %bb.bb

.loopexit142:                                     ; preds = %bb.bg, %bb.al
  %.lcssa133 = phi ptr [ %i.bn, %bb.al ], [ %i.cy, %bb.bg ] ; 3 uses
  %.lcssa122 = phi i64 [ %i.bp, %bb.al ], [ %i.da, %bb.bg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  switch i64 %.lcssa122, label %default.unreachable [
    i64 2, label %bb.bk
    i64 3, label %bb.bh
    i64 0, label %bb.bk
    i64 1, label %bb.bi
  ], !prof !19

bb.bh:                                            ; preds = %.loopexit142
  %i.ei = icmp ult ptr %.lcssa133, inttoptr (i64 188978561024 to ptr)
  call void @llvm.assume(i1 %i.ei)
  br label %bb.bk

bb.bi:                                            ; preds = %.loopexit142
  %i.ej = getelementptr i8, ptr %.lcssa133, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ej) ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ej, ptr %i.ek, align 8, !alias.scope !3109
  store i8 3, ptr %i.b, align 8, !alias.scope !3109
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ek)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64: ; preds = %bb.bf, %bb.be, %bb.bd, %.noexc62
  %.sroa.0.0.i59 = phi i8 [ %i.eh, %bb.bf ], [ %switch.idx.cast.i.i.i60, %bb.bd ], [ %i.ef, %bb.be ], [ %i.ea, %.noexc62 ]
  %i.el = icmp eq i8 %.sroa.0.0.i59, 0
  br i1 %i.el, label %bb.bj, label %.loopexit104

bb.bj:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.da, label %default.unreachable [
    i64 2, label %.peel.next.backedge
    i64 3, label %.peel.next.sink.split
    i64 0, label %.peel.next.backedge
    i64 1, label %.invoke
  ], !prof !19, !llvm.loop !3079

.peel.next.backedge:                              ; preds = %bb.bj, %bb.bj
  br label %.peel.next, !llvm.loop !3079

.invoke:                                          ; preds = %bb.bj, %bb.ar
  %.sink167 = phi ptr [ %i.bn, %bb.ar ], [ %i.cy, %bb.bj ]
  %i.em = getelementptr i8, ptr %.sink167, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.em) ]
  store ptr %i.em, ptr %i.bm, align 8, !alias.scope !3110
  store i8 3, ptr %i.a, align 8, !alias.scope !3110
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bm)
          to label %.peel.next.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !3079

bb.bk:                                            ; preds = %bb.bh, %.loopexit142, %.loopexit142, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit104

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %.not22, label %bb.bl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtCs8frGy5WneL6_4fish4path19make_base_directory7SuccessNtNtNtB4_2io5error5ErrorEEB13_.exit

bb.bl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit
  %i.en = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !9, !noundef !9
  %i.eo = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !9
  %i.ep = invoke noundef i8 @_RNvNtCs8frGy5WneL6_4fish4path15path_remoteness(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.en, i64 noundef %i.eo)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtCs8frGy5WneL6_4fish4path19make_base_directory7SuccessNtNtNtB4_2io5error5ErrorEEB13_.exit unwind label %bb.bm

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtCs8frGy5WneL6_4fish4path19make_base_directory7SuccessNtNtNtB4_2io5error5ErrorEEB13_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit, %bb.bl
  %.sroa.07.0103 = phi ptr [ null, %bb.bl ], [ %i.do, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit ]
  %.sroa.06.0102 = phi i8 [ %.sroa.9.0, %bb.bl ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit ]
  %.sroa.05.0101 = phi i8 [ %i.ep, %bb.bl ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.06.0102, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.05.0101, ptr %i.er, align 2
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.07.0103, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.0.0, ptr %i.et, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.bm:                                            ; preds = %bb.bl
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtCs8frGy5WneL6_4fish4path19make_base_directory7SuccessNtNtNtB4_2io5error5ErrorEEB13_(i8 %.sroa.0.083, ptr %i.do) #36
          to label %bb.bp unwind label %bb.q

.loopexit:                                        ; preds = %bb.bc, %bb.au, %.noexc54, %bb.ba, %.noexc62
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.loopexit.split-lp139:                            ; preds = %bb.aj, %.noexc54.peel, %bb.ak, %bb.aq, %.noexc62.peel
  %lpad.loopexit.split-lp140 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bn:                                            ; preds = %.loopexit.split-lp139, %.loopexit
  %.lcssa132 = phi ptr [ %i.cy, %.loopexit ], [ %i.bn, %.loopexit.split-lp139 ]
  %lpad.phi141 = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp140, %.loopexit.split-lp139 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish(ptr nonnull %.lcssa132) #36
          to label %.loopexit.split-lp unwind label %bb.q

bb.bo:                                            ; preds = %bb.bp
  resume { ptr, i32 } %.pn23.pn.ph

bb.bp:                                            ; preds = %bb.bm, %.loopexit.split-lp, %bb.b, %bb.f, %.body, %bb.u, %.body42, %bb.ay
  %.pn23.pn.ph = phi { ptr, i32 } [ %.pn17, %.body ], [ %.pn, %.body42 ], [ %.pn20, %.loopexit.split-lp ], [ %i.eu, %bb.bm ], [ %i.q, %bb.b ], [ %.pn17, %bb.f ], [ %.pn, %bb.u ], [ %i.dp, %bb.ay ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #36
          to label %bb.bo unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8frGy5WneL6_4fish4path19path_as_implicit_cd(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef %4, ptr noundef nonnull %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.c = load i64, ptr %i.a, align 8, !range !11, !noundef !9
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !12, !noundef !9 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.j = icmp ule i64 %2, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.f, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RNvNtCs8frGy5WneL6_4fish6expand12expand_tilde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %6)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i64 %2, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 4 %1, i64 %i.k, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %bb.o, %bb.s, %bb.m, %bb.k, %bb.i, %bb.g, %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #36
          to label %common.resume unwind label %bb.w

bb.g:                                             ; preds = %bb.d
  %i.m = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRNtNtB7_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @193, i64 noundef 1)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  br i1 %i.m, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRNtNtB7_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @322, i64 noundef 2)
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  br i1 %i.n, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRNtNtB7_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @324, i64 noundef 3)
          to label %bb.l unwind label %bb.f

bb.l:                                             ; preds = %bb.k
  br i1 %i.o, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withRNtNtB7_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @193, i64 noundef 1)
          to label %bb.n unwind label %bb.f

bb.n:                                             ; preds = %bb.m
  br i1 %i.p, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %.val4 = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !9
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.val4
  %i.r = invoke noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull %.val, ptr noundef nonnull %i.q, ptr noundef nonnull @216, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @216, i64 2))
          to label %_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit unwind label %bb.f

_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit: ; preds = %bb.o
  br i1 %i.r, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit8 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.t = landingpad { ptr, i32 }
end_hunk_0
