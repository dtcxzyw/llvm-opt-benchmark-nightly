Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Compiler?download=true
inline.NumInlined: 3176
inline.NumDeleted: 1468
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4Luau14compileOrThrowERNS_15BytecodeBuilderERKNS_11ParseResultERNS_12AstNameTableERKNS_14CompileOptionsE:bb.a
._crit_edge161:                                   ; preds = %bb.bo, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  store ptr null, ptr %16, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.hn = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i8 0, ptr %i.hn, align 4, !tbaa !220
  invoke void @_ZN4Luau15AstExprFunctionC1ERKNS_8LocationERKNS_8AstArrayIPNS_7AstAttrEEERKNS4_IPNS_14AstGenericTypeEEERKNS4_IPNS_18AstGenericTypePackEEEPNS_8AstLocalERKNS4_ISL_EEbS3_PNS_12AstStatBlockEmRKNS_7AstNameEPNS_11AstTypePackESV_RKSt8optionalIS1_E(ptr noundef nonnull align 8 dereferenceable(188) %10, ptr noundef nonnull align 4 dereferenceable(16) %i.hm, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %14, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(16) %15, ptr noundef nonnull %i.i, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef null, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(20) %17)
          to label %bb.bp unwind label %bb.bt

bb.bp:                                            ; preds = %._crit_edge161
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.ho = invoke noundef i32 @_ZN4Luau8Compiler15compileFunctionEPNS_15AstExprFunctionERh(ptr noundef nonnull align 8 dereferenceable(1904) %7, ptr noundef nonnull %10, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %.loopexit unwind label %bb.bu

.loopexit:                                        ; preds = %bb.bp
  invoke void @_ZN4Luau15BytecodeBuilder15setMainFunctionEj(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef %i.ho)
          to label %bb.bq unwind label %bb.bv

bb.bq:                                            ; preds = %.loopexit
  invoke void @_ZN4Luau15BytecodeBuilder8finalizeEv(ptr noundef nonnull align 8 dereferenceable(1048) %0)
          to label %bb.br unwind label %bb.bv

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN4Luau8CompilerD2Ev(ptr noundef nonnull align 8 dead_on_return(1904) dereferenceable(1904) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.hp = load ptr, ptr %5, align 8, !tbaa !64    ; 3 uses
  %.not.i.i.i119 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i119, label %_ZNSt6vectorIPN4Luau15AstExprFunctionESaIS2_EED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hq = load ptr, ptr %i.m, align 8, !tbaa !68
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %i.hp to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef %i.ht) #29
  br label %_ZNSt6vectorIPN4Luau15AstExprFunctionESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4Luau15AstExprFunctionESaIS2_EED2Ev.exit: ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.bt:                                            ; preds = %._crit_edge161
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bp
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bq, %.loopexit
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv, %bb.bt
  %.pn98.pn.pn = phi { ptr, i32 } [ %i.hu, %bb.bt ], [ %i.hv, %bb.bu ], [ %i.hw, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bd, %bb.bh, %bb.ah, %bb.ar, %bb.w, %bb.x, %bb.bw, %bb.bn, %bb.y, %bb.o
  %.pn105.pn = phi { ptr, i32 } [ %i.ds, %bb.ah ], [ %i.hj, %bb.bn ], [ %.pn98.pn.pn, %bb.bw ], [ %i.bw, %bb.o ], [ %i.ch, %bb.w ], [ %i.cj, %bb.y ], [ %i.ci, %bb.x ], [ %i.ev, %bb.ar ], [ %i.ga, %bb.bd ], [ %i.gj, %bb.bh ]
  call void @_ZN4Luau8CompilerD2Ev(ptr noundef nonnull align 8 dead_on_return(1904) dereferenceable(1904) %7) #30
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.n
  %.pn105.pn.pn = phi { ptr, i32 } [ %.pn105.pn, %bb.bx ], [ %i.bv, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.bz

bb.bz:                                            ; preds = %bb.i, %bb.by, %bb.h
  %.pn105.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.h ], [ %.pn105.pn.pn, %bb.by ], [ %i.bl, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.hx = load ptr, ptr %5, align 8, !tbaa !64    ; 3 uses
  %.not.i.i.i120 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i120, label %_ZNSt6vectorIPN4Luau15AstExprFunctionESaIS2_EED2Ev.exit121, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hy = load ptr, ptr %i.m, align 8, !tbaa !68
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.hx to i64
  %i.ib = sub i64 %i.hz, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.ib) #29
  br label %_ZNSt6vectorIPN4Luau15AstExprFunctionESaIS2_EED2Ev.exit121

_ZNSt6vectorIPN4Luau15AstExprFunctionESaIS2_EED2Ev.exit121: ; preds = %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn105.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8CompilerC2ERNS_15BytecodeBuilderERKNS_14CompileOptionsERNS_12AstNameTableE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !221
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false), !tbaa.struct !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !216
  invoke void @_ZN4Luau15BuiltinAstTypesC2EPKc(ptr noundef nonnull align 8 dereferenceable(720) %i.t, ptr noundef %i.v)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1512
  store ptr %3, ptr %i.w, align 8, !tbaa !222
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1520
  store ptr null, ptr %i.x, align 8, !tbaa !85
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store i8 0, ptr %i.y, align 8, !tbaa !211
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1532
  store i32 0, ptr %i.z, align 4, !tbaa !223
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1536
  store i32 0, ptr %i.aa, align 8, !tbaa !224
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1544
  store i64 0, ptr %i.ab, align 8, !tbaa !225
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1552
  store i8 0, ptr %i.ac, align 8, !tbaa !226
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1553
  store i8 0, ptr %i.ad, align 1, !tbaa !227
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1728 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.ae, i8 0, i64 18, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.af, i8 0, i64 144, i1 false)
  %i.am = invoke ptr @_ZN4Luau12AstNameTable8getOrAddEPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull @.str.126)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.an = ptrtoint ptr %i.am to i64
  store i64 %i.an, ptr %i.al, align 8, !tbaa !27
  %.sroa.490.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %.sroa.894.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1776
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.490.0..sroa_idx.a, i8 0, i64 40, i1 false)
  store i8 1, ptr %.sroa.894.0..sroa_idx, align 8, !tbaa !228
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1777
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 1, !tbaa !228
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1872
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.0..sroa_idx, i8 0, i64 40, i1 false)
  store i32 -1, ptr %i.aq, align 8, !tbaa !229
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1900
  store i8 0, ptr %i.ar, align 4, !tbaa !230
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !231
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !232
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp ult i64 %i.ax, 128
  br i1 %i.ay, label %_ZNSt12_Vector_baseIPN4Luau8AstLocalESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIPN4Luau8AstLocalESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !233
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.aw
  %i.bd = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #31
          to label %.noexc unwind label %bb.j     ; 4 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseIPN4Luau8AstLocalESaIS2_EE11_M_allocateEm.exit.i
  %i.be = load ptr, ptr %i.af, align 8, !tbaa !232 ; 4 uses
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !233
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %bb.d, label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

