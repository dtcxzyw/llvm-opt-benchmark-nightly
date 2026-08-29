Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGDebugInfo?download=true
inline.NumInlined: 37011
inline.NumDeleted: 15434
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5clang7CodeGen11CGDebugInfo17CreateCompileUnitEv:bb.a
  %i.ox = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ip, i64 832
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !878
  store i64 %i.oz, ptr %i.ox, align 8, !tbaa !942
  %i.pa = load i64, ptr %i.lh, align 8            ; 3 uses
  %i.pb = and i64 %i.pa, 32
  %i.pc = icmp ne i64 %i.pb, 0
  %i.pd = and i64 %i.pa, 32768
  %i.pe = icmp ne i64 %i.pd, 0
  %i.pf = and i64 %i.pa, 1048576
  %i.pg = icmp ne i64 %i.pf, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  call void @_ZNK5clang7CodeGen11CGDebugInfo11remapDIPathB5cxx11EN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr %.sroa.0136.1, i64 %.sroa.5.1)
  %i.ph = load ptr, ptr %29, align 8, !tbaa !877
  store ptr %i.ph, ptr %28, align 8, !tbaa !943
  %i.pi = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.pj = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !878
  store i64 %i.pk, ptr %i.pi, align 8, !tbaa !942
  %i.pl = call noundef ptr @_ZN4llvm9DIBuilder17createCompileUnitENS_20DISourceLanguageNameEPNS_6DIFileENS_9StringRefEbS4_jS4_NS_13DICompileUnit17DebugEmissionKindEmbbNS5_18DebugNameTableKindEbS4_S4_(ptr noundef nonnull align 8 dereferenceable(384) %i.is, i64 %.sroa.07.0.insert.insert.i, i16 0, ptr noundef %i.jv, ptr %i.ol, i64 %i.ok, i1 noundef zeroext %i.op, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %26, i32 noundef %.0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %27, i32 noundef %.052, i64 noundef 0, i1 noundef zeroext %i.pc, i1 noundef zeroext %i.pe, i32 noundef %.053, i1 noundef zeroext %i.pg, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %28, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %21) #28
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %i.pl, ptr %i.pm, align 8, !tbaa !967
  %i.pn = load ptr, ptr %29, align 8, !tbaa !877  ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.pp = icmp eq ptr %i.pn, %i.po
  br i1 %i.pp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.cm
  %i.pq = load i64, ptr %i.po, align 8, !tbaa !880
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef %i.pr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  %i.ps = load ptr, ptr %25, align 8, !tbaa !877  ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.pu = icmp eq ptr %i.ps, %i.pt
  br i1 %i.pu, label %.critedge59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %i.pv = load i64, ptr %i.pt, align 8, !tbaa !880
  %i.pw = add i64 %i.pv, 1
  call void @_ZdlPvm(ptr noundef %i.ps, i64 noundef %i.pw) #29
  br label %.critedge59

.critedge59:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  %i.px = load ptr, ptr %16, align 8, !tbaa !877  ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.pz = icmp eq ptr %i.px, %i.py
  br i1 %i.pz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %.critedge59
  %i.qa = load i64, ptr %i.py, align 8, !tbaa !880
  %i.qb = add i64 %i.qa, 1
  call void @_ZdlPvm(ptr noundef %i.px, i64 noundef %i.qb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %.critedge59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.qc = load ptr, ptr %5, align 8, !tbaa !877   ; 2 uses
  %i.qd = icmp eq ptr %i.qc, %i.al
  br i1 %i.qd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  %i.qe = load i64, ptr %i.al, align 8, !tbaa !880
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.qf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.qg = load ptr, ptr %4, align 8, !tbaa !877   ; 2 uses
  %i.qh = icmp eq ptr %i.qg, %i.v
  br i1 %i.qh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %i.qi = load i64, ptr %i.v, align 8, !tbaa !880
  %i.qj = add i64 %i.qi, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.qk = load ptr, ptr %3, align 8, !tbaa !496   ; 2 uses
  %i.ql = icmp eq ptr %i.qk, %i.i
  br i1 %i.ql, label %_ZN4llvm11SmallVectorIcLj64EED2Ev.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  call void @free(ptr noundef %i.qk) #28
  br label %_ZN4llvm11SmallVectorIcLj64EED2Ev.exit

_ZN4llvm11SmallVectorIcLj64EED2Ev.exit:           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen11CGDebugInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(2480) dereferenceable(2480) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2456 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2468
  %i.c = load i32, ptr %i.b, align 4, !tbaa !968
  %i.d = icmp eq i32 %i.c, 0
  %.pre13.i = load ptr, ptr %i.a, align 8, !tbaa !969 ; 4 uses
  br i1 %i.d, label %_ZN4llvm9StringMapIPNS_12DISubprogramENS_15MallocAllocatorEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2464
  %i.f = load i32, ptr %i.e, align 8, !tbaa !970  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %.pre13.i, i64 %.idx.i
  %.not11.i = icmp eq i32 %i.f, 0
  br i1 %.not11.i, label %_ZN4llvm9StringMapIPNS_12DISubprogramENS_15MallocAllocatorEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.012.i = phi ptr [ %i.l, %bb.d ], [ %.pre13.i, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %.012.i, align 8, !tbaa !971 ; 3 uses
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !886
  %i.k = add i64 %i.j, 17
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef %i.k, i64 noundef 8) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.h
  br i1 %.not.i, label %.loopexit.loopexit.i, label %.lr.ph.i

.loopexit.loopexit.i:                             ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !969
  br label %_ZN4llvm9StringMapIPNS_12DISubprogramENS_15MallocAllocatorEED2Ev.exit

_ZN4llvm9StringMapIPNS_12DISubprogramENS_15MallocAllocatorEED2Ev.exit: ; preds = %bb.a, %bb.b, %.loopexit.loopexit.i
  %i.m = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %.pre13.i, %bb.b ], [ %.pre13.i, %bb.a ]
  tail call void @free(ptr noundef %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2428
  %i.o = load i32, ptr %i.n, align 4, !tbaa !973  ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN4llvm8DenseMapIPKN5clang11ParmVarDeclEPNS_15DILocalVariableENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm9StringMapIPNS_12DISubprogramENS_15MallocAllocatorEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !974
  %i.s = zext i32 %i.o to i64                     ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = add nuw nsw i64 %i.s, 31
  %i.v = lshr i64 %i.u, 3
  %i.w = and i64 %i.v, 1073741820
  %i.x = add nuw nsw i64 %i.w, %i.t
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.r, i64 noundef %i.x, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang11ParmVarDeclEPNS_15DILocalVariableENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang11ParmVarDeclEPNS_15DILocalVariableENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit: ; preds = %_ZN4llvm9StringMapIPNS_12DISubprogramENS_15MallocAllocatorEED2Ev.exit, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2404
  %i.z = load i32, ptr %i.y, align 4, !tbaa !975  ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZN4llvm8DenseMapIPKN5clang11ParmVarDeclEPKNS1_4StmtENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIPKN5clang11ParmVarDeclEPNS_15DILocalVariableENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2384
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !976
  %i.ad = zext i32 %i.z to i64                    ; 2 uses
  %i.ae = shl nuw nsw i64 %i.ad, 4
  %i.af = add nuw nsw i64 %i.ad, 31
  %i.ag = lshr i64 %i.af, 3
  %i.ah = and i64 %i.ag, 1073741820
  %i.ai = add nuw nsw i64 %i.ah, %i.ae
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ac, i64 noundef %i.ai, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang11ParmVarDeclEPKNS1_4StmtENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang11ParmVarDeclEPKNS1_4StmtENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang11ParmVarDeclEPNS_15DILocalVariableENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2380 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !977 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm8DenseMapIPKN5clang11ParmVarDeclEPKNS1_4StmtENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !978
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2368
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !979
  %i.aq = zext i32 %i.al to i64
  %i.ar = add nuw nsw i64 %i.aq, 31
  %i.as = lshr i64 %i.ar, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !881 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.au, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.av = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.g

bb.g:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.au, %.lr.ph.i.i ], [ %i.bd, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.aw = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.ax = or disjoint i32 %i.aw, %i.av
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 4 dereferenceable(8) %i.bb) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.h, %bb.g
  %i.bc = add i32 %.0.i3.i.i, -1
  %i.bd = and i32 %i.bc, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.g, !llvm.loop !983

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.as
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !984

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.ak, align 4, !tbaa !977 ; 2 uses
  %i.be = icmp eq i32 %.pr.i, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i
  %i.bf = load ptr, ptr %i.aj, align 8, !tbaa !978
  %i.bg = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bf, i64 noundef %i.bl, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang11ParmVarDeclEPKNS1_4StmtENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i, %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2336 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2356 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !985 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZN4llvm8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i1

.lr.ph7.preheader.i.i1:                           ; preds = %_ZN4llvm8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !986
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2344
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !987
  %i.bt = zext i32 %i.bo to i64
  %i.bu = add nuw nsw i64 %i.bt, 31
  %i.bv = lshr i64 %i.bu, 5
  br label %.lr.ph7.i.i2

.lr.ph7.i.i2:                                     ; preds = %._crit_edge.i.i9, %.lr.ph7.preheader.i.i1
  %indvars.iv.i.i3 = phi i64 [ 0, %.lr.ph7.preheader.i.i1 ], [ %indvars.iv.next.i.i10, %._crit_edge.i.i9 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.i.i3
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !881 ; 2 uses
  %.not11.i2.i.i4 = icmp eq i32 %i.bx, 0
  br i1 %.not11.i2.i.i4, label %._crit_edge.i.i9, label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %.lr.ph7.i.i2
  %indvars.iv.tr.i.i6 = trunc i64 %indvars.iv.i.i3 to i32
  %i.by = shl i32 %indvars.iv.tr.i.i6, 5
  br label %bb.j

bb.j:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i5
  %.0.i3.i.i7 = phi i32 [ %i.bx, %.lr.ph.i.i5 ], [ %i.cg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.bz = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i7, i1 true)
  %i.ca = or disjoint i32 %i.bz, %i.by
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 4 dereferenceable(8) %i.ce) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.k, %bb.j
  %i.cf = add i32 %.0.i3.i.i7, -1
  %i.cg = and i32 %i.cf, %.0.i3.i.i7              ; 2 uses
  %.not11.i.i.i8 = icmp eq i32 %i.cg, 0
  br i1 %.not11.i.i.i8, label %._crit_edge.i.i9, label %bb.j, !llvm.loop !988

._crit_edge.i.i9:                                 ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i2
  %indvars.iv.next.i.i10 = add nuw nsw i64 %indvars.iv.i.i3, 1 ; 2 uses
  %.not.i.i.i11 = icmp eq i64 %indvars.iv.next.i.i10, %i.bv
  br i1 %.not.i.i.i11, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i2, !llvm.loop !989

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i9
  %.pr.i12 = load i32, ptr %i.bn, align 4, !tbaa !985 ; 2 uses
  %i.ch = icmp eq i32 %.pr.i12, 0
  br i1 %i.ch, label %_ZN4llvm8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i
  %i.ci = load ptr, ptr %i.bm, align 8, !tbaa !986
  %i.cj = zext i32 %.pr.i12 to i64                ; 2 uses
  %i.ck = shl nuw nsw i64 %i.cj, 4
  %i.cl = add nuw nsw i64 %i.cj, 31
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = and i64 %i.cm, 1073741820
  %i.co = add nuw nsw i64 %i.cn, %i.ck
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ci, i64 noundef %i.co, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 2312 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 2332 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !990 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %_ZN4llvm8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i13

.lr.ph7.preheader.i.i13:                          ; preds = %_ZN4llvm8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !991
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !992
  %i.cw = zext i32 %i.cr to i64
  %i.cx = add nuw nsw i64 %i.cw, 31
  %i.cy = lshr i64 %i.cx, 5
  br label %.lr.ph7.i.i14

.lr.ph7.i.i14:                                    ; preds = %._crit_edge.i.i22, %.lr.ph7.preheader.i.i13
  %indvars.iv.i.i15 = phi i64 [ 0, %.lr.ph7.preheader.i.i13 ], [ %indvars.iv.next.i.i23, %._crit_edge.i.i22 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.i15
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !881 ; 2 uses
  %.not11.i2.i.i16 = icmp eq i32 %i.da, 0
  br i1 %.not11.i2.i.i16, label %._crit_edge.i.i22, label %.lr.ph.i.i17

.lr.ph.i.i17:                                     ; preds = %.lr.ph7.i.i14
  %indvars.iv.tr.i.i18 = trunc i64 %indvars.iv.i.i15 to i32
  %i.db = shl i32 %indvars.iv.tr.i.i18, 5
  br label %bb.m

bb.m:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i17
  %.0.i3.i.i19 = phi i32 [ %i.da, %.lr.ph.i.i17 ], [ %i.dj, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.dc = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i19, i1 true)
  %i.dd = or disjoint i32 %i.dc, %i.db
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i20 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i20, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull align 4 dereferenceable(8) %i.dh) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.n, %bb.m
  %i.di = add i32 %.0.i3.i.i19, -1
  %i.dj = and i32 %i.di, %.0.i3.i.i19             ; 2 uses
  %.not11.i.i.i21 = icmp eq i32 %i.dj, 0
  br i1 %.not11.i.i.i21, label %._crit_edge.i.i22, label %bb.m, !llvm.loop !993

._crit_edge.i.i22:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i14
  %indvars.iv.next.i.i23 = add nuw nsw i64 %indvars.iv.i.i15, 1 ; 2 uses
  %.not.i.i.i24 = icmp eq i64 %indvars.iv.next.i.i23, %i.cy
  br i1 %.not.i.i.i24, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i14, !llvm.loop !994

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i22
  %.pr.i25 = load i32, ptr %i.cq, align 4, !tbaa !990 ; 2 uses
  %i.dk = icmp eq i32 %.pr.i25, 0
  br i1 %i.dk, label %_ZN4llvm8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i
  %i.dl = load ptr, ptr %i.cp, align 8, !tbaa !991
  %i.dm = zext i32 %.pr.i25 to i64                ; 2 uses
  %i.dn = shl nuw nsw i64 %i.dm, 4
  %i.do = add nuw nsw i64 %i.dm, 31
  %i.dp = lshr i64 %i.do, 3
  %i.dq = and i64 %i.dp, 1073741820
  %i.dr = add nuw nsw i64 %i.dq, %i.dn
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dl, i64 noundef %i.dr, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, %bb.o
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 2288 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 2308 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !995 ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i26

.lr.ph7.preheader.i.i26:                          ; preds = %_ZN4llvm8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit
  %i.dw = load ptr, ptr %i.ds, align 8, !tbaa !996
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 2296
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !997
  %i.dz = zext i32 %i.du to i64
  %i.ea = add nuw nsw i64 %i.dz, 31
  %i.eb = lshr i64 %i.ea, 5
  br label %.lr.ph7.i.i27

.lr.ph7.i.i27:                                    ; preds = %._crit_edge.i.i35, %.lr.ph7.preheader.i.i26
  %indvars.iv.i.i28 = phi i64 [ 0, %.lr.ph7.preheader.i.i26 ], [ %indvars.iv.next.i.i36, %._crit_edge.i.i35 ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.i.i28
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !881 ; 2 uses
  %.not11.i2.i.i29 = icmp eq i32 %i.ed, 0
  br i1 %.not11.i2.i.i29, label %._crit_edge.i.i35, label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %.lr.ph7.i.i27
  %indvars.iv.tr.i.i31 = trunc i64 %indvars.iv.i.i28 to i32
  %i.ee = shl i32 %indvars.iv.tr.i.i31, 5
  br label %bb.p

bb.p:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i30
  %.0.i3.i.i32 = phi i32 [ %i.ed, %.lr.ph.i.i30 ], [ %i.em, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ef = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i32, i1 true)
  %i.eg = or disjoint i32 %i.ef, %i.ee
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i.i33, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull align 4 dereferenceable(8) %i.ek) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.q, %bb.p
  %i.el = add i32 %.0.i3.i.i32, -1
  %i.em = and i32 %i.el, %.0.i3.i.i32             ; 2 uses
  %.not11.i.i.i34 = icmp eq i32 %i.em, 0
  br i1 %.not11.i.i.i34, label %._crit_edge.i.i35, label %bb.p, !llvm.loop !998

