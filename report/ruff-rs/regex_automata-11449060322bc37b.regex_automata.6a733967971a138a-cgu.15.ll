inline.NumInlined: 268
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShE10from_bytes:bb.a
  %i.fv = urem i64 %.sroa.5.019.i, %i.fr
  %i.fw = icmp samesign ult i64 %i.fv, 6
  br i1 %i.fw, label %switch.lookup.i.i, label %bb.bs, !prof !293

bb.br:                                            ; preds = %.lr.ph.i31
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #21
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %.lr.ph.split.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #21
          to label %.noexc36 unwind label %.loopexit.split-lp

.noexc36:                                         ; preds = %bb.bs
  unreachable

switch.lookup.i.i:                                ; preds = %.lr.ph.split.i
  %or.cond21.i = icmp ult i64 %.sroa.5.019.i, %invariant.umax.i
  br i1 %or.cond21.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDNtBJ_14PatternIDErrorE6unwrapBN_.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %switch.lookup.i.i
  %i.fx = sub nuw nsw i64 %.sroa.5.019.i, %i.ft
  %i.fy = udiv i64 %i.fx, %i.fr                   ; 2 uses
  %i.fz = icmp samesign ugt i64 %i.fy, 2147483646
  br i1 %i.fz, label %bb.bu, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDNtBJ_14PatternIDErrorE6unwrapBN_.exit.i.i

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !294
  store i64 %i.fy, ptr %i.a, align 8, !noalias !294
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #21
          to label %.noexc37 unwind label %.loopexit.split-lp

.noexc37:                                         ; preds = %bb.bu
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDNtBJ_14PatternIDErrorE6unwrapBN_.exit.i.i: ; preds = %bb.bt, %switch.lookup.i.i
  %i.ga = shl nuw nsw i64 %.sroa.5.019.i, 2       ; 3 uses
  %i.gb = add nuw nsw i64 %i.ga, 4                ; 2 uses
  %.not23.i.i = icmp ugt i64 %i.gb, %.val26.i.i
  br i1 %.not23.i.i, label %bb.bv, label %bb.bw, !prof !6

bb.bv:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDNtBJ_14PatternIDErrorE6unwrapBN_.exit.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.ga, i64 noundef %i.gb, i64 noundef %.val26.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #21
          to label %.noexc38 unwind label %.loopexit.split-lp

.noexc38:                                         ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDNtBJ_14PatternIDErrorE6unwrapBN_.exit.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.val25.i.i, i64 %i.ga
  %.sroa.013.0.copyload.i.i = load i32, ptr %i.gc, align 1, !noalias !297 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !298
  store i32 %.sroa.013.0.copyload.i.i, ptr %i.b, align 4, !noalias !298
  %i.gd = invoke noundef ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtNtB8_7set_val9SetValZSTE3getB17_EB1d_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %.noexc39 unwind label %.loopexit

.noexc39:                                         ; preds = %bb.bw
  %.not.i32 = icmp eq ptr %i.gd, null
  br i1 %.not.i32, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %.noexc39
  %i.ge = icmp eq i32 %.sroa.013.0.copyload.i.i, 0
  %.not16.i = icmp ugt i32 %.val, %.sroa.013.0.copyload.i.i
  %or.cond.i33 = select i1 %i.ge, i1 true, i1 %.not16.i
  %.not17.i = icmp ugt i32 %.sroa.013.0.copyload.i.i, %.val30
  %or.cond20.i = select i1 %or.cond.i33, i1 true, i1 %.not17.i
  br i1 %or.cond20.i, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !298
  %exitcond.not.i34 = icmp eq i64 %i.fu, %i.fp
  br i1 %exitcond.not.i34, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse4SeenEBH_.exit44, label %.lr.ph.split.i

.loopexit:                                        ; preds = %bb.bw
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

.loopexit.split-lp:                               ; preds = %bb.br, %bb.bs, %bb.bu, %bb.bv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bz:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtNtB4_7set_val9SetValZSTENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB19_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread unwind label %bb.ce

