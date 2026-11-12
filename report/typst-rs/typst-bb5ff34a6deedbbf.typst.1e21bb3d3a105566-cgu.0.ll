Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst-bb5ff34a6deedbbf.typst.1e21bb3d3a105566-cgu.0?download=true
inline.NumInlined: 451
inline.NumDeleted: 242
begin_hunk_0_@_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write:bb.a

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i10.i
  %.sroa.015.0.copyload.i15.i = load i16, ptr %i.bq, align 1, !alias.scope !837
  %i.br = zext i16 %.sroa.015.0.copyload.i15.i to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i10.i, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i11.i
  %i.bv = or disjoint i64 %.sroa.03.0.i10.i, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12.i = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i10.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i13.i = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i11.i, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i12.i, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i12.i, %.sroa.0.1.lcssa.i ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !837, !noundef !6
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i12.i, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i13.i
  br label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i

_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i: ; preds = %bb.p, %bb.o
  %.sroa.0.2.i14.i = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i13.i, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14.i, ptr %i.cf, align 8, !alias.scope !832
  br label %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs2AodJlUx5rK_5typst.exit

bb.q:                                             ; preds = %bb.q, %.lr.ph.i
  %i.cg = phi i64 [ %.promoted22.i, %.lr.ph.i ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted20.i, %.lr.ph.i ], [ %i.cy, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted19.i, %.lr.ph.i ], [ %i.cv, %bb.q ]
  %.sroa.0.118.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118.i
  %.sroa.07.0.copyload.i = load i64, ptr %i.ck, align 1, !alias.scope !833 ; 2 uses
  %i.cl = xor i64 %.sroa.07.0.copyload.i, %i.ci   ; 3 uses
  %i.cm = add i64 %i.cj, %i.ch                    ; 3 uses
  %i.cn = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.co = xor i64 %i.cm, %i.cn                    ; 3 uses
  %i.cp = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.cq = add i64 %i.cl, %i.cg                    ; 2 uses
  %i.cr = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cs = xor i64 %i.cq, %i.cr                    ; 3 uses
  %i.ct = add i64 %i.cs, %i.cp                    ; 2 uses
  %i.cu = tail call noundef i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 21)
  %i.cv = xor i64 %i.cu, %i.ct                    ; 2 uses
  %i.cw = add i64 %i.cq, %i.co                    ; 3 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 17)
  %i.cy = xor i64 %i.cw, %i.cx                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 32) ; 2 uses
  %i.da = xor i64 %i.ct, %.sroa.07.0.copyload.i   ; 2 uses
  %i.db = add nuw i64 %.sroa.0.118.i, 8           ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge.i