._crit_edge.i.i35:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i27
  %indvars.iv.next.i.i36 = add nuw nsw i64 %indvars.iv.i.i28, 1 ; 2 uses
  %.not.i.i.i37 = icmp eq i64 %indvars.iv.next.i.i36, %i.eb
  br i1 %.not.i.i.i37, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i27, !llvm.loop !999

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i35
  %.pr.i38 = load i32, ptr %i.dt, align 4, !tbaa !995 ; 2 uses
  %i.en = icmp eq i32 %.pr.i38, 0
  br i1 %i.en, label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i
  %i.eo = load ptr, ptr %i.ds, align 8, !tbaa !996
  %i.ep = zext i32 %.pr.i38 to i64                ; 2 uses
  %i.eq = shl nuw nsw i64 %i.ep, 4
  %i.er = add nuw nsw i64 %i.ep, 31
  %i.es = lshr i64 %i.er, 3
  %i.et = and i64 %i.es, 1073741820
  %i.eu = add nuw nsw i64 %i.et, %i.eq
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.eo, i64 noundef %i.eu, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, %bb.r
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 2284 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !995 ; 2 uses
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit54, label %.lr.ph7.preheader.i.i39

.lr.ph7.preheader.i.i39:                          ; preds = %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit
  %i.ez = load ptr, ptr %i.ev, align 8, !tbaa !996
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !997
  %i.fc = zext i32 %i.ex to i64
  %i.fd = add nuw nsw i64 %i.fc, 31
  %i.fe = lshr i64 %i.fd, 5
  br label %.lr.ph7.i.i40

.lr.ph7.i.i40:                                    ; preds = %._crit_edge.i.i49, %.lr.ph7.preheader.i.i39
  %indvars.iv.i.i41 = phi i64 [ 0, %.lr.ph7.preheader.i.i39 ], [ %indvars.iv.next.i.i50, %._crit_edge.i.i49 ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv.i.i41
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !881 ; 2 uses
  %.not11.i2.i.i42 = icmp eq i32 %i.fg, 0
  br i1 %.not11.i2.i.i42, label %._crit_edge.i.i49, label %.lr.ph.i.i43

.lr.ph.i.i43:                                     ; preds = %.lr.ph7.i.i40
  %indvars.iv.tr.i.i44 = trunc i64 %indvars.iv.i.i41 to i32
  %i.fh = shl i32 %indvars.iv.tr.i.i44, 5
  br label %bb.s

bb.s:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i47, %.lr.ph.i.i43
  %.0.i3.i.i45 = phi i32 [ %i.fg, %.lr.ph.i.i43 ], [ %i.fp, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i47 ] ; 3 uses
  %i.fi = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i45, i1 true)
  %i.fj = or disjoint i32 %i.fi, %i.fh
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i46 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i.i46, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i47, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull align 4 dereferenceable(8) %i.fn) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i47

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i47: ; preds = %bb.t, %bb.s
  %i.fo = add i32 %.0.i3.i.i45, -1
  %i.fp = and i32 %i.fo, %.0.i3.i.i45             ; 2 uses
  %.not11.i.i.i48 = icmp eq i32 %i.fp, 0
  br i1 %.not11.i.i.i48, label %._crit_edge.i.i49, label %bb.s, !llvm.loop !998

._crit_edge.i.i49:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i47, %.lr.ph7.i.i40
  %indvars.iv.next.i.i50 = add nuw nsw i64 %indvars.iv.i.i41, 1 ; 2 uses
  %.not.i.i.i51 = icmp eq i64 %indvars.iv.next.i.i50, %i.fe
  br i1 %.not.i.i.i51, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i52, label %.lr.ph7.i.i40, !llvm.loop !999

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i52: ; preds = %._crit_edge.i.i49
  %.pr.i53 = load i32, ptr %i.ew, align 4, !tbaa !995 ; 2 uses
  %i.fq = icmp eq i32 %.pr.i53, 0
  br i1 %i.fq, label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit54, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i52
  %i.fr = load ptr, ptr %i.ev, align 8, !tbaa !996
  %i.fs = zext i32 %.pr.i53 to i64                ; 2 uses
  %i.ft = shl nuw nsw i64 %i.fs, 4
  %i.fu = add nuw nsw i64 %i.fs, 31
  %i.fv = lshr i64 %i.fu, 3
  %i.fw = and i64 %i.fv, 1073741820
  %i.fx = add nuw nsw i64 %i.fw, %i.ft
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.fr, i64 noundef %i.fx, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit54

_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit54: ; preds = %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i52, %bb.u
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 2240 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 2260 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !1000 ; 2 uses
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %_ZN4llvm8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i55

.lr.ph7.preheader.i.i55:                          ; preds = %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit54
  %i.gc = load ptr, ptr %i.fy, align 8, !tbaa !1001
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !1002
  %i.gf = zext i32 %i.ga to i64
  %i.gg = add nuw nsw i64 %i.gf, 31
  %i.gh = lshr i64 %i.gg, 5
  br label %.lr.ph7.i.i56

.lr.ph7.i.i56:                                    ; preds = %._crit_edge.i.i64, %.lr.ph7.preheader.i.i55
  %indvars.iv.i.i57 = phi i64 [ 0, %.lr.ph7.preheader.i.i55 ], [ %indvars.iv.next.i.i65, %._crit_edge.i.i64 ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.i.i57
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !881 ; 2 uses
  %.not11.i2.i.i58 = icmp eq i32 %i.gj, 0
  br i1 %.not11.i2.i.i58, label %._crit_edge.i.i64, label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %.lr.ph7.i.i56
  %indvars.iv.tr.i.i60 = trunc i64 %indvars.iv.i.i57 to i32
  %i.gk = shl i32 %indvars.iv.tr.i.i60, 5
  br label %bb.v

bb.v:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i59
  %.0.i3.i.i61 = phi i32 [ %i.gj, %.lr.ph.i.i59 ], [ %i.gs, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.gl = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i61, i1 true)
  %i.gm = or disjoint i32 %i.gl, %i.gk
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i62 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i.i62, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, ptr noundef nonnull align 4 dereferenceable(8) %i.gq) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.w, %bb.v
  %i.gr = add i32 %.0.i3.i.i61, -1
  %i.gs = and i32 %i.gr, %.0.i3.i.i61             ; 2 uses
  %.not11.i.i.i63 = icmp eq i32 %i.gs, 0
  br i1 %.not11.i.i.i63, label %._crit_edge.i.i64, label %bb.v, !llvm.loop !1003

._crit_edge.i.i64:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i56
  %indvars.iv.next.i.i65 = add nuw nsw i64 %indvars.iv.i.i57, 1 ; 2 uses
  %.not.i.i.i66 = icmp eq i64 %indvars.iv.next.i.i65, %i.gh
  br i1 %.not.i.i.i66, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i56, !llvm.loop !1004

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i64
  %.pr.i67 = load i32, ptr %i.fz, align 4, !tbaa !1000 ; 2 uses
  %i.gt = icmp eq i32 %.pr.i67, 0
  br i1 %i.gt, label %_ZN4llvm8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i
  %i.gu = load ptr, ptr %i.fy, align 8, !tbaa !1001
  %i.gv = zext i32 %.pr.i67 to i64                ; 2 uses
  %i.gw = shl nuw nsw i64 %i.gv, 4
  %i.gx = add nuw nsw i64 %i.gv, 31
  %i.gy = lshr i64 %i.gx, 3
  %i.gz = and i64 %i.gy, 1073741820
  %i.ha = add nuw nsw i64 %i.gz, %i.gw
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.gu, i64 noundef %i.ha, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit54, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, %bb.x
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 2216 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 2236 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !1005 ; 2 uses
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %_ZN4llvm8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i68

.lr.ph7.preheader.i.i68:                          ; preds = %_ZN4llvm8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit
  %i.hf = load ptr, ptr %i.hb, align 8, !tbaa !1006
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !1007
  %i.hi = zext i32 %i.hd to i64
  %i.hj = add nuw nsw i64 %i.hi, 31
  %i.hk = lshr i64 %i.hj, 5
  br label %.lr.ph7.i.i69

.lr.ph7.i.i69:                                    ; preds = %._crit_edge.i.i77, %.lr.ph7.preheader.i.i68
  %indvars.iv.i.i70 = phi i64 [ 0, %.lr.ph7.preheader.i.i68 ], [ %indvars.iv.next.i.i78, %._crit_edge.i.i77 ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.i.i70
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !881 ; 2 uses
  %.not11.i2.i.i71 = icmp eq i32 %i.hm, 0
  br i1 %.not11.i2.i.i71, label %._crit_edge.i.i77, label %.lr.ph.i.i72

.lr.ph.i.i72:                                     ; preds = %.lr.ph7.i.i69
  %indvars.iv.tr.i.i73 = trunc i64 %indvars.iv.i.i70 to i32
  %i.hn = shl i32 %indvars.iv.tr.i.i73, 5
  br label %bb.y

bb.y:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i72
  %.0.i3.i.i74 = phi i32 [ %i.hm, %.lr.ph.i.i72 ], [ %i.hv, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ho = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i74, i1 true)
  %i.hp = or disjoint i32 %i.ho, %i.hn
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i75 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i.i75, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr noundef nonnull align 4 dereferenceable(8) %i.ht) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.z, %bb.y
  %i.hu = add i32 %.0.i3.i.i74, -1
  %i.hv = and i32 %i.hu, %.0.i3.i.i74             ; 2 uses
  %.not11.i.i.i76 = icmp eq i32 %i.hv, 0
  br i1 %.not11.i.i.i76, label %._crit_edge.i.i77, label %bb.y, !llvm.loop !1008

._crit_edge.i.i77:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i69
  %indvars.iv.next.i.i78 = add nuw nsw i64 %indvars.iv.i.i70, 1 ; 2 uses
  %.not.i.i.i79 = icmp eq i64 %indvars.iv.next.i.i78, %i.hk
  br i1 %.not.i.i.i79, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i69, !llvm.loop !1009

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i77
  %.pr.i80 = load i32, ptr %i.hc, align 4, !tbaa !1005 ; 2 uses
  %i.hw = icmp eq i32 %.pr.i80, 0
  br i1 %i.hw, label %_ZN4llvm8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.hx = load ptr, ptr %i.hb, align 8, !tbaa !1006
  %i.hy = zext i32 %.pr.i80 to i64                ; 2 uses
  %i.hz = shl nuw nsw i64 %i.hy, 4
  %i.ia = add nuw nsw i64 %i.hy, 31
  %i.ib = lshr i64 %i.ia, 3
  %i.ic = and i64 %i.ib, 1073741820
  %i.id = add nuw nsw i64 %i.ic, %i.hz
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.hx, i64 noundef %i.id, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.aa
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 2136
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ie) #28
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 2112
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !1010 ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 2128
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !1011
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = ptrtoint ptr %i.ig to i64
  %i.il = sub i64 %i.ij, %i.ik
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ig, i64 noundef %i.il) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZN4llvm8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, %bb.ab
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 2088 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 2108 ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !995 ; 2 uses
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit97, label %.lr.ph7.preheader.i.i82

.lr.ph7.preheader.i.i82:                          ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.iq = load ptr, ptr %i.im, align 8, !tbaa !996
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !997
  %i.it = zext i32 %i.io to i64
  %i.iu = add nuw nsw i64 %i.it, 31
  %i.iv = lshr i64 %i.iu, 5
  br label %.lr.ph7.i.i83

.lr.ph7.i.i83:                                    ; preds = %._crit_edge.i.i92, %.lr.ph7.preheader.i.i82
  %indvars.iv.i.i84 = phi i64 [ 0, %.lr.ph7.preheader.i.i82 ], [ %indvars.iv.next.i.i93, %._crit_edge.i.i92 ] ; 3 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv.i.i84
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !881 ; 2 uses
  %.not11.i2.i.i85 = icmp eq i32 %i.ix, 0
  br i1 %.not11.i2.i.i85, label %._crit_edge.i.i92, label %.lr.ph.i.i86

.lr.ph.i.i86:                                     ; preds = %.lr.ph7.i.i83
  %indvars.iv.tr.i.i87 = trunc i64 %indvars.iv.i.i84 to i32
  %i.iy = shl i32 %indvars.iv.tr.i.i87, 5
  br label %bb.ac

bb.ac:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i90, %.lr.ph.i.i86
  %.0.i3.i.i88 = phi i32 [ %i.ix, %.lr.ph.i.i86 ], [ %i.jg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i90 ] ; 3 uses
  %i.iz = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i88, i1 true)
  %i.ja = or disjoint i32 %i.iz, %i.iy
  %i.jb = zext i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.iq, i64 %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i89 = icmp eq ptr %i.je, null
  br i1 %.not.i.i.i.i.i89, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i90, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.jd, ptr noundef nonnull align 4 dereferenceable(8) %i.je) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i90

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i90: ; preds = %bb.ad, %bb.ac
  %i.jf = add i32 %.0.i3.i.i88, -1
  %i.jg = and i32 %i.jf, %.0.i3.i.i88             ; 2 uses
  %.not11.i.i.i91 = icmp eq i32 %i.jg, 0
  br i1 %.not11.i.i.i91, label %._crit_edge.i.i92, label %bb.ac, !llvm.loop !998

._crit_edge.i.i92:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i90, %.lr.ph7.i.i83
  %indvars.iv.next.i.i93 = add nuw nsw i64 %indvars.iv.i.i84, 1 ; 2 uses
  %.not.i.i.i94 = icmp eq i64 %indvars.iv.next.i.i93, %i.iv
  br i1 %.not.i.i.i94, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i95, label %.lr.ph7.i.i83, !llvm.loop !999

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i95: ; preds = %._crit_edge.i.i92
  %.pr.i96 = load i32, ptr %i.in, align 4, !tbaa !995 ; 2 uses
  %i.jh = icmp eq i32 %.pr.i96, 0
  br i1 %i.jh, label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit97, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i95
  %i.ji = load ptr, ptr %i.im, align 8, !tbaa !996
  %i.jj = zext i32 %.pr.i96 to i64                ; 2 uses
  %i.jk = shl nuw nsw i64 %i.jj, 4
  %i.jl = add nuw nsw i64 %i.jj, 31
  %i.jm = lshr i64 %i.jl, 3
  %i.jn = and i64 %i.jm, 1073741820
  %i.jo = add nuw nsw i64 %i.jn, %i.jk
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ji, i64 noundef %i.jo, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit97

_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit97: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i95, %bb.ae
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !1012 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !1013 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.jq, %i.js
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvT_S5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit97, %_ZSt8_DestroyIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ju, %_ZSt8_DestroyIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvPT_.exit.i.i.i ], [ %i.jq, %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit97 ] ; 3 uses
  %i.jt = load ptr, ptr %.05.i.i.i, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvPT_.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i.i, ptr noundef nonnull align 4 dereferenceable(8) %i.jt) #28
  br label %_ZSt8_DestroyIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvPT_.exit.i.i.i: ; preds = %bb.af, %.lr.ph.i.i.i
  %i.ju = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i98 = icmp eq ptr %i.ju, %i.js
  br i1 %.not.i.i.i98, label %_ZSt8_DestroyIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1014

_ZSt8_DestroyIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvT_S5_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvPT_.exit.i.i.i
  %.pr.i99 = load ptr, ptr %i.jp, align 8, !tbaa !1012
  br label %_ZSt8_DestroyIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvT_S5_.exit.i

_ZSt8_DestroyIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvT_S5_.exitthread-pre-split.i, %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit97
  %i.jv = phi ptr [ %.pr.i99, %_ZSt8_DestroyIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvT_S5_.exitthread-pre-split.i ], [ %i.jq, %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit97 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.jv, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEESaIS3_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZSt8_DestroyIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvT_S5_.exit.i
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !1015
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ka) #29
  br label %_ZNSt6vectorIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvT_S5_.exit.i, %bb.ag
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 2040 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !1016 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !1017 ; 2 uses
  %.not4.i.i.i100 = icmp eq ptr %i.kc, %i.ke
  br i1 %.not4.i.i.i100, label %_ZSt8_DestroyIPSt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEEEvT_S9_.exit.i, label %.lr.ph.i.i.i101

