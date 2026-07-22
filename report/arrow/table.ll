inline.NumInlined: 2891
inline.NumDeleted: 1224
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5arrow20PromoteTableToSchemaERKSt10shared_ptrINS_5TableEERKS0_INS_6SchemaEERKNS_7compute11CastOptionsEPNS_10MemoryPoolE:bb.a
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.10") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.i

_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g
  store ptr null, ptr %0, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load <2 x ptr>, ptr %13, align 16, !tbaa !51
  store <2 x ptr> %i.w, ptr %i.v, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit248

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit248

bb.j:                                             ; preds = %bb.e
  %i.z = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %bb.k unwind label %bb.r       ; 4 uses

bb.k:                                             ; preds = %bb.j
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %.not.i.i125 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i125, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = add nsw i64 %i.aa, 63                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = and i64 %i.ac, 2305843009213693944
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #25
          to label %.noexc unwind label %bb.s     ; 4 uses

.noexc:                                           ; preds = %bb.l
  %i.af = lshr i64 %i.ab, 6                       ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = sdiv i32 %i.z, 64
  %.sext290 = sext i32 %i.ah to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %.sext290
  %i.aj = and i64 %i.aa, -9223372036854775745
  %i.ak = icmp ugt i64 %i.aj, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.ak, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ai, i64 %storemerge.idx.i.i.i.i.i
  %i.al = and i32 %i.z, 63
  %.idx.i = shl nuw nsw i64 %i.af, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ae, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %.noexc, %bb.k
  %.sroa.0270.0 = phi ptr [ null, %bb.k ], [ %i.ae, %.noexc ] ; 7 uses
  %.sroa.12275.0 = phi ptr [ null, %bb.k ], [ %storemerge.i.i.i.i.i, %.noexc ] ; 2 uses
  %.sroa.16.0 = phi i32 [ 0, %bb.k ], [ %i.al, %.noexc ] ; 2 uses
  %.sroa.20277.0 = phi ptr [ null, %bb.k ], [ %i.ag, %.noexc ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.am = load ptr, ptr %2, align 8, !tbaa !35
  %i.an = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %bb.m unwind label %bb.t       ; 2 uses

bb.m:                                             ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.ao = sext i32 %i.an to i64                   ; 3 uses
  %i.ap = icmp slt i32 %i.an, 0
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #24
          to label %.noexc127 unwind label %bb.t

.noexc127:                                        ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !116
  %i.as = load ptr, ptr %14, align 8, !tbaa !77   ; 5 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = ashr exact i64 %i.av, 4
  %i.ax = icmp ult i64 %i.aw, %i.ao
  br i1 %i.ax, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !81 ; 3 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.au
  %i.bc = shl nuw nsw i64 %i.ao, 4
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #25
          to label %.noexc128 unwind label %bb.t  ; 4 uses

.noexc128:                                        ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.as, %i.az
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc128, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %i.bd, %.noexc128 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %i.as, %.noexc128 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bf = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !51, !alias.scope !384, !noalias !381
  store ptr null, ptr %i.be, align 8, !tbaa !52, !alias.scope !384, !noalias !381
  store <2 x ptr> %i.bf, ptr %.012.i.i.i.i, align 8, !tbaa !51, !alias.scope !381, !noalias !384
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !82, !alias.scope !384, !noalias !381
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i126 = icmp eq ptr %i.bg, %i.az
  br i1 %.not.i.i.i.i126, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !386

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc128
  %.not.i8.i = icmp eq ptr %i.as, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.av) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.p, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.bd, ptr %14, align 8, !tbaa !77
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store ptr %i.bi, ptr %i.ay, align 8, !tbaa !81
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.ao
  store ptr %i.bj, ptr %i.aq, align 8, !tbaa !116
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.o
  %i.bk = load ptr, ptr %1, align 8, !tbaa !106
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  store ptr %4, ptr %15, align 8, !tbaa !387
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %14, ptr %i.bn, align 8, !tbaa !391
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !392
  %i.bp = load ptr, ptr %2, align 8, !tbaa !35
  %i.bq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5arrow6Schema6fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bp)
          to label %bb.q unwind label %bb.u       ; 2 uses