bb.ca:                                            ; preds = %bb.bx, %.noexc39
  %.sink43.i = phi ptr [ @109, %bb.bx ], [ @108, %.noexc39 ]
  %.sink.i = phi i64 [ 35, %bb.bx ], [ 31, %.noexc39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !298
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.gf, align 8
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink43.i, ptr %.sroa.599.0..sroa_idx, align 16
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink.i, ptr %.sroa.6100.0..sroa_idx, align 8
  store i64 2, ptr %0, align 16
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtNtB4_7set_val9SetValZSTENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB19_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse4SeenEBH_.exit42 unwind label %.thread109

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse4SeenEBH_.exit44: ; preds = %bb.by, %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(720) %0, ptr noundef nonnull align 16 dereferenceable(720) %i.g, i64 720, i1 false)
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  store i64 %.sroa.617.0.copyload, ptr %.sroa.412.0..sroa_idx, align 16
  call void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtNtB4_7set_val9SetValZSTENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB19_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShEEBI_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse4SeenEBH_.exit44, %bb.b
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse4SeenEBH_.exit42: ; preds = %bb.ca, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.g, i64 320 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.gi = load i8, ptr %i.gh, align 8, !range !26, !alias.scope !305, !noundef !3
  %i.gj = icmp eq i8 %i.gi, 2
  br i1 %i.gj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShEEBI_.exit, label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse4SeenEBH_.exit42
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.gk = load ptr, ptr %i.gg, align 16, !alias.scope !315, !nonnull !3, !noundef !3
  %i.gl = atomicrmw sub ptr %i.gk, i64 1 release, align 8, !noalias !315
  %i.gm = icmp eq i64 %i.gl, 1
  br i1 %i.gm, label %bb.cd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShEEBI_.exit

bb.cd:                                            ; preds = %bb.cc
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gg)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShEEBI_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShEEBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse4SeenEBH_.exit42, %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.cb

bb.ce:                                            ; preds = %bb.cg, %bb.bz
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShEEBI_.exit46: ; preds = %bb.cf, %.thread, %bb.cg
  resume { ptr, i32 } %.pn105