.lr.ph.i.i.i101:                                  ; preds = %_ZNSt6vectorIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEEEvPT_.exit.i.i.i
  %.05.i.i.i102 = phi ptr [ %i.kh, %_ZSt8_DestroyISt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEEEvPT_.exit.i.i.i ], [ %i.kc, %_ZNSt6vectorIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEESaIS3_EED2Ev.exit ] ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.05.i.i.i102, i64 8 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i.i.i103 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.i.i.i.i.i103, label %_ZSt8_DestroyISt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEEEvPT_.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i101
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, ptr noundef nonnull align 4 dereferenceable(8) %i.kg) #28
  br label %_ZSt8_DestroyISt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEEEvPT_.exit.i.i.i: ; preds = %bb.ah, %.lr.ph.i.i.i101
  %i.kh = getelementptr inbounds nuw i8, ptr %.05.i.i.i102, i64 16 ; 2 uses
  %.not.i.i.i104 = icmp eq ptr %i.kh, %i.ke
  br i1 %.not.i.i.i104, label %_ZSt8_DestroyIPSt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEEEvT_S9_.exitthread-pre-split.i, label %.lr.ph.i.i.i101, !llvm.loop !1018

_ZSt8_DestroyIPSt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEEEvT_S9_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEEEvPT_.exit.i.i.i
  %.pr.i105 = load ptr, ptr %i.kb, align 8, !tbaa !1016
  br label %_ZSt8_DestroyIPSt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEEEvT_S9_.exit.i

_ZSt8_DestroyIPSt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEEEvT_S9_.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEEEvT_S9_.exitthread-pre-split.i, %_ZNSt6vectorIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEESaIS3_EED2Ev.exit
  %i.ki = phi ptr [ %.pr.i105, %_ZSt8_DestroyIPSt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEEEvT_S9_.exitthread-pre-split.i ], [ %i.kc, %_ZNSt6vectorIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i106 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i1.i106, label %_ZNSt6vectorISt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEESaIS7_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPSt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEEEvT_S9_.exit.i
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !1019
  %i.kl = ptrtoint ptr %i.kk to i64
  %i.km = ptrtoint ptr %i.ki to i64
  %i.kn = sub i64 %i.kl, %i.km
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ki, i64 noundef %i.kn) #29
  br label %_ZNSt6vectorISt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEEEvT_S9_.exit.i, %bb.ai
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 2016 ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !1020 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !1021 ; 2 uses
  %.not4.i.i.i107 = icmp eq ptr %i.kp, %i.kr
  br i1 %.not4.i.i.i107, label %_ZSt8_DestroyIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEEvT_S9_.exit.i, label %.lr.ph.i.i.i108

.lr.ph.i.i.i108:                                  ; preds = %_ZNSt6vectorISt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEESaIS7_EED2Ev.exit, %_ZSt8_DestroyISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEEvPT_.exit.i.i.i
  %.05.i.i.i109 = phi ptr [ %i.ku, %_ZSt8_DestroyISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEEvPT_.exit.i.i.i ], [ %i.kp, %_ZNSt6vectorISt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEESaIS7_EED2Ev.exit ] ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.05.i.i.i109, i64 8 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i.i.i110 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i.i.i.i.i110, label %_ZSt8_DestroyISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEEvPT_.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i108
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.ks, ptr noundef nonnull align 4 dereferenceable(8) %i.kt) #28
  br label %_ZSt8_DestroyISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEEvPT_.exit.i.i.i: ; preds = %bb.aj, %.lr.ph.i.i.i108
  %i.ku = getelementptr inbounds nuw i8, ptr %.05.i.i.i109, i64 16 ; 2 uses
  %.not.i.i.i111 = icmp eq ptr %i.ku, %i.kr
  br i1 %.not.i.i.i111, label %_ZSt8_DestroyIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEEvT_S9_.exitthread-pre-split.i, label %.lr.ph.i.i.i108, !llvm.loop !1022

_ZSt8_DestroyIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEEvT_S9_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEEvPT_.exit.i.i.i
  %.pr.i112 = load ptr, ptr %i.ko, align 8, !tbaa !1020
  br label %_ZSt8_DestroyIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEEvT_S9_.exit.i

_ZSt8_DestroyIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEEvT_S9_.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEEvT_S9_.exitthread-pre-split.i, %_ZNSt6vectorISt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEESaIS7_EED2Ev.exit
  %i.kv = phi ptr [ %.pr.i112, %_ZSt8_DestroyIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEEvT_S9_.exitthread-pre-split.i ], [ %i.kp, %_ZNSt6vectorISt4pairIPKN5clang14DeclaratorDeclEN4llvm13TrackingMDRefEESaIS7_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i113 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i1.i113, label %_ZNSt6vectorISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEESaIS7_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEEvT_S9_.exit.i
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 2032
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !1023
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = ptrtoint ptr %i.kv to i64
  %i.la = sub i64 %i.ky, %i.kz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kv, i64 noundef %i.la) #29
  br label %_ZNSt6vectorISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEEvT_S9_.exit.i, %bb.ak
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 1992
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !1024 ; 3 uses
  %.not.i.i.i114 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i114, label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEESaIS7_EED2Ev.exit
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 2008
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !1025
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.lc to i64
  %i.lh = sub i64 %i.lf, %i.lg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lh) #29
  br label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit

_ZNSt6vectorIPvSaIS0_EED2Ev.exit:                 ; preds = %_ZNSt6vectorISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEESaIS7_EED2Ev.exit, %bb.al
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 1988 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !1026 ; 2 uses
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %_ZN4llvm8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i115

.lr.ph7.preheader.i.i115:                         ; preds = %_ZNSt6vectorIPvSaIS0_EED2Ev.exit
  %i.lm = load ptr, ptr %i.li, align 8, !tbaa !1027
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !1028
  %i.lp = zext i32 %i.lk to i64
  %i.lq = add nuw nsw i64 %i.lp, 31
  %i.lr = lshr i64 %i.lq, 5
  br label %.lr.ph7.i.i116

.lr.ph7.i.i116:                                   ; preds = %._crit_edge.i.i124, %.lr.ph7.preheader.i.i115
  %indvars.iv.i.i117 = phi i64 [ 0, %.lr.ph7.preheader.i.i115 ], [ %indvars.iv.next.i.i125, %._crit_edge.i.i124 ] ; 3 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %indvars.iv.i.i117
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !881 ; 2 uses
  %.not11.i2.i.i118 = icmp eq i32 %i.lt, 0
  br i1 %.not11.i2.i.i118, label %._crit_edge.i.i124, label %.lr.ph.i.i119

.lr.ph.i.i119:                                    ; preds = %.lr.ph7.i.i116
  %indvars.iv.tr.i.i120 = trunc i64 %indvars.iv.i.i117 to i32
  %i.lu = shl i32 %indvars.iv.tr.i.i120, 5
  br label %bb.am

bb.am:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i119
  %.0.i3.i.i121 = phi i32 [ %i.lt, %.lr.ph.i.i119 ], [ %i.mc, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.lv = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i121, i1 true)
  %i.lw = or disjoint i32 %i.lv, %i.lu
  %i.lx = zext i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i122 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i.i.i122, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.lz, ptr noundef nonnull align 4 dereferenceable(8) %i.ma) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.an, %bb.am
  %i.mb = add i32 %.0.i3.i.i121, -1
  %i.mc = and i32 %i.mb, %.0.i3.i.i121            ; 2 uses
  %.not11.i.i.i123 = icmp eq i32 %i.mc, 0
  br i1 %.not11.i.i.i123, label %._crit_edge.i.i124, label %bb.am, !llvm.loop !1029

._crit_edge.i.i124:                               ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i116
  %indvars.iv.next.i.i125 = add nuw nsw i64 %indvars.iv.i.i117, 1 ; 2 uses
  %.not.i.i.i126 = icmp eq i64 %indvars.iv.next.i.i125, %i.lr
  br i1 %.not.i.i.i126, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i116, !llvm.loop !1030

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i124
  %.pr.i127 = load i32, ptr %i.lj, align 4, !tbaa !1026 ; 2 uses
  %i.md = icmp eq i32 %.pr.i127, 0
  br i1 %i.md, label %_ZN4llvm8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i
  %i.me = load ptr, ptr %i.li, align 8, !tbaa !1027
  %i.mf = zext i32 %.pr.i127 to i64               ; 2 uses
  %i.mg = shl nuw nsw i64 %i.mf, 4
  %i.mh = add nuw nsw i64 %i.mf, 31
  %i.mi = lshr i64 %i.mh, 3
  %i.mj = and i64 %i.mi, 1073741820
  %i.mk = add nuw nsw i64 %i.mj, %i.mg
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.me, i64 noundef %i.mk, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit: ; preds = %_ZNSt6vectorIPvSaIS0_EED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, %bb.ao
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 1944 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 1964 ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !1031 ; 2 uses
  %i.mo = icmp eq i32 %i.mn, 0
  br i1 %i.mo, label %_ZN4llvm8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj1ESA_EEEESaISD_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEED2Ev.exit, label %.lr.ph7.preheader.i.i128

.lr.ph7.preheader.i.i128:                         ; preds = %_ZN4llvm8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit
  %i.mp = load ptr, ptr %i.ml, align 8, !tbaa !1032
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !1033
  %i.ms = zext i32 %i.mn to i64
  %i.mt = add nuw nsw i64 %i.ms, 31
  %i.mu = lshr i64 %i.mt, 5
  br label %.lr.ph7.i.i129

.lr.ph7.i.i129:                                   ; preds = %._crit_edge.i.i137, %.lr.ph7.preheader.i.i128
  %indvars.iv.i.i130 = phi i64 [ 0, %.lr.ph7.preheader.i.i128 ], [ %indvars.iv.next.i.i138, %._crit_edge.i.i137 ] ; 3 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv.i.i130
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !881 ; 2 uses
  %.not11.i2.i.i131 = icmp eq i32 %i.mw, 0
  br i1 %.not11.i2.i.i131, label %._crit_edge.i.i137, label %.lr.ph.i.i132

.lr.ph.i.i132:                                    ; preds = %.lr.ph7.i.i129
  %indvars.iv.tr.i.i133 = trunc i64 %indvars.iv.i.i130 to i32
  %i.mx = shl i32 %indvars.iv.tr.i.i133, 5
  br label %bb.ap

bb.ap:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i132
  %.0.i3.i.i134 = phi i32 [ %i.mw, %.lr.ph.i.i132 ], [ %i.nk, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.my = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i134, i1 true)
  %i.mz = or disjoint i32 %i.my, %i.mx
  %i.na = zext i32 %i.mz to i64
  %i.nb = getelementptr inbounds nuw [32 x i8], ptr %i.mp, i64 %i.na ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !1034 ; 3 uses
  %.not.i.i.i.i.i.i135 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i.i.i.i.i135, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 24
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !1037
  %i.ng = ptrtoint ptr %i.nf to i64
  %i.nh = ptrtoint ptr %i.nd to i64
  %i.ni = sub i64 %i.ng, %i.nh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.nd, i64 noundef %i.ni) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.aq, %bb.ap
  %i.nj = add i32 %.0.i3.i.i134, -1
  %i.nk = and i32 %i.nj, %.0.i3.i.i134            ; 2 uses
  %.not11.i.i.i136 = icmp eq i32 %i.nk, 0
  br i1 %.not11.i.i.i136, label %._crit_edge.i.i137, label %bb.ap, !llvm.loop !1038

._crit_edge.i.i137:                               ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i129
  %indvars.iv.next.i.i138 = add nuw nsw i64 %indvars.iv.i.i130, 1 ; 2 uses
  %.not.i.i.i139 = icmp eq i64 %indvars.iv.next.i.i138, %i.mu
  br i1 %.not.i.i.i139, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E10destroyAllEv.exit.i, label %.lr.ph7.i.i129, !llvm.loop !1039

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i137
  %.pr.i140 = load i32, ptr %i.mm, align 4, !tbaa !1031 ; 2 uses
  %i.nl = icmp eq i32 %.pr.i140, 0
  br i1 %i.nl, label %_ZN4llvm8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj1ESA_EEEESaISD_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E10destroyAllEv.exit.i
  %i.nm = load ptr, ptr %i.ml, align 8, !tbaa !1032
  %i.nn = zext i32 %.pr.i140 to i64               ; 2 uses
  %i.no = shl nuw nsw i64 %i.nn, 5
  %i.np = add nuw nsw i64 %i.nn, 31
  %i.nq = lshr i64 %i.np, 3
  %i.nr = and i64 %i.nq, 1073741820
  %i.ns = add nuw nsw i64 %i.nr, %i.no
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.nm, i64 noundef %i.ns, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj1ESA_EEEESaISD_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj1ESA_EEEESaISD_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E10destroyAllEv.exit.i, %bb.ar
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !491 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.nw = icmp eq ptr %i.nu, %i.nv
  br i1 %i.nw, label %_ZN4llvm11SmallVectorIN5clang7CodeGen11CGDebugInfo23ObjCInterfaceCacheEntryELj32EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZN4llvm8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj1ESA_EEEESaISD_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEED2Ev.exit
  tail call void @free(ptr noundef %i.nu) #28
  br label %_ZN4llvm11SmallVectorIN5clang7CodeGen11CGDebugInfo23ObjCInterfaceCacheEntryELj32EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang7CodeGen11CGDebugInfo23ObjCInterfaceCacheEntryELj32EED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj1ESA_EEEESaISD_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEED2Ev.exit, %bb.as
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.ny = load i32, ptr %i.nx, align 8
  %i.nz = and i32 %i.ny, 1
  %.not.i.i = icmp eq i32 %i.nz, 0
  br i1 %.not.i.i, label %bb.at, label %_ZN4llvm13SmallDenseMapIN5clang8QualTypeEPNS_8MetadataELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

bb.at:                                            ; preds = %_ZN4llvm11SmallVectorIN5clang7CodeGen11CGDebugInfo23ObjCInterfaceCacheEntryELj32EED2Ev.exit
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !880 ; 2 uses
  %i.oc = icmp eq i32 %i.ob, 0
  br i1 %i.oc, label %_ZN4llvm13SmallDenseMapIN5clang8QualTypeEPNS_8MetadataELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !880
  %i.of = zext i32 %i.ob to i64                   ; 2 uses
  %i.og = shl nuw nsw i64 %i.of, 4
  %i.oh = add nuw nsw i64 %i.of, 31
  %i.oi = lshr i64 %i.oh, 3
  %i.oj = and i64 %i.oi, 1073741820
  %i.ok = add nuw nsw i64 %i.oj, %i.og
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.oe, i64 noundef %i.ok, i64 noundef 8) #28
  br label %_ZN4llvm13SmallDenseMapIN5clang8QualTypeEPNS_8MetadataELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIN5clang8QualTypeEPNS_8MetadataELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN5clang7CodeGen11CGDebugInfo23ObjCInterfaceCacheEntryELj32EED2Ev.exit, %bb.at, %bb.au
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 1060 ; 2 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !1040 ; 2 uses
  %i.oo = icmp eq i32 %i.on, 0
  br i1 %i.oo, label %_ZN4llvm8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i141

.lr.ph7.preheader.i.i141:                         ; preds = %_ZN4llvm13SmallDenseMapIN5clang8QualTypeEPNS_8MetadataELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit
  %i.op = load ptr, ptr %i.ol, align 8, !tbaa !1041
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !1042
  %i.os = zext i32 %i.on to i64
  %i.ot = add nuw nsw i64 %i.os, 31
  %i.ou = lshr i64 %i.ot, 5
  br label %.lr.ph7.i.i142

.lr.ph7.i.i142:                                   ; preds = %._crit_edge.i.i150, %.lr.ph7.preheader.i.i141
  %indvars.iv.i.i143 = phi i64 [ 0, %.lr.ph7.preheader.i.i141 ], [ %indvars.iv.next.i.i151, %._crit_edge.i.i150 ] ; 3 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv.i.i143
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !881 ; 2 uses
  %.not11.i2.i.i144 = icmp eq i32 %i.ow, 0
  br i1 %.not11.i2.i.i144, label %._crit_edge.i.i150, label %.lr.ph.i.i145