bb.q:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE7reserveEm.exit
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !210 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !210 ; 2 uses
  %i.bu = icmp eq ptr %i.br, %i.bt
  br i1 %i.bu, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  br label %bb.v

bb.r:                                             ; preds = %bb.j
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit248

bb.s:                                             ; preds = %bb.l
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit248

bb.t:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_M_allocateEm.exit.i, %bb.n, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.u:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE7reserveEm.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.v:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit.jt3
  %.sroa.0266.0295 = phi ptr [ %i.br, %.lr.ph ], [ %i.nk, %_ZNSt6vectorIiSaIiEED2Ev.exit.jt3 ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.cr = load ptr, ptr %12, align 8, !tbaa !35   ; 2 uses
  %i.cs = load ptr, ptr %.sroa.0266.0295, align 8, !tbaa !53 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !153
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !235
  invoke void @_ZNK5arrow6Schema18GetAllFieldIndicesESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.78") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %i.cr, i64 %i.cw, ptr %i.cu)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cx = load ptr, ptr %16, align 8, !tbaa !393  ; 3 uses
  %i.cy = load ptr, ptr %i.bv, align 8, !tbaa !393 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.da = load ptr, ptr %.sroa.0266.0295, align 8, !tbaa !53
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  invoke fastcc void @"_ZZN5arrow20PromoteTableToSchemaERKSt10shared_ptrINS_5TableEERKS0_INS_6SchemaEERKNS_7compute11CastOptionsEPNS_10MemoryPoolEENK3$_0clERKS0_INS_8DataTypeEE"(ptr dead_on_unwind noalias writable align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(16) %i.db)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.z

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.x
  %i.dc = load ptr, ptr %18, align 8, !tbaa !118  ; 2 uses
  store ptr %i.dc, ptr %17, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_ZN5arrow6StatusD2Ev.exit132.jt3, label %bb.aa, !prof !121

bb.y:                                             ; preds = %bb.v
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit194

bb.z:                                             ; preds = %bb.x
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.ed

bb.aa:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %17) #27
  %.pr = load ptr, ptr %17, align 8, !tbaa !118   ; 2 uses
  %.not.i131 = icmp eq ptr %.pr, null
  br i1 %.not.i131, label %_ZN5arrow6StatusD2Ev.exit132.jt1, label %bb.ab, !prof !292

bb.ab:                                            ; preds = %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %.pr, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !130, !range !140, !noundef !141
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZN5arrow6StatusD2Ev.exit132.jt1, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #27
  br label %_ZN5arrow6StatusD2Ev.exit132.jt1

_ZN5arrow6StatusD2Ev.exit132.jt3:                 ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.dx

_ZN5arrow6StatusD2Ev.exit132.jt1:                 ; preds = %bb.ab, %bb.aa, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.dy

bb.ad:                                            ; preds = %bb.w
  %i.dj = ptrtoint ptr %i.cy to i64
  %i.dk = ptrtoint ptr %i.cx to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = icmp ugt i64 %i.dl, 4
  br i1 %i.dm, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.dn = load ptr, ptr %.sroa.0266.0295, align 8, !tbaa !53
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27, !noalias !394
  invoke void @_ZN5arrow8internal12JoinToStringIJRA67_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 1 dereferenceable(67) @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %i.do)
          to label %.noexc133 unwind label %bb.aj