_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs2AodJlUx5rK_5typst.exit: ; preds = %bb.j, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i
  %storemerge.i = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !alias.scope !832
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsE_NtCsdaEETE4DqmE_13typst_library4diagNtB5_16SourceDiagnosticNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i8, ptr %i.b, align 8, !range !10, !noundef !6
  %i.d = load <2 x i64>, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.g = load i8, ptr %i.f, align 1, !noundef !6
  %.not = icmp sgt i8 %i.g, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val22 = load ptr, ptr %i.e, align 8           ; 5 uses
  %.val23 = load i64, ptr %i.h, align 8
  br i1 %.not, label %bb.b, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.val22, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %.val22, i64 -16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs2AodJlUx5rK_5typst(ptr noundef nonnull %.val22) #25
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.06.0 = phi ptr [ %.val22, %bb.c ], [ inttoptr (i64 16 to ptr), %bb.b ], [ %.val22, %bb.a ]
  store ptr %.sroa.06.0, ptr %i.a, align 8
  %.sroa.58.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.val23, ptr %.sroa.58.0..sroa_idx9, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val24 = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val25 = load i64, ptr %i.m, align 8           ; 3 uses
  %.not.i.i28 = icmp eq ptr %.val24, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i28, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit
  %i.n = getelementptr inbounds i8, ptr %.val24, i64 -16
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.i, !prof !9

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs2AodJlUx5rK_5typst(ptr noundef nonnull %.val24, i64 noundef %.val25) #25
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.l, %bb.h
  %.pn = phi { ptr, i32 } [ %i.w, %bb.l ], [ %i.q, %bb.h ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #28
          to label %bb.o unwind label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.e, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val26 = load ptr, ptr %i.r, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val27 = load i64, ptr %i.s, align 8           ; 2 uses
  %.not.i.i29 = icmp eq ptr %.val26, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i29, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds i8, ptr %.val26, i64 -16
  %i.u = atomicrmw add ptr %i.t, i64 1 monotonic, align 8
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.m, !prof !9

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBO_8DiagSpanEECs2AodJlUx5rK_5typst(ptr noundef nonnull %.val26, i64 noundef %.val27) #25
          to label %.noexc30 unwind label %bb.l

.noexc30:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEEECs2AodJlUx5rK_5typst(ptr nonnull %.val24, i64 %.val25) #28
          to label %bb.g unwind label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.c, ptr %i.x, align 8
  store <2 x i64> %i.d, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val24, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val25, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.val26, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val27, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.n:                                             ; preds = %bb.l, %bb.g
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.o:                                             ; preds = %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs3oUPovFnLWP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [4 x i8], align 4                 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  %i.c = icmp samesign ult i32 %1, 128
  %.sink2.i.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %.sink2.i.i.sroa.gep1.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %.sink2.i.i.sroa.gep2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !851
  store i32 0, ptr %i.b, align 4, !noalias !851
  %i.d = icmp samesign ult i32 %1, 2048
  %i.e = lshr i32 %1, 6
  %i.f = trunc i32 %i.e to i8                     ; 2 uses
  %i.g = and i8 %i.f, 63
  %i.h = or disjoint i8 %i.g, -128                ; 2 uses
  %i.i = lshr i32 %1, 12
  %i.j = trunc i32 %i.i to i8                     ; 2 uses
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128
  %i.m = lshr i32 %1, 18
  %i.n = trunc nuw nsw i32 %i.m to i8
  %i.o = or disjoint i8 %i.n, -16
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = or disjoint i8 %i.f, -64
  store i8 %i.p, ptr %i.b, align 4, !alias.scope !852, !noalias !851
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.d:                                             ; preds = %bb.b
  %i.q = icmp samesign ult i32 %1, 65536
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = or disjoint i8 %i.j, -32
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !852, !noalias !851
  store i8 %i.h, ptr %.sink2.i.i.sroa.gep.i, align 1, !alias.scope !852, !noalias !851
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.f:                                             ; preds = %bb.d
  store i8 %i.o, ptr %i.b, align 4, !alias.scope !852, !noalias !851
  store i8 %i.l, ptr %.sink2.i.i.sroa.gep.i, align 1, !alias.scope !852, !noalias !851
  store i8 %i.h, ptr %.sink2.i.i.sroa.gep1.i, align 2, !alias.scope !852, !noalias !851
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i: ; preds = %bb.f, %bb.e, %bb.c
  %.sroa.0.0.i.i = phi i64 [ 2, %bb.c ], [ 3, %bb.e ], [ 4, %bb.f ]
  %.sink2.i.i.sroa.phi.i = phi ptr [ %.sink2.i.i.sroa.gep.i, %bb.c ], [ %.sink2.i.i.sroa.gep1.i, %bb.e ], [ %.sink2.i.i.sroa.gep2.i, %bb.f ]
  %i.s = trunc i32 %1 to i8
  %i.t = and i8 %i.s, 63
  %i.u = or disjoint i8 %i.t, -128
  store i8 %i.u, ptr %.sink2.i.i.sroa.phi.i, align 1, !alias.scope !852, !noalias !851
  call void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !851
  br label %_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push.exit

bb.g:                                             ; preds = %bb.a
  %i.v = trunc nuw nsw i32 %1 to i8               ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !854, !noundef !6 ; 3 uses
  %.not.i.i = icmp sgt i8 %i.x, -1
  br i1 %.not.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !856, !noundef !6
  %.val.i.i.i = load ptr, ptr %0, align 8, !alias.scope !856, !nonnull !6, !noundef !6 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr i8, ptr %.val.i.i.i, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.aa, align 8, !noalias !856, !noundef !6
  br label %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst.exit.i.i

_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst.exit.i.i: ; preds = %bb.i, %bb.h
  %.sroa.02.0.i.i.i.i = phi i64 [ %.val.i.i.i.i, %bb.i ], [ 0, %bb.h ]
  %i.ab = icmp eq i64 %i.z, %.sroa.02.0.i.i.i.i
  %i.ac = zext i1 %i.ab to i64
  tail call fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.ac), !inline_history !846
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !856, !nonnull !6, !noundef !6
  %i.ae = load i64, ptr %i.y, align 8, !alias.scope !856, !noundef !6 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  store i8 %i.v, ptr %i.af, align 1, !noalias !856
  %i.ag = add i64 %i.ae, 1
  store i64 %i.ag, ptr %i.y, align 8, !alias.scope !856
  br label %_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push.exit