.lr.ph.i.i145:                                    ; preds = %.lr.ph7.i.i142
  %indvars.iv.tr.i.i146 = trunc i64 %indvars.iv.i.i143 to i32
  %i.ox = shl i32 %indvars.iv.tr.i.i146, 5
  br label %bb.av

bb.av:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i145
  %.0.i3.i.i147 = phi i32 [ %i.ow, %.lr.ph.i.i145 ], [ %i.pf, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.oy = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i147, i1 true)
  %i.oz = or disjoint i32 %i.oy, %i.ox
  %i.pa = zext i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [16 x i8], ptr %i.op, i64 %i.pa
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8 ; 2 uses
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i148 = icmp eq ptr %i.pd, null
  br i1 %.not.i.i.i.i.i148, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.pc, ptr noundef nonnull align 4 dereferenceable(8) %i.pd) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.aw, %bb.av
  %i.pe = add i32 %.0.i3.i.i147, -1
  %i.pf = and i32 %i.pe, %.0.i3.i.i147            ; 2 uses
  %.not11.i.i.i149 = icmp eq i32 %i.pf, 0
  br i1 %.not11.i.i.i149, label %._crit_edge.i.i150, label %bb.av, !llvm.loop !1043

._crit_edge.i.i150:                               ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i142
  %indvars.iv.next.i.i151 = add nuw nsw i64 %indvars.iv.i.i143, 1 ; 2 uses
  %.not.i.i.i152 = icmp eq i64 %indvars.iv.next.i.i151, %i.ou
  br i1 %.not.i.i.i152, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i142, !llvm.loop !1044

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i150
  %.pr.i153 = load i32, ptr %i.om, align 4, !tbaa !1040 ; 2 uses
  %i.pg = icmp eq i32 %.pr.i153, 0
  br i1 %i.pg, label %_ZN4llvm8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.ph = load ptr, ptr %i.ol, align 8, !tbaa !1041
  %i.pi = zext i32 %.pr.i153 to i64               ; 2 uses
  %i.pj = shl nuw nsw i64 %i.pi, 4
  %i.pk = add nuw nsw i64 %i.pi, 31
  %i.pl = lshr i64 %i.pk, 3
  %i.pm = and i64 %i.pl, 1073741820
  %i.pn = add nuw nsw i64 %i.pm, %i.pj
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ph, i64 noundef %i.pn, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %_ZN4llvm13SmallDenseMapIN5clang8QualTypeEPNS_8MetadataELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.ax
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm9DIBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %i.po) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !491  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !492  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not6.i = icmp eq i32 %i.d, 0
  br i1 %.not6.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi ptr [ %i.p, %.lr.ph.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !491
  %i.h = ptrtoint ptr %.07.i to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %sum.shift.i = lshr i64 %i.j, 10
  %i.k = trunc i64 %sum.shift.i to i32
  %i.l = and i32 %i.k, 33554431
  %i.m = tail call i32 @llvm.umin.i32(i32 %i.l, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.m to i64
  %i.n = shl nuw nsw i64 4096, %.sroa.speculated.i.i
  %i.o = load ptr, ptr %.07.i, align 8, !tbaa !1045
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.o, i64 noundef %i.n, i64 noundef 16) #28
  %i.p = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %i.f
  br i1 %.not.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit, label %.lr.ph.i, !llvm.loop !1046

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !491  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load i32, ptr %i.s, align 8, !tbaa !492  ; 2 uses
  %i.u = zext i32 %i.t to i64
  %.idx.i = shl nuw nsw i64 %i.u, 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %.not10.i = icmp eq i32 %i.t, 0
  br i1 %.not10.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit, label %.lr.ph.i1

.lr.ph.i1:                                        ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit, %.lr.ph.i1
  %.011.i = phi ptr [ %i.z, %.lr.ph.i1 ], [ %i.r, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit ] ; 3 uses
  %i.w = load ptr, ptr %.011.i, align 8, !tbaa !1047
  %i.x = getelementptr inbounds nuw i8, ptr %.011.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1049
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.w, i64 noundef %i.y, i64 noundef 16) #28
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i, i64 16 ; 2 uses
  %.not.i2 = icmp eq ptr %i.z, %i.v
  br i1 %.not.i2, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit, label %.lr.ph.i1

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit: ; preds = %.lr.ph.i1
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !491
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit
  %i.aa = phi ptr [ %.pre, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit ], [ %i.r, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit
  tail call void @free(ptr noundef %i.aa) #28
  br label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit, %bb.b
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !491 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvm11SmallVectorIPvLj4EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit
  tail call void @free(ptr noundef %i.ad) #28
  br label %_ZN4llvm11SmallVectorIPvLj4EED2Ev.exit

_ZN4llvm11SmallVectorIPvLj4EED2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9DIBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @_ZN4llvm8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !491  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.e = load i32, ptr %i.d, align 8, !tbaa !492  ; 2 uses
  %.not4.i.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.f = zext i32 %i.e to i64
  %.idx.i = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.h, %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i ], [ %i.g, %.lr.ph.i.preheader.i ]
  %i.h = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !980  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(8) %i.i) #28
  br label %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i

_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.c, %i.h
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1050

_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i: ; preds = %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !491
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i, %bb.a
  %i.j = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4llvm11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i
  tail call void @free(ptr noundef %i.j) #28
  br label %_ZN4llvm11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !491  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.q = load i32, ptr %i.p, align 8, !tbaa !492  ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_6MDNodeENS_9SetVectorIPNS_8MetadataENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEEELb0EE13destroy_rangeEPSE_SG_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EED2Ev.exit
  %i.r = zext i32 %i.q to i64
  %.idx.i.i = mul nuw nsw i64 %i.r, 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIPN4llvm6MDNodeENS0_9SetVectorIPNS0_8MetadataENS0_11SmallVectorIS5_Lj0EEENS0_8DenseSetIS5_NS0_12DenseMapInfoIS5_vEEEELj0EEEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.t, %_ZNSt4pairIPN4llvm6MDNodeENS0_9SetVectorIPNS0_8MetadataENS0_11SmallVectorIS5_Lj0EEENS0_8DenseSetIS5_NS0_12DenseMapInfoIS5_vEEEELj0EEEED2Ev.exit.i.i.i ], [ %i.s, %.lr.ph.i.preheader.i.i ] ; 5 uses
  %i.t = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -40
  %i.v = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !491  ; 2 uses
  %i.x = icmp eq ptr %i.w, %.05.i.i.i
  br i1 %i.x, label %_ZN4llvm11SmallVectorIPNS_8MetadataELj0EED2Ev.exit.i.i.i.i.i, label %bb.d
end_hunk_0
begin_hunk_1_@_ZN5clang7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoEN4llvm8ArrayRefINS_13SanitizerKind16SanitizerOrdinalEEE16SanitizerHandler:bb.a
  br label %bb.ba

._crit_edge._crit_edge.i.i.i.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i.i
  %.val30.val.pre.i.i.i.i.i.i = load i64, ptr %i.o, align 8
  %.val30.val45.pre.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !tbaa !880
  br label %bb.ay

bb.aw:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i = load i64, ptr %.029.lcssa.i.i.i.i.i.i, align 8, !tbaa !2787 ; 2 uses
  %.val31.val.i.i.i.i.i.i = load i64, ptr %i.o, align 8 ; 2 uses
  %.val31.val44.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !tbaa !880 ; 2 uses
  %i.fb = trunc i64 %.029.val.i.i.i.i.i.i to i32  ; 2 uses
  %i.fc = icmp ult i32 %i.fb, 64
  %i.fd = and i64 %.029.val.i.i.i.i.i.i, 63
  %i.fe = shl nuw i64 1, %i.fd                    ; 2 uses
  %i.ff = select i1 %i.fc, i64 %i.fe, i64 0
  %i.fg = and i32 %i.fb, -64
  %or.cond.i.i.i.i53.i.i.i.i.i.i = icmp eq i32 %i.fg, 64
  %i.fh = select i1 %or.cond.i.i.i.i53.i.i.i.i.i.i, i64 %i.fe, i64 0
  %i.fi = and i64 %i.ff, %.val31.val.i.i.i.i.i.i
  %i.fj = and i64 %i.fh, %.val31.val44.i.i.i.i.i.i
  %.not.i.i.i.i.i54.i.i.i.i.i.i = icmp ne i64 %i.fi, 0
  %i.fk = icmp ne i64 %i.fj, 0
  %i.fl = select i1 %.not.i.i.i.i.i54.i.i.i.i.i.i, i1 true, i1 %i.fk
  br i1 %i.fl, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit", label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fm = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge._crit_edge.i.i.i.i.i.i
  %.val30.val45.i.i.i.i.i.i = phi i64 [ %.val31.val44.i.i.i.i.i.i, %bb.ax ], [ %.val30.val45.pre.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.val30.val.i.i.i.i.i.i = phi i64 [ %.val31.val.i.i.i.i.i.i, %bb.ax ], [ %.val30.val.pre.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.1.i.i.i.i.i.i = phi ptr [ %i.fm, %bb.ax ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i = load i64, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !2787 ; 2 uses
  %i.fn = trunc i64 %.1.val.i.i.i.i.i.i to i32    ; 2 uses
  %i.fo = icmp ult i32 %i.fn, 64
  %i.fp = and i64 %.1.val.i.i.i.i.i.i, 63
  %i.fq = shl nuw i64 1, %i.fp                    ; 2 uses
  %i.fr = select i1 %i.fo, i64 %i.fq, i64 0
  %i.fs = and i32 %i.fn, -64
  %or.cond.i.i.i.i55.i.i.i.i.i.i = icmp eq i32 %i.fs, 64
  %i.ft = select i1 %or.cond.i.i.i.i55.i.i.i.i.i.i, i64 %i.fq, i64 0
  %i.fu = and i64 %i.fr, %.val30.val.i.i.i.i.i.i
  %i.fv = and i64 %i.ft, %.val30.val45.i.i.i.i.i.i
  %.not.i.i.i.i.i56.i.i.i.i.i.i = icmp ne i64 %i.fu, 0
  %i.fw = icmp ne i64 %i.fv, 0
  %i.fx = select i1 %.not.i.i.i.i.i56.i.i.i.i.i.i, i1 true, i1 %i.fw
  br i1 %i.fx, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit", label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fy = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %._crit_edge._crit_edge77.i.i.i.i.i.i
  %.val.val46.i.i.i.i.i.i = phi i64 [ %.val30.val45.i.i.i.i.i.i, %bb.az ], [ %.val.val46.pre.i.i.i.i.i.i, %._crit_edge._crit_edge77.i.i.i.i.i.i ]
  %.val.val.i.i.i.i.i.i = phi i64 [ %.val30.val.i.i.i.i.i.i, %bb.az ], [ %.val.val.pre.i.i.i.i.i.i, %._crit_edge._crit_edge77.i.i.i.i.i.i ]
  %.2.i.i.i.i.i.i = phi ptr [ %i.fy, %bb.az ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge._crit_edge77.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i = load i64, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !2787 ; 2 uses
  %i.fz = trunc i64 %.2.val.i.i.i.i.i.i to i32    ; 2 uses
  %i.ga = icmp ult i32 %i.fz, 64
  %i.gb = and i64 %.2.val.i.i.i.i.i.i, 63
  %i.gc = shl nuw i64 1, %i.gb                    ; 2 uses
  %i.gd = select i1 %i.ga, i64 %i.gc, i64 0
  %i.ge = and i32 %i.fz, -64
  %or.cond.i.i.i.i57.i.i.i.i.i.i = icmp eq i32 %i.ge, 64
  %i.gf = select i1 %or.cond.i.i.i.i57.i.i.i.i.i.i, i64 %i.gc, i64 0
  %i.gg = and i64 %i.gd, %.val.val.i.i.i.i.i.i
  %i.gh = and i64 %i.gf, %.val.val46.i.i.i.i.i.i
  %.not.i.i.i.i.i58.i.i.i.i.i.i = icmp ne i64 %i.gg, 0
  %i.gi = icmp ne i64 %i.gh, 0
  %i.gj = select i1 %.not.i.i.i.i.i58.i.i.i.i.i.i, i1 true, i1 %i.gi
  br i1 %i.gj, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit", label %"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit.thread"

"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.as
  %i.gk = getelementptr inbounds nuw i8, ptr %.02969.i.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit95": ; preds = %bb.at
  %i.gl = getelementptr inbounds nuw i8, ptr %.02969.i.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit97": ; preds = %bb.au
  %i.gm = getelementptr inbounds nuw i8, ptr %.02969.i.i.i.i.i.i, i64 24
  br label %"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit": ; preds = %bb.ar, %"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit95", %"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit97", %bb.aw, %bb.ay, %bb.ba
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.ay ], [ %.029.lcssa.i.i.i.i.i.i, %bb.aw ], [ %.2.i.i.i.i.i.i, %bb.ba ], [ %i.gm, %"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit97" ], [ %i.gl, %"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit95" ], [ %i.gk, %"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02969.i.i.i.i.i.i, %bb.ar ]
  %.not = icmp eq ptr %i.cz, %.028.i.i.i.i.i.i
  br i1 %.not, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit.thread", label %_ZN4llvm6DINode20getCanonicalMDStringERNS_11LLVMContextENS_9StringRefE.exit.i.i

_ZN4llvm6DINode20getCanonicalMDStringERNS_11LLVMContextENS_9StringRefE.exit.i.i: ; preds = %"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit"
  %i.gn = load ptr, ptr %i.k, align 8, !tbaa !2786, !nonnull !387, !align !388
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 232
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !1286, !nonnull !387, !align !388 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.gq = call noundef ptr @_ZN4llvm8MDString3getERNS_11LLVMContextENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, ptr nonnull @.str.108, i64 17) #28
  %i.gr = call noundef ptr @_ZN4llvm8MDString3getERNS_11LLVMContextENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, ptr nonnull @.str.109, i64 9) #28
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %i.gs = call noundef ptr @_ZN4llvm6DIFile7getImplERNS_11LLVMContextEPNS_8MDStringES4_St8optionalINS0_12ChecksumInfoIS4_EEES4_NS_8Metadata11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, ptr noundef %i.gq, ptr noundef %i.gr, ptr noundef nonnull byval(%"class.std::optional.1289") align 8 %4, ptr noundef null, i32 noundef 0, i1 noundef zeroext true) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.gt = load ptr, ptr %5, align 8, !tbaa !877
  %i.gu = load i64, ptr %i.u, align 8, !tbaa !878
  %i.gv = call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo23createInlinedSubprogramEN4llvm9StringRefEPNS2_6DIFileE(ptr noundef nonnull align 8 dereferenceable(2480) %i.g, ptr %i.gt, i64 %i.gu, ptr noundef %i.gs)
  %i.gw = load ptr, ptr %i.g, align 8, !tbaa !500, !nonnull !387, !align !388
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 232
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !1286, !nonnull !387, !align !388
  %i.gz = call noundef ptr @_ZN4llvm10DILocation7getImplERNS_11LLVMContextEjjPNS_8MetadataES4_bmhNS3_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, i32 noundef 0, i32 noundef 0, ptr noundef %i.gv, ptr noundef nonnull %i.b, i1 noundef zeroext false, i64 noundef 0, i8 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext true) #28
  br label %"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit.thread"