.noexc133:                                        ; preds = %bb.ae
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %19, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %.noexc133
  %i.dp = load ptr, ptr %11, align 8, !tbaa !153, !noalias !394 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.cl
  br i1 %i.dq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.af
  %i.dr = load i64, ptr %i.cl, align 8, !tbaa !61, !noalias !394
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.ag:                                            ; preds = %.noexc133
  %i.dt = landingpad { ptr, i32 }
          cleanup
  %i.du = load ptr, ptr %11, align 8, !tbaa !153, !noalias !394 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.cl
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.ag
  %i.dw = load i64, ptr %i.cl, align 8, !tbaa !61, !noalias !394
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !394
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !394
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %19) #27
  %i.dy = load ptr, ptr %19, align 8, !tbaa !118  ; 2 uses
  %.not.i134 = icmp eq ptr %i.dy, null
  br i1 %.not.i134, label %_ZN5arrow6StatusD2Ev.exit135, label %bb.ah, !prof !121

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !130, !range !140, !noundef !141
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %_ZN5arrow6StatusD2Ev.exit135, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #27
  br label %_ZN5arrow6StatusD2Ev.exit135

_ZN5arrow6StatusD2Ev.exit135:                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.dy

bb.aj:                                            ; preds = %bb.ae
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.aj
  %eh.lpad-body = phi { ptr, i32 } [ %i.ec, %bb.aj ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.ed

bb.ak:                                            ; preds = %bb.ad
  %i.ed = load i32, ptr %i.cx, align 4, !tbaa !3  ; 5 uses
  %i.ee = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, i32 noundef %i.ed)
          to label %bb.al unwind label %bb.as     ; 3 uses

bb.al:                                            ; preds = %bb.ak
  %i.ef = load ptr, ptr %.sroa.0266.0295, align 8, !tbaa !53 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 72
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !399, !range !140, !noundef !141
  %i.ei = trunc nuw i8 %i.eh to i1
  %.pre299 = load ptr, ptr %i.ee, align 8, !tbaa !53 ; 3 uses
  br i1 %i.ei, label %bb.au, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %.pre299, i64 72
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !399, !range !140, !noundef !141
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.an, label %bb.au

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.em = getelementptr inbounds nuw i8, ptr %.pre299, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27, !noalias !404
  invoke void @_ZN5arrow8internal12JoinToStringIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA49_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 1 dereferenceable(25) @.str.20, ptr noundef nonnull align 8 dereferenceable(32) %i.em, ptr noundef nonnull align 1 dereferenceable(49) @.str.21)
          to label %.noexc138 unwind label %bb.at

.noexc138:                                        ; preds = %bb.an
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %20, i8 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %.noexc138
  %i.en = load ptr, ptr %10, align 8, !tbaa !153, !noalias !404 ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.bw
  br i1 %i.eo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i136: ; preds = %bb.ao
  %i.ep = load i64, ptr %i.bw, align 8, !tbaa !61, !noalias !404
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i137

bb.ap:                                            ; preds = %.noexc138
  %i.er = landingpad { ptr, i32 }
          cleanup
  %i.es = load ptr, ptr %10, align 8, !tbaa !153, !noalias !404 ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.bw
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.ap
  %i.eu = load i64, ptr %i.bw, align 8, !tbaa !61, !noalias !404
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
end_hunk_0
begin_hunk_1_@_ZN5arrow20PromoteTableToSchemaERKSt10shared_ptrINS_5TableEERKS0_INS_6SchemaEERKNS_7compute11CastOptionsEPNS_10MemoryPoolE:bb.a

bb.at:                                            ; preds = %bb.an
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body139