bb.j:                                             ; preds = %bb.g
  %i.ah = and i8 %i.x, 127                        ; 3 uses
  %i.ai = icmp samesign ult i8 %i.ah, 15
  br i1 %i.ai, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !854
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !857
  %i.aj = tail call noundef align 8 dereferenceable_or_null(46) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 46, i64 noundef 8) #26, !noalias !857 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.noexc33.i.i, label %bb.o, !prof !9

.noexc33.i.i:                                     ; preds = %bb.k
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 46) #25, !noalias !854
  unreachable

common.resume.i.i:                                ; preds = %bb.q
  resume { ptr, i32 } %i.be

bb.l:                                             ; preds = %bb.j
  %i.al = zext nneg i8 %i.ah to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  store i8 %i.v, ptr %i.am, align 1, !alias.scope !854
  %i.an = add nsw i8 %i.x, 1
  %i.ao = or i8 %i.an, -128
  store i8 %i.ao, ptr %i.w, align 1, !alias.scope !854
  br label %_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push.exit

bb.m:                                             ; preds = %bb.o
  %i.ap = load ptr, ptr %i.a, align 8, !noalias !854, !nonnull !6, !noundef !6 ; 3 uses
  %i.aq = load i64, ptr %i.ax, align 8, !noalias !854, !noundef !6 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull align 8 dereferenceable(16) %0, i64 %i.ay, i1 false)
  %i.as = add i64 %i.aq, %i.ay                    ; 2 uses
  store i64 %i.as, ptr %i.ax, align 8, !noalias !854
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  %.not.i.i23.i.i = icmp eq ptr %i.ap, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i23.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr i8, ptr %i.ap, i64 -8
  %.val.i.i24.i.i = load i64, ptr %i.at, align 8, !noalias !859, !noundef !6
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.sroa.02.0.i.i25.i.i = phi i64 [ %.val.i.i24.i.i, %bb.n ], [ 0, %bb.m ]
  %i.au = icmp eq i64 %i.as, %.sroa.02.0.i.i25.i.i
  %i.av = zext i1 %i.au to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.av)
          to label %bb.p unwind label %bb.q, !noalias !854, !inline_history !846

bb.o:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 1, ptr %i.aj, align 8, !noalias !857
  %.sroa.4.0..sroa.06.0.10.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 30, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx.i.i.i, align 8, !noalias !857
  store ptr %i.aw, ptr %i.a, align 8, !noalias !854
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store i64 0, ptr %i.ax, align 8, !noalias !854
  %i.ay = zext nneg i8 %i.ah to i64               ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a, i64 noundef %i.ay)
          to label %bb.m unwind label %bb.q, !noalias !854

bb.p:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i
  %i.ba = load ptr, ptr %i.a, align 8, !alias.scope !858, !noalias !854, !nonnull !6, !noundef !6 ; 2 uses
  %i.bb = load i64, ptr %i.ax, align 8, !alias.scope !858, !noalias !854, !noundef !6 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  store i8 %i.v, ptr %i.bc, align 1, !noalias !859
  %i.bd = add i64 %i.bb, 1
  store ptr %i.ba, ptr %0, align 8, !alias.scope !854
  store i64 %i.bd, ptr %i.az, align 8, !alias.scope !854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !854
  br label %_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push.exit

bb.q:                                             ; preds = %bb.o, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  %.val20.i.i = load ptr, ptr %i.a, align 8, !noalias !854, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst(ptr nonnull %.val20.i.i) #28
          to label %common.resume.i.i unwind label %bb.r, !noalias !854

bb.r:                                             ; preds = %bb.q
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !854
  unreachable