bb.d:                                             ; preds = %.noexc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr align 8 %i.be, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %bb.d, %.noexc
  %.not.i8.i = icmp eq ptr %i.be, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIPN4Luau8AstLocalESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.bk = load ptr, ptr %i.as, align 8, !tbaa !231
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bm) #29
  br label %_ZNSt12_Vector_baseIPN4Luau8AstLocalESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIPN4Luau8AstLocalESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.bd, ptr %i.af, align 8, !tbaa !232
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  store ptr %i.bn, ptr %i.az, align 8, !tbaa !233
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 128
  store ptr %i.bo, ptr %i.as, align 8, !tbaa !231
  br label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE7reserveEm.exit

_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPN4Luau8AstLocalESaIS2_EE13_M_deallocateEPS2_m.exit.i, %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !231
  %i.br = load ptr, ptr %i.ag, align 8, !tbaa !232
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = icmp ult i64 %i.bu, 128
  br i1 %i.bv, label %_ZNSt12_Vector_baseIPN4Luau8AstLocalESaIS2_EE11_M_allocateEm.exit.i44, label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE7reserveEm.exit49

_ZNSt12_Vector_baseIPN4Luau8AstLocalESaIS2_EE11_M_allocateEm.exit.i44: ; preds = %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE7reserveEm.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !233
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.bt
  %i.ca = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #31
          to label %.noexc48 unwind label %bb.j   ; 4 uses

.noexc48:                                         ; preds = %_ZNSt12_Vector_baseIPN4Luau8AstLocalESaIS2_EE11_M_allocateEm.exit.i44
  %i.cb = load ptr, ptr %i.ag, align 8, !tbaa !232 ; 4 uses
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !233
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.cf = sub i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, 0
  br i1 %i.cg, label %bb.f, label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i45