.body139:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %bb.at
  %eh.lpad-body140 = phi { ptr, i32 } [ %i.fb, %bb.at ], [ %i.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.ed

bb.au:                                            ; preds = %bb.al, %bb.am
  %i.fc = sext i32 %i.ed to i64                   ; 2 uses
  %i.fd = sdiv i32 %i.ed, 64
  %.sext = sext i32 %i.fd to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %.sroa.0270.0, i64 %.sext
  %i.ff = and i64 %i.fc, -9223372036854775745
  %i.fg = icmp ugt i64 %i.ff, -9223372036854775808
  %storemerge.idx.i.i.i.i.i143 = select i1 %i.fg, i64 -8, i64 0
  %storemerge.i.i.i.i.i144 = getelementptr inbounds i8, ptr %i.fe, i64 %storemerge.idx.i.i.i.i.i143 ; 2 uses
  %i.fh = and i64 %i.fc, 63
  %i.fi = shl nuw i64 1, %i.fh
  %i.fj = load i64, ptr %storemerge.i.i.i.i.i144, align 8, !tbaa !109
  %i.fk = or i64 %i.fj, %i.fi
  store i64 %i.fk, ptr %storemerge.i.i.i.i.i144, align 8, !tbaa !109
  %i.fl = getelementptr inbounds nuw i8, ptr %.pre299, i64 56
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !190
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.fo = invoke noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKSt10shared_ptrIS0_Eb(ptr noundef nonnull align 8 dereferenceable(72) %i.fm, ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i1 noundef zeroext false)
          to label %bb.av unwind label %bb.as

bb.av:                                            ; preds = %bb.au
  br i1 %i.fo, label %bb.aw, label %bb.bj

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  %i.fp = load ptr, ptr %1, align 8, !tbaa !106   ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !33
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8
  invoke void %i.fs(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.49") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %i.fp, i32 noundef %i.ed)
          to label %bb.ax unwind label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  %i.ft = load ptr, ptr %i.cj, align 8, !tbaa !81 ; 5 uses
  %i.fu = load ptr, ptr %i.aq, align 8, !tbaa !116
  %.not.i.i145 = icmp eq ptr %i.ft, %i.fu
  br i1 %.not.i.i145, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr null, ptr %i.fv, align 8, !tbaa !52
  %i.fw = load <2 x ptr>, ptr %21, align 16, !tbaa !51
  store ptr null, ptr %i.ck, align 8, !tbaa !52
  store <2 x ptr> %i.fw, ptr %i.ft, align 8, !tbaa !51
  store ptr null, ptr %21, align 16, !tbaa !82
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store ptr %i.fx, ptr %i.cj, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backEOS3_.exit

bb.az:                                            ; preds = %bb.ax
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr %i.ft, ptr noundef nonnull align 8 dereferenceable(16) %21)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backEOS3_.exit unwind label %bb.bh

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.ay, %bb.az
  %i.fy = load ptr, ptr %i.ck, align 8, !tbaa !52 ; 8 uses
  %.not.i.i147 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i147, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backEOS3_.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 4 uses
  %i.ga = load atomic i64, ptr %i.fz acquire, align 8 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 4294967297
  %i.gc = trunc i64 %i.ga to i32                  ; 2 uses
  br i1 %i.gb, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.fz, align 8, !tbaa !62
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !64
  %i.ge = load ptr, ptr %i.fy, align 8, !tbaa !33
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #27, !inline_history !250
  %i.gh = load ptr, ptr %i.fy, align 8, !tbaa !33
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #27, !inline_history !250
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bc:                                            ; preds = %bb.ba
  %i.gk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i148 = icmp eq i8 %i.gk, 0
  br i1 %.not.i.i.i148, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gl = add nsw i32 %i.gc, -1
  store i32 %i.gl, ptr %i.fz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149

bb.be:                                            ; preds = %bb.bc
  %i.gm = atomicrmw volatile add ptr %i.fz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i150 = phi i32 [ %i.gc, %bb.bd ], [ %i.gm, %bb.be ]
  %i.gn = icmp eq i32 %.0.i.i.i.i150, 1
  br i1 %i.gn, label %bb.bf, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backEOS3_.exit, %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.dx

bb.bg:                                            ; preds = %bb.aw
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.az
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #27
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn109 = phi { ptr, i32 } [ %i.gp, %bb.bh ], [ %i.go, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.ed

bb.bj:                                            ; preds = %bb.av
  %i.gq = load ptr, ptr %i.ee, align 8, !tbaa !53
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 56
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !190 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !191
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %bb.bk, label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  %i.gw = load ptr, ptr %.sroa.0266.0295, align 8, !tbaa !53
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 56
  invoke fastcc void @"_ZZN5arrow20PromoteTableToSchemaERKSt10shared_ptrINS_5TableEERKS0_INS_6SchemaEERKNS_7compute11CastOptionsEPNS_10MemoryPoolEENK3$_0clERKS0_INS_8DataTypeEE"(ptr dead_on_unwind noalias writable align 8 %23, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(16) %i.gx)
          to label %_ZN5arrow6StatusD2Ev.exit152 unwind label %bb.bl

_ZN5arrow6StatusD2Ev.exit152:                     ; preds = %bb.bk
  %i.gy = load ptr, ptr %23, align 8, !tbaa !118  ; 2 uses
  store ptr %i.gy, ptr %22, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %_ZN5arrow6StatusD2Ev.exit156.jt3, label %bb.bm, !prof !121

bb.bl:                                            ; preds = %bb.bk
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %bb.ed

bb.bm:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit152
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %22) #27
  %.pr282 = load ptr, ptr %22, align 8, !tbaa !118 ; 2 uses
  %.not.i155 = icmp eq ptr %.pr282, null
  br i1 %.not.i155, label %_ZN5arrow6StatusD2Ev.exit156.jt1, label %bb.bn, !prof !292

bb.bn:                                            ; preds = %bb.bm
  %i.hb = getelementptr inbounds nuw i8, ptr %.pr282, i64 1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !130, !range !140, !noundef !141
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %_ZN5arrow6StatusD2Ev.exit156.jt1, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #27
  br label %_ZN5arrow6StatusD2Ev.exit156.jt1

_ZN5arrow6StatusD2Ev.exit156.jt3:                 ; preds = %_ZN5arrow6StatusD2Ev.exit152
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %bb.dx

_ZN5arrow6StatusD2Ev.exit156.jt1:                 ; preds = %bb.bn, %bb.bm, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %bb.dy

bb.bp:                                            ; preds = %bb.bj
  %i.he = load ptr, ptr %.sroa.0266.0295, align 8, !tbaa !53
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 56
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !190
  %i.hh = invoke noundef zeroext i1 @_ZN5arrow7compute7CanCastERKNS_8DataTypeES3_(ptr noundef nonnull align 8 dereferenceable(72) %i.gs, ptr noundef nonnull align 8 dereferenceable(72) %i.hg)
          to label %bb.bq unwind label %bb.as

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.hh, label %bb.cb, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  %i.hi = load ptr, ptr %.sroa.0266.0295, align 8, !tbaa !53
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  %37 = load ptr, ptr %.sroa.0266.0295, align 8, !tbaa !53
  %i.hk = getelementptr inbounds nuw i8, ptr %37, i64 56
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !190 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !33
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8
  invoke void %i.ho(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(72) %i.hl, i1 noundef zeroext false)
          to label %bb.bs unwind label %bb.by

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  %i.hp = load ptr, ptr %i.ee, align 8, !tbaa !53
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 56
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !190 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !33
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.hu = load ptr, ptr %i.ht, align 8
  invoke void %i.hu(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(72) %i.hr, i1 noundef zeroext false)
          to label %bb.bt unwind label %bb.bz

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27, !noalias !409
  invoke void @_ZN5arrow8internal12JoinToStringIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA23_S2_SA_RA5_S2_SA_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(25) @.str.20, ptr noundef nonnull align 8 dereferenceable(32) %i.hj, ptr noundef nonnull align 1 dereferenceable(23) @.str.22, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 1 dereferenceable(5) @.str.23, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %.noexc159 unwind label %bb.ca

.noexc159:                                        ; preds = %bb.bt
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %24, i8 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %.noexc159
  %i.hv = load ptr, ptr %9, align 8, !tbaa !153, !noalias !409 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.bx
  br i1 %i.hw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i157: ; preds = %bb.bu
  %i.hx = load i64, ptr %i.bx, align 8, !tbaa !61, !noalias !409
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i158

bb.bv:                                            ; preds = %.noexc159
  %i.hz = landingpad { ptr, i32 }
          cleanup
  %i.ia = load ptr, ptr %9, align 8, !tbaa !153, !noalias !409 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.bx
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.bv
  %i.ic = load i64, ptr %i.bx, align 8, !tbaa !61, !noalias !409
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27, !noalias !409
  br label %.body160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i158: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27, !noalias !409
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %24) #27
  %i.ie = load ptr, ptr %24, align 8, !tbaa !118  ; 2 uses
  %.not.i162 = icmp eq ptr %i.ie, null
  br i1 %.not.i162, label %_ZN5arrow6StatusD2Ev.exit163, label %bb.bw, !prof !121

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i158
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 1
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !130, !range !140, !noundef !141
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %_ZN5arrow6StatusD2Ev.exit163, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #27
  br label %_ZN5arrow6StatusD2Ev.exit163