_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push.exit: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst.exit.i.i, %bb.l, %bb.p
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  tail call void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 8 uses
  %i.b = alloca [88 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr inttoptr (i64 16 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store i64 0, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !887
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  store i64 0, ptr %i.b, align 8, !alias.scope !889, !noalias !887
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !889, !noalias !887
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.56.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 72, i1 false), !alias.scope !890, !noalias !886
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef 1)
          to label %bb.b unwind label %bb.i, !noalias !891

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !noalias !887
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !892, !noalias !887, !noundef !6 ; 4 uses
  %.promoted.i = load i64, ptr %i.a, align 8, !alias.scope !892, !noalias !887 ; 3 uses
  %.not.i.i22.i = icmp eq i64 %i.f, %.promoted.i
  br i1 %.not.i.i22.i, label %.loopexit, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.lr.ph.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.lr.ph.i: ; preds = %bb.b
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.5.0.copyload8.i = load i8, ptr %.sroa.5.0..sroa_idx7.i, align 8, !alias.scope !893, !noalias !887 ; 2 uses
  %.not.i = icmp eq i8 %.sroa.5.0.copyload8.i, 2
  br i1 %.not.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.thread.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.lr.ph.split.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.lr.ph.split.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.lr.ph.i
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !886, !nonnull !6
  %.promoted26.i = load i64, ptr %i.d, align 8, !alias.scope !886 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.f, 1
  tail call void @llvm.assume(i1 %.not.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  %i.h = icmp eq i64 %.promoted.i, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.promoted26.i ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 64, i1 false), !noalias !886
  %.sroa.4.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i8 %.sroa.5.0.copyload8.i, ptr %.sroa.4.0..sroa_idx.us.i, align 8, !noalias !887
  %.sroa.511.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.j, i64 65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.511.0..sroa_idx.us.i, ptr noundef nonnull readonly align 1 dereferenceable(7) %i.i, i64 7, i1 false), !noalias !886
  %i.k = add i64 %.promoted26.i, 1
  store i64 %i.k, ptr %i.d, align 8, !alias.scope !886
  br label %.loopexit

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.thread.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  %i.l = icmp eq i64 %.promoted.i, 0
  tail call void @llvm.assume(i1 %i.l)
  store i64 1, ptr %i.a, align 8, !noalias !887
  %i.m = icmp eq i64 %i.f, 1
  br i1 %i.m, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.thread.i
  %i.n = add i64 %i.f, -1                         ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.q = icmp eq i64 %i.s, %i.n
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i.i.i.i.i4.i5 = phi i64 [ %i.s, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.0.0.i.i.i.i.i.i.i4.i5
  %i.s = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i4.i5, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.r)
          to label %bb.d unwind label %bb.f, !noalias !887

bb.e:                                             ; preds = %.lr.ph7
  %i.t = add nuw nsw i64 %.sroa.0.1.i.i.i.i.i.i.i5.i6, 1 ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.n
  br i1 %i.u, label %.body, label %.lr.ph7

bb.f:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = icmp eq i64 %i.s, %i.n
  br i1 %i.w, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i.i.i.i.i5.i6 = phi i64 [ %i.t, %bb.e ], [ %i.s, %bb.f ] ; 2 uses
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.0.1.i.i.i.i.i.i.i5.i6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.x) #28
          to label %bb.e unwind label %bb.g, !noalias !887

bb.g:                                             ; preds = %.lr.ph7
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !896
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !887
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_EECs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(88) %i.b) #28
          to label %.body unwind label %bb.h, !noalias !887

.body:                                            ; preds = %bb.e, %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.v, %bb.f ], [ %i.v, %bb.e ]
  %.val = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %.val3 = load i64, ptr %i.d, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs2AodJlUx5rK_5typst(ptr nonnull %.val, i64 %.val3) #28
          to label %bb.k unwind label %bb.j

.loopexit:                                        ; preds = %bb.d, %bb.c, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.thread.i, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.lr.ph.split.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !887
  %i.ab = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.ac = load i64, ptr %i.d, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = insertvalue { ptr, i64 } poison, ptr %i.ab, 0
  %i.ae = insertvalue { ptr, i64 } %i.ad, i64 %i.ac, 1
  ret { ptr, i64 } %i.ae