"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit.thread": ; preds = %bb.ba, %._crit_edge.i.i.i.i.i.i, %"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit", %_ZN4llvm6DINode20getCanonicalMDStringERNS_11LLVMContextENS_9StringRefE.exit.i.i
  %.0 = phi ptr [ %i.gz, %_ZN4llvm6DINode20getCanonicalMDStringERNS_11LLVMContextENS_9StringRefE.exit.i.i ], [ %i.b, %"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit" ], [ %i.b, %._crit_edge.i.i.i.i.i.i ], [ %i.b, %bb.ba ]
  %i.ha = load ptr, ptr %5, align 8, !tbaa !877   ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.t
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit.thread"
  %i.hc = load i64, ptr %i.t, align 8, !tbaa !880
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %"_ZN4llvm6any_ofIRNS_8ArrayRefIN5clang13SanitizerKind16SanitizerOrdinalEEEZNS2_7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoES5_16SanitizerHandlerE3$_0EEbOT_T0_.exit.thread", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.b, %bb.a
  %.2 = phi ptr [ %i.b, %bb.a ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %i.b, %bb.b ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen22SanitizerDebugLocationC2EPNS0_15CodeGenFunctionEN4llvm8ArrayRefINS_13SanitizerKind16SanitizerOrdinalEEE16SanitizerHandler(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0, ptr noundef nonnull %1, ptr nofree readonly captures(address) %2, i64 %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !2797
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef ptr @_ZN5clang7CodeGen15CodeGenFunction26SanitizerAnnotateDebugInfoEN4llvm8ArrayRefINS_13SanitizerKind16SanitizerOrdinalEEE16SanitizerHandler(ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr %2, i64 %3, i32 noundef %4)
  tail call void @_ZN5clang7CodeGen18ApplyDebugLocationC1ERNS0_15CodeGenFunctionEN4llvm8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr %i.b) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1936
  store i8 1, ptr %i.c, align 8, !tbaa !2799
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen22SanitizerDebugLocationD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2797
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1936
  store i8 0, ptr %i.b, align 8, !tbaa !2799
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN5clang7CodeGen18ApplyDebugLocationD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.c) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang7CodeGen11CGDebugInfo17PrintingCallbacks9remapPathB5cxx11EN4llvm9StringRefE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2800, !nonnull !387, !align !388
  tail call void @_ZNK5clang7CodeGen11CGDebugInfo11remapDIPathB5cxx11EN4llvm9StringRefE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(2480) %i.b, ptr %2, i64 %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang17PrintingCallbacks14isScopeVisibleEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2801 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !2802
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2803
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !881  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !491  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !492  ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.b
  %i.u = zext i32 %i.t to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.u, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.w, %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i.i.i ], [ %i.v, %.lr.ph.i.preheader.i.i.i ]
  %i.w = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -8 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !980  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 4 dereferenceable(8) %i.x) #28
  br label %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i.i.i

_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.w
  br i1 %.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1050

_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i.i: ; preds = %_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEED2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !491
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i.i, %bb.b
  %i.y = phi ptr [ %.pre.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i
  tail call void @free(ptr noundef %i.y) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %_ZN4llvm23SmallVectorTemplateBaseINS_18TypedTrackingMDRefINS_6MDNodeEEELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i
  %i.ab = add i32 %.0.i3.i, -1
  %i.ac = and i32 %i.ab, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !2804

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !2805

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !2801 ; 2 uses
  %i.ad = icmp eq i32 %.pr, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !2802
  %i.af = zext i32 %.pr to i64                    ; 2 uses
  %i.ag = mul nuw nsw i64 %i.af, 56
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorINS_18TypedTrackingMDRefINS_6MDNodeEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #14

declare noundef ptr @_ZN4llvm10DILocation7getImplERNS_11LLVMContextEjjPNS_8MetadataES4_bmhNS3_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

declare i32 @_ZNK5clang13SourceManager23getExpansionLocSlowCaseENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(776), i32) local_unnamed_addr #1

declare i32 @_ZNK5clang13SourceManager18getFileLocSlowCaseENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(776), i32) local_unnamed_addr #1

declare noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK5clang11DeclContext18isDependentContextEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2, i8 %3) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = zext nneg i8 %3 to i64
  %i.b = shl nuw i64 1, %i.a                      ; 3 uses
  %i.c = add i64 %i.b, -1                         ; 3 uses
  %i.d = add i64 %i.c, %2                         ; 4 uses
  %i.e = icmp ugt i64 %i.d, 4096
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.d, i64 noundef 16) #28 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !492  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.k = load i32, ptr %i.j, align 4, !tbaa !493
  %.not.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !1311

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr nonnull %i.f, i64 %i.d)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !491
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  store ptr %i.f, ptr %i.n, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.o = load i32, ptr %i.h, align 8, !tbaa !492
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !492
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit: ; preds = %bb.c, %bb.d
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = add i64 %i.c, %i.q
  %i.s = sub i64 0, %i.b
  %i.t = and i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !492
  %i.y = lshr i32 %i.x, 7
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.y, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.z to i64
  %i.aa = shl nuw nsw i64 4096, %.sroa.speculated.i.i ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aa, i64 noundef 16) #28 ; 3 uses
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !492 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !493
  %.not.i.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !1311

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !491
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  store ptr %i.ab, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !492
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.w, align 8, !tbaa !492
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit: ; preds = %bb.f, %bb.g
  %i.ak = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.al = add i64 %i.ak, 1
  %i.am = add i64 %i.al, %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !1505
  %i.ao = add i64 %i.c, %i.ak
  %i.ap = sub i64 0, %i.b
  %i.aq = and i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %2
  store ptr %i.as, ptr %0, align 8, !tbaa !1504
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit
  %.0 = phi ptr [ %i.u, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit ], [ %i.ar, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit ]
  ret ptr %.0
}

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !492
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #28
  %i.f = load ptr, ptr %0, align 8, !tbaa !491
end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit, label %bb.d, !prof !1311

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2843
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2840
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2832
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !881
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !881
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2844
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1914
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1914
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !2571
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2832, !noalias !2845 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2840, !noalias !2845 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2841, !noalias !2845 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1914   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !881
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1309

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1914
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1312, !llvm.loop !2842

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2843
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.2166", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2841
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2832
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2840
  store i32 0, ptr %i.p, align 16, !tbaa !2844
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !1045
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2843
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !1045
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !1045
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !1045
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !881 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !881
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !881
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !881
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !881
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2832   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2840
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2841 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2840 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2832
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2841
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !881  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1914 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !881 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !2850

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1914
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !879
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !879
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !881
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2851

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2852

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2841
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !2844
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !2844
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #28
  store i32 0, ptr %i.d, align 4, !tbaa !2841
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, ptr, i64) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #16

declare i64 @_ZN5clang8QualType16getDesugaredTypeES0_RKNS_10ASTContextE(i64, ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #1

declare noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN5clang12TemplateNameC1EPv(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN4llvm7MDTuple7getImplERNS_11LLVMContextENS_8ArrayRefIPNS_8MetadataEEENS4_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZNK5clang15DeclarationName11getAsStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare noundef i32 @_ZN5clang7CodeGen13CodeGenModule24GetGlobalVarAddressSpaceEPKNS_7VarDeclE(ptr noundef nonnull align 8 dereferenceable(4008), ptr noundef) local_unnamed_addr #1

declare noundef i64 @_ZNK4llvm9StringRef5rfindES0_(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK5clang13CXXRecordDecl12method_beginEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = tail call ptr @_ZNK5clang11DeclContext11decls_beginEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #28 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.b, null
  br i1 %.not1.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEC2ENS0_13decl_iteratorE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 28
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 124
  %i.f = icmp eq i32 %i.e, 36
  br i1 %i.f, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEC2ENS0_13decl_iteratorE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i.i, -8   ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEC2ENS0_13decl_iteratorE.exit, label %.lr.ph.i.i, !llvm.loop !2008

_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEC2ENS0_13decl_iteratorE.exit: ; preds = %.lr.ph.i.i, %bb.b, %bb.a
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ %i.i, %bb.b ], [ %.sroa.0.0, %.lr.ph.i.i ]
  ret ptr %.sroa.0.1
}

declare noundef i32 @_ZNK5clang13CXXRecordDecl29getTemplateSpecializationKindEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #1

declare noundef ptr @_ZN5clang11DeclContext28getEnclosingNamespaceContextEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang4Decl7hasAttrINS_14MSNoVTableAttrEEEbv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 256
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN5clang15hasSpecificAttrINS_14MSNoVTableAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEEbRKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #28 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !491  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !492  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.idx.i = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 3 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN5clang15hasSpecificAttrINS_14MSNoVTableAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEEbRKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %.sroa.07.1.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.sroa.07.1.i.i.i, align 8, !tbaa !1618
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.l = load i16, ptr %i.k, align 4
  %i.m = icmp eq i16 %i.l, 266
  br i1 %i.m, label %_ZN5clangneENS_22specific_attr_iteratorINS_14MSNoVTableAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not.i.i.i.i, label %_ZN5clangneENS_22specific_attr_iteratorINS_14MSNoVTableAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2853

_ZN5clangneENS_22specific_attr_iteratorINS_14MSNoVTableAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.sroa.07.0.i.i.ph.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.07.1.i.i.i, %.lr.ph.i.i.i.i ]
  %i.o = icmp ne ptr %.sroa.07.0.i.i.ph.i, %i.i
  br label %_ZN5clang15hasSpecificAttrINS_14MSNoVTableAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEEbRKT0_.exit

_ZN5clang15hasSpecificAttrINS_14MSNoVTableAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEEbRKT0_.exit: ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_14MSNoVTableAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i, %bb.b, %bb.a
  %i.p = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.o, %_ZN5clangneENS_22specific_attr_iteratorINS_14MSNoVTableAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i ]
  ret i1 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL27hasExplicitMemberDefinitionN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEES3_(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #0 {
bb.a:
  %.not2426.not = icmp eq ptr %0, %1
  br i1 %.not2426.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit
  %.sroa.020.027 = phi ptr [ %.sroa.020.2, %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit ], [ %0, %bb.a ] ; 3 uses
  %i.a = tail call noundef ptr @_ZNK5clang12FunctionDecl33getInstantiatedFromMemberFunctionEv(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.020.027) #28 ; 6 uses
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !953
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !881
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !1312, !llvm.loop !2870

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2871
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2872
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !1311

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2871
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1007
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1006
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !881
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !881
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2872
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !953
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !953
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !980
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1006, !noalias !2873 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1007, !noalias !2873 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1005, !noalias !2873 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !953    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !881
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1309

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !953
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1312, !llvm.loop !2870

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2871
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.62", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1005
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1006
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1007
  store i32 0, ptr %i.p, align 16, !tbaa !2872
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !2871   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2491 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !1045
  store ptr %i.z, ptr %2, align 16, !tbaa !2871
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !1045
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !2491
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !881
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !881
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !881
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !881
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !881 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 4 dereferenceable(8) %i.au) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.av = add i32 %.0.i3.i.i, -1
  %i.aw = and i32 %i.av, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1008

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1009

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !1005 ; 2 uses
  %i.ax = icmp eq i32 %.pr.i, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.ay = load ptr, ptr %2, align 16, !tbaa !1006
  %i.az = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1006
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1007
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1005 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1007 ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1006
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1005
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i14 = icmp eq i64 %i.n, 0
  br i1 %.not.i14, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph17

.lr.ph17:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !881  ; 2 uses
  %.not11.i12 = icmp eq i32 %i.p, 0
  br i1 %.not11.i12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph17
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i13 = phi i32 [ %i.p, %.lr.ph ], [ %i.bg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i13, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !953  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !881 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2878

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %i.as = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !953
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !980 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !980
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread.i, label %_ZN4llvm13TrackingMDRefC2EOS0_.exit.i

_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread.i:     ; preds = %._crit_edge.i
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa12.i
  %i.az = or i32 %i.as, %i.ax
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !881
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

_ZN4llvm13TrackingMDRefC2EOS0_.exit.i:            ; preds = %._crit_edge.i
  %i.ba = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking7retrackEPvRNS_8MetadataES1_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 4 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.au) #28 ; 0 uses
  store ptr null, ptr %i.av, align 8, !tbaa !980
  %i.bb = shl nuw i32 1, %.lcssa.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa12.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !881
  %i.be = or i32 %i.bd, %i.bb
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !881
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %_ZN4llvm13TrackingMDRefC2EOS0_.exit.i, %_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread.i
  %i.bf = add i32 %.0.i13, -1
  %i.bg = and i32 %i.bf, %.0.i13                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2879

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph17, !llvm.loop !2880

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1005
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !2872
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !2872
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !1006
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 4
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #28
  store i32 0, ptr %i.d, align 4, !tbaa !1005
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit

_ZN4llvm8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKcNS_13TrackingMDRefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZN4llvm16MetadataTracking7retrackEPvRNS_8MetadataES1_(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(44) ptr @_ZN4llvm3sys4path16reverse_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4llvm3sys4path16reverse_iteratoreqERKS2_(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !492
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #28
  %i.f = load ptr, ptr %0, align 8, !tbaa !491
  %i.g = load i32, ptr %i.a, align 8, !tbaa !492
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store i64 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !492
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !492
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEESaIS7_EE17_M_realloc_insertIJRKSt21piecewise_construct_tSt5tupleIJPKNS1_10RecordTypeEEESE_IJPNS5_8MetadataEEEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1021 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1020   ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.202) #30
  unreachable

_ZNKSt6vectorISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load i64, ptr %3, align 8, !tbaa !2881
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %4, align 8, !tbaa !1605   ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !1695
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !980
  %.not.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZNSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEC2IJPKNS0_10RecordTypeEEJPNS4_8MetadataEEEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEESaIS7_EE12_M_check_lenEmPKc.exit
  %i.w = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking5trackEPvRNS_8MetadataENS_12PointerUnionIJPNS_15MetadataAsValueEPS2_PNS_14DebugValueUserEEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 4 dereferenceable(8) %i.u, i64 1) #28 ; 0 uses
  br label %_ZNSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEC2IJPKNS0_10RecordTypeEEJPNS4_8MetadataEEEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE.exit

_ZNSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEC2IJPKNS0_10RecordTypeEEJPNS4_8MetadataEEEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE.exit: ; preds = %_ZNKSt6vectorISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEESaIS7_EE12_M_check_lenEmPKc.exit, %bb.c
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEES8_SaIS7_EET0_T_SB_SA_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEC2IJPKNS0_10RecordTypeEEJPNS4_8MetadataEEEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE.exit, %_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEC2IJPKNS0_10RecordTypeEEJPNS4_8MetadataEEEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE.exit ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ac, %_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEC2IJPKNS0_10RecordTypeEEJPNS4_8MetadataEEEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !980  ; 2 uses
  %i.z = load <2 x ptr>, ptr %.0810.i.i.i.i.i, align 8, !tbaa !1045
  store <2 x ptr> %i.z, ptr %.011.i.i.i.i.i, align 8, !tbaa !1045
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.ab = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking5trackEPvRNS_8MetadataENS_12PointerUnionIJPNS_15MetadataAsValueEPS2_PNS_14DebugValueUserEEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 4 dereferenceable(8) %i.y, i64 1) #28 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSD_bEOT_DpOT0_:bb.a
.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1465
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !881
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !1312, !llvm.loop !2888

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2889
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2890
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit, label %bb.d, !prof !1311

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2889
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !979
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !978
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !881
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !881
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2890
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1465
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1465
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !980
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !978, !noalias !2891 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !979, !noalias !2891 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !977, !noalias !2891 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1465   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !881
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1309

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1465
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1312, !llvm.loop !2888

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2889
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.70", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !977
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !978
  store ptr %i.y, ptr %i.q, align 8, !tbaa !979
  store i32 0, ptr %i.p, align 16, !tbaa !2890
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !2889   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2491 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !1045
  store ptr %i.z, ptr %2, align 16, !tbaa !2889
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !1045
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !2491
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !881
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !881
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !881
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !881
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !881 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 4 dereferenceable(8) %i.au) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.av = add i32 %.0.i3.i.i, -1
  %i.aw = and i32 %i.av, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !983

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !984

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !977 ; 2 uses
  %i.ax = icmp eq i32 %.pr.i, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i
  %i.ay = load ptr, ptr %2, align 16, !tbaa !978
  %i.az = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !978
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !979
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !977  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !979  ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !978
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !977
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i14 = icmp eq i64 %i.n, 0
  br i1 %.not.i14, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph17