bb.f:                                             ; preds = %.noexc48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ca, ptr align 8 %i.cb, i64 %i.cf, i1 false)
  br label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i45

_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i45: ; preds = %bb.f, %.noexc48
  %.not.i8.i46 = icmp eq ptr %i.cb, null
  br i1 %.not.i8.i46, label %_ZNSt12_Vector_baseIPN4Luau8AstLocalESaIS2_EE13_M_deallocateEPS2_m.exit.i47, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i45
  %i.ch = load ptr, ptr %i.bp, align 8, !tbaa !231
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = sub i64 %i.ci, %i.ce
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cj) #29
  br label %_ZNSt12_Vector_baseIPN4Luau8AstLocalESaIS2_EE13_M_deallocateEPS2_m.exit.i47

_ZNSt12_Vector_baseIPN4Luau8AstLocalESaIS2_EE13_M_deallocateEPS2_m.exit.i47: ; preds = %bb.g, %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i45
  store ptr %i.ca, ptr %i.ag, align 8, !tbaa !232
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  store ptr %i.ck, ptr %i.bw, align 8, !tbaa !233
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 128
  store ptr %i.cl, ptr %i.bp, align 8, !tbaa !231
  br label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE7reserveEm.exit49

_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE7reserveEm.exit49: ; preds = %_ZNSt12_Vector_baseIPN4Luau8AstLocalESaIS2_EE13_M_deallocateEPS2_m.exit.i47, %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE7reserveEm.exit
  ret void

bb.h:                                             ; preds = %bb.a
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit54

bb.i:                                             ; preds = %bb.b
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIPN4Luau8AstLocalESaIS2_EE11_M_allocateEm.exit.i44, %_ZNSt12_Vector_baseIPN4Luau8AstLocalESaIS2_EE11_M_allocateEm.exit.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4Luau8Compiler7ExportsD2Ev(ptr noundef nonnull align 8 dead_on_return(173) dereferenceable(173) %i.al) #30
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.pn26 = phi { ptr, i32 } [ %i.co, %bb.j ], [ %i.cn, %bb.i ] ; 2 uses
  %i.cp = load ptr, ptr %i.ak, align 8, !tbaa !234 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau8Compiler7CaptureESaIS2_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !235
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cu) #29
  br label %_ZNSt6vectorIN4Luau8Compiler7CaptureESaIS2_EED2Ev.exit

_ZNSt6vectorIN4Luau8Compiler7CaptureESaIS2_EED2Ev.exit: ; preds = %bb.k, %bb.l
  tail call void @_ZNSt6vectorIN4Luau8Compiler11InlineFrameESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aj) #30
  %i.cv = load ptr, ptr %i.ai, align 8, !tbaa !236 ; 3 uses
  %.not.i.i.i50 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i50, label %_ZNSt6vectorIN4Luau8Compiler4LoopESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN4Luau8Compiler7CaptureESaIS2_EED2Ev.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !237
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #29
  br label %_ZNSt6vectorIN4Luau8Compiler4LoopESaIS2_EED2Ev.exit

_ZNSt6vectorIN4Luau8Compiler4LoopESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4Luau8Compiler7CaptureESaIS2_EED2Ev.exit, %bb.m
  %i.db = load ptr, ptr %i.ah, align 8, !tbaa !238 ; 3 uses
  %.not.i.i.i51 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIN4Luau8Compiler8LoopJumpESaIS2_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN4Luau8Compiler4LoopESaIS2_EED2Ev.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !239
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = sub i64 %i.de, %i.df
  tail call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.dg) #29
  br label %_ZNSt6vectorIN4Luau8Compiler8LoopJumpESaIS2_EED2Ev.exit

_ZNSt6vectorIN4Luau8Compiler8LoopJumpESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4Luau8Compiler4LoopESaIS2_EED2Ev.exit, %bb.n
  %i.dh = load ptr, ptr %i.ag, align 8, !tbaa !232 ; 3 uses
  %.not.i.i.i52 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN4Luau8Compiler8LoopJumpESaIS2_EED2Ev.exit
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !231
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = sub i64 %i.dk, %i.dl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dm) #29
  br label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit:  ; preds = %_ZNSt6vectorIN4Luau8Compiler8LoopJumpESaIS2_EED2Ev.exit, %bb.o
  %i.dn = load ptr, ptr %i.af, align 8, !tbaa !232 ; 3 uses
  %.not.i.i.i53 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit54, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !231
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
end_hunk_0