_ZN5arrow6StatusD2Ev.exit163:                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i158, %bb.bw, %bb.bx
  %i.ii = load ptr, ptr %26, align 8, !tbaa !153  ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.by
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit163
  %i.ik = load i64, ptr %i.by, align 8, !tbaa !61
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit163, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  %i.im = load ptr, ptr %25, align 8, !tbaa !153  ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.bz
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.io = load i64, ptr %i.bz, align 8, !tbaa !61
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %bb.dy

bb.by:                                            ; preds = %bb.br
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

bb.bz:                                            ; preds = %bb.bs
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

bb.ca:                                            ; preds = %bb.bt
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %.body160

.body160:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %bb.ca
  %eh.lpad-body161 = phi { ptr, i32 } [ %i.is, %bb.ca ], [ %i.hz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ] ; 2 uses
  %i.it = load ptr, ptr %26, align 8, !tbaa !153  ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.by
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %.body160
  %i.iv = load i64, ptr %i.by, align 8, !tbaa !61
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %.body160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167, %bb.bz
  %.pn = phi { ptr, i32 } [ %i.ir, %bb.bz ], [ %eh.lpad-body161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %eh.lpad-body161, %.body160 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  %i.ix = load ptr, ptr %25, align 8, !tbaa !153  ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.bz
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %i.iz = load i64, ptr %i.bz, align 8, !tbaa !61
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.ja) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170, %bb.by
  %.pn.pn = phi { ptr, i32 } [ %i.iq, %bb.by ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %bb.ed

bb.cb:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  invoke void @_ZN5arrow7compute11ExecContextC1EPNS_10MemoryPoolEPNS_8internal8ExecutorEPNS0_16FunctionRegistryE(ptr noundef nonnull align 8 dereferenceable(34) %27, ptr noundef %4, ptr noundef null, ptr noundef null)
          to label %bb.cc unwind label %bb.dc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27
  %i.jb = load ptr, ptr %1, align 8, !tbaa !106   ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !33
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  invoke void %i.je(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.49") align 8 %30, ptr noundef nonnull align 8 dereferenceable(32) %i.jb, i32 noundef %i.ed)
          to label %bb.cd unwind label %bb.dd

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN5arrow5DatumC1ESt10shared_ptrINS_12ChunkedArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull %30)
          to label %bb.ce unwind label %bb.de

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  %i.jf = load ptr, ptr %.sroa.0266.0295, align 8, !tbaa !53 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 56
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !190 ; 3 uses
  store ptr %i.jh, ptr %32, align 8, !tbaa !190
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 64
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !52 ; 4 uses
  store ptr %i.jj, ptr %i.ca, align 8, !tbaa !52
  %.not.i.i.i173 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i173, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 3 uses
  %i.jl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i174 = icmp eq i8 %i.jl, 0
  br i1 %.not.i.i.i.i174, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jm = load i32, ptr %i.jk, align 4, !tbaa !3
  %i.jn = add nsw i32 %i.jm, 1
  store i32 %i.jn, ptr %i.jk, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.ch:                                            ; preds = %bb.cf
  %i.jo = atomicrmw volatile add ptr %i.jk, i32 1 acq_rel, align 4 ; 0 uses
  %.pre300 = load ptr, ptr %32, align 8, !tbaa !190
  %.pre301 = load ptr, ptr %i.ca, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.ce, %bb.cg, %bb.ch
  %i.jp = phi ptr [ null, %bb.ce ], [ %i.jj, %bb.cg ], [ %.pre301, %bb.ch ]
  %i.jq = phi ptr [ %i.jh, %bb.ce ], [ %i.jh, %bb.cg ], [ %.pre300, %bb.ch ] ; 2 uses
  store ptr %i.jq, ptr %31, align 8, !tbaa !370
  store ptr %i.jq, ptr %i.cb, align 8, !tbaa !190
end_hunk_1
begin_hunk_2_@_ZNK5arrow5Table13CombineChunksEPNS_10MemoryPoolE:bb.a

bb.eb:                                            ; preds = %bb.dz
  %i.qf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i168 = icmp eq i8 %i.qf, 0
  br i1 %.not.i.i.i.i.i.i.i.i168, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.qg = add nsw i32 %i.px, -1
  store i32 %i.qg, ptr %i.pu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i169

bb.ed:                                            ; preds = %bb.eb
  %i.qh = atomicrmw volatile add ptr %i.pu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i169

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i169: ; preds = %bb.ed, %bb.ec
  %.0.i.i.i.i.i.i.i.i.i170 = phi i32 [ %i.px, %bb.ec ], [ %i.qh, %bb.ed ]
  %i.qi = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i170, 1
  br i1 %i.qi, label %bb.ee, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i171, !prof !66

bb.ee:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i169
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pt) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i171