.lr.ph17:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !881  ; 2 uses
  %.not11.i12 = icmp eq i32 %i.p, 0
  br i1 %.not11.i12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph17
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i13 = phi i32 [ %i.p, %.lr.ph ], [ %i.bg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i13, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1465 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !881 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2896

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %i.as = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1465
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !980 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !980
  %.not.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm18TypedTrackingMDRefINS_13DIDerivedTypeEEC2EOS2_.exit.thread.i, label %_ZN4llvm18TypedTrackingMDRefINS_13DIDerivedTypeEEC2EOS2_.exit.i

_ZN4llvm18TypedTrackingMDRefINS_13DIDerivedTypeEEC2EOS2_.exit.thread.i: ; preds = %._crit_edge.i
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa12.i
  %i.az = or i32 %i.as, %i.ax
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !881
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

_ZN4llvm18TypedTrackingMDRefINS_13DIDerivedTypeEEC2EOS2_.exit.i: ; preds = %._crit_edge.i
  %i.ba = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking7retrackEPvRNS_8MetadataES1_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 4 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.au) #28 ; 0 uses
  store ptr null, ptr %i.av, align 8, !tbaa !980
  %i.bb = shl nuw i32 1, %.lcssa.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa12.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !881
  %i.be = or i32 %i.bd, %i.bb
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !881
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %_ZN4llvm18TypedTrackingMDRefINS_13DIDerivedTypeEEC2EOS2_.exit.i, %_ZN4llvm18TypedTrackingMDRefINS_13DIDerivedTypeEEC2EOS2_.exit.thread.i
  %i.bf = add i32 %.0.i13, -1
  %i.bg = and i32 %i.bf, %.0.i13                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2897

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph17, !llvm.loop !2898

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !977
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !2890
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !2890
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !978
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 4
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #28
  store i32 0, ptr %i.d, align 4, !tbaa !977
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_18TypedTrackingMDRefINS_13DIDerivedTypeEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1041, !noalias !2899 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1042, !noalias !2899 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1040, !noalias !2899 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1045   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !881
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !1309

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1045
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !881
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !1312, !llvm.loop !2904

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2905
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2906
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !1311

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2905
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1042
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1041
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !881
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !881
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2906
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1045
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1045
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !980
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1041, !noalias !2907 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1042, !noalias !2907 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1040, !noalias !2907 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1045   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !881
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1309

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1045
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1312, !llvm.loop !2904

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2905
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.17", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1040
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1041
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1042
  store i32 0, ptr %i.p, align 16, !tbaa !2906
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !2905   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2491 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !1045
  store ptr %i.z, ptr %2, align 16, !tbaa !2905
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !1045
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !2491
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !881
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !881
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !881
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !881
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !881 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 4 dereferenceable(8) %i.au) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.av = add i32 %.0.i3.i.i, -1
  %i.aw = and i32 %i.av, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1043

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1044

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !1040 ; 2 uses
  %i.ax = icmp eq i32 %.pr.i, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.ay = load ptr, ptr %2, align 16, !tbaa !1041
  %i.az = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1041
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1042
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1040 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1042 ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1041
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1040
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !881  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bd, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1045 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !881 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2912

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %i.as = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1045
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !980 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !980
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.ax = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking7retrackEPvRNS_8MetadataES1_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 4 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.au) #28 ; 0 uses
  store ptr null, ptr %i.av, align 8, !tbaa !980
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa12.i
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !881
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %._crit_edge.i, %bb.c
  %i.ay = phi i32 [ %i.as, %._crit_edge.i ], [ %.pre, %bb.c ]
  %i.az = shl nuw i32 1, %.lcssa.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa12.i
  %i.bb = or i32 %i.ay, %i.az
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !881
  %i.bc = add i32 %.0.i17, -1
  %i.bd = and i32 %i.bc, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bd, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2913

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !2914

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre25 = load i32, ptr %i.d, align 4, !tbaa !1040
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.be = phi i32 [ %.pre25, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !2906
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !2906
  %i.bi = icmp eq i32 %i.be, 0
  br i1 %i.bi, label %_ZN4llvm8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bj = load ptr, ptr %1, align 8, !tbaa !1041
  %i.bk = zext i32 %i.be to i64                   ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 4
  %i.bm = add nuw nsw i64 %i.bk, 31
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = and i64 %i.bn, 1073741820
  %i.bp = add nuw nsw i64 %i.bo, %i.bl
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bj, i64 noundef %i.bp, i64 noundef 8) #28
  store i32 0, ptr %i.d, align 4, !tbaa !1040
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit

_ZN4llvm8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1001, !noalias !2915 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1002, !noalias !2915 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1000, !noalias !2915 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1310   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !881
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !1309

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1310
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !881
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !1312, !llvm.loop !2920

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2921
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2922
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit, label %bb.d, !prof !1311

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2921
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1002
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1001
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !881
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !881
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2922
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1310
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1310
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !980
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1001, !noalias !2923 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1002, !noalias !2923 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1000, !noalias !2923 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1310   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !881
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1309

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1310
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1312, !llvm.loop !2920

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2921
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.64", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1000
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1001
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1002
  store i32 0, ptr %i.p, align 16, !tbaa !2922
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !2921   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2491 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !1045
  store ptr %i.z, ptr %2, align 16, !tbaa !2921
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !1045
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !2491
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !881
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !881
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !881
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !881
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !881 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 4 dereferenceable(8) %i.au) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.av = add i32 %.0.i3.i.i, -1
  %i.aw = and i32 %i.av, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1003

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1004

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !1000 ; 2 uses
  %i.ax = icmp eq i32 %.pr.i, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i
  %i.ay = load ptr, ptr %2, align 16, !tbaa !1001
  %i.az = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1001
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1002
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1000 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1002 ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1001
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1000
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i14 = icmp eq i64 %i.n, 0
  br i1 %.not.i14, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph17

.lr.ph17:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !881  ; 2 uses
  %.not11.i12 = icmp eq i32 %i.p, 0
  br i1 %.not11.i12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph17
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i13 = phi i32 [ %i.p, %.lr.ph ], [ %i.bg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i13, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1310 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !881 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2928

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %i.as = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1310
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !980 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !980
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread.i, label %_ZN4llvm13TrackingMDRefC2EOS0_.exit.i

_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread.i:     ; preds = %._crit_edge.i
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa12.i
  %i.az = or i32 %i.as, %i.ax
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !881
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZN4llvm13TrackingMDRefC2EOS0_.exit.i:            ; preds = %._crit_edge.i
  %i.ba = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking7retrackEPvRNS_8MetadataES1_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 4 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.au) #28 ; 0 uses
  store ptr null, ptr %i.av, align 8, !tbaa !980
  %i.bb = shl nuw i32 1, %.lcssa.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa12.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !881
  %i.be = or i32 %i.bd, %i.bb
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !881
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %_ZN4llvm13TrackingMDRefC2EOS0_.exit.i, %_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread.i
  %i.bf = add i32 %.0.i13, -1
  %i.bg = and i32 %i.bf, %.0.i13                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2929

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph17, !llvm.loop !2930

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1000
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !2922
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !2922
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !1001
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 4
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #28
  store i32 0, ptr %i.d, align 4, !tbaa !1000
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E24lookupOrInsertIntoBucketIS6_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1894, !noalias !2931 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2936, !noalias !2931 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1891, !noalias !2931 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1902   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !881
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !1309

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1902
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E15LookupBucketForIS6_EEbRKT_RPSC_.exit, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !881
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !1312, !llvm.loop !2937

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2938
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2939
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit, label %bb.d, !prof !1311

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E15LookupBucketForIS6_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2938
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2936
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1894
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !881
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !881
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2939
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load i64, ptr %1, align 8, !tbaa !1914
  store i64 %i.bh, ptr %i.at, align 8, !tbaa !1914
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E15LookupBucketForIS6_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E15LookupBucketForIS6_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E15LookupBucketForIS6_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1894, !noalias !2940 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2936, !noalias !2940 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1891, !noalias !2940 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1902   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !881
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1309

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1902
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1312, !llvm.loop !2937

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2938
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1514", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1891
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1894
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2936
  store i32 0, ptr %i.p, align 16, !tbaa !2939
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !1045
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2938
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !1045
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !1045
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !1045
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !881 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !881
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !881
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !881
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !881
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1894   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2936
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1891 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2936 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1894
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1891
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !881  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !881 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit, !llvm.loop !2945

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store i64 %i.w, ptr %i.at, align 8, !tbaa !1914
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !881
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2946

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2947

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1891
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !2939
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !2939
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #28
  store i32 0, ptr %i.d, align 4, !tbaa !1891
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE4killEv.exit

_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_13CXXRecordDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1041, !noalias !2948 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1042, !noalias !2948 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1040, !noalias !2948 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1045   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !881
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !1309

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1045
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !881
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !1312, !llvm.loop !2904

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2905
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2906
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !1311

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2905
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1042
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1041
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !881
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !881
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2906
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1045
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1045
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !980
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvNS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEESaIS3_EE17_M_realloc_insertIJPNS0_15DICompositeTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1013 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1012   ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
end_hunk_4
begin_hunk_5_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSB_bEOT_DpOT0_:bb.a
.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1465
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !881
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !1312, !llvm.loop !2958

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2959
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2960
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit, label %bb.d, !prof !1311

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2959
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !997
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !996
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !881
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !881
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2960
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1465
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1465
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !980
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !996, !noalias !2961 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !997, !noalias !2961 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !995, !noalias !2961 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1465   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !881
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1309

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1465
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1312, !llvm.loop !2958

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2959
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.44", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !995
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !996
  store ptr %i.y, ptr %i.q, align 8, !tbaa !997
  store i32 0, ptr %i.p, align 16, !tbaa !2960
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !2959   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2491 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !1045
  store ptr %i.z, ptr %2, align 16, !tbaa !2959
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !1045
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !2491
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !881
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !881
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !881
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !881
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !881 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 4 dereferenceable(8) %i.au) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.av = add i32 %.0.i3.i.i, -1
  %i.aw = and i32 %i.av, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !998

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !999

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !995 ; 2 uses
  %i.ax = icmp eq i32 %.pr.i, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i
  %i.ay = load ptr, ptr %2, align 16, !tbaa !996
  %i.az = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !996
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !997
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !995  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !997  ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !996
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !995
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i14 = icmp eq i64 %i.n, 0
  br i1 %.not.i14, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph17

.lr.ph17:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !881  ; 2 uses
  %.not11.i12 = icmp eq i32 %i.p, 0
  br i1 %.not11.i12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph17
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i13 = phi i32 [ %i.p, %.lr.ph ], [ %i.bg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i13, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1465 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !881 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2966

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %i.as = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1465
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !980 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !980
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread.i, label %_ZN4llvm13TrackingMDRefC2EOS0_.exit.i

_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread.i:     ; preds = %._crit_edge.i
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa12.i
  %i.az = or i32 %i.as, %i.ax
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !881
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZN4llvm13TrackingMDRefC2EOS0_.exit.i:            ; preds = %._crit_edge.i
  %i.ba = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking7retrackEPvRNS_8MetadataES1_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 4 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.au) #28 ; 0 uses
  store ptr null, ptr %i.av, align 8, !tbaa !980
  %i.bb = shl nuw i32 1, %.lcssa.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa12.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !881
  %i.be = or i32 %i.bd, %i.bb
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !881
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %_ZN4llvm13TrackingMDRefC2EOS0_.exit.i, %_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread.i
  %i.bf = add i32 %.0.i13, -1
  %i.bg = and i32 %i.bf, %.0.i13                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2967

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph17, !llvm.loop !2968

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !995
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !2960
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !2960
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !996
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 4
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #28
  store i32 0, ptr %i.d, align 4, !tbaa !995
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E21eraseFromFilledBucketIZNSD_21eraseFromFilledBucketEPSB_EUlRSB_E_EEvSF_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !980  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4llvm13TrackingMDRefD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %i.b) #28
  br label %_ZN4llvm13TrackingMDRefD2Ev.exit

_ZN4llvm13TrackingMDRefD2Ev.exit:                 ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !2960
  %i.e = add i32 %i.d, -1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !2960
  %i.f = load ptr, ptr %0, align 8, !tbaa !996    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !997  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !995
  %i.k = add i32 %i.j, -1                         ; 4 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 4
  %i.p = trunc i64 %i.o to i32                    ; 3 uses
  %i.q = add i32 %i.p, 1
  %i.r = and i32 %i.q, %i.k                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !881
  %i.w = and i32 %i.r, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvm13TrackingMDRefD2Ev.exit, %_ZN4llvm13TrackingMDRefD2Ev.exit36
  %.pn = phi i64 [ %i.au, %_ZN4llvm13TrackingMDRefD2Ev.exit36 ], [ %i.s, %_ZN4llvm13TrackingMDRefD2Ev.exit ]
  %i.z = phi i32 [ %i.at, %_ZN4llvm13TrackingMDRefD2Ev.exit36 ], [ %i.r, %_ZN4llvm13TrackingMDRefD2Ev.exit ] ; 4 uses
  %.03341 = phi i32 [ %.2, %_ZN4llvm13TrackingMDRefD2Ev.exit36 ], [ %i.p, %_ZN4llvm13TrackingMDRefD2Ev.exit ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.pn ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1465 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = mul i64 %i.ac, -4658895280553007687     ; 2 uses
  %i.ae = lshr i64 %i.ad, 31
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = sub i32 %.03341, %i.ag
  %i.ai = and i32 %i.ah, %i.k
  %i.aj = sub i32 %i.z, %i.ag
  %i.ak = and i32 %i.aj, %i.k
  %i.al = icmp ult i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.c, label %_ZN4llvm13TrackingMDRefD2Ev.exit36

bb.c:                                             ; preds = %.lr.ph
  %i.am = zext i32 %.03341 to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.am ; 2 uses
  store ptr %i.ab, ptr %i.an, align 8, !tbaa !1465
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !980 ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !980
  %.not.i.i34 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i34, label %_ZN4llvm13TrackingMDRefD2Ev.exit36, label %_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread

_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread:       ; preds = %bb.c
  %i.ar = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking7retrackEPvRNS_8MetadataES1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 4 dereferenceable(8) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.ao) #28 ; 0 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !980
  br label %_ZN4llvm13TrackingMDRefD2Ev.exit36

_ZN4llvm13TrackingMDRefD2Ev.exit36:               ; preds = %bb.c, %_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread, %.lr.ph
  %.2 = phi i32 [ %i.z, %_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread ], [ %.03341, %.lr.ph ], [ %i.z, %bb.c ] ; 2 uses
  %i.as = add i32 %i.z, 1
  %i.at = and i32 %i.as, %i.k                     ; 3 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !881
  %i.ay = and i32 %i.at, 31
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4llvm13TrackingMDRefD2Ev.exit36, %_ZN4llvm13TrackingMDRefD2Ev.exit
  %.033.lcssa = phi i32 [ %i.p, %_ZN4llvm13TrackingMDRefD2Ev.exit ], [ %.2, %_ZN4llvm13TrackingMDRefD2Ev.exit36 ] ; 2 uses
  %i.bb = and i32 %.033.lcssa, 31
  %i.bc = shl nuw i32 1, %i.bb
  %i.bd = xor i32 %i.bc, -1
end_hunk_5
begin_hunk_6_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_:bb.a
.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1454
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !881
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !1312, !llvm.loop !2974

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2975
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2976
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit, label %bb.d, !prof !1311

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2975
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1028
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1027
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !881
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !881
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2976
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1454
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1454
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !980
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1027, !noalias !2977 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1028, !noalias !2977 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1026, !noalias !2977 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1454   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !881
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1309

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1454
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1312, !llvm.loop !2974

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2975
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.27", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1026
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1027
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1028
  store i32 0, ptr %i.p, align 16, !tbaa !2976
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !2975   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2491 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !1045
  store ptr %i.z, ptr %2, align 16, !tbaa !2975
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !1045
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !2491
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !881
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !881
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !881
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !881
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !881 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 4 dereferenceable(8) %i.au) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.av = add i32 %.0.i3.i.i, -1
  %i.aw = and i32 %i.av, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1029

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1030

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !1026 ; 2 uses
  %i.ax = icmp eq i32 %.pr.i, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i
  %i.ay = load ptr, ptr %2, align 16, !tbaa !1027
  %i.az = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1027
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1028
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1026 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1028 ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1027
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1026
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i14 = icmp eq i64 %i.n, 0
  br i1 %.not.i14, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph17