.thread:                                          ; preds = %.loopexit.split-lp.i, %bb.bz, %.thread109
  %.pn105 = phi { ptr, i32 } [ %lpad.phi, %bb.bz ], [ %lpad.thr_comm, %.thread109 ], [ %lpad.phi.i, %.loopexit.split-lp.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.go = getelementptr inbounds nuw i8, ptr %i.g, i64 320 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.gq = load i8, ptr %i.gp, align 8, !range !26, !alias.scope !322, !noundef !3
  %i.gr = icmp eq i8 %i.gq, 2
  br i1 %i.gr, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShEEBI_.exit46, label %bb.cf

bb.cf:                                            ; preds = %.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.gs = load ptr, ptr %i.go, align 16, !alias.scope !332, !nonnull !3, !noundef !3
  %i.gt = atomicrmw sub ptr %i.gs, i64 1 release, align 8, !noalias !332
  %i.gu = icmp eq i64 %i.gt, 1
  br i1 %i.gu, label %bb.cg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShEEBI_.exit46

bb.cg:                                            ; preds = %bb.cf
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.go)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShEEBI_.exit46 unwind label %bb.ce
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShE20from_bytes_unchecked(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([736 x i8]) align 16 captures(none) dereferenceable(736) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.3242 = alloca [28 x i8], align 4         ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.3239 = alloca [280 x i8], align 8        ; 2 uses
  %.sroa.5226 = alloca [272 x i8], align 8        ; 3 uses
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.5107.sroa.7 = alloca [28 x i8], align 4  ; 6 uses
  %i.c = alloca [328 x i8], align 8               ; 8 uses
  %.sroa.6101 = alloca [32 x i8], align 8         ; 6 uses
  %i.d = alloca [296 x i8], align 8               ; 9 uses
  %.sroa.694.sroa.7 = alloca [24 x i8], align 8   ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %2, i64 256) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.i.i
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.02.08.i.i = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %i.h = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %.val.i.i = load i8, ptr %i.h, align 1, !alias.scope !336, !noalias !338, !noundef !3
  %i.i = icmp eq i8 %.val.i.i, 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.02.08.i.i, 1
  %i.l = icmp eq ptr %i.j, %i.f
  br i1 %i.l, label %.loopexit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.m = icmp samesign ult i64 %.sroa.02.08.i.i, %.sroa.0.0.i.i
  tail call void @llvm.assume(i1 %i.m)
  %3 = sub nsw i64 0, %.sroa.02.08.i.i
  %i.n = and i64 %3, 3
  %4 = add nuw nsw i64 %i.n, %.sroa.02.08.i.i     ; 3 uses
  %i.o = icmp samesign ult i64 %2, %4
  br i1 %i.o, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %.sroa.02.08.i.i, 30
  br i1 %i.p, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.q = load i128, ptr %1, align 1
  %i.r = xor i128 145464558551137249945081243468255425906, %i.q
  %i.s = getelementptr i8, ptr %1, i64 14
  %i.t = load i128, ptr %i.s, align 1
  %i.u = xor i128 134851461627636150387084903048840047983, %i.t
  %i.v = or i128 %i.r, %i.u
  %i.w = icmp ne i128 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %.not37.i = icmp eq i32 %i.x, 0
  br i1 %.not37.i, label %bb.f, label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.a, %bb.e, %bb.d
  %.sroa.16.0.ph = phi i64 [ 30, %bb.d ], [ 30, %bb.e ], [ 65, %bb.c ], [ 65, %bb.a ], [ 65, %bb.b ]
  %.sroa.10.0.ph = phi i64 [ ptrtoint (ptr @42 to i64), %bb.d ], [ ptrtoint (ptr @42 to i64), %bb.e ], [ ptrtoint (ptr @122 to i64), %bb.c ], [ ptrtoint (ptr @120 to i64), %bb.a ], [ ptrtoint (ptr @120 to i64), %bb.b ]
  %.sroa.0.0.ph = phi i32 [ 6, %bb.d ], [ 6, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.ph, ptr %i.y, align 8
  %.sroa.5136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0.ph, ptr %.sroa.5136.0..sroa_idx, align 16
  %.sroa.6137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.16.0.ph, ptr %.sroa.6137.0..sroa_idx, align 8
  store i64 2, ptr %0, align 16
  br label %bb.aj

bb.f:                                             ; preds = %bb.e
  %i.z = sub nuw nsw i64 %2, %4
  %i.aa = icmp samesign ult i64 %i.z, 4
  br i1 %i.aa, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32.exit.i, label %bb.g

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32.exit.i: ; preds = %bb.f
  %.sroa.6.12.extract.shift.i = and i64 ptrtoint (ptr @135 to i64), -4294967296
  %.sroa.10289.8.insert.ext292 = zext i32 ptrtoint (ptr @135 to i32) to i64
  %.sroa.10289.12.insert.insert = or disjoint i64 %.sroa.6.12.extract.shift.i, %.sroa.10289.8.insert.ext292
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %4
  %.sroa.02.0.copyload.i.i.i = load i32, ptr %i.ab, align 1, !alias.scope !342, !noalias !349 ; 2 uses
  %i.ac = icmp eq i32 %.sroa.02.0.copyload.i.i.i, 65279
  br i1 %i.ac, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire21read_endianness_check.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.10289.8.insert.ext = zext i32 %.sroa.02.0.copyload.i.i.i to i64
  br label %bb.i

bb.i:                                             ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32.exit.i, %bb.h
  %.sroa.10289.0.ph = phi i64 [ %.sroa.10289.8.insert.ext, %bb.h ], [ %.sroa.10289.12.insert.insert, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32.exit.i ]
  %.sroa.0286.0.ph = phi i32 [ 4, %bb.h ], [ 1, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32.exit.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0286.0.ph, ptr %i.ad, align 8
  %.sroa.4147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 65279, ptr %.sroa.4147.0..sroa_idx, align 4
  %.sroa.5148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10289.0.ph, ptr %.sroa.5148.0..sroa_idx, align 16
  %.sroa.6149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 16, ptr %.sroa.6149.0..sroa_idx, align 8
  store i64 2, ptr %0, align 16
  br label %bb.aj

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire21read_endianness_check.exit: ; preds = %bb.g
  %i.ae = icmp samesign ult i64 %2, 36
  br i1 %i.ae, label %bb.m, label %bb.j, !prof !6

bb.j:                                             ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire21read_endianness_check.exit
  %i.af = icmp samesign ult i64 %2, 40
  br i1 %i.af, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32.exit.i278, label %bb.k

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32.exit.i278: ; preds = %bb.j
  %.sroa.6.12.extract.shift.i279 = and i64 ptrtoint (ptr @128 to i64), -4294967296
  %.sroa.10299.8.insert.ext302 = zext i32 ptrtoint (ptr @128 to i32) to i64
  %.sroa.10299.12.insert.insert = or disjoint i64 %.sroa.6.12.extract.shift.i279, %.sroa.10299.8.insert.ext302
  br label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.02.0.copyload.i.i.i275 = load i32, ptr %i.ag, align 1, !alias.scope !353, !noalias !360 ; 2 uses
  %.not45.i = icmp eq i32 %.sroa.02.0.copyload.i.i.i275, 2
  br i1 %.not45.i, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12read_version.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.10299.8.insert.ext = zext i32 %.sroa.02.0.copyload.i.i.i275 to i64
  br label %bb.n

bb.m:                                             ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire21read_endianness_check.exit
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 36, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #21
  unreachable

bb.n:                                             ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32.exit.i278, %bb.l
  %.sroa.0296.0.ph = phi i32 [ 3, %bb.l ], [ 1, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32.exit.i278 ]
  %.sroa.10299.0.ph = phi i64 [ %.sroa.10299.8.insert.ext, %bb.l ], [ %.sroa.10299.12.insert.insert, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32.exit.i278 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0296.0.ph, ptr %i.ah, align 8
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 2, ptr %.sroa.4159.0..sroa_idx, align 4
  %.sroa.5160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10299.0.ph, ptr %.sroa.5160.0..sroa_idx, align 16
  %.sroa.6161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 7, ptr %.sroa.6161.0..sroa_idx, align 8
  store i64 2, ptr %0, align 16
  br label %bb.aj

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12read_version.exit: ; preds = %bb.k
  %i.ai = icmp samesign ult i64 %2, 44
  br i1 %i.ai, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32.exit, label %bb.o

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32.exit: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12read_version.exit
  %.sroa.6.12.extract.shift = lshr i64 ptrtoint (ptr @43 to i64), 32
  %.sroa.6.12.extract.trunc = trunc nuw i64 %.sroa.6.12.extract.shift to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.aj, align 8
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 ptrtoint (ptr @43 to i32), ptr %.sroa.5176.0..sroa_idx, align 16
  %.sroa.6177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.6.12.extract.trunc, ptr %.sroa.6177.0..sroa_idx, align 4
  %.sroa.7178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 12, ptr %.sroa.7178.0..sroa_idx, align 8
  store i64 2, ptr %0, align 16
  br label %bb.aj

bb.o:                                             ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12read_version.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ak = add nsw i64 %2, -44
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 44
  call void @_RNvMso_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB5_5Flags10from_bytes(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef %i.ak)
  %i.am = load i32, ptr %i.e, align 8, !range !364, !noundef !3 ; 2 uses
  %.not273 = icmp eq i32 %i.am, -1
  br i1 %.not273, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.4191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.4191.0.copyload = load i32, ptr %.sroa.4191.0..sroa_idx, align 4
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.7194.0.copyload = load i64, ptr %.sroa.7194.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load <2 x i64>, ptr %.sroa.5192.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i32 %i.am, ptr %i.an, align 8
  store i32 %.sroa.4191.0.copyload, ptr %.sroa.4196.0..sroa_idx, align 4
  store <2 x i64> %i.ao, ptr %.sroa.5197.0..sroa_idx, align 16
  %.sroa.7199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7194.0.copyload, ptr %.sroa.7199.0..sroa_idx, align 16
  store i64 2, ptr %0, align 16
  br label %bb.aj

bb.q:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0180.0.copyload = load i64, ptr %i.ap, align 8
  %.sroa.4182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4182.0.copyload = load i64, ptr %.sroa.4182.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.680.sroa.5.4.extract.trunc = trunc i64 %.sroa.0180.0.copyload to i24
  %i.aq = add i64 %.sroa.4182.0.copyload, 44      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.694.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ar = icmp ugt i64 %i.aq, %2
  br i1 %i.ar, label %bb.s, label %bb.r, !prof !6

bb.r:                                             ; preds = %bb.q
  %i.as = sub nuw nsw i64 %2, %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  call fastcc void @_RNvMs6_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE20from_bytes_unchecked(ptr noalias noundef align 8 captures(none) dereferenceable(296) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef %i.as)
  %i.au = load ptr, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0236.0.copyload = load i64, ptr %i.aw, align 8 ; 3 uses
  %.sroa.4237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.694.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4237.0..sroa_idx, i64 24, i1 false)
  br i1 %i.av, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.aq, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #21
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.4233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.4233.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.694.sroa.7, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0236.0.copyload, ptr %i.ax, align 8
  store i64 2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.694.sroa.7)
  br label %bb.aj

bb.u:                                             ; preds = %bb.r
  %.sroa.5202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.5226.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5226, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.5226.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.5202.0..sroa_idx, i64 248, i1 false)
  %.sroa.6203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %.sroa.6203.0.copyload = load i64, ptr %.sroa.6203.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5226, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.694.sroa.7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.694.sroa.7)
  %i.ay = add i64 %.sroa.6203.0.copyload, %i.aq   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6101)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.az = icmp ugt i64 %i.ay, %2
  br i1 %i.az, label %bb.w, label %bb.v, !prof !6