_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i171: ; preds = %bb.ee, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i169, %bb.ea, %.lr.ph.i.i.i165
  %i.qj = getelementptr inbounds nuw i8, ptr %.05.i.i.i166, i64 16 ; 2 uses
  %.not.i.i.i172 = icmp eq ptr %i.qj, %.pre231
  br i1 %.not.i.i.i172, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i173, label %.lr.ph.i.i.i165, !llvm.loop !152

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i173: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i171
  %.pr.i174 = load ptr, ptr %3, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i173, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142.jt1
  %i.qk = phi ptr [ %.pr.i174, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i173 ], [ %.pre, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142.jt1 ] ; 3 uses
  %.not.i.i1.i176 = icmp eq ptr %i.qk, null
  br i1 %.not.i.i1.i176, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit177, label %bb.ef

bb.ef:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175
  %i.ql = load ptr, ptr %i.l, align 8, !tbaa !116
  %i.qm = ptrtoint ptr %i.ql to i64
  %i.qn = ptrtoint ptr %i.qk to i64
  %i.qo = sub i64 %i.qm, %i.qn
  call void @_ZdlPvm(ptr noundef nonnull %i.qk, i64 noundef %i.qo) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit177

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit177: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175.thread, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.eg:                                            ; preds = %bb.o, %bb.ds, %bb.dy
  %.pn70 = phi { ptr, i32 } [ %i.pr, %bb.dy ], [ %.pn63.pn.pn.pn, %bb.ds ], [ %i.bk, %bb.o ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn70
}