bb.j:                                             ; preds = %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNCNvCs2AodJlUx5rK_5typst8ROUTINES00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !899
  call void @_RNvMsB_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_13NativeRuleMap3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a), !noalias !899
  invoke void @_RNvNtCs7tN9tvpkfrg_12typst_layout5rules8register(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %bb.c unwind label %bb.b, !noalias !899

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles13NativeRuleMapECs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #28, !noalias !899
  resume { ptr, i32 } %i.b

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs9gmjTwvRRSu_10typst_html5rules8register(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_RNCNCNvCs2AodJlUx5rK_5typst8ROUTINES00B5_.exit unwind label %bb.b, !noalias !899

_RNCNCNvCs2AodJlUx5rK_5typst8ROUTINES00B5_.exit:  ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !899
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNCNvCs2AodJlUx5rK_5typst8ROUTINES0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  store ptr @_RNvYNCNCNvCs2AodJlUx5rK_5typst8ROUTINES00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB8_, ptr %0, align 8, !alias.scope !902
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_RNvCs5cbCQMMIObr_10typst_eval11eval_string, ptr %i.a, align 8, !alias.scope !902
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_RNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure, ptr %i.b, align 8, !alias.scope !902
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_RNvCsibhcYuwTAtB_13typst_realize7realize, ptr %i.c, align 8, !alias.scope !902
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_RNvNtCs7tN9tvpkfrg_12typst_layout4flow12layout_frame, ptr %i.d, align 8, !alias.scope !902
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_RNvCs9gmjTwvRRSu_10typst_html6module, ptr %i.e, align 8, !alias.scope !902
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_RNvNtCs9gmjTwvRRSu_10typst_html5rules16html_mathml_body, ptr %i.f, align 8, !alias.scope !902
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_RNvNtCs9gmjTwvRRSu_10typst_html5rules16html_span_filled, ptr %i.g, align 8, !alias.scope !902
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB4_12SpecWriteFmt14spec_write_fmtCs2AodJlUx5rK_5typst.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @16, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !903
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTouEE14reserve_rehashNCINvNtB8_3map11make_hasherouNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #12

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef align 8 dereferenceable(72), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsB_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_13NativeRuleMap3new(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs7tN9tvpkfrg_12typst_layout5rules8register(ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs9gmjTwvRRSu_10typst_html5rules8register(ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath14with_extension(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs5cbCQMMIObr_10typst_eval11eval_string(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noundef nonnull align 16, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef nonnull align 16, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noundef nonnull align 16, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCsibhcYuwTAtB_13typst_realize7realize(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef range(i64 0, 5), ptr, ptr noalias nofree noundef align 8 dereferenceable(200), ptr noalias nofree noundef align 16 dereferenceable(64), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs7tN9tvpkfrg_12typst_layout4flow12layout_frame(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(200), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i128 noundef, ptr noundef align 16, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs9gmjTwvRRSu_10typst_html6module(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvNtCs9gmjTwvRRSu_10typst_html5rules16html_mathml_body(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs9gmjTwvRRSu_10typst_html5rules16html_span_filled(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsk_NtCsdaEETE4DqmE_13typst_library4diagNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9FileErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs1_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_6FileIdNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath9extension(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i16 1, 0) i16 @_RNvMNtCs5PEMdK7bMAG_12typst_syntax4pathNtB2_10RootedPath6intern(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs0_CsdaEETE4DqmE_13typst_libraryNtB5_8Features10is_enabled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink4warn(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #18

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #19

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #20

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_CsdaEETE4DqmE_13typst_libraryNtB4_14LibraryBuilder13from_routines(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_CsdaEETE4DqmE_13typst_libraryNtB4_14LibraryBuilder5build(ptr dead_on_unwind noalias nofree noundef writable sret([216 x i8]) align 8 captures(none) dereferenceable(216), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerEE9drop_slowB1u_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { noinline }
attributes #25 = { noreturn }
attributes #26 = { nounwind }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { cold }
attributes #29 = { noinline noreturn }
attributes #30 = { inlinehint }

end_hunk_0
begin_hunk_1_@llvm.umin.i64
!651 = !{!485, !483, !481, !479, !477, !446, !435}
!652 = !{!476, !445, !434, !432}
!653 = !{!489, !487, !477, !446, !435}
!654 = !{!491, !489, !487, !477, !446, !435}
!655 = !{!495, !493, !477, !446, !435}
!656 = !{!497, !495, !493, !477, !446, !435}
!657 = !{!501, !499, !477, !446, !435}
!658 = !{!503, !501, !499, !477, !446, !435}
!659 = !{!509, !507, !505, !477, !446, !435}
!660 = !{!511, !509, !507, !505, !477, !446, !435}
!661 = !{!517, !515, !513, !477, !446, !435}
!662 = !{!519, !517, !515, !513, !477, !446, !435}
!663 = !{!525, !523, !521, !477, !446, !435}
!664 = !{!527, !525, !523, !521, !477, !446, !435}
!665 = !{!529, !476, !445, !434, !432}
!666 = !{!535, !533, !531, !477, !446, !435}
!667 = !{!537, !535, !533, !531, !477, !446, !435}
!668 = !{!539, !476, !445, !434, !432}
!669 = !{!545, !543, !541, !477, !446, !435}
!670 = !{!547, !545, !543, !541, !477, !446, !435}
!671 = !{!549, !476, !445, !434, !432}
!672 = !{!555, !553, !551, !477, !446, !435}
!673 = !{!557, !555, !553, !551, !477, !446, !435}
!674 = !{!563, !561, !559, !446, !435}
!675 = !{!565, !563, !561, !559, !446, !435}
!676 = !{!567, !445, !434, !432}
!677 = !{!573, !571, !569, !446, !435}
!678 = !{!575, !573, !571, !569, !446, !435}
!679 = !{!577}
!680 = !{!577, !434, !432}
!681 = !{!580, !577, !578, !434, !435, !432, !429, !428}
!682 = !{!583}
!683 = !{!583, !580, !577, !578, !434, !435, !432, !429, !428}
!684 = !{!585}
!685 = !{i16 1, i16 0}
!686 = !{!585, !583}
!687 = !{!580, !577, !578, !434, !432, !429, !428}
!688 = !{!588, !585, !586, !583, !580, !577, !578, !434, !435, !432, !429, !428}
!689 = !{!590, !585, !586, !583, !580, !577, !578, !434, !435, !432, !429, !428}
!690 = !{!595, !593, !592, !585, !586, !583, !580, !577, !578, !434, !435, !432, !429, !428}
!691 = !{!597, !580, !577, !578, !434, !435, !432, !429, !428}
!692 = !{!577, !434, !432, !429, !428}
!693 = !{!602, !600, !599}
!694 = !{!604}
!695 = !{!604, !600}
!696 = !{!607, !606}
!697 = !{!607}
!698 = distinct !{!698, i1 true, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!699 = distinct !{!699, !698, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!700 = distinct !{!700, !698, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 1"}
!701 = distinct !{!701, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst"}
!702 = distinct !{!702, !701, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 1"}
!703 = distinct !{!703, !701, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 0"}
!704 = distinct !{!704, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst"}
!705 = distinct !{!705, !704, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 0"}
!706 = distinct !{!706, !704, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 1"}
!707 = distinct !{!707, i1 true, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!708 = distinct !{!708, !707, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!709 = distinct !{!709, !707, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 1"}
!710 = distinct !{!710, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst"}
!711 = distinct !{!711, !710, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 1"}
!712 = distinct !{!712, !710, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 0"}
!713 = distinct !{!713, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst"}
!714 = distinct !{!714, !713, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 0"}
!715 = distinct !{!715, !713, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 1"}
!716 = distinct !{!716, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst"}
!717 = distinct !{!717, !716, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 0"}
!718 = distinct !{!718, !716, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 1"}
!719 = !{!699}
!720 = !{!700}
!721 = !{!699, !700}
!722 = !{!703, !702}
!723 = !{!703}
!724 = !{!702}
!725 = !{!705}
!726 = !{!705, !706}
!727 = !{!706}
!728 = !{!708}
!729 = !{!709}
!730 = !{!708, !709}
!731 = !{!712, !711}
!732 = !{!712}
!733 = !{!711}
!734 = !{!714}
!735 = !{!714, !715}
!736 = !{!715}
!737 = !{!717}
!738 = !{!717, !718}
!739 = !{!718}
!740 = distinct !{!740, i1 true, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!741 = distinct !{!741, !740, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!742 = distinct !{!742, !740, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 1"}
!743 = distinct !{!743, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst"}
!744 = distinct !{!744, !743, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 1"}
!745 = distinct !{!745, !743, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 0"}
!746 = distinct !{!746, i1 true, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!747 = distinct !{!747, !746, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!748 = distinct !{!748, !746, !"_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 1"}
!749 = distinct !{!749, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst"}
!750 = distinct !{!750, !749, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 1"}
!751 = distinct !{!751, !749, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 0"}
!752 = distinct !{!752, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst"}
!753 = distinct !{!753, !752, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 0"}
!754 = distinct !{!754, !752, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 1"}
!755 = !{!741}
!756 = !{!742}
!757 = !{!741, !742}
!758 = !{!745, !744}
!759 = !{!745}
!760 = !{!744}
!761 = !{!747}
!762 = !{!748}
!763 = !{!747, !748}
!764 = !{!751, !750}
!765 = !{!751}
!766 = !{!750}
!767 = !{!753}
!768 = !{!753, !754}
!769 = !{!754}
!770 = distinct !{null}
!771 = distinct !{!771, i1 true, !"_RNvXsF_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB5_7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB5_8DiagSpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst"}
!772 = distinct !{!772, !771, !"_RNvXsF_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB5_7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB5_8DiagSpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst: argument 1"}
!773 = distinct !{!773, i1 true, !"_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!774 = distinct !{!774, !773, !"_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!775 = distinct !{!775, i1 true, !"_RNvXs0_NtCsakL8LGkl72C_4ecow7dynamicNtB5_10DynamicVecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!776 = distinct !{!776, !775, !"_RNvXs0_NtCsakL8LGkl72C_4ecow7dynamicNtB5_10DynamicVecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!777 = distinct !{!777, !775, !"_RNvXs0_NtCsakL8LGkl72C_4ecow7dynamicNtB5_10DynamicVecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!778 = distinct !{!778, i1 true, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB1u_8DiagSpanEEENtNtNtB8_6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst"}
!779 = distinct !{!779, !778, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB1u_8DiagSpanEEENtNtNtB8_6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst: argument 1"}
!780 = distinct !{!780, !778, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB1u_8DiagSpanEEENtNtNtB8_6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst: argument 0"}
!781 = distinct !{!781, !771, !"_RNvXsF_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB5_7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB5_8DiagSpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst: argument 0"}
!782 = distinct !{!782, !773, !"_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!783 = distinct !{!783, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst"}
!784 = distinct !{!784, !783, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 0"}
!785 = distinct !{!785, !783, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs2AodJlUx5rK_5typst: argument 1"}
!786 = distinct !{null, null}
!787 = !{!772}
!788 = !{!774}
!789 = !{!776}
!790 = !{!777}
!791 = !{!777, !774, !772}
!792 = !{!780, !779}
!793 = !{!777, !776, !774, !772}
!794 = !{!776, !777, !782, !774, !781, !772, !780, !779}
!795 = !{!784}
!796 = !{!785}
!797 = !{!784, !785}
!798 = distinct !{null}
!799 = distinct !{!799, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4pushCs2AodJlUx5rK_5typst"}
!800 = distinct !{!800, !799, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4pushCs2AodJlUx5rK_5typst: argument 0"}
!801 = distinct !{!801, !799, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4pushCs2AodJlUx5rK_5typst: argument 1"}
!802 = distinct !{null, null}
!803 = !{i8 0, i8 3}
!804 = !{!800}
!805 = !{!800, !801}
!806 = !{!801}
!807 = distinct !{null}
!808 = distinct !{!808, i1 true, !"_RNvXsa_NtNtCs3oUPovFnLWP_4core5clone5implshNtB7_5Clone5clone"}
!809 = distinct !{!809, !808, !"_RNvXsa_NtNtCs3oUPovFnLWP_4core5clone5implshNtB7_5Clone5clone: argument 0"}
!810 = distinct !{!810, i1 true, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst"}
!811 = distinct !{!811, !810, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst: argument 0"}
!812 = distinct !{!812, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst"}
!813 = distinct !{!813, !812, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst: argument 0"}
!814 = distinct !{null, null}
!815 = !{!809}
!816 = !{!811}
!817 = !{!813}
!818 = distinct !{!818, i1 true, !"_RNvXCs2AodJlUx5rK_5typstNtCsdaEETE4DqmE_13typst_library7LibraryNtB2_10LibraryExt7builder"}
!819 = distinct !{!819, !818, !"_RNvXCs2AodJlUx5rK_5typstNtCsdaEETE4DqmE_13typst_library7LibraryNtB2_10LibraryExt7builder: argument 0"}
!820 = !{!819}
!821 = distinct !{!821, i1 true, !"_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs2AodJlUx5rK_5typst"}
!822 = distinct !{!822, !821, !"_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs2AodJlUx5rK_5typst: argument 0"}
!823 = distinct !{!823, !821, !"_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs2AodJlUx5rK_5typst: argument 1"}
!824 = distinct !{!824, i1 true, !"_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le"}
!825 = distinct !{!825, !824, !"_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le: argument 0"}
!826 = distinct !{!826, i1 true, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!827 = distinct !{!827, !826, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!828 = distinct !{!828, i1 true, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!829 = distinct !{!829, !828, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!830 = distinct !{!830, i1 true, !"_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le"}
!831 = distinct !{!831, !830, !"_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le: argument 0"}
!832 = !{!822}
!833 = !{!823}
!834 = !{!825, !823}
!835 = !{!827, !822}
!836 = !{!829, !822}
!837 = !{!831, !823}
!838 = distinct !{!838, i1 true, !"_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push"}
!839 = distinct !{!839, !838, !"_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push: argument 0"}
!840 = distinct !{!840, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw"}
!841 = distinct !{!841, !840, !"_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw: argument 0"}
!842 = distinct !{!842, i1 true, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec4push"}
!843 = distinct !{!843, !842, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec4push: argument 0"}
!844 = distinct !{!844, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst"}
!845 = distinct !{!845, !844, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst: argument 0"}
!846 = distinct !{null}
!847 = distinct !{!847, i1 true, !"_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4growCs2AodJlUx5rK_5typst"}
!848 = distinct !{!848, !847, !"_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4growCs2AodJlUx5rK_5typst: argument 0"}
!849 = distinct !{!849, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst"}
!850 = distinct !{!850, !849, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst: argument 0"}
!851 = !{!839}
!852 = !{!841}
!853 = !{!843}
!854 = !{!843, !839}
!855 = !{!845}
!856 = !{!845, !843, !839}
!857 = !{!848, !843, !839}
!858 = !{!850}
!859 = !{!850, !843, !839}
!860 = distinct !{!860, i1 true, !"_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE19extend_from_trustedABH_j1_ECs2AodJlUx5rK_5typst"}
!861 = distinct !{!861, !860, !"_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE19extend_from_trustedABH_j1_ECs2AodJlUx5rK_5typst: argument 0"}
!862 = distinct !{!862, !860, !"_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE19extend_from_trustedABH_j1_ECs2AodJlUx5rK_5typst: argument 1"}
!863 = distinct !{!863, i1 true, !"_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterANtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticj1_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterCs2AodJlUx5rK_5typst"}
!864 = distinct !{!864, !863, !"_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterANtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticj1_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterCs2AodJlUx5rK_5typst: argument 1"}
!865 = distinct !{!865, !863, !"_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterANtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticj1_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterCs2AodJlUx5rK_5typst: argument 0"}
!866 = distinct !{!866, i1 true, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst"}
!867 = distinct !{!867, !866, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst: argument 1"}
!868 = distinct !{!868, i1 true, !"_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEE4nextCs2AodJlUx5rK_5typst"}
!869 = distinct !{!869, !868, !"_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEE4nextCs2AodJlUx5rK_5typst: argument 1"}
!870 = distinct !{!870, !866, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst: argument 0"}
!871 = distinct !{!871, !868, !"_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEE4nextCs2AodJlUx5rK_5typst: argument 0"}
!872 = distinct !{!872, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_EECs2AodJlUx5rK_5typst"}
!873 = distinct !{!873, !872, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_EECs2AodJlUx5rK_5typst: argument 0"}
!874 = distinct !{!874, i1 true, !"_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtB9_3ops4drop4Drop4dropCs2AodJlUx5rK_5typst"}
!875 = distinct !{!875, !874, !"_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtB9_3ops4drop4Drop4dropCs2AodJlUx5rK_5typst: argument 0"}
!876 = distinct !{!876, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_5array4iter10iter_inner15PolymorphicIterAINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEj1_EECs2AodJlUx5rK_5typst"}
!877 = distinct !{!877, !876, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_5array4iter10iter_inner15PolymorphicIterAINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEj1_EECs2AodJlUx5rK_5typst: argument 0"}
!878 = distinct !{!878, i1 true, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterAINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEj1_ENtNtNtBb_3ops4drop4Drop4dropCs2AodJlUx5rK_5typst"}
!879 = distinct !{!879, !878, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterAINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEj1_ENtNtNtBb_3ops4drop4Drop4dropCs2AodJlUx5rK_5typst: argument 0"}
!880 = distinct !{!880, i1 true, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEj1_NtB4_11PartialDrop12partial_dropCs2AodJlUx5rK_5typst"}
!881 = distinct !{!881, !880, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEj1_NtB4_11PartialDrop12partial_dropCs2AodJlUx5rK_5typst: argument 0"}
!882 = distinct !{!882, i1 true, !"_RNvXNtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtB2_11PartialDrop12partial_dropCs2AodJlUx5rK_5typst"}
!883 = distinct !{!883, !882, !"_RNvXNtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtB2_11PartialDrop12partial_dropCs2AodJlUx5rK_5typst: argument 0"}
!884 = distinct !{!884, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst"}
!885 = distinct !{!885, !884, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst: argument 0"}
!886 = !{!861}
!887 = !{!861, !862}
!888 = !{!864}
!889 = !{!865}
!890 = !{!865, !864}
!891 = !{!862}
!892 = !{!869, !867}
!893 = !{!871, !869, !870, !867}
!894 = !{!870}
!895 = !{!871}
!896 = !{!885, !883, !881, !879, !877, !875, !873, !861, !862}
!897 = distinct !{!897, i1 true, !"_RNCNCNvCs2AodJlUx5rK_5typst8ROUTINES00B5_"}
!898 = distinct !{!898, !897, !"_RNCNCNvCs2AodJlUx5rK_5typst8ROUTINES00B5_: argument 0"}
!899 = !{!898}
!900 = distinct !{!900, i1 true, !"_RNCNvCs2AodJlUx5rK_5typst8ROUTINES0B3_"}
!901 = distinct !{!901, !900, !"_RNCNvCs2AodJlUx5rK_5typst8ROUTINES0B3_: argument 0"}
!902 = !{!901}
!903 = distinct !{null}
end_hunk_1