bb.v:                                             ; preds = %bb.u
  %i.ba = sub nuw nsw i64 %2, %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ay
  call fastcc void @_RNvMsa_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_10StartTableRShE20from_bytes_unchecked(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.ba)
  %i.bc = load i64, ptr %i.c, align 8, !range !186, !noundef !3 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6101, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 32, i1 false)
  br i1 %i.bd, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.u
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.ay, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #21
  unreachable

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6101, i64 32, i1 false)
  store i64 2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6101)
  br label %bb.aj

bb.y:                                             ; preds = %bb.v
  %.sroa.5206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.3239, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5206.0..sroa_idx, i64 280, i1 false)
  %.sroa.6207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %.sroa.6207.0.copyload = load i64, ptr %.sroa.6207.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6101, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6101)
  %i.bg = add i64 %.sroa.6207.0.copyload, %i.ay   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5107.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bh = icmp ugt i64 %i.bg, %2
  br i1 %i.bh, label %bb.aa, label %bb.z, !prof !6

end_hunk_0
begin_hunk_1_@_RNvMsa_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_10StartTableRShE20from_bytes_unchecked:bb.a
  br i1 %i.aw, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.ax = zext i32 %.sroa.02.0.copyload.i.i666 to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 9, ptr %i.ay, align 8
  %.sroa.5486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ax, ptr %.sroa.5486.0..sroa_idx, align 8
  %.sroa.6487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @102, ptr %.sroa.6487.0..sroa_idx, align 8
  %.sroa.7488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 24, ptr %.sroa.7488.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.az, align 8
  %.sroa.5621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @103, ptr %.sroa.5621.0..sroa_idx, align 8
  %.sroa.6622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 21, ptr %.sroa.6622.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %.sroa.9317.sroa.4.0..sroa.9317.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9317.sroa.4.0..sroa.9317.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4342.0..sroa_idx, i64 39, i1 false)
  %.sroa.9317.sroa.5.0..sroa.9317.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.9317.sroa.5.0..sroa.9317.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5343.0..sroa_idx, i64 216, i1 false)
  %i.ba = add nuw nsw i64 %i.i, 16
  %i.bb = add nuw nsw i64 %i.ba, %.sroa.6344.0.copyload
  %i.bc = add nuw nsw i64 %i.bb, %i.av
  store i64 %.sroa.0109.0708, ptr %0, align 8
  %.sroa.4312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %.sroa.4312.0..sroa_idx, align 8
  %.sroa.5313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0138.0, ptr %.sroa.5313.0..sroa_idx, align 8
  %.sroa.6314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.02.0.copyload.i.i, ptr %.sroa.6314.0..sroa_idx, align 4
  %.sroa.7315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0182.0, ptr %.sroa.7315.0..sroa_idx, align 8
  %.sroa.8316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.02.0.copyload.i.i666, ptr %.sroa.8316.0..sroa_idx, align 4
  %.sroa.9317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.m, ptr %.sroa.9317.0..sroa_idx, align 8
  %.sroa.10318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.ap, ptr %.sroa.10318.0..sroa_idx, align 8
  %.sroa.11319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %i.av, ptr %.sroa.11319.0..sroa_idx, align 8
  %.sroa.12320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 6, ptr %.sroa.12320.0..sroa_idx, align 8
  %.sroa.13321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 %i.g, ptr %.sroa.13321.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.bc, ptr %.sroa.15.0..sroa_idx, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.b, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire21try_read_u32_as_usize.exit, %bb.n, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32.exit, %bb.v, %bb.w, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32.exit670, %bb.r, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire21try_read_u32_as_usize.exit663, %bb.l, %bb.f, %bb.x
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State10pattern_id(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = shl i64 %1, 2                            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 4 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.d, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = sub nuw i64 %i.c, %i.a                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %i.h = icmp samesign ugt i64 %i.g, 3
  br i1 %i.h, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire25read_pattern_id_unchecked.exit, label %bb.c, !prof !32

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef range(i64 0, -9223372036854775808) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #21, !noalias !463
  unreachable

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire25read_pattern_id_unchecked.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.a
  %.sroa.02.0.copyload.i = load i32, ptr %i.i, align 1, !alias.scope !463
  ret i32 %.sroa.02.0.copyload.i

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.a, i64 noundef %i.c, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, 4611686018427387904) i64 @_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State11pattern_len(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.d = and i64 %i.c, 3                          ; 2 uses
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c, !prof !32

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = lshr exact i64 %i.c, 2
  ret i64 %i.f

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @116, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = shl i64 %1, 2                            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.d = or disjoint i64 %i.a, 3
  %or.cond.not = icmp ult i64 %i.d, %i.c
  br i1 %or.cond.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit, label %bb.b, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.a, 4
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.a, i64 noundef %i.e, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #21
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.a
  %.sroa.02.0.copyload = load i32, ptr %i.h, align 1
  ret i32 %.sroa.02.0.copyload
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State8next_eoi(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.c = shl i64 %i.b, 2                          ; 2 uses
  %i.d = add i64 %i.c, -4                         ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !466, !noundef !3 ; 2 uses
  %i.g = or disjoint i64 %i.d, 3
  %or.cond.not.i = icmp ult i64 %i.g, %i.f
  br i1 %or.cond.not.i, label %_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at.exit, label %bb.b, !prof !39

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.d, i64 noundef %i.c, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #21, !noalias !466
  unreachable

_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !466, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  %.sroa.02.0.copyload.i = load i32, ptr %i.j, align 1, !noalias !466
  ret i32 %.sroa.02.0.copyload.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsj_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_8StateMut11set_next_at(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = shl i64 %1, 2                            ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.e = or disjoint i64 %i.b, 3
  %or.cond.not = icmp ult i64 %i.e, %i.d
  br i1 %or.cond.not, label %bb.b, label %bb.c, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !469
  store i32 %2, ptr %i.a, align 4, !noalias !469
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull %i.h, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !469
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = add i64 %i.b, 4
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.b, i64 noundef %i.i, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #21
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire10read_label(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 256) ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.i
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.02.08.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %i.c = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %.val.i = load i8, ptr %i.c, align 1, !noalias !472, !noundef !3
  %i.d = icmp eq i8 %.val.i, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.02.08.i, 1
  %i.g = icmp eq ptr %i.e, %i.a
  br i1 %i.g, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = icmp samesign ult i64 %.sroa.02.08.i, %.sroa.0.0.i
  tail call void @llvm.assume(i1 %i.h)
  %5 = sub nsw i64 0, %.sroa.02.08.i
  %i.i = and i64 %5, 3
  %6 = add nuw nsw i64 %i.i, %.sroa.02.08.i       ; 2 uses
  %i.j = icmp samesign ult i64 %2, %6
  br i1 %i.j, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %bb.b, %bb.a
  store i32 0, ptr %0, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @120, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 65, ptr %.sroa.69.0..sroa_idx, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %0, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @122, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 65, ptr %.sroa.618.0..sroa_idx, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %4, %.sroa.02.08.i
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %bcmp = tail call i32 @bcmp(ptr nonnull %3, ptr nonnull %1, i64 %4)
  %.not37 = icmp eq i32 %bcmp, 0
  br i1 %.not37, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  store i32 6, ptr %0, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %.sroa.628.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %6, ptr %i.l, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.g, %bb.d, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire11write_label(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.b = icmp ult i64 %2, 256
  br i1 %i.b, label %bb.c, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @131, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #21, !noalias !475
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %.not.not.not.i.not.i15 = icmp samesign eq i64 %2, 0
  br i1 %.not.not.not.i.not.i15, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire15write_label_len.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %.not.not.not.i.not.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.not.not.i.not.i, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire15write_label_len.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.e = phi ptr [ %i.d, %bb.d ], [ %1, %bb.c ]   ; 2 uses
  %.val.i.i = load i8, ptr %i.e, align 1, !alias.scope !475, !noalias !478, !noundef !3
  %.not.i.i.i.i = icmp eq i8 %.val.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @133, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134) #21, !noalias !475
  unreachable

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire15write_label_len.exit: ; preds = %bb.d, %bb.c
  %i.f = or i64 %2, -4                            ; 4 uses
  %sub.i = sub nsw i64 %2, %i.f                   ; 3 uses
  %i.g = icmp samesign ult i64 %4, %sub.i
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire15write_label_len.exit
  %.not = icmp ugt i64 %2, %4
  br i1 %.not, label %bb.h, label %bb.i, !prof !88

bb.g:                                             ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire15write_label_len.exit
  store ptr @127, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.h, align 8
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #21
  unreachable

bb.i:                                             ; preds = %bb.f
  tail call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull %3, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123)
  %i.i = sub nuw nsw i64 %4, %2                   ; 3 uses
  %exitcond.not = icmp eq i64 %4, %2
  br i1 %exitcond.not, label %bb.u, label %bb.n

bb.j:                                             ; preds = %bb.t, %bb.r, %bb.p, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = and i64 %sub.i, 3                        ; 2 uses
  store i64 %i.j, ptr %i.a, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.k, label %bb.l, !prof !32

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %sub.i, ptr %i.l, align 8
  store ptr null, ptr %0, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @116, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #21
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.g
  ret void

bb.n:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %2
  store i8 0, ptr %i.m, align 1
  %exitcond9.not = icmp eq i64 %i.f, -1
  br i1 %exitcond9.not, label %bb.j, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.n = add nuw nsw i64 %2, 1                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.i, 1
  br i1 %exitcond.not.1, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 %i.n
  store i8 0, ptr %i.o, align 1
  %exitcond9.not.1 = icmp eq i64 %i.f, -2
  br i1 %exitcond9.not.1, label %bb.j, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.p = add nuw nsw i64 %2, 2                    ; 2 uses
  %exitcond.not.2 = icmp eq i64 %i.i, 2
  br i1 %exitcond.not.2, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 %i.p
  store i8 0, ptr %i.q, align 1
  %exitcond9.not.2 = icmp eq i64 %i.f, -3
  br i1 %exitcond9.not.2, label %bb.j, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.r = add nuw nsw i64 %2, 3                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.i, 3
  br i1 %exitcond.not.3, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 %i.r
  store i8 0, ptr %i.s, align 1
  br label %bb.j

bb.u:                                             ; preds = %bb.s, %bb.q, %bb.o, %bb.i
  %.lcssa = phi i64 [ %2, %bb.i ], [ %i.n, %bb.o ], [ %i.p, %bb.q ], [ %i.r, %bb.s ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #21
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12read_version(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 4), (8, 12)) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i32 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %2, 4
  br i1 %i.a, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32.exit, label %bb.b

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32.exit: ; preds = %bb.a
  %.sroa.6.12.extract.shift = lshr i64 ptrtoint (ptr @128 to i64), 32
  %.sroa.6.12.extract.trunc = trunc nuw i64 %.sroa.6.12.extract.shift to i32
  store i32 1, ptr %0, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 ptrtoint (ptr @128 to i32), ptr %.sroa.531.0..sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.6.12.extract.trunc, ptr %.sroa.632.0..sroa_idx, align 4
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 7, ptr %.sroa.733.0..sroa_idx, align 8
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %.sroa.02.0.copyload.i.i = load i32, ptr %1, align 1, !alias.scope !481, !noalias !486 ; 2 uses
  %.not45 = icmp eq i32 %.sroa.02.0.copyload.i.i, %3
  br i1 %.not45, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.b, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 3, ptr %0, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %3, ptr %.sroa.440.0..sroa_idx, align 4
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.02.0.copyload.i.i, ptr %.sroa.541.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 4), (8, 12), (16, 24)) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %2, 4
  br i1 %i.a, label %bb.b, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit: ; preds = %bb.a
  %.sroa.02.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !489
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.02.0.copyload.i, ptr %i.b, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %.sroa.532.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit
  %.sink35 = phi i32 [ 1, %bb.b ], [ -1, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit ]
  %.sink = phi i64 [ %4, %bb.b ], [ 4, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit ]
  store i32 %.sink35, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire13try_read_u128(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) initializes((0, 8), (16, 32)) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
end_hunk_1