declare void @_ZN5arrow11ConcatenateERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.137") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !118    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, !prof !121

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !64
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !518
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !518
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, !prof !66

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !118    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, !prof !129

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !130, !range !140, !noundef !141
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow5Table20CombineChunksToBatchEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.141") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result", align 8     ; 13 uses
  %4 = alloca %"class.std::shared_ptr.10", align 16 ; 6 uses
  %5 = alloca %"class.std::vector.21", align 16   ; 16 uses
  %6 = alloca %"class.arrow::Result.137", align 8 ; 12 uses
  %7 = alloca %"class.std::shared_ptr.60", align 16 ; 8 uses
  %8 = alloca %"class.std::shared_ptr.57", align 16 ; 7 uses
  %9 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %10 = alloca %"class.std::vector.21", align 16  ; 7 uses
  %11 = alloca %"class.std::shared_ptr.146", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZNK5arrow5Table13CombineChunksEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !118
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b, !prof !121

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  br label %bb.bv

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !51, !noalias !525
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !106, !noalias !525 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !52, !noalias !525
  store <2 x ptr> %i.f, ptr %4, align 16, !tbaa !51, !alias.scope !525
  store ptr null, ptr %i.c, align 8, !tbaa !106, !noalias !525
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !80   ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %.critedge37, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.f:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.082.085 = phi ptr [ %i.l, %.lr.ph ], [ %i.cr, %.critedge ] ; 3 uses
  %i.w = load ptr, ptr %.sroa.082.085, align 8, !tbaa !82 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !172
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !170  ; 4 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = and i64 %i.ac, 68719476720
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.ae