.lr.ph17:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !881  ; 2 uses
  %.not11.i12 = icmp eq i32 %i.p, 0
  br i1 %.not11.i12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph17
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i13 = phi i32 [ %i.p, %.lr.ph ], [ %i.bg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i13, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1454 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !881 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2982

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %i.as = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1454
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !980 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !980
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread.i, label %_ZN4llvm13TrackingMDRefC2EOS0_.exit.i

_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread.i:     ; preds = %._crit_edge.i
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa12.i
  %i.az = or i32 %i.as, %i.ax
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !881
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZN4llvm13TrackingMDRefC2EOS0_.exit.i:            ; preds = %._crit_edge.i
  %i.ba = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking7retrackEPvRNS_8MetadataES1_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 4 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.au) #28 ; 0 uses
  store ptr null, ptr %i.av, align 8, !tbaa !980
  %i.bb = shl nuw i32 1, %.lcssa.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa12.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !881
  %i.be = or i32 %i.bd, %i.bb
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !881
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %_ZN4llvm13TrackingMDRefC2EOS0_.exit.i, %_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread.i
  %i.bf = add i32 %.0.i13, -1
  %i.bg = and i32 %i.bf, %.0.i13                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2983

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph17, !llvm.loop !2984

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1026
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !2976
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !2976
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !1027
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 4
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #28
  store i32 0, ptr %i.d, align 4, !tbaa !1026
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEESaIS3_EE17_M_realloc_insertIJRPNS0_15DICompositeTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1013 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1012   ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.202) #30
  unreachable

_ZNKSt6vectorIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !1659   ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !980
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZN4llvm18TypedTrackingMDRefINS_7DIScopeEEC2EPS1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.s = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking5trackEPvRNS_8MetadataENS_12PointerUnionIJPNS_15MetadataAsValueEPS2_PNS_14DebugValueUserEEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 4 dereferenceable(8) %i.r, i64 1) #28 ; 0 uses
  br label %_ZN4llvm18TypedTrackingMDRefINS_7DIScopeEEC2EPS1_.exit

_ZN4llvm18TypedTrackingMDRefINS_7DIScopeEEC2EPS1_.exit: ; preds = %_ZNKSt6vectorIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.c
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm18TypedTrackingMDRefINS_7DIScopeEEC2EPS1_.exit, %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZN4llvm18TypedTrackingMDRefINS_7DIScopeEEC2EPS1_.exit ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.v, %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZN4llvm18TypedTrackingMDRefINS_7DIScopeEEC2EPS1_.exit ] ; 2 uses
  %i.t = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !980 ; 3 uses
  store ptr %i.t, ptr %.011.i.i.i.i.i, align 8, !tbaa !980
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.u = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking5trackEPvRNS_8MetadataENS_12PointerUnionIJPNS_15MetadataAsValueEPS2_PNS_14DebugValueUserEEEE(ptr noundef nonnull align 8 dereferenceable(8) %.011.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(8) %i.t, i64 1) #28 ; 0 uses
  br label %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2864

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZN4llvm18TypedTrackingMDRefINS_7DIScopeEEC2EPS1_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZN4llvm18TypedTrackingMDRefINS_7DIScopeEEC2EPS1_.exit ], [ %i.w, %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit26, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i23
  %.011.i.i.i.i.i20 = phi ptr [ %i.ab, %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i23 ], [ %i.x, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 3 uses
  %.0810.i.i.i.i.i21 = phi ptr [ %i.aa, %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i23 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 2 uses
  %i.y = load ptr, ptr %.0810.i.i.i.i.i21, align 8, !tbaa !980 ; 3 uses
  store ptr %i.y, ptr %.011.i.i.i.i.i20, align 8, !tbaa !980
  %.not.i.i.i.i.i.i.i.i.i22 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i.i.i22, label %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i23, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i19
  %i.z = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking5trackEPvRNS_8MetadataENS_12PointerUnionIJPNS_15MetadataAsValueEPS2_PNS_14DebugValueUserEEEE(ptr noundef nonnull align 8 dereferenceable(8) %.011.i.i.i.i.i20, ptr noundef nonnull align 4 dereferenceable(8) %i.y, i64 1) #28 ; 0 uses
  br label %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i23

_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i23: ; preds = %bb.e, %.lr.ph.i.i.i.i.i19
  %i.aa = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 8 ; 2 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i.i.i24, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit26, label %.lr.ph.i.i.i.i.i19, !llvm.loop !2864

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit26: ; preds = %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i23, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.0.lcssa.i.i.i.i.i25 = phi ptr [ %i.x, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.ab, %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i23 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit26, %_ZSt8_DestroyIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvPT_.exit.i.i
end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E24lookupOrInsertIntoBucketIS7_JEEES2_IPSD_bEOT_DpOT0_:bb.a
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2083
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2069
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E22findBucketForInsertionIS7_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E22findBucketForInsertionIS7_EEPSD_RKT_SH_.exit: ; preds = %.loopexit, %bb.d
  %i.be = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.bf = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.bg = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 4                 ; 2 uses
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = and i32 %i.bl, 31
  %i.bn = shl nuw i32 1, %i.bm
  %i.bo = lshr i64 %i.bk, 5
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !881
  %i.br = or i32 %i.bn, %i.bq
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !881
  %i.bs = load i32, ptr %i.ax, align 8, !tbaa !2087
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.ax, align 8, !tbaa !2087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E22findBucketForInsertionIS7_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.bg, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E22findBucketForInsertionIS7_EEPSD_RKT_SH_.exit ], [ %i.ag, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E22findBucketForInsertionIS7_EEPSD_RKT_SH_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2069, !noalias !2991 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2083, !noalias !2991 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2084, !noalias !2991 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i8, ptr %1, align 8, !tbaa !880     ; 2 uses
  %i.i = sext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2095 ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 31
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul nsw i64 %i.i, 158913789952
  %i.q = and i64 %i.o, 4294967295
  %i.r = or disjoint i64 %i.q, %i.p
  %i.s = mul i64 %i.r, -4658895280553007687       ; 2 uses
  %i.t = lshr i64 %i.s, 31
  %i.u = xor i64 %i.t, %i.s
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.g, %i.v                       ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !881
  %i.ac = and i32 %i.w, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph, label %.thread, !prof !1309

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.af = phi ptr [ %i.ap, %bb.c ], [ %i.y, %bb.b ] ; 3 uses
  %.024 = phi i32 [ %i.an, %bb.c ], [ %i.w, %bb.b ]
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !880
  %i.ah = icmp eq i8 %i.h, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.k, %i.aj
  %i.al = select i1 %i.ah, i1 %i.ak, i1 false     ; 3 uses
  br i1 %i.al, label %.thread, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph
  %i.am = add nuw i32 %.024, 1
  %i.an = and i32 %i.am, %i.g                     ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ao ; 2 uses
  %i.aq = lshr i64 %i.ao, 5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !881
  %i.at = and i32 %i.an, 31
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %.lr.ph, label %.thread, !prof !1312, !llvm.loop !2086

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.y, %bb.b ], [ null, %bb.a ], [ %i.ap, %bb.c ], [ %i.af, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.al, %bb.c ], [ %i.al, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2990
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1738", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2084
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2069
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2083
  store i32 0, ptr %i.p, align 16, !tbaa !2087
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !1045
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2990
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !1045
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !1045
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !1045
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !881 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !881
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !881
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !881
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !881
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEED2Ev.exit

_ZN4llvm8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2069
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2083
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2084 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2083 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2069
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2084
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISA_vEENSB_12DenseSetPairISA_EEEESA_SC_SE_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !881  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.bh, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !880
  %i.w = sext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2095
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = mul i64 %i.z, -4658895280553007687      ; 2 uses
  %i.ab = lshr i64 %i.aa, 31
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul nsw i64 %i.w, 158913789952
  %i.ae = and i64 %i.ac, 4294967295
  %i.af = or disjoint i64 %i.ae, %i.ad
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.k, %i.aj                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !881
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.at, %.lr.ph.i ], [ %i.ak, %bb.b ]
  %i.as = add i32 %.014.i, 1
  %i.at = and i32 %i.as, %i.k                     ; 3 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 5                       ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !881
  %i.ay = and i32 %i.at, 31                       ; 2 uses
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !2996

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.am, %bb.b ], [ %i.av, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ap, %bb.b ], [ %i.ay, %.lr.ph.i ]
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.bc = shl nuw i32 1, %.lcssa.i
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !881
  %i.bf = or i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !881
  %i.bg = add i32 %.0.i16, -1
  %i.bh = and i32 %i.bg, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bh, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2997

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISA_vEENSB_12DenseSetPairISA_EEEESA_SC_SE_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !2998

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISA_vEENSB_12DenseSetPairISA_EEEESA_SC_SE_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2084
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISA_vEENSB_12DenseSetPairISA_EEEESA_SC_SE_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISA_vEENSB_12DenseSetPairISA_EEEESA_SC_SE_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISA_vEENSB_12DenseSetPairISA_EEEESA_SC_SE_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bi = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISA_vEENSB_12DenseSetPairISA_EEEESA_SC_SE_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !2087
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !2087
  %i.bm = icmp eq i32 %i.bi, 0
  br i1 %i.bm, label %_ZN4llvm8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISA_vEENSB_12DenseSetPairISA_EEEESA_SC_SE_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.bn = load ptr, ptr %1, align 8, !tbaa !2069
  %i.bo = zext i32 %i.bi to i64                   ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bo, 4
  %i.bq = add nuw nsw i64 %i.bo, 31
  %i.br = lshr i64 %i.bq, 3
  %i.bs = and i64 %i.br, 1073741820
  %i.bt = add nuw nsw i64 %i.bs, %i.bp
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bn, i64 noundef %i.bt, i64 noundef 8) #28
  store i32 0, ptr %i.d, align 4, !tbaa !2084
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEE4killEv.exit

_ZN4llvm8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIcPKN5clang14IdentifierInfoEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISA_vEENSB_12DenseSetPairISA_EEEESA_SC_SE_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEESaIS7_EE17_M_realloc_insertIJRKSt21piecewise_construct_tSt5tupleIJPKNS1_8EnumTypeEEESE_IJPNS5_8MetadataEEEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1021 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1020   ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.202) #30
  unreachable

_ZNKSt6vectorISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load i64, ptr %3, align 8, !tbaa !2999
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %4, align 8, !tbaa !1605   ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !1695
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !980
  %.not.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZNSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEC2IJPKNS0_8EnumTypeEEJPNS4_8MetadataEEEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEESaIS7_EE12_M_check_lenEmPKc.exit
  %i.w = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking5trackEPvRNS_8MetadataENS_12PointerUnionIJPNS_15MetadataAsValueEPS2_PNS_14DebugValueUserEEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 4 dereferenceable(8) %i.u, i64 1) #28 ; 0 uses
  br label %_ZNSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEC2IJPKNS0_8EnumTypeEEJPNS4_8MetadataEEEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE.exit

_ZNSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEC2IJPKNS0_8EnumTypeEEJPNS4_8MetadataEEEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE.exit: ; preds = %_ZNKSt6vectorISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEESaIS7_EE12_M_check_lenEmPKc.exit, %bb.c
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEES8_SaIS7_EET0_T_SB_SA_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEC2IJPKNS0_8EnumTypeEEJPNS4_8MetadataEEEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE.exit, %_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEC2IJPKNS0_8EnumTypeEEJPNS4_8MetadataEEEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE.exit ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ac, %_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEC2IJPKNS0_8EnumTypeEEJPNS4_8MetadataEEEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !980  ; 2 uses
  %i.z = load <2 x ptr>, ptr %.0810.i.i.i.i.i, align 8, !tbaa !1045
  store <2 x ptr> %i.z, ptr %.011.i.i.i.i.i, align 8, !tbaa !1045
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.ab = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking5trackEPvRNS_8MetadataENS_12PointerUnionIJPNS_15MetadataAsValueEPS2_PNS_14DebugValueUserEEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 4 dereferenceable(8) %i.y, i64 1) #28 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEES8_SaIS7_EET0_T_SB_SA_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2882

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEES8_SaIS7_EET0_T_SB_SA_RT1_.exit: ; preds = %_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEC2IJPKNS0_8EnumTypeEEJPNS4_8MetadataEEEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEC2IJPKNS0_8EnumTypeEEJPNS4_8MetadataEEEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE.exit ], [ %i.ad, %_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not9.i.i.i.i.i20 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i20, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEES8_SaIS7_EET0_T_SB_SA_RT1_.exit28, label %.lr.ph.i.i.i.i.i21

.lr.ph.i.i.i.i.i21:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEES8_SaIS7_EET0_T_SB_SA_RT1_.exit, %_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i25
  %.011.i.i.i.i.i22 = phi ptr [ %i.al, %_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i25 ], [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEES8_SaIS7_EET0_T_SB_SA_RT1_.exit ] ; 3 uses
  %.0810.i.i.i.i.i23 = phi ptr [ %i.ak, %_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i25 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEES8_SaIS7_EET0_T_SB_SA_RT1_.exit ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i23, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !980 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %.0810.i.i.i.i.i23, align 8, !tbaa !1045
  store <2 x ptr> %i.ah, ptr %.011.i.i.i.i.i22, align 8, !tbaa !1045
  %.not.i.i.i.i.i.i.i.i.i24 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i.i.i24, label %_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i25, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i21
  %i.ai = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i22, i64 8
  %i.aj = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking5trackEPvRNS_8MetadataENS_12PointerUnionIJPNS_15MetadataAsValueEPS2_PNS_14DebugValueUserEEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 4 dereferenceable(8) %i.ag, i64 1) #28 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i25

_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i25: ; preds = %bb.e, %.lr.ph.i.i.i.i.i21
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i23, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i22, i64 16 ; 2 uses
  %.not.i.i.i.i.i26 = icmp eq ptr %i.ak, %i.b
  br i1 %.not.i.i.i.i.i26, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEES8_SaIS7_EET0_T_SB_SA_RT1_.exit28, label %.lr.ph.i.i.i.i.i21, !llvm.loop !2882

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEES8_SaIS7_EET0_T_SB_SA_RT1_.exit28: ; preds = %_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i25, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEES8_SaIS7_EET0_T_SB_SA_RT1_.exit
  %.0.lcssa.i.i.i.i.i27 = phi ptr [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEES8_SaIS7_EET0_T_SB_SA_RT1_.exit ], [ %i.al, %_ZSt10_ConstructISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i25 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEEvT_S9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEES8_SaIS7_EET0_T_SB_SA_RT1_.exit28, %_ZSt8_DestroyISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ao, %_ZSt8_DestroyISt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN5clang7TagTypeEN4llvm13TrackingMDRefEES8_SaIS7_EET0_T_SB_SA_RT1_.exit28 ] ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSL_bEOT_DpOT0_:bb.a
.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2444
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E15LookupBucketForIS5_EEbRKT_RPSL_.exit, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !881
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !1312, !llvm.loop !3010

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !3011
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2718
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E22findBucketForInsertionIS5_EEPSL_RKT_SP_.exit, label %bb.d, !prof !1311

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E15LookupBucketForIS5_EEbRKT_RPSL_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3011
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1033
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1032
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E22findBucketForInsertionIS5_EEPSL_RKT_SP_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E22findBucketForInsertionIS5_EEPSL_RKT_SP_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 5                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !881
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !881
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2718
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !2444
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !2444
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E15LookupBucketForIS5_EEbRKT_RPSL_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E15LookupBucketForIS5_EEbRKT_RPSL_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E22findBucketForInsertionIS5_EEPSL_RKT_SP_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E22findBucketForInsertionIS5_EEPSL_RKT_SP_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E22findBucketForInsertionIS5_EEPSL_RKT_SP_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E15LookupBucketForIS5_EEbRKT_RPSL_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1032, !noalias !3012 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1033, !noalias !3012 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1031, !noalias !3012 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !2444   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !881
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1309

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2444
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1312, !llvm.loop !3010

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3011
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.25", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1031
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1032
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1033
  store i32 0, ptr %i.p, align 16, !tbaa !2718
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E8moveFromERSM_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !3011   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2491 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !1045
  store ptr %i.z, ptr %2, align 16, !tbaa !3011
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !1045
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !2491
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !881
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !881
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !881
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !881
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj1ESA_EEEESaISD_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !881 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1034 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1037
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ba = add i32 %.0.i3.i.i, -1
  %i.bb = and i32 %i.ba, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1038

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1039

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !1031 ; 2 uses
  %i.bc = icmp eq i32 %.pr.i, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj1ESA_EEEESaISD_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E10destroyAllEv.exit.i
  %i.bd = load ptr, ptr %2, align 16, !tbaa !1032
  %i.be = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 5
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bd, i64 noundef %i.bj, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj1ESA_EEEESaISD_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj1ESA_EEEESaISD_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E8moveFromERSM_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1032
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1033
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1031 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1033 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1032
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1031
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsISC_EENS_18PointerIntPairInfoISC_Lj1ESE_EEEESaISH_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SJ_EEEES8_SJ_SL_SO_E8moveFromERSP_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !881  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E8moveFromERSM_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.be, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E8moveFromERSM_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2444 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E8moveFromERSM_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !881
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E8moveFromERSM_ENKUljE_clEj.exit, !llvm.loop !3017

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E8moveFromERSM_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !2444
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !2726
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !2726
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1037
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !1037
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.az = shl nuw i32 1, %.lcssa.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !881
  %i.bc = or i32 %i.bb, %i.az
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !881
  %i.bd = add i32 %.0.i17, -1
  %i.be = and i32 %i.bd, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3018

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEESaISE_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SG_EEEES5_SG_SI_SL_E8moveFromERSM_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsISC_EENS_18PointerIntPairInfoISC_Lj1ESE_EEEESaISH_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SJ_EEEES8_SJ_SL_SO_E8moveFromERSP_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !3019

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsISC_EENS_18PointerIntPairInfoISC_Lj1ESE_EEEESaISH_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SJ_EEEES8_SJ_SL_SO_E8moveFromERSP_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1031
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsISC_EENS_18PointerIntPairInfoISC_Lj1ESE_EEEESaISH_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SJ_EEEES8_SJ_SL_SO_E8moveFromERSP_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsISC_EENS_18PointerIntPairInfoISC_Lj1ESE_EEEESaISH_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SJ_EEEES8_SJ_SL_SO_E8moveFromERSP_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsISC_EENS_18PointerIntPairInfoISC_Lj1ESE_EEEESaISH_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SJ_EEEES8_SJ_SL_SO_E8moveFromERSP_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsISC_EENS_18PointerIntPairInfoISC_Lj1ESE_EEEESaISH_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SJ_EEEES8_SJ_SL_SO_E8moveFromERSP_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !2718
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !2718
  %i.bj = icmp eq i32 %i.bf, 0
  br i1 %i.bj, label %_ZN4llvm8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj1ESA_EEEESaISD_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsISC_EENS_18PointerIntPairInfoISC_Lj1ESE_EEEESaISH_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SJ_EEEES8_SJ_SL_SO_E8moveFromERSP_EUljE_EEvPKjjT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !1032
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 5
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #28
  store i32 0, ptr %i.d, align 4, !tbaa !1031
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj1ESA_EEEESaISD_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj1ESA_EEEESaISD_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclESt6vectorINS_14PointerIntPairIPNS_12DISubprogramELj1EjNS_21PointerLikeTypeTraitsISC_EENS_18PointerIntPairInfoISC_Lj1ESE_EEEESaISH_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SJ_EEEES8_SJ_SL_SO_E8moveFromERSP_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEESaIS3_EE17_M_realloc_insertIJRPNS0_12DISubprogramEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1013 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1012   ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.202) #30
  unreachable