bb.g:                                             ; preds = %bb.aj
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %12 = load ptr, ptr %.sroa.082.085, align 8, !tbaa !82
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ah = load i64, ptr %i.r, align 8, !tbaa !103
  invoke void @_ZN5arrow15MakeArrayOfNullERKSt10shared_ptrINS_8DataTypeEElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.137") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 noundef %i.ah, ptr noundef %2)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %6, align 8, !tbaa !118
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  br i1 %i.aj, label %bb.l, label %bb.j, !prof !121

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  br label %bb.u

bb.k:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !526)
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %i.al = load <2 x ptr>, ptr %i.s, align 8, !tbaa !51, !noalias !532
  %i.am = load ptr, ptr %i.s, align 8, !tbaa !213, !noalias !532
  store ptr null, ptr %i.u, align 8, !tbaa !52, !noalias !532
  store <2 x ptr> %i.al, ptr %7, align 16, !tbaa !51, !alias.scope !532
  store ptr null, ptr %i.s, align 8, !tbaa !213, !noalias !532
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !172 ; 5 uses
  %i.ao = load ptr, ptr %i.q, align 16, !tbaa !171
  %.not.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.am, ptr %i.an, align 8, !tbaa !213
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !52
  %i.aq = load ptr, ptr %i.t, align 8, !tbaa !52
  store ptr null, ptr %i.t, align 8, !tbaa !52
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !52
  store ptr null, ptr %7, align 16, !tbaa !213
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ar, ptr %i.p, align 8, !tbaa !172
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit

bb.n:                                             ; preds = %bb.l
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.an, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit unwind label %bb.ad

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.m, %bb.n
  %i.as = load ptr, ptr %i.t, align 8, !tbaa !52  ; 8 uses
  %.not.i.i38 = icmp eq ptr %i.as, null
  br i1 %.not.i.i38, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.at, align 8, !tbaa !62
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !64
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #27, !inline_history !180
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #27, !inline_history !180
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i = phi i32 [ %i.aw, %bb.r ], [ %i.bg, %bb.s ]
  %i.bh = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bh, label %bb.t, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #27
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j
  %i.bi = load ptr, ptr %6, align 8, !tbaa !118   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.v, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !121

bb.v:                                             ; preds = %bb.u
  %i.bk = load ptr, ptr %i.u, align 8, !tbaa !52  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bl, align 8, !tbaa !62
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !64
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !33
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27, !inline_history !452
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !33
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27, !inline_history !452
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.y:                                             ; preds = %bb.w
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bo, %bb.z ], [ %i.by, %bb.aa ]
  %i.bz = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bz, label %bb.ab, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !66

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.x
  %.pr.i.pr = load ptr, ptr %6, align 8, !tbaa !118 ; 2 uses
  %.not.i.i39 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i39, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !129

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %bb.u
  %i.ca = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i ], [ %i.bi, %bb.u ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !130, !range !140, !noundef !141
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %bb.v, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %i.aj, label %.critedge, label %.loopexit

bb.ad:                                            ; preds = %bb.n
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.bu

bb.ae:                                            ; preds = %bb.f
  %i.cf = load ptr, ptr %i.p, align 8, !tbaa !172 ; 5 uses
  %i.cg = load ptr, ptr %i.q, align 16, !tbaa !171
  %.not.i = icmp eq ptr %i.cf, %i.cg
  br i1 %.not.i, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ch = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !52 ; 2 uses
  %i.cj = load <2 x ptr>, ptr %i.z, align 8, !tbaa !51
  store <2 x ptr> %i.cj, ptr %i.cf, align 8, !tbaa !51
  %.not.i.i.i.i.i40 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i40, label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 3 uses
end_hunk_2