_ZNKSt6vectorIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !1314   ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !980
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZN4llvm18TypedTrackingMDRefINS_7DIScopeEEC2EPS1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.s = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking5trackEPvRNS_8MetadataENS_12PointerUnionIJPNS_15MetadataAsValueEPS2_PNS_14DebugValueUserEEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 4 dereferenceable(8) %i.r, i64 1) #28 ; 0 uses
  br label %_ZN4llvm18TypedTrackingMDRefINS_7DIScopeEEC2EPS1_.exit

_ZN4llvm18TypedTrackingMDRefINS_7DIScopeEEC2EPS1_.exit: ; preds = %_ZNKSt6vectorIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.c
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm18TypedTrackingMDRefINS_7DIScopeEEC2EPS1_.exit, %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZN4llvm18TypedTrackingMDRefINS_7DIScopeEEC2EPS1_.exit ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.v, %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZN4llvm18TypedTrackingMDRefINS_7DIScopeEEC2EPS1_.exit ] ; 2 uses
  %i.t = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !980 ; 3 uses
  store ptr %i.t, ptr %.011.i.i.i.i.i, align 8, !tbaa !980
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.u = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking5trackEPvRNS_8MetadataENS_12PointerUnionIJPNS_15MetadataAsValueEPS2_PNS_14DebugValueUserEEEE(ptr noundef nonnull align 8 dereferenceable(8) %.011.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(8) %i.t, i64 1) #28 ; 0 uses
  br label %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2864

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZN4llvm18TypedTrackingMDRefINS_7DIScopeEEC2EPS1_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZN4llvm18TypedTrackingMDRefINS_7DIScopeEEC2EPS1_.exit ], [ %i.w, %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit26, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i23
  %.011.i.i.i.i.i20 = phi ptr [ %i.ab, %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i23 ], [ %i.x, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 3 uses
  %.0810.i.i.i.i.i21 = phi ptr [ %i.aa, %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i23 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 2 uses
  %i.y = load ptr, ptr %.0810.i.i.i.i.i21, align 8, !tbaa !980 ; 3 uses
  store ptr %i.y, ptr %.011.i.i.i.i.i20, align 8, !tbaa !980
  %.not.i.i.i.i.i.i.i.i.i22 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i.i.i22, label %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i23, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i19
  %i.z = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking5trackEPvRNS_8MetadataENS_12PointerUnionIJPNS_15MetadataAsValueEPS2_PNS_14DebugValueUserEEEE(ptr noundef nonnull align 8 dereferenceable(8) %.011.i.i.i.i.i20, ptr noundef nonnull align 4 dereferenceable(8) %i.y, i64 1) #28 ; 0 uses
  br label %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i23

_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i23: ; preds = %bb.e, %.lr.ph.i.i.i.i.i19
  %i.aa = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 8 ; 2 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i.i.i24, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit26, label %.lr.ph.i.i.i.i.i19, !llvm.loop !2864

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit26: ; preds = %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i23, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.0.lcssa.i.i.i.i.i25 = phi ptr [ %i.x, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.ab, %_ZSt10_ConstructIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i23 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit26, %_ZSt8_DestroyIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm18TypedTrackingMDRefINS0_7DIScopeEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit26 ] ; 3 uses
  %i.ac = load ptr, ptr %.05.i.i, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvPT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i, ptr noundef nonnull align 4 dereferenceable(8) %i.ac) #28
  br label %_ZSt8_DestroyIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvPT_.exit.i.i

_ZSt8_DestroyIN4llvm18TypedTrackingMDRefINS0_7DIScopeEEEEvPT_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.b
end_hunk_8
begin_hunk_9_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSB_bEOT_DpOT0_:bb.a
.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2702
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !881
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !1312, !llvm.loop !4161

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !4162
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !4163
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit, label %bb.d, !prof !1311

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !4162
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !987
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !986
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !881
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !881
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !4163
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !4163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !2702
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !2702
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !980
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !986, !noalias !4164 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !987, !noalias !4164 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !985, !noalias !4164 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !2702   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !881
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1309

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2702
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1312, !llvm.loop !4161

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !4162
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.68", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !985
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !986
  store ptr %i.y, ptr %i.q, align 8, !tbaa !987
  store i32 0, ptr %i.p, align 16, !tbaa !4163
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !4162   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2491 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !1045
  store ptr %i.z, ptr %2, align 16, !tbaa !4162
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !1045
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !2491
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !881
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !881
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !881
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !881
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !881 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 4 dereferenceable(8) %i.au) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.av = add i32 %.0.i3.i.i, -1
  %i.aw = and i32 %i.av, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !988

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !989

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !985 ; 2 uses
  %i.ax = icmp eq i32 %.pr.i, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i
  %i.ay = load ptr, ptr %2, align 16, !tbaa !986
  %i.az = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !986
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !987
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !985  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !987  ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !986
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !985
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i14 = icmp eq i64 %i.n, 0
  br i1 %.not.i14, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph17

.lr.ph17:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !881  ; 2 uses
  %.not11.i12 = icmp eq i32 %i.p, 0
  br i1 %.not11.i12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph17
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i13 = phi i32 [ %i.p, %.lr.ph ], [ %i.bg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i13, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2702 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !881 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !4169

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %i.as = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !2702
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !980 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !980
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread.i, label %_ZN4llvm13TrackingMDRefC2EOS0_.exit.i

_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread.i:     ; preds = %._crit_edge.i
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa12.i
  %i.az = or i32 %i.as, %i.ax
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !881
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZN4llvm13TrackingMDRefC2EOS0_.exit.i:            ; preds = %._crit_edge.i
  %i.ba = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking7retrackEPvRNS_8MetadataES1_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 4 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.au) #28 ; 0 uses
  store ptr null, ptr %i.av, align 8, !tbaa !980
  %i.bb = shl nuw i32 1, %.lcssa.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa12.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !881
  %i.be = or i32 %i.bd, %i.bb
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !881
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %_ZN4llvm13TrackingMDRefC2EOS0_.exit.i, %_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread.i
  %i.bf = add i32 %.0.i13, -1
  %i.bg = and i32 %i.bf, %.0.i13                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4170

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph17, !llvm.loop !4171

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !985
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !4163
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !4163
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !986
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 4
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #28
  store i32 0, ptr %i.d, align 4, !tbaa !985
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang18NamespaceAliasDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !991, !noalias !4172 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !992, !noalias !4172 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !990, !noalias !4172 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1466   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !881
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !1309

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1466
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !881
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !1312, !llvm.loop !4177

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !4178
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !4179
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit, label %bb.d, !prof !1311

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !4178
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !992
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !991
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !881
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !881
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !4179
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !4179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1466
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1466
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !980
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !991, !noalias !4180 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !992, !noalias !4180 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !990, !noalias !4180 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1466   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !881
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1309

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1466
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !1311

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1312, !llvm.loop !4177

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !4178
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.66", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !990
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !991
  store ptr %i.y, ptr %i.q, align 8, !tbaa !992
  store i32 0, ptr %i.p, align 16, !tbaa !4179
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !4178   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2491 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !1045
  store ptr %i.z, ptr %2, align 16, !tbaa !4178
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !1045
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !2491
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !881
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !881
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !881
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !881
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !881 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !980 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 4 dereferenceable(8) %i.au) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.av = add i32 %.0.i3.i.i, -1
  %i.aw = and i32 %i.av, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !993

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !994

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !990 ; 2 uses
  %i.ax = icmp eq i32 %.pr.i, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i
  %i.ay = load ptr, ptr %2, align 16, !tbaa !991
  %i.az = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !991
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !992
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !990  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !992  ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !991
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !990
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i14 = icmp eq i64 %i.n, 0
  br i1 %.not.i14, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph17

.lr.ph17:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !881  ; 2 uses
  %.not11.i12 = icmp eq i32 %i.p, 0
  br i1 %.not11.i12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph17
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i13 = phi i32 [ %i.p, %.lr.ph ], [ %i.bg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i13, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1466 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !881 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !881 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !4185

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %i.as = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1466
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !980 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !980
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread.i, label %_ZN4llvm13TrackingMDRefC2EOS0_.exit.i

_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread.i:     ; preds = %._crit_edge.i
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa12.i
  %i.az = or i32 %i.as, %i.ax
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !881
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZN4llvm13TrackingMDRefC2EOS0_.exit.i:            ; preds = %._crit_edge.i
  %i.ba = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking7retrackEPvRNS_8MetadataES1_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 4 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.au) #28 ; 0 uses
  store ptr null, ptr %i.av, align 8, !tbaa !980
  %i.bb = shl nuw i32 1, %.lcssa.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa12.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !881
  %i.be = or i32 %i.bd, %i.bb
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !881
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %_ZN4llvm13TrackingMDRefC2EOS0_.exit.i, %_ZN4llvm13TrackingMDRefC2EOS0_.exit.thread.i
  %i.bf = add i32 %.0.i13, -1
  %i.bg = and i32 %i.bf, %.0.i13                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4186

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph17, !llvm.loop !4187

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !990
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !4179
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !4179
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !991
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 4
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #28
  store i32 0, ptr %i.d, align 4, !tbaa !990
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13NamespaceDeclENS_13TrackingMDRefENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef ptr @_ZN4llvm6MDNode22replaceWithUniquedImplEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN4llvm23ReplaceableMetadataImpl18replaceAllUsesWithEPNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #19

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind }
attributes #24 = { mustprogress nounwind willreturn memory(read, argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { builtin nounwind allocsize(0) }
attributes #33 = { nounwind willreturn memory(read, argmem: readwrite) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTSN5clang7CodeGen13CodeGenModuleE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !23, i64 184}
!12 = !{!"_ZTSN5clang7CodeGen13CodeGenModuleE", !13, i64 0, !17, i64 144, !18, i64 152, !19, i64 160, !21, i64 168, !22, i64 176, !23, i64 184, !5, i64 192, !24, i64 200, !25, i64 208, !26, i64 216, !27, i64 224, !34, i64 232, !35, i64 240, !39, i64 272, !40, i64 280, !47, i64 288, !54, i64 296, !61, i64 304, !72, i64 384, !79, i64 392, !86, i64 400, !93, i64 408, !99, i64 488, !106, i64 496, !113, i64 504, !120, i64 512, !127, i64 520, !134, i64 528, !141, i64 536, !148, i64 544, !149, i64 552, !156, i64 560, !157, i64 584, !164, i64 592, !165, i64 608, !169, i64 760, !171, i64 784, !176, i64 888, !169, i64 912, !176, i64 936, !176, i64 960, !181, i64 984, !188, i64 1024, !193, i64 1168, !195, i64 1192, !199, i64 1216, !204, i64 1240, !199, i64 1328, !206, i64 1352, !206, i64 1376, !211, i64 1400, !211, i64 1424, !216, i64 1448, !223, i64 1488, !224, i64 1592, !229, i64 1616, !234, i64 1656, !235, i64 1680, !237, i64 1704, !238, i64 1728, !240, i64 1752, !242, i64 1776, !244, i64 1800, !246, i64 1824, !248, i64 1848, !248, i64 1872, !248, i64 1896, !250, i64 1920, !257, i64 1960, !262, i64 1984, !257, i64 2008, !262, i64 2032, !267, i64 2056, !269, i64 2080, !270, i64 2232, !39, i64 2272, !277, i64 2280, !288, i64 2384, !293, i64 2528, !288, i64 2864, !298, i64 3008, !307, i64 3048, !309, i64 3200, !309, i64 3344, !314, i64 3488, !315, i64 3496, !321, i64 3520, !324, i64 3528, !326, i64 3552, !98, i64 3576, !98, i64 3584, !328, i64 3592, !328, i64 3608, !14, i64 3624, !14, i64 3632, !330, i64 3640, !331, i64 3648, !334, i64 3664, !334, i64 3672, !334, i64 3680, !335, i64 3688, !342, i64 3696, !347, i64 3736, !354, i64 3744, !354, i64 3768, !354, i64 3792, !356, i64 3816, !365, i64 3832, !367, i64 3856, !369, i64 3880, !370, i64 3888, !328, i64 3912, !328, i64 3928, !375, i64 3944, !378, i64 3960}
!13 = !{!"_ZTSN5clang7CodeGen16CodeGenTypeCacheE", !14, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !15, i64 72, !15, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !16, i64 120, !16, i64 128, !6, i64 136, !6, i64 137, !6, i64 138, !6, i64 139, !5, i64 140}
!14 = !{!"p1 _ZTSN4llvm4TypeE", !10, i64 0}
!15 = !{!"p1 _ZTSN4llvm11IntegerTypeE", !10, i64 0}
!16 = !{!"p1 _ZTSN4llvm11PointerTypeE", !10, i64 0}
!17 = !{!"p1 _ZTSN5clang10ASTContextE", !10, i64 0}
end_hunk_9
