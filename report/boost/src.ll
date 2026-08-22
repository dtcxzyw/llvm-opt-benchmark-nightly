Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/src?download=true
inline.NumInlined: 7222
inline.NumDeleted: 1430
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 62
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE:bb.a
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN5boost6system12system_errorC2ERKNS0_10error_codeE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !19
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #50
  br label %_ZN5boost6system12system_errorC2ERKNS0_10error_codeE.exit

bb.e:                                             ; preds = %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.e
  %i.u = load i64, ptr %i.s, align 8, !tbaa !19
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

common.resume:                                    ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.x, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  br label %common.resume

_ZN5boost6system12system_errorC2ERKNS0_10error_codeE.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6system12system_errorE, i64 16), ptr %4, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !37
  invoke void @_ZN5boost15throw_exceptionINS_6system12system_errorEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #48
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN5boost6system12system_errorC2ERKNS0_10error_codeE.exit
  unreachable

bb.g:                                             ; preds = %_ZN5boost6system12system_errorC2ERKNS0_10error_codeE.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !21     ; 2 uses
  %.not.i.i = icmp eq i64 %i.d, 0
  %i.e = and i64 %i.d, -4
  %i.f = inttoptr i64 %i.e to ptr
  %.0.i.i = select i1 %.not.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.f ; 2 uses
  %i.g = zext i32 %i.b to i64
  %i.h = mul nuw nsw i64 %i.g, 24
  %i.i = add nuw nsw i64 %i.h, 8
  %i.j = load ptr, ptr %.0.i.i, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, ptr noundef nonnull %0, i64 noundef %i.i, i64 noundef 8), !inline_history !38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost4json5array13revert_insertC2EPKNS0_5valueEmRS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #5 align 2 {
bb.a:
  store ptr %3, ptr %0, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 24                  ; 3 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i64 %2, ptr %i.i, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26
  %i.l = zext i32 %i.k to i64                     ; 4 uses
  %i.m = load i32, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 5 uses
  %i.o = sub nsw i64 %i.l, %i.n
  %.not = icmp ugt i64 %2, %i.o
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !50
  %i.r = icmp eq i64 %2, 0
  br i1 %i.r, label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp eq i64 %i.h, %i.n
  br i1 %i.s, label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = sub nsw i64 %i.n, %i.h
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %2
  %i.v = mul i64 %i.t, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %i.p, i64 %i.v, i1 false)
  %.pre = load ptr, ptr %0, align 8, !tbaa !39
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre13 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !43 ; 2 uses
  %.pre14 = load i32, ptr %.pre13, align 8, !tbaa !49
  %.pre15 = load i64, ptr %i.i, align 8, !tbaa !48
  br label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit

_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit: ; preds = %bb.c, %bb.d
  %i.w = phi i64 [ %2, %bb.c ], [ %.pre15, %bb.d ]
  %i.x = phi i32 [ %i.m, %bb.c ], [ %.pre14, %bb.d ]
  %i.y = phi ptr [ %i.c, %bb.c ], [ %.pre13, %bb.d ]
  %i.z = trunc i64 %i.w to i32
  %i.aa = add i32 %i.x, %i.z
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !49
  br label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit

bb.e:                                             ; preds = %bb.a
  %i.ab = sub nsw i64 2147483646, %i.n
  %i.ac = icmp ugt i64 %2, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 11, ptr noundef nonnull @_ZZN5boost4json5array13revert_insertC1EPKNS0_5valueEmRS1_E3loc) #48
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ad = add i64 %2, %i.n                        ; 3 uses
  %i.ae = icmp ugt i64 %i.ad, 2147483646
  br i1 %i.ae, label %bb.h, label %_ZNK5boost4json5array6growthEm.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 11, ptr noundef nonnull @_ZZNK5boost4json5array6growthEmE3loc) #48
  unreachable

_ZNK5boost4json5array6growthEm.exit:              ; preds = %bb.g
  %i.af = lshr i64 %i.l, 1                        ; 2 uses
  %i.ag = sub nsw i64 2147483646, %i.af
  %i.ah = icmp ult i64 %i.ag, %i.l
  %i.ai = add nuw nsw i64 %i.af, %i.l
  %..i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.ad)
  %.1.i = select i1 %i.ah, i64 %i.ad, i64 %..i    ; 3 uses
  %i.aj = icmp samesign ugt i64 %.1.i, 2147483646
  br i1 %i.aj, label %bb.i, label %_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit

bb.i:                                             ; preds = %_ZNK5boost4json5array6growthEm.exit
  tail call void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 11, ptr noundef nonnull @_ZZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrEE3loc) #48
  unreachable

_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit: ; preds = %_ZNK5boost4json5array6growthEm.exit
  %i.ak = load i64, ptr %3, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  %i.al = and i64 %i.ak, -4
  %i.am = inttoptr i64 %i.al to ptr
  %.0.i.i.i = select i1 %.not.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.am ; 2 uses
  %i.an = mul nuw nsw i64 %.1.i, 24
  %i.ao = add nuw nsw i64 %i.an, 8
  %i.ap = load ptr, ptr %.0.i.i.i, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, i64 noundef %i.ao, i64 noundef 8), !inline_history !51 ; 4 uses
  %i.at = trunc nuw nsw i64 %.1.i to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 %i.at, ptr %i.au, align 4, !tbaa !26
  %i.av = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !43 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !49
  %i.az = load i64, ptr %i.i, align 8, !tbaa !48
  %i.ba = trunc i64 %i.az to i32
  %i.bb = add i32 %i.ay, %i.ba
  store i32 %i.bb, ptr %i.as, align 8, !tbaa !49
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !47  ; 3 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !50
  %i.bg = icmp eq i64 %i.bd, 0
  br i1 %i.bg, label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit9, label %bb.j

bb.j:                                             ; preds = %_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bi = mul i64 %i.bd, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr nonnull align 8 %i.bh, i64 %i.bi, i1 false)
  %.pre16 = load i64, ptr %i.a, align 8, !tbaa !47
  %.pre17 = load ptr, ptr %0, align 8, !tbaa !39  ; 2 uses
  %.phi.trans.insert18 = getelementptr inbounds nuw i8, ptr %.pre17, i64 16
  %.pre19 = load ptr, ptr %.phi.trans.insert18, align 8, !tbaa !43
  br label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit9

_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit9: ; preds = %_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit, %bb.j
  %i.bj = phi ptr [ %i.ax, %_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit ], [ %.pre19, %bb.j ] ; 2 uses
  %i.bk = phi ptr [ %i.av, %_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit ], [ %.pre17, %bb.j ]
  %i.bl = phi i64 [ 0, %_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit ], [ %.pre16, %bb.j ] ; 4 uses
  %i.bm = load i32, ptr %i.bj, align 8, !tbaa !49
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = icmp eq i64 %i.bl, %i.bn
  br i1 %i.bo, label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit10, label %bb.k

bb.k:                                             ; preds = %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit9
  %i.bp = sub i64 %i.bn, %i.bl
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.bl
  %i.bs = load i64, ptr %i.i, align 8, !tbaa !48
  %i.bt = getelementptr [24 x i8], ptr %i.bc, i64 %i.bl
  %i.bu = getelementptr [24 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = mul i64 %i.bp, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull align 1 %i.br, i64 %i.bv, i1 false)
  %.pre20 = load ptr, ptr %0, align 8, !tbaa !39
  br label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit10

_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit10: ; preds = %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit9, %bb.k
  %i.bw = phi ptr [ %i.bk, %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit9 ], [ %.pre20, %bb.k ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !52 ; 2 uses
  store ptr %i.as, ptr %i.bx, align 8, !tbaa !52
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !26 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit10
  %i.cc = load i64, ptr %i.bw, align 8, !tbaa !21 ; 2 uses
  %.not.i.i.i11 = icmp eq i64 %i.cc, 0
  %i.cd = and i64 %i.cc, -4
  %i.ce = inttoptr i64 %i.cd to ptr
  %.0.i.i.i12 = select i1 %.not.i.i.i11, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.ce ; 2 uses
  %i.cf = zext i32 %i.ca to i64
  %i.cg = mul nuw nsw i64 %i.cf, 24
  %i.ch = add nuw nsw i64 %i.cg, 8
  %i.ci = load ptr, ptr %.0.i.i.i12, align 8, !tbaa !23
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i12, ptr noundef nonnull %i.by, i64 noundef %i.ch, i64 noundef 8), !inline_history !53
  br label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit

_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit: ; preds = %bb.l, %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit10, %bb.b, %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost4json5array13revert_insertD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.f ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !21
  %i.k = and i64 %i.j, 3
  %i.l = icmp eq i64 %i.k, 2
  %.not4.i = icmp eq ptr %i.i, %i.g
  %or.cond.i = or i1 %.not4.i, %i.l
  br i1 %or.cond.i, label %_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.05.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.i, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %.05.i, i64 -24 ; 3 uses
  tail call void @_ZN5boost4json5valueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #47
  %.not.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i, label %_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit.loopexit, label %.lr.ph.i, !llvm.loop !54

_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !39
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !43
  %.pre5 = load i64, ptr %i.e, align 8, !tbaa !47
  br label %_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit

_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit: ; preds = %_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit.loopexit, %bb.b
  %i.n = phi i64 [ %.pre5, %_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit.loopexit ], [ %i.f, %bb.b ] ; 2 uses
  %i.o = phi ptr [ %.pre4, %_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit.loopexit ], [ %i.c, %bb.b ] ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !48   ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = sub i32 %i.p, %i.s                       ; 2 uses
  store i32 %i.t, ptr %i.o, align 8, !tbaa !49
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = icmp eq i64 %i.n, %i.u
  br i1 %i.v, label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit
  %i.w = sub i64 %i.u, %i.n
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.r
  %i.y = mul i64 %i.w, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull align 1 %i.x, i64 %i.y, i1 false)
  br label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit

_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit: ; preds = %bb.c, %_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost4json5array7destroyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !21
  %i.b = and i64 %i.a, 3
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %.not6 = icmp eq i32 %i.f, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = zext i32 %i.f to i64
  %.idx = mul nuw nsw i64 %i.g, 24
  %.add = add nuw nsw i64 %.idx, 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0.idx7 = phi i64 [ %.0.add, %.lr.ph ], [ %.add, %.lr.ph.preheader ]
  %.0.add = add nsw i64 %.0.idx7, -24             ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %i.e, i64 %.0.add
  tail call void @_ZN5boost4json5valueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.ptr) #47
  %.not = icmp eq i64 %.0.add, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !56

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.h = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !26   ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.l = load i64, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.l, 0
  %i.m = and i64 %i.l, -4
  %i.n = inttoptr i64 %i.m to ptr
  %.0.i.i.i = select i1 %.not.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.n ; 2 uses
  %i.o = zext i32 %i.j to i64
  %i.p = mul nuw nsw i64 %i.o, 24
  %i.q = add nuw nsw i64 %i.p, 8
  %i.r = load ptr, ptr %.0.i.i.i, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, ptr noundef nonnull %i.h, i64 noundef %i.q, i64 noundef 8)
          to label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit unwind label %bb.d, !inline_history !57

_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit: ; preds = %._crit_edge, %bb.c, %bb.a
  ret void

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #49
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost4json5arrayC2EONS0_6detail15unchecked_arrayE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 9)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58, !nonnull !61, !align !62
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  store i64 %i.c, ptr %0, align 8, !tbaa !21
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN5boost4json11storage_ptrC2ERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -4
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZN5boost4json11storage_ptrC2ERKS1_.exit

_ZN5boost4json11storage_ptrC2ERKS1_.exit:         ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 6, ptr %i.i, align 8, !tbaa !63
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !64   ; 4 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost4json11storage_ptrC2ERKS1_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN5boost4json5array6empty_E, ptr %i.m, align 8, !tbaa !43
  br label %bb.i

bb.d:                                             ; preds = %_ZN5boost4json11storage_ptrC2ERKS1_.exit
  %i.n = icmp ugt i64 %i.k, 2147483646
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 11, ptr noundef nonnull @_ZZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrEE3loc) #48
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = load i64, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.o, 0
  %i.p = and i64 %i.o, -4
  %i.q = inttoptr i64 %i.p to ptr
  %.0.i.i.i = select i1 %.not.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.q ; 2 uses
  %i.r = mul nuw nsw i64 %i.k, 24
  %i.s = add nuw nsw i64 %i.r, 8
  %i.t = load ptr, ptr %.0.i.i.i, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, i64 noundef %i.s, i64 noundef 8)
          to label %bb.g unwind label %bb.j, !inline_history !65 ; 4 uses

bb.g:                                             ; preds = %bb.f
  %i.x = trunc nuw nsw i64 %i.k to i32
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %i.z, align 8, !tbaa !43
  %i.aa = load i64, ptr %i.j, align 8, !tbaa !64  ; 3 uses
  %i.ab = trunc i64 %i.aa to i32
  store i32 %i.ab, ptr %i.w, align 8, !tbaa !49
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN5boost4json6detail15unchecked_array8relocateEPNS0_5valueE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load ptr, ptr %1, align 8, !tbaa !66
  %i.ae = mul i64 %i.aa, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %i.ad, i64 %i.ae, i1 false)
  br label %_ZN5boost4json6detail15unchecked_array8relocateEPNS0_5valueE.exit

_ZN5boost4json6detail15unchecked_array8relocateEPNS0_5valueE.exit: ; preds = %bb.g, %bb.h
  store ptr null, ptr %1, align 8, !tbaa !66
  br label %bb.i

bb.i:                                             ; preds = %_ZN5boost4json6detail15unchecked_array8relocateEPNS0_5valueE.exit, %bb.c
  ret void

bb.j:                                             ; preds = %bb.f, %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load i64, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.ah = trunc i64 %i.ag to i1
  br i1 %i.ah, label %bb.k, label %_ZN5boost4json11storage_ptrD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.ai = and i64 %i.ag, -4                       ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = atomicrmw sub ptr %i.ak, i64 1 acq_rel, align 8
  %i.am = icmp ne i64 %i.al, 1
  %i.an = icmp eq i64 %i.ai, 0
  %or.cond.i.i = or i1 %i.an, %i.am
  br i1 %or.cond.i.i, label %_ZN5boost4json11storage_ptrD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #47, !inline_history !67
  br label %_ZN5boost4json11storage_ptrD2Ev.exit

_ZN5boost4json11storage_ptrD2Ev.exit:             ; preds = %bb.j, %bb.k, %bb.l
  resume { ptr, i32 } %i.af
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost4json5arrayD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.b = and i64 %i.a, 3
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %_ZN5boost4json5array7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %.not6.i = icmp eq i32 %i.f, 0
  br i1 %.not6.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.g = zext i32 %i.f to i64
  %.idx.i = mul nuw nsw i64 %i.g, 24
  %.add.i = add nuw nsw i64 %.idx.i, 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.0.idx7.i = phi i64 [ %.0.add.i, %.lr.ph.i ], [ %.add.i, %.lr.ph.preheader.i ]
  %.0.add.i = add nsw i64 %.0.idx7.i, -24         ; 3 uses
  %.ptr.i = getelementptr inbounds i8, ptr %i.e, i64 %.0.add.i
  tail call void @_ZN5boost4json5valueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.ptr.i) #47, !inline_history !68
  %.not.i = icmp eq i64 %.0.add.i, 8
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !56

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !43
  %.pre1.pre = load i64, ptr %0, align 8, !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.b
  %.pre1 = phi i64 [ %.pre1.pre, %._crit_edge.loopexit.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.h = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !26   ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN5boost4json5array7destroyEv.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %.not.i.i.i.i = icmp eq i64 %.pre1, 0
  %i.l = and i64 %.pre1, -4
  %i.m = inttoptr i64 %i.l to ptr
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.m ; 2 uses
  %i.n = zext i32 %i.j to i64
  %i.o = mul nuw nsw i64 %i.n, 24
  %i.p = add nuw nsw i64 %i.o, 8
  %i.q = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i.i, ptr noundef nonnull %i.h, i64 noundef %i.p, i64 noundef 8)
          to label %._ZN5boost4json5array7destroyEv.exit_crit_edge unwind label %bb.d, !inline_history !69

._ZN5boost4json5array7destroyEv.exit_crit_edge:   ; preds = %bb.c
  %.pre = load i64, ptr %0, align 8, !tbaa !21
  br label %_ZN5boost4json5array7destroyEv.exit

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #49, !inline_history !68
  unreachable

_ZN5boost4json5array7destroyEv.exit:              ; preds = %._ZN5boost4json5array7destroyEv.exit_crit_edge, %bb.a, %._crit_edge.i
  %i.v = phi i64 [ %.pre, %._ZN5boost4json5array7destroyEv.exit_crit_edge ], [ %i.a, %bb.a ], [ %.pre1, %._crit_edge.i ] ; 2 uses
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %bb.e, label %_ZN5boost4json11storage_ptrD2Ev.exit

bb.e:                                             ; preds = %_ZN5boost4json5array7destroyEv.exit
  %i.x = and i64 %i.v, -4                         ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = atomicrmw sub ptr %i.z, i64 1 acq_rel, align 8
  %i.ab = icmp ne i64 %i.aa, 1
  %i.ac = icmp eq i64 %i.x, 0
  %or.cond.i.i = or i1 %i.ac, %i.ab
  br i1 %or.cond.i.i, label %_ZN5boost4json11storage_ptrD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #47, !inline_history !67
  br label %_ZN5boost4json11storage_ptrD2Ev.exit

_ZN5boost4json11storage_ptrD2Ev.exit:             ; preds = %_ZN5boost4json5array7destroyEv.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost4json5arrayC2EmRKNS0_5valueENS0_11storage_ptrE(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 9)) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef align 8 captures(none) %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::json::array::revert_construct", align 8 ; 5 uses
  %5 = alloca %"class.boost::json::storage_ptr", align 8 ; 4 uses
  %i.a = load i64, ptr %3, align 8, !tbaa !15     ; 3 uses
  store i64 0, ptr %3, align 8, !tbaa !15
  store i64 %i.a, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 6, ptr %i.b, align 8, !tbaa !63
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN5boost4json5array6empty_E, ptr %i.d, align 8, !tbaa !43
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, 2147483646
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 11, ptr noundef nonnull @_ZZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrEE3loc) #48
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i64 %i.a, 0
  %i.f = and i64 %i.a, -4
  %i.g = inttoptr i64 %i.f to ptr
  %.0.i.i.i = select i1 %.not.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.g ; 2 uses
  %i.h = mul nuw nsw i64 %1, 24
  %i.i = add nuw nsw i64 %i.h, 8
  %i.j = load ptr, ptr %.0.i.i.i, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, i64 noundef %i.i, i64 noundef 8)
          to label %bb.f unwind label %bb.l, !inline_history !65 ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw nsw i64 %1 to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.n, ptr %i.o, align 4, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.p, align 8, !tbaa !43
  store i32 0, ptr %i.m, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  store ptr %0, ptr %4, align 8, !tbaa !70
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5boost4json11storage_ptrD2Ev.exit
  %i.q = phi i32 [ 0, %bb.f ], [ %i.ap, %_ZN5boost4json11storage_ptrD2Ev.exit ]
  %i.r = phi ptr [ %i.m, %bb.f ], [ %i.an, %_ZN5boost4json11storage_ptrD2Ev.exit ]
  %.in = phi i64 [ %1, %bb.f ], [ %i.s, %_ZN5boost4json11storage_ptrD2Ev.exit ]
  %i.s = add nsw i64 %.in, -1                     ; 2 uses
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.t
  %i.w = load i64, ptr %0, align 8, !tbaa !21     ; 3 uses
  store i64 %i.w, ptr %5, align 8, !tbaa !21
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.h, label %_ZN5boost4json11storage_ptrC2ERKS1_.exit

bb.h:                                             ; preds = %bb.g
  %i.y = and i64 %i.w, -4
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
end_hunk_0
begin_hunk_1_@_ZN5boost4json5array6try_atEm:bb.a
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4json6detail19error_code_categoryE, i32 noundef 17) #47, !noalias !81, !inline_history !36
  br i1 %i.j, label %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread, label %bb.c

_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread: ; preds = %bb.b, %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread
  %i.k = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit ]
  %i.l = or disjoint i64 %i.k, ptrtoint (ptr @_ZZN5boost4json5array6try_atEmE3loc to i64)
  store i64 17, ptr %0, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost4json6detail19error_code_categoryE, ptr %.sroa.54.0..sroa_idx, align 8, !tbaa !19
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %.sroa.65.0..sroa_idx, align 8, !tbaa !15
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %2
  store ptr %i.n, ptr %0, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi i8 [ 1, %bb.d ], [ 2, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %i.o, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK5boost4json5array6try_atEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.boost::system::result.8") align 8 captures(none) initializes((0, 8), (24, 25)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !49
  %i.d = zext i32 %i.c to i64
  %.not = icmp ult i64 %2, %i.d
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4json6detail19error_code_categoryE, i64 8), align 8, !tbaa !28, !noalias !86
  %i.f = and i64 %i.e, -2
  %switch.i.i.i.i = icmp eq i64 %i.f, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit: ; preds = %bb.b
  %i.g = load ptr, ptr @_ZN5boost4json6detail19error_code_categoryE, align 8, !tbaa !23, !noalias !86
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !noalias !86
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4json6detail19error_code_categoryE, i32 noundef 17) #47, !noalias !86, !inline_history !36
  br i1 %i.j, label %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread, label %bb.c

_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread: ; preds = %bb.b, %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread
  %i.k = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit ]
  %i.l = or disjoint i64 %i.k, ptrtoint (ptr @_ZZNK5boost4json5array6try_atEmE3loc to i64)
  store i64 17, ptr %0, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost4json6detail19error_code_categoryE, ptr %.sroa.54.0..sroa_idx, align 8, !tbaa !19
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %.sroa.65.0..sroa_idx, align 8, !tbaa !15
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %2
  store ptr %i.n, ptr %0, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi i8 [ 1, %bb.d ], [ 2, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %i.o, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNKR5boost4json5array2atEmRKNS_15source_locationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::system::result.8", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43, !noalias !91 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !49, !noalias !91
  %i.d = zext i32 %i.c to i64
  %.not.i = icmp ult i64 %1, %i.d
  br i1 %.not.i, label %_ZNK5boost6system6resultIRKNS_4json5valueENS0_10error_codeEE5valueERKNS_15source_locationE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4json6detail19error_code_categoryE, i64 8), align 8, !tbaa !28, !noalias !94
  %i.f = and i64 %i.e, -2
  %switch.i.i.i.i.i = icmp eq i64 %i.f, -5572340897628102704
  br i1 %switch.i.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread.i, label %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i

_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i: ; preds = %bb.b
  %i.g = load ptr, ptr @_ZN5boost4json6detail19error_code_categoryE, align 8, !tbaa !23, !noalias !94
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !noalias !94
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4json6detail19error_code_categoryE, i32 noundef 17) #47, !noalias !94, !inline_history !97
  br i1 %i.j, label %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread.i, label %bb.c

_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread.i: ; preds = %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i, %bb.b
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread.i, %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i
  %i.k = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread.i ], [ 0, %_ZN5boost6system10error_codeC2INS_4json5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i ]
  %i.l = or disjoint i64 %i.k, ptrtoint (ptr @_ZZNK5boost4json5array6try_atEmE3loc to i64)
  store i64 17, ptr %3, align 8, !alias.scope !91
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN5boost4json6detail19error_code_categoryE, ptr %.sroa.54.0..sroa_idx.i, align 8, !tbaa !19, !alias.scope !91
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.l, ptr %.sroa.65.0..sroa_idx.i, align 8, !tbaa !15, !alias.scope !91
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 2, ptr %i.m, align 8, !tbaa !89, !alias.scope !91
  call void @_ZN5boost6system26throw_exception_from_errorERKNS0_10error_codeERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %2) #48
  unreachable

_ZNK5boost6system6resultIRKNS_4json5valueENS0_10error_codeEE5valueERKNS_15source_locationE.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  ret ptr %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost4json5array13shrink_to_fitEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !26   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = load i32, ptr %i.b, align 8, !tbaa !49   ; 5 uses
  %i.g = zext nneg i32 %i.f to i64
  %.not = icmp ugt i32 %i.d, %i.f
  br i1 %.not, label %bb.b, label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit13

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.i, 0
  %i.j = and i64 %i.i, -4
  %i.k = inttoptr i64 %i.j to ptr
  %.0.i.i.i = select i1 %.not.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.k ; 2 uses
  %i.l = mul nuw nsw i64 %i.e, 24
  %i.m = add nuw nsw i64 %i.l, 8
  %i.n = load ptr, ptr %.0.i.i.i, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, ptr noundef nonnull %i.b, i64 noundef %i.m, i64 noundef 8)
          to label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit unwind label %bb.k, !inline_history !57

_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit: ; preds = %bb.c
  store ptr @_ZN5boost4json5array6empty_E, ptr %i.a, align 8, !tbaa !43
  br label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit13

bb.d:                                             ; preds = %bb.b
  %i.q = icmp ugt i32 %i.f, 2147483646
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 11, ptr noundef nonnull @_ZZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrEE3loc) #48
          to label %.noexc8 unwind label %bb.j

.noexc8:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = load i64, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not.i.i.i6 = icmp eq i64 %i.r, 0
  %i.s = and i64 %i.r, -4
  %i.t = inttoptr i64 %i.s to ptr
  %.0.i.i.i7 = select i1 %.not.i.i.i6, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.t ; 2 uses
  %i.u = mul nuw nsw i64 %i.g, 24
  %i.v = add nuw nsw i64 %i.u, 8
  %i.w = load ptr, ptr %.0.i.i.i7, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i7, i64 noundef %i.v, i64 noundef 8)
          to label %bb.g unwind label %bb.j, !inline_history !65 ; 4 uses

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.f, ptr %i.aa, align 4, !tbaa !26
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !43  ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !49 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = zext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ah = mul nuw nsw i64 %i.ae, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ag, ptr nonnull align 8 %i.af, i64 %i.ah, i1 false)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  %.pre14 = load i32, ptr %.pre, align 8, !tbaa !49
  br label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit

_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit: ; preds = %bb.g, %bb.h
  %i.ai = phi i32 [ 0, %bb.g ], [ %.pre14, %bb.h ]
  %i.aj = phi ptr [ %i.ab, %bb.g ], [ %.pre, %bb.h ] ; 2 uses
  store i32 %i.ai, ptr %i.z, align 8, !tbaa !49
  store ptr %i.z, ptr %i.a, align 8, !tbaa !52
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !26 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit13, label %bb.i

bb.i:                                             ; preds = %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit
  %i.an = load i64, ptr %0, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i10 = icmp eq i64 %i.an, 0
  %i.ao = and i64 %i.an, -4
  %i.ap = inttoptr i64 %i.ao to ptr
  %.0.i.i.i11 = select i1 %.not.i.i.i10, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.ap ; 2 uses
  %i.aq = zext i32 %i.al to i64
  %i.ar = mul nuw nsw i64 %i.aq, 24
  %i.as = add nuw nsw i64 %i.ar, 8
  %i.at = load ptr, ptr %.0.i.i.i11, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i11, ptr noundef nonnull %i.aj, i64 noundef %i.as, i64 noundef 8)
          to label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit13 unwind label %bb.j, !inline_history !57

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.e
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %i.ax) #47 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit13 unwind label %bb.k

_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit13: ; preds = %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit, %bb.i, %bb.j, %bb.a, %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit
  ret void

bb.k:                                             ; preds = %bb.c, %bb.j
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #49
  unreachable
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost4json5array5clearEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !21
  %i.f = and i64 %i.e, 3
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.h = zext i32 %i.c to i64
  %.idx = mul nuw nsw i64 %i.h, 24
  %.add = add nuw nsw i64 %.idx, 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.05.i.idx = phi i64 [ %.05.i.add, %.lr.ph.i ], [ %.add, %.lr.ph.i.preheader ]
  %.05.i.add = add nsw i64 %.05.i.idx, -24        ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %i.b, i64 %.05.i.add
  tail call void @_ZN5boost4json5valueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.ptr) #47
  %.not.i = icmp eq i64 %.05.i.add, 8
  br i1 %.not.i, label %_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit.loopexit, label %.lr.ph.i, !llvm.loop !54

_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !43
  br label %_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit

_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit: ; preds = %_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit.loopexit, %bb.b
  %i.i = phi ptr [ %.pre, %_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit.loopexit ], [ %i.b, %bb.b ]
  store i32 0, ptr %i.i, align 8, !tbaa !49
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5boost4json5array6insertEPKNS0_5valueERS3_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::json::value", align 8 ; 7 uses
  %4 = alloca %"class.boost::json::storage_ptr", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.a = load i64, ptr %0, align 8, !tbaa !21     ; 3 uses
  store i64 %i.a, ptr %4, align 8, !tbaa !21
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN5boost4json11storage_ptrC2ERKS1_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, -4
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZN5boost4json11storage_ptrC2ERKS1_.exit.i

_ZN5boost4json11storage_ptrC2ERKS1_.exit.i:       ; preds = %bb.b, %bb.a
  invoke void @_ZN5boost4json5valueC1ERKS1_NS0_11storage_ptrE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN5boost4json11storage_ptrC2ERKS1_.exit.i
  %i.g = load i64, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %_ZN5boost4json11storage_ptrD2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = and i64 %i.g, -4                         ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = atomicrmw sub ptr %i.k, i64 1 acq_rel, align 8
  %i.m = icmp ne i64 %i.l, 1
  %i.n = icmp eq i64 %i.i, 0
  %or.cond.i.i.i = or i1 %i.n, %i.m
  br i1 %or.cond.i.i.i, label %_ZN5boost4json11storage_ptrD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #47, !inline_history !98
  br label %_ZN5boost4json11storage_ptrD2Ev.exit.i

_ZN5boost4json11storage_ptrD2Ev.exit.i:           ; preds = %bb.e, %bb.d, %bb.c
  %i.r = invoke noundef ptr @_ZN5boost4json5array6insertEPKNS0_5valueENS0_8pilferedIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull %3)
          to label %_ZN5boost4json5array7emplaceIRKNS0_5valueEEEPS3_PS4_OT_.exit unwind label %bb.i

bb.f:                                             ; preds = %_ZN5boost4json11storage_ptrC2ERKS1_.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.t = load i64, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %bb.g, label %_ZN5boost4json11storage_ptrD2Ev.exit7.i

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.t, -4                         ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = atomicrmw sub ptr %i.x, i64 1 acq_rel, align 8
  %i.z = icmp ne i64 %i.y, 1
  %i.aa = icmp eq i64 %i.v, 0
  %or.cond.i.i6.i = or i1 %i.aa, %i.z
  br i1 %or.cond.i.i6.i, label %_ZN5boost4json11storage_ptrD2Ev.exit7.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #47, !inline_history !98
  br label %_ZN5boost4json11storage_ptrD2Ev.exit7.i

bb.i:                                             ; preds = %_ZN5boost4json11storage_ptrD2Ev.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4json5valueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #47
  br label %_ZN5boost4json11storage_ptrD2Ev.exit7.i

_ZN5boost4json11storage_ptrD2Ev.exit7.i:          ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.s, %bb.f ], [ %i.s, %bb.g ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  resume { ptr, i32 } %.pn.i

_ZN5boost4json5array7emplaceIRKNS0_5valueEEEPS3_PS4_OT_.exit: ; preds = %_ZN5boost4json11storage_ptrD2Ev.exit.i
  call void @_ZN5boost4json5valueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret ptr %i.r
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5boost4json5array6insertEPKNS0_5valueEOS2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::json::value", align 8 ; 7 uses
  %4 = alloca %"class.boost::json::storage_ptr", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.a = load i64, ptr %0, align 8, !tbaa !21     ; 3 uses
  store i64 %i.a, ptr %4, align 8, !tbaa !21
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN5boost4json11storage_ptrC2ERKS1_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, -4
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8 ; 0 uses
end_hunk_1
begin_hunk_2_@_ZN5boost4json5array6resizeEm:bb.a
  %i.aa = trunc i64 %1 to i32
  store i32 %i.aa, ptr %.sink21, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost4json5array6resizeEmRKNS0_5valueE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::json::array::revert_insert", align 8 ; 8 uses
  %4 = alloca %"class.boost::json::storage_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !49
  %i.d = zext i32 %i.c to i64                     ; 5 uses
  %.not = icmp ugt i64 %1, %i.d
  br i1 %.not, label %.lr.ph, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %1
  %i.g = load i64, ptr %0, align 8, !tbaa !21
  %i.h = and i64 %i.g, 3
  %i.i = icmp eq i64 %i.h, 2
  %.not4.i = icmp samesign eq i64 %1, %i.d
  %or.cond.i = or i1 %.not4.i, %i.i
  br i1 %or.cond.i, label %_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.05.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.j, %.lr.ph.i.preheader ]
  %i.k = getelementptr inbounds i8, ptr %.05.i, i64 -24 ; 3 uses
  tail call void @_ZN5boost4json5valueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.k) #47
  %.not.i = icmp eq ptr %i.k, %i.f
  br i1 %.not.i, label %_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit.loopexit, label %.lr.ph.i, !llvm.loop !54

_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !43
  br label %_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit

_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit: ; preds = %_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit.loopexit, %bb.b
  %i.l = phi ptr [ %.pre, %_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit.loopexit ], [ %i.b, %bb.b ]
  %i.m = trunc nuw i64 %1 to i32
  store i32 %i.m, ptr %i.l, align 8, !tbaa !49
  br label %bb.k

.lr.ph:                                           ; preds = %bb.a
  %i.n = sub nuw i64 %1, %i.d                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.d
  call void @_ZN5boost4json5array13revert_insertC1EPKNS0_5valueEmRS1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.p, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %.pre14 = load ptr, ptr %i.q, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN5boost4json11storage_ptrD2Ev.exit
  %i.r = phi ptr [ %.pre14, %.lr.ph ], [ %i.al, %_ZN5boost4json11storage_ptrD2Ev.exit ]
  %.in = phi i64 [ %i.n, %.lr.ph ], [ %i.s, %_ZN5boost4json11storage_ptrD2Ev.exit ]
  %i.s = add i64 %.in, -1                         ; 2 uses
  %i.t = load i64, ptr %0, align 8, !tbaa !21     ; 3 uses
  store i64 %i.t, ptr %4, align 8, !tbaa !21
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %bb.d, label %_ZN5boost4json11storage_ptrC2ERKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.v = and i64 %i.t, -4
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZN5boost4json11storage_ptrC2ERKS1_.exit

_ZN5boost4json11storage_ptrC2ERKS1_.exit:         ; preds = %bb.c, %bb.d
  invoke void @_ZN5boost4json5valueC1ERKS1_NS0_11storage_ptrE(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 %4)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZN5boost4json11storage_ptrC2ERKS1_.exit
  %i.z = load i64, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %bb.f, label %_ZN5boost4json11storage_ptrD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = and i64 %i.z, -4                        ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 acq_rel, align 8
  %i.af = icmp ne i64 %i.ae, 1
  %i.ag = icmp eq i64 %i.ab, 0
  %or.cond.i.i = or i1 %i.ag, %i.af
  br i1 %or.cond.i.i, label %_ZN5boost4json11storage_ptrD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #47, !inline_history !67
  br label %_ZN5boost4json11storage_ptrD2Ev.exit

_ZN5boost4json11storage_ptrD2Ev.exit:             ; preds = %bb.e, %bb.f, %bb.g
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  store ptr %i.al, ptr %i.q, align 8, !tbaa !50
  %.not10 = icmp eq i64 %i.s, 0
  br i1 %.not10, label %._crit_edge, label %bb.c, !llvm.loop !104

bb.h:                                             ; preds = %_ZN5boost4json11storage_ptrC2ERKS1_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load i64, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.ao = trunc i64 %i.an to i1
  br i1 %i.ao, label %bb.i, label %_ZN5boost4json11storage_ptrD2Ev.exit12

bb.i:                                             ; preds = %bb.h
  %i.ap = and i64 %i.an, -4                       ; 2 uses
  %i.aq = inttoptr i64 %i.ap to ptr               ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = atomicrmw sub ptr %i.ar, i64 1 acq_rel, align 8
  %i.at = icmp ne i64 %i.as, 1
  %i.au = icmp eq i64 %i.ap, 0
  %or.cond.i.i11 = or i1 %i.au, %i.at
  br i1 %or.cond.i.i11, label %_ZN5boost4json11storage_ptrD2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #47, !inline_history !67
  br label %_ZN5boost4json11storage_ptrD2Ev.exit12

_ZN5boost4json11storage_ptrD2Ev.exit12:           ; preds = %bb.h, %bb.i, %bb.j
  call void @_ZN5boost4json5array13revert_insertD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  resume { ptr, i32 } %i.am

._crit_edge:                                      ; preds = %_ZN5boost4json11storage_ptrD2Ev.exit
  store ptr null, ptr %3, align 8, !tbaa !39
  call void @_ZN5boost4json5array13revert_insertD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %_ZN5boost4json5array7destroyEPNS0_5valueES3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost4json5array12reserve_implEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 2147483646
  br i1 %i.a, label %bb.b, label %_ZNK5boost4json5array6growthEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 11, ptr noundef nonnull @_ZZNK5boost4json5array6growthEmE3loc) #48
  unreachable

_ZNK5boost4json5array6growthEm.exit:              ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !26
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = sub nsw i64 2147483646, %i.g
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = add nuw nsw i64 %i.g, %i.f
  %..i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %1)
  %.1.i = select i1 %i.i, i64 %1, i64 %..i        ; 3 uses
  %i.k = icmp samesign ugt i64 %.1.i, 2147483646
  br i1 %i.k, label %bb.c, label %_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit

bb.c:                                             ; preds = %_ZNK5boost4json5array6growthEm.exit
  tail call void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 11, ptr noundef nonnull @_ZZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrEE3loc) #48
  unreachable

_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit: ; preds = %_ZNK5boost4json5array6growthEm.exit
  %i.l = load i64, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.l, 0
  %i.m = and i64 %i.l, -4
  %i.n = inttoptr i64 %i.m to ptr
  %.0.i.i.i = select i1 %.not.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.n ; 2 uses
  %i.o = mul nuw nsw i64 %.1.i, 24
  %i.p = add nuw nsw i64 %i.o, 8
  %i.q = load ptr, ptr %.0.i.i.i, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, i64 noundef %i.p, i64 noundef 8), !inline_history !51 ; 4 uses
  %i.u = trunc nuw nsw i64 %.1.i to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.u, ptr %i.v, align 4, !tbaa !26
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !43   ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !49   ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ac = mul nuw nsw i64 %i.z, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ac, i1 false)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %.pre7 = load i32, ptr %.pre, align 8, !tbaa !49
  br label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit

_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit: ; preds = %_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit, %bb.d
  %i.ad = phi i32 [ 0, %_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit ], [ %.pre7, %bb.d ]
  %i.ae = phi ptr [ %i.w, %_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit ], [ %.pre, %bb.d ] ; 2 uses
  store i32 %i.ad, ptr %i.t, align 8, !tbaa !49
  store ptr %i.t, ptr %i.b, align 8, !tbaa !52
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !26 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit
  %i.ai = load i64, ptr %0, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i5 = icmp eq i64 %i.ai, 0
  %i.aj = and i64 %i.ai, -4
  %i.ak = inttoptr i64 %i.aj to ptr
  %.0.i.i.i6 = select i1 %.not.i.i.i5, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.ak ; 2 uses
  %i.al = zext i32 %i.ag to i64
  %i.am = mul nuw nsw i64 %i.al, 24
  %i.an = add nuw nsw i64 %i.am, 8
  %i.ao = load ptr, ptr %.0.i.i.i6, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i6, ptr noundef nonnull %i.ae, i64 noundef %i.an, i64 noundef 8), !inline_history !53
  br label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit

_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit: ; preds = %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost4json5array9push_backENS0_8pilferedINS0_5valueEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree captures(none) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !49   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !26   ; 2 uses
  %i.f = icmp ult i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.c to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.g ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.j, align 8, !tbaa !73
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !49
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !49
  br label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit

bb.c:                                             ; preds = %bb.a
  %i.n = add i32 %i.c, 1                          ; 3 uses
  %i.o = icmp ugt i32 %i.n, 2147483646
  br i1 %i.o, label %bb.d, label %_ZNK5boost4json5array6growthEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 11, ptr noundef nonnull @_ZZNK5boost4json5array6growthEmE3loc) #48
  unreachable

_ZNK5boost4json5array6growthEm.exit:              ; preds = %bb.c
  %i.p = zext nneg i32 %i.n to i64                ; 2 uses
  %i.q = zext i32 %i.e to i64                     ; 3 uses
  %i.r = lshr i64 %i.q, 1                         ; 2 uses
  %i.s = sub nsw i64 2147483646, %i.r
  %i.t = icmp ult i64 %i.s, %i.q
  %i.u = add nuw nsw i64 %i.r, %i.q
  %..i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.p)
  %.1.i = select i1 %i.t, i64 %i.p, i64 %..i      ; 3 uses
  %i.v = icmp samesign ugt i64 %.1.i, 2147483646
  br i1 %i.v, label %bb.e, label %_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit

bb.e:                                             ; preds = %_ZNK5boost4json5array6growthEm.exit
  tail call void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 11, ptr noundef nonnull @_ZZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrEE3loc) #48
  unreachable

_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit: ; preds = %_ZNK5boost4json5array6growthEm.exit
  %i.w = load i64, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.w, 0
  %i.x = and i64 %i.w, -4
  %i.y = inttoptr i64 %i.x to ptr
  %.0.i.i.i = select i1 %.not.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.y ; 2 uses
  %i.z = mul nuw nsw i64 %.1.i, 24
  %i.aa = add nuw nsw i64 %i.z, 8
  %i.ab = load ptr, ptr %.0.i.i.i, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, i64 noundef %i.aa, i64 noundef 8), !inline_history !51 ; 3 uses
  %i.af = trunc nuw nsw i64 %.1.i to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !26
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !52  ; 3 uses
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !52
  %i.ai = zext i32 %i.c to i64                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.ai ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.al, align 8, !tbaa !73
  %i.am = icmp eq i32 %i.c, 0
  br i1 %i.am, label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = mul nuw nsw i64 %i.ai, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull align 1 %i.an, i64 %i.aq, i1 false)
  br label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit

_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit: ; preds = %_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit, %bb.f
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !43
  store i32 %i.n, ptr %i.ar, align 8, !tbaa !49
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !26 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit
  %i.av = load i64, ptr %0, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i14 = icmp eq i64 %i.av, 0
  %i.aw = and i64 %i.av, -4
  %i.ax = inttoptr i64 %i.aw to ptr
  %.0.i.i.i15 = select i1 %.not.i.i.i14, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.ax ; 2 uses
  %i.ay = zext i32 %i.at to i64
  %i.az = mul nuw nsw i64 %i.ay, 24
  %i.ba = add nuw nsw i64 %i.az, 8
  %i.bb = load ptr, ptr %.0.i.i.i15, align 8, !tbaa !23
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i15, ptr noundef nonnull %i.ah, i64 noundef %i.ba, i64 noundef 8), !inline_history !53
  br label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit

_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit: ; preds = %bb.g, %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.ak, %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit ], [ %i.ak, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5boost4json5array6insertEPKNS0_5valueENS0_8pilferedIS2_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr nofree captures(none) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !49   ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = sdiv exact i64 %i.h, 24                  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26   ; 2 uses
  %i.l = icmp ult i32 %i.c, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h ; 4 uses
  %i.n = icmp eq i64 %i.i, %i.d
  br i1 %i.n, label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = sub nsw i64 %i.d, %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = mul i64 %i.o, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit

_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit: ; preds = %bb.b, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i64 0, ptr %2, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.r, align 8, !tbaa !73
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !49
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8, !tbaa !49
  br label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit

bb.d:                                             ; preds = %bb.a
  %i.v = icmp ugt i32 %i.c, 2147483645
  br i1 %i.v, label %bb.e, label %_ZNK5boost4json5array6growthEm.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 11, ptr noundef nonnull @_ZZNK5boost4json5array6growthEmE3loc) #48
  unreachable

_ZNK5boost4json5array6growthEm.exit:              ; preds = %bb.d
  %i.w = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %i.x = zext i32 %i.k to i64                     ; 3 uses
  %i.y = lshr i64 %i.x, 1                         ; 2 uses
  %i.z = sub nsw i64 2147483646, %i.y
  %i.aa = icmp ult i64 %i.z, %i.x
  %i.ab = add nuw nsw i64 %i.y, %i.x
  %..i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.w)
  %.1.i = select i1 %i.aa, i64 %i.w, i64 %..i     ; 3 uses
  %i.ac = icmp samesign ugt i64 %.1.i, 2147483646
  br i1 %i.ac, label %bb.f, label %_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit

bb.f:                                             ; preds = %_ZNK5boost4json5array6growthEm.exit
  tail call void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 11, ptr noundef nonnull @_ZZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrEE3loc) #48
  unreachable

_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit: ; preds = %_ZNK5boost4json5array6growthEm.exit
  %i.ad = load i64, ptr %0, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ad, 0
  %i.ae = and i64 %i.ad, -4
  %i.af = inttoptr i64 %i.ae to ptr
  %.0.i.i.i = select i1 %.not.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.af ; 2 uses
  %i.ag = mul nuw nsw i64 %.1.i, 24
  %i.ah = add nuw nsw i64 %i.ag, 8
  %i.ai = load ptr, ptr %.0.i.i.i, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, i64 noundef %i.ah, i64 noundef 8), !inline_history !51 ; 4 uses
  %i.am = trunc nuw nsw i64 %.1.i to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 %i.am, ptr %i.an, align 4, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.h ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i64 0, ptr %2, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.aq, align 8, !tbaa !73
  %i.ar = icmp eq ptr %1, %i.e
  br i1 %i.ar, label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit27, label %bb.g

bb.g:                                             ; preds = %_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr nonnull align 1 %i.at, i64 %i.h, i1 false)
  br label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit27

_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit27: ; preds = %_ZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrE.exit, %bb.g
  %i.au = icmp eq i64 %i.i, %i.d
  br i1 %i.au, label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit28, label %bb.h

bb.h:                                             ; preds = %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit27
  %i.av = sub nsw i64 %i.d, %i.i
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ba = mul i64 %i.av, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr nonnull align 1 %i.ay, i64 %i.ba, i1 false)
  br label %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit28

_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit28: ; preds = %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit27, %bb.h
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !43  ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !49
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.al, align 8, !tbaa !49
  store ptr %i.al, ptr %i.a, align 8, !tbaa !52
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !26 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit28
  %i.bh = load i64, ptr %0, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i29 = icmp eq i64 %i.bh, 0
  %i.bi = and i64 %i.bh, -4
  %i.bj = inttoptr i64 %i.bi to ptr
  %.0.i.i.i30 = select i1 %.not.i.i.i29, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.bj ; 2 uses
  %i.bk = zext i32 %i.bf to i64
  %i.bl = mul nuw nsw i64 %i.bk, 24
  %i.bm = add nuw nsw i64 %i.bl, 8
  %i.bn = load ptr, ptr %.0.i.i.i30, align 8, !tbaa !23
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i30, ptr noundef nonnull %i.bb, i64 noundef %i.bm, i64 noundef 8), !inline_history !53
  br label %_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit

_ZN5boost4json5array5table10deallocateEPS2_RKNS0_11storage_ptrE.exit: ; preds = %bb.i, %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit28, %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit
  %.0 = phi ptr [ %i.m, %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit ], [ %i.ap, %_ZN5boost4json5array8relocateEPNS0_5valueES3_m.exit28 ], [ %i.ap, %bb.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZNK5boost4json5array5equalERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.f = load i32, ptr %i.e, align 8, !tbaa !49
  %.not = icmp eq i32 %i.c, %i.f
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.g = icmp eq i32 %i.c, 0
  br i1 %i.g, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.h = add nuw nsw i64 %.0810, 1                ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !49
  %i.k = zext i32 %i.j to i64
  %.not13 = icmp samesign ult i64 %i.h, %i.k
  br i1 %.not13, label %.lr.ph, label %.loopexit, !llvm.loop !105

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %i.l = phi ptr [ %i.i, %bb.b ], [ %i.b, %.preheader ]
  %.0810 = phi i64 [ %i.h, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.0810
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.0810
  %i.r = tail call noundef zeroext i1 @_ZNK5boost4json5value5equalERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.q) #47, !inline_history !106 ; 3 uses
  br i1 %i.r, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %i.r, %bb.b ], [ %i.r, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZNKSt4hashIN5boost4json5arrayEEclERKS2_(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"struct.boost::json::(anonymous namespace)::value_hasher", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx.i = mul nuw nsw i64 %i.f, 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not.i7.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i7.i.i, label %_ZNK5boost4hashINS_4json5arrayEEclERKS2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNK5boost4hashINS_4json5valueEEclERKS2_.exit.i.i
  %.0.i9.i.i = phi ptr [ %i.ag, %_ZNK5boost4hashINS_4json5valueEEclERKS2_.exit.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.08.i.i = phi i64 [ %i.af, %_ZNK5boost4hashINS_4json5valueEEclERKS2_.exit.i.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i9.i.i, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !19
  %i.j = and i8 %i.i, 63                          ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.j, 2
  %i.k = select i1 %.not.i.i.i.i, i8 3, i8 %i.j
  %i.l = zext nneg i8 %i.k to i64
  %i.m = mul i64 %i.l, 1051668233026429277
  %i.n = add i64 %i.m, 1650762746860425525        ; 2 uses
  %i.o = lshr i64 %i.n, 32
  %i.p = xor i64 %i.o, %i.n
  %i.q = mul i64 %i.p, 1051668233026429277        ; 2 uses
  %i.r = lshr i64 %i.q, 28
  %i.s = xor i64 %i.r, %i.q
  store i64 %i.s, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store ptr %i.a, ptr %2, align 8, !tbaa !107
  invoke fastcc void @_ZN5boost4json5visitINS0_12_GLOBAL__N_112value_hasherEEEDTclscT_fp_clL_ZSt7declvalIRKDnEDTcl9__declvalIS4_ELi0EEEvEEEEOS4_RKNS0_5valueE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %.0.i9.i.i)
          to label %_ZNK5boost4hashINS_4json5valueEEclERKS2_.exit.i.i unwind label %bb.b, !inline_history !109

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #49, !inline_history !109
  unreachable

_ZNK5boost4hashINS_4json5valueEEclERKS2_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.v = add i64 %.08.i.i, 2654435769
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.w = load i64, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  %i.x = add i64 %i.v, %i.w                       ; 2 uses
  %i.y = lshr i64 %i.x, 32
  %i.z = xor i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, 1051668233026429277       ; 2 uses
  %i.ab = lshr i64 %i.aa, 32
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, 1051668233026429277      ; 2 uses
  %i.ae = lshr i64 %i.ad, 28
  %i.af = xor i64 %i.ae, %i.ad                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i9.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %i.g
  br i1 %.not.i.i.i, label %_ZNK5boost4hashINS_4json5arrayEEclERKS2_.exit, label %.lr.ph.i.i, !llvm.loop !110

_ZNK5boost4hashINS_4json5arrayEEclERKS2_.exit:    ; preds = %_ZNK5boost4hashINS_4json5valueEEclERKS2_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.af, %_ZNK5boost4hashINS_4json5valueEEclERKS2_.exit.i.i ]
  ret i64 %.0.lcssa.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK5boost4json6detail21error_code_category_t4nameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret ptr @.str.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK5boost4json6detail21error_code_category_t7messageEiPcm(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr nofree readnone captures(none) %2, i64 %3) unnamed_addr #8 align 2 {
bb.a:
  %switch.tableidx = add i32 %1, -2               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 38
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK5boost4json6detail21error_code_category_t7messageEiPcm, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi ptr [ @.str.5, %bb.a ], [ %switch.load, %switch.lookup ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5boost4json6detail21error_code_category_t7messageB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef %2, ptr noundef null, i64 noundef 0) #47 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !11
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.117) #48
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #47 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  store i64 %i.h, ptr %i.a, align 8, !tbaa !15
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !17
  %i.k = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.k, ptr %i.f, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
end_hunk_2
begin_hunk_3_@_ZN5boost4json6objectC2EONS0_6detail16unchecked_objectE:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZN5boost4json11storage_ptrC2ERKS1_.exit

_ZN5boost4json11storage_ptrC2ERKS1_.exit:         ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 7, ptr %i.i, align 8, !tbaa !165
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !166  ; 6 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost4json11storage_ptrC2ERKS1_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN5boost4json6object6empty_E, ptr %i.m, align 8, !tbaa !136
  br label %.loopexit

bb.d:                                             ; preds = %_ZN5boost4json11storage_ptrC2ERKS1_.exit
  %i.n = icmp ult i64 %i.k, 19
  %i.o = load i64, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.o, 0
  %i.p = and i64 %i.o, -4
  %i.q = inttoptr i64 %i.p to ptr
  %.0.i.i.i = select i1 %.not.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.q ; 3 uses
  %i.r = load ptr, ptr %.0.i.i.i, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = trunc i64 %i.k to i32                    ; 3 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = mul nuw nsw i64 %i.k, 40
  %i.w = add nuw nsw i64 %i.v, 16
  %i.x = invoke noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, i64 noundef %i.w, i64 noundef 16)
          to label %.noexc unwind label %bb.l, !inline_history !167 ; 2 uses

.noexc:                                           ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %i.u, ptr %i.y, align 4, !tbaa !139
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.z = mul i64 %i.k, 44
  %i.aa = add i64 %i.z, 16
  %i.ab = invoke noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, i64 noundef %i.aa, i64 noundef 16)
          to label %.noexc60 unwind label %bb.l, !inline_history !167 ; 3 uses

.noexc60:                                         ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.u, ptr %i.ac, align 4, !tbaa !139
  %i.ad = and i64 %i.k, 4294967295                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = shl nuw nsw i64 %i.ad, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.af, i8 -1, i64 %i.ag, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %.noexc60, %.noexc
  %.0.i = phi ptr [ %i.x, %.noexc ], [ %i.ab, %.noexc60 ] ; 6 uses
  %i.ah = ptrtoint ptr %.0.i to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !147
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %.0.i, ptr %i.aj, align 8, !tbaa !136
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 3 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !168   ; 3 uses
  store ptr null, ptr %1, align 8, !tbaa !168
  %i.am = load i64, ptr %i.j, align 8, !tbaa !166
  %.idx = mul i64 %i.am, 48                       ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx ; 2 uses
  %i.ao = icmp ult i32 %i.u, 19
  br i1 %i.ao, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %.not92 = icmp samesign eq i64 %.idx, 0
  br i1 %.not92, label %._crit_edge96, label %.lr.ph95

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %.0.i, align 8, !tbaa !141
  %.not5897 = icmp samesign eq i64 %.idx, 0
  br i1 %.not5897, label %.loopexit, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.h, %bb.s
  %.099 = phi ptr [ %.1, %bb.s ], [ %i.ak, %bb.h ] ; 6 uses
  %.05298 = phi ptr [ %i.bj, %bb.s ], [ %i.al, %bb.h ] ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05298, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.099, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  store i64 0, ptr %i.ap, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %.05298, i64 32
  store i8 0, ptr %i.aq, align 8, !tbaa !73
  %i.ar = load i64, ptr %.05298, align 8, !tbaa !21 ; 2 uses
  %i.as = trunc i64 %i.ar to i1
  br i1 %i.as, label %bb.i, label %_ZN5boost4json6detail6access24construct_key_value_pairINS0_14key_value_pairEJNS0_8pilferedINS0_5valueEEES7_EEERT_PS8_DpOT0_.exit

bb.i:                                             ; preds = %.lr.ph101
  %i.at = and i64 %i.ar, -4                       ; 2 uses
  %i.au = inttoptr i64 %i.at to ptr               ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = atomicrmw sub ptr %i.av, i64 1 acq_rel, align 8
  %i.ax = icmp ne i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.at, 0
  %or.cond.i.i.i.i.i = or i1 %i.ay, %i.ax
  br i1 %or.cond.i.i.i.i.i, label %_ZN5boost4json6detail6access24construct_key_value_pairINS0_14key_value_pairEJNS0_8pilferedINS0_5valueEEES7_EEERT_PS8_DpOT0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #47, !inline_history !169
  br label %_ZN5boost4json6detail6access24construct_key_value_pairINS0_14key_value_pairEJNS0_8pilferedINS0_5valueEEES7_EEERT_PS8_DpOT0_.exit

_ZN5boost4json6detail6access24construct_key_value_pairINS0_14key_value_pairEJNS0_8pilferedINS0_5valueEEES7_EEERT_PS8_DpOT0_.exit: ; preds = %.lr.ph101, %bb.i, %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %.05298, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.05298, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !19 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05298, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !19 ; 2 uses
  store i8 -123, ptr %i.bc, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %.099, i64 24
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !146
  %i.bi = getelementptr inbounds nuw i8, ptr %.099, i64 32
  store i32 %i.be, ptr %i.bi, align 8, !tbaa !142
  %i.bj = getelementptr inbounds nuw i8, ptr %.05298, i64 48 ; 2 uses
  %i.bk = zext i32 %i.be to i64
  %i.bl = tail call { ptr, i64 } @_ZN5boost4json6detail14find_in_objectINS_4core17basic_string_viewIcEEEESt4pairIPNS0_14key_value_pairEmERKNS0_6objectET_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bg, i64 %i.bk) #47
  %i.bm = extractvalue { ptr, i64 } %i.bl, 0      ; 6 uses
  %.not59 = icmp eq ptr %i.bm, null
  br i1 %.not59, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZN5boost4json6detail6access24construct_key_value_pairINS0_14key_value_pairEJNS0_8pilferedINS0_5valueEEES7_EEERT_PS8_DpOT0_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.099, i64 40
  %i.bo = load ptr, ptr %i.aj, align 8, !tbaa !136 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !141
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !141
  br label %bb.s, !llvm.loop !170

bb.l:                                             ; preds = %bb.f, %bb.e
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = load i64, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.bt = trunc i64 %i.bs to i1
  br i1 %i.bt, label %bb.m, label %_ZN5boost4json11storage_ptrD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bu = and i64 %i.bs, -4                       ; 2 uses
  %i.bv = inttoptr i64 %i.bu to ptr               ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 acq_rel, align 8
  %i.by = icmp ne i64 %i.bx, 1
  %i.bz = icmp eq i64 %i.bu, 0
  %or.cond.i.i = or i1 %i.bz, %i.by
  br i1 %or.cond.i.i, label %_ZN5boost4json11storage_ptrD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = load ptr, ptr %i.bv, align 8, !tbaa !23
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #47, !inline_history !67
  br label %_ZN5boost4json11storage_ptrD2Ev.exit

_ZN5boost4json11storage_ptrD2Ev.exit:             ; preds = %bb.l, %bb.m, %bb.n
  resume { ptr, i32 } %i.br

bb.o:                                             ; preds = %_ZN5boost4json6detail6access24construct_key_value_pairINS0_14key_value_pairEJNS0_8pilferedINS0_5valueEEES7_EEERT_PS8_DpOT0_.exit
  %i.cd = load i64, ptr %i.bm, align 8, !tbaa !21 ; 3 uses
  %i.ce = and i64 %i.cd, 3
  %i.cf = icmp eq i64 %i.ce, 2
  br i1 %i.cf, label %_ZN5boost4json14key_value_pairD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !146 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, @_ZN5boost4json14key_value_pair6empty_E
  br i1 %i.ci, label %_ZN5boost4json14key_value_pairD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i61 = icmp eq i64 %i.cd, 0
  %i.cj = and i64 %i.cd, -4
  %i.ck = inttoptr i64 %i.cj to ptr
  %.0.i.i.i62 = select i1 %.not.i.i.i61, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.ck ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !142
  %i.cn = add i32 %i.cm, 1
  %i.co = zext i32 %i.cn to i64
  %i.cp = load ptr, ptr %.0.i.i.i62, align 8, !tbaa !23
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  invoke void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i62, ptr noundef %i.ch, i64 noundef %i.co, i64 noundef 1)
          to label %_ZN5boost4json14key_value_pairD2Ev.exit unwind label %bb.r, !inline_history !171

bb.r:                                             ; preds = %bb.q
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  tail call void @__clang_call_terminate(ptr %i.ct) #49, !inline_history !172
  unreachable

_ZN5boost4json14key_value_pairD2Ev.exit:          ; preds = %bb.o, %bb.p, %bb.q
  tail call void @_ZN5boost4json5valueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.bm) #47, !inline_history !172
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, ptr noundef nonnull align 8 dereferenceable(40) %.099, i64 40, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %_ZN5boost4json14key_value_pairD2Ev.exit, %bb.k
  %.1 = phi ptr [ %.099, %_ZN5boost4json14key_value_pairD2Ev.exit ], [ %i.bn, %bb.k ]
  %.not58 = icmp eq ptr %i.bj, %i.an
  br i1 %.not58, label %.loopexit, label %.lr.ph101

.lr.ph95:                                         ; preds = %.preheader, %bb.af
  %.294 = phi ptr [ %.3, %bb.af ], [ %i.ak, %.preheader ] ; 9 uses
  %.15393 = phi ptr [ %i.do, %bb.af ], [ %i.al, %.preheader ] ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.15393, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.294, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false)
  store i64 0, ptr %i.cu, align 8, !tbaa !21
  %i.cv = getelementptr inbounds nuw i8, ptr %.15393, i64 32
  store i8 0, ptr %i.cv, align 8, !tbaa !73
  %i.cw = load i64, ptr %.15393, align 8, !tbaa !21 ; 2 uses
  %i.cx = trunc i64 %i.cw to i1
  br i1 %i.cx, label %bb.t, label %_ZN5boost4json6detail6access24construct_key_value_pairINS0_14key_value_pairEJNS0_8pilferedINS0_5valueEEES7_EEERT_PS8_DpOT0_.exit66

bb.t:                                             ; preds = %.lr.ph95
  %i.cy = and i64 %i.cw, -4                       ; 2 uses
  %i.cz = inttoptr i64 %i.cy to ptr               ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = atomicrmw sub ptr %i.da, i64 1 acq_rel, align 8
  %i.dc = icmp ne i64 %i.db, 1
  %i.dd = icmp eq i64 %i.cy, 0
  %or.cond.i.i.i.i.i65 = or i1 %i.dd, %i.dc
  br i1 %or.cond.i.i.i.i.i65, label %_ZN5boost4json6detail6access24construct_key_value_pairINS0_14key_value_pairEJNS0_8pilferedINS0_5valueEEES7_EEERT_PS8_DpOT0_.exit66, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.de = load ptr, ptr %i.cz, align 8, !tbaa !23
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #47, !inline_history !169
  br label %_ZN5boost4json6detail6access24construct_key_value_pairINS0_14key_value_pairEJNS0_8pilferedINS0_5valueEEES7_EEERT_PS8_DpOT0_.exit66

_ZN5boost4json6detail6access24construct_key_value_pairINS0_14key_value_pairEJNS0_8pilferedINS0_5valueEEES7_EEERT_PS8_DpOT0_.exit66: ; preds = %.lr.ph95, %bb.t, %bb.u
  %i.dh = getelementptr inbounds nuw i8, ptr %.15393, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %.15393, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !19 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.15393, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !19 ; 7 uses
  store i8 -123, ptr %i.dh, align 8, !tbaa !19
  %i.dm = getelementptr inbounds nuw i8, ptr %.294, i64 24
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !146
  %i.dn = getelementptr inbounds nuw i8, ptr %.294, i64 32
  store i32 %i.dj, ptr %i.dn, align 8, !tbaa !142
  %i.do = getelementptr inbounds nuw i8, ptr %.15393, i64 48 ; 2 uses
  %i.dp = load ptr, ptr %i.aj, align 8, !tbaa !136 ; 3 uses
  %i.dq = zext i32 %i.dj to i64                   ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !147
  %i.dt = and i64 %i.dq, 4294967288               ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dt ; 3 uses
  %i.dv = mul i64 %i.dq, -4132994306676758123
  %i.dw = xor i64 %i.ds, %i.dv                    ; 3 uses
  %.not55.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not55.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost4json6detail6access24construct_key_value_pairINS0_14key_value_pairEJNS0_8pilferedINS0_5valueEEES7_EEERT_PS8_DpOT0_.exit66
  %i.dx = add nsw i64 %i.dq, -8                   ; 2 uses
  %i.dy = and i64 %i.dx, 8
  %lcmp.mod.not.not = icmp eq i64 %i.dy, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %.0.copyload.i.i.i.prol = load i64, ptr %i.dl, align 1, !tbaa !19
  %i.dz = mul i64 %.0.copyload.i.i.i.prol, -4132994306676758123 ; 2 uses
  %i.ea = lshr i64 %i.dz, 47
  %i.eb = xor i64 %i.ea, %i.dz
  %i.ec = mul i64 %i.eb, -4132994306676758123
  %i.ed = xor i64 %i.ec, %i.dw
  %i.ee = mul i64 %i.ed, -4132994306676758123     ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.ee, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %i.dw, %.lr.ph.i.i.i.preheader ], [ %i.ee, %.lr.ph.i.i.i.prol ]
  %.05456.i.i.i.unr = phi ptr [ %i.dl, %.lr.ph.i.i.i.preheader ], [ %i.ef, %.lr.ph.i.i.i.prol ]
  %i.eg = icmp ult i64 %i.dx, 8
  br i1 %i.eg, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.057.i.i.i = phi i64 [ %i.et, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.05456.i.i.i = phi ptr [ %i.eu, %.lr.ph.i.i.i ], [ %.05456.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.0.copyload.i.i.i = load i64, ptr %.05456.i.i.i, align 1, !tbaa !19
  %i.eh = mul i64 %.0.copyload.i.i.i, -4132994306676758123 ; 2 uses
  %i.ei = lshr i64 %i.eh, 47
  %i.ej = xor i64 %i.ei, %i.eh
  %i.ek = mul i64 %i.ej, -4132994306676758123
  %i.el = xor i64 %i.ek, %.057.i.i.i
  %i.em = mul i64 %i.el, -4132994306676758123
  %i.en = getelementptr inbounds nuw i8, ptr %.05456.i.i.i, i64 8
  %.0.copyload.i.i.i.1 = load i64, ptr %i.en, align 1, !tbaa !19
  %i.eo = mul i64 %.0.copyload.i.i.i.1, -4132994306676758123 ; 2 uses
  %i.ep = lshr i64 %i.eo, 47
  %i.eq = xor i64 %i.ep, %i.eo
  %i.er = mul i64 %i.eq, -4132994306676758123
  %i.es = xor i64 %i.er, %i.em
  %i.et = mul i64 %i.es, -4132994306676758123     ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.05456.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i69.1 = icmp eq ptr %i.eu, %i.du
  br i1 %.not.i.i.i69.1, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !148

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZN5boost4json6detail6access24construct_key_value_pairINS0_14key_value_pairEJNS0_8pilferedINS0_5valueEEES7_EEERT_PS8_DpOT0_.exit66
  %.054.lcssa.i.i.i = phi ptr [ %i.dl, %_ZN5boost4json6detail6access24construct_key_value_pairINS0_14key_value_pairEJNS0_8pilferedINS0_5valueEEES7_EEERT_PS8_DpOT0_.exit66 ], [ %i.du, %.lr.ph.i.i.i ], [ %i.du, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %.0.lcssa.i.i.i = phi i64 [ %i.dw, %_ZN5boost4json6detail6access24construct_key_value_pairINS0_14key_value_pairEJNS0_8pilferedINS0_5valueEEES7_EEERT_PS8_DpOT0_.exit66 ], [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.et, %.lr.ph.i.i.i ] ; 8 uses
  %i.ev = and i64 %i.dq, 7
  switch i64 %i.ev, label %default.unreachable [
    i64 7, label %bb.v
    i64 6, label %bb.w
    i64 5, label %bb.x
    i64 4, label %bb.y
    i64 3, label %bb.z
    i64 2, label %bb.aa
    i64 1, label %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i
    i64 0, label %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i, i64 6
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !19
  %i.ey = sext i8 %i.ex to i64
  %i.ez = shl nsw i64 %i.ey, 48
  %i.fa = xor i64 %i.ez, %.0.lcssa.i.i.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.fa, %bb.v ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i, i64 5
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !19
  %i.fd = sext i8 %i.fc to i64
  %i.fe = shl nsw i64 %i.fd, 40
  %i.ff = xor i64 %i.fe, %.1.i.i.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i.i
  %.2.i.i.i = phi i64 [ %i.ff, %bb.w ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i, i64 4
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !19
  %i.fi = sext i8 %i.fh to i64
  %i.fj = shl nsw i64 %i.fi, 32
  %i.fk = xor i64 %i.fj, %.2.i.i.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i
  %.3.i.i.i = phi i64 [ %i.fk, %bb.x ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i, i64 3
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !19
  %i.fn = sext i8 %i.fm to i64
  %i.fo = shl nsw i64 %i.fn, 24
  %i.fp = xor i64 %i.fo, %.3.i.i.i
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i
  %.4.i.i.i = phi i64 [ %i.fp, %bb.y ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i, i64 2
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !19
  %i.fs = sext i8 %i.fr to i64
  %i.ft = shl nsw i64 %i.fs, 16
  %i.fu = xor i64 %i.ft, %.4.i.i.i
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i
  %.5.i.i.i = phi i64 [ %i.fu, %bb.z ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i, i64 1
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !19
  %i.fx = sext i8 %i.fw to i64
  %i.fy = shl nsw i64 %i.fx, 8
  %i.fz = xor i64 %i.fy, %.5.i.i.i
  br label %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i

_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i: ; preds = %bb.aa, %._crit_edge.i.i.i
  %.6.i.i.i = phi i64 [ %i.fz, %bb.aa ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.ga = load i8, ptr %.054.lcssa.i.i.i, align 1, !tbaa !19
  %i.gb = sext i8 %i.ga to i64
  %i.gc = xor i64 %.6.i.i.i, %i.gb
  %i.gd = mul i64 %i.gc, -4132994306676758123
  br label %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit

default.unreachable:                              ; preds = %._crit_edge.i.i.i
  unreachable

_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit: ; preds = %._crit_edge.i.i.i, %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i
  %.7.i.i.i = phi i64 [ %i.gd, %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ge = lshr i64 %.7.i.i.i, 47
  %i.gf = xor i64 %i.ge, %.7.i.i.i
  %i.gg = mul i64 %i.gf, -4132994306676758123     ; 2 uses
  %i.gh = lshr i64 %i.gg, 47
  %i.gi = xor i64 %i.gh, %i.gg
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !139
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 3 uses
  %i.gn = getelementptr inbounds nuw [40 x i8], ptr %i.gm, i64 %i.gl
  %i.go = urem i64 %i.gi, %i.gl
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.go ; 2 uses
  %.05490 = load i32, ptr %i.gp, align 4, !tbaa !149 ; 3 uses
  %i.gq = icmp eq i32 %.05490, -1
end_hunk_3
begin_hunk_4_@_ZN5boost4json6object13revert_insertD2Ev:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !158    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !136  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !160  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.e
  %i.h = load i32, ptr %i.c, align 8, !tbaa !141
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %.not3.i.i = icmp samesign eq i64 %i.e, %i.i
  br i1 %.not3.i.i, label %_ZN5boost4json6object13revert_insert7destroyEv.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost4json14key_value_pairD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.04.i.i = phi ptr [ %i.k, %_ZN5boost4json14key_value_pairD2Ev.exit.i.i ], [ %i.j, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %.04.i.i, i64 -40 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21   ; 3 uses
  %i.m = and i64 %i.l, 3
  %i.n = icmp eq i64 %i.m, 2
  br i1 %i.n, label %_ZN5boost4json14key_value_pairD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds i8, ptr %.04.i.i, i64 -16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !146  ; 2 uses
  %i.q = icmp eq ptr %i.p, @_ZN5boost4json14key_value_pair6empty_E
  br i1 %i.q, label %_ZN5boost4json14key_value_pairD2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq i64 %i.l, 0
  %i.r = and i64 %i.l, -4
  %i.s = inttoptr i64 %i.r to ptr
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.s ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.04.i.i, i64 -8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !142
  %i.v = add i32 %i.u, 1
  %i.w = zext i32 %i.v to i64
  %i.x = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i.i.i, ptr noundef %i.p, i64 noundef %i.w, i64 noundef 1)
          to label %_ZN5boost4json14key_value_pairD2Ev.exit.i.i unwind label %bb.e, !inline_history !161

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #49, !inline_history !162
  unreachable

_ZN5boost4json14key_value_pairD2Ev.exit.i.i:      ; preds = %bb.d, %bb.c, %.lr.ph.i.i
  tail call void @_ZN5boost4json5valueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.k) #47, !inline_history !162
  %.not.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i, label %_ZN5boost4json6object13revert_insert7destroyEv.exit, label %.lr.ph.i.i, !llvm.loop !155

_ZN5boost4json6object13revert_insert7destroyEv.exit: ; preds = %_ZN5boost4json14key_value_pairD2Ev.exit.i.i, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !175 ; 2 uses
  %.not1 = icmp eq ptr %i.ad, null
  br i1 %.not1, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN5boost4json6object13revert_insert7destroyEv.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !158   ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !136 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !139 ; 4 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN5boost4json6object5table10deallocateEPS2_RKNS0_11storage_ptrE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = icmp ult i32 %i.ai, 19
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !21 ; 2 uses
  %.not.i.i8.i = icmp eq i64 %i.al, 0
  %i.am = and i64 %i.al, -4
  %i.an = inttoptr i64 %i.am to ptr
  %.0.i.i9.i = select i1 %.not.i.i8.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.an ; 2 uses
  %i.ao = load ptr, ptr %.0.i.i9.i, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  br i1 %i.ak, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = zext i32 %i.ai to i64
  %i.as = mul nuw nsw i64 %i.ar, 44
  %i.at = add nuw nsw i64 %i.as, 16
  br label %.invoke.i

bb.i:                                             ; preds = %bb.g
  %narrow.i = mul nuw nsw i32 %i.ai, 40
  %narrow11.i = add nuw nsw i32 %narrow.i, 16
  %i.au = zext nneg i32 %narrow11.i to i64
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.i, %bb.h
  %i.av = phi i64 [ %i.au, %bb.i ], [ %i.at, %bb.h ]
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i9.i, ptr noundef nonnull %i.ag, i64 noundef %i.av, i64 noundef 16)
          to label %.invoke.i._ZN5boost4json6object5table10deallocateEPS2_RKNS0_11storage_ptrE.exit_crit_edge unwind label %bb.j, !inline_history !38

.invoke.i._ZN5boost4json6object5table10deallocateEPS2_RKNS0_11storage_ptrE.exit_crit_edge: ; preds = %.invoke.i
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !175
  %.pre2 = load ptr, ptr %0, align 8, !tbaa !158
  br label %_ZN5boost4json6object5table10deallocateEPS2_RKNS0_11storage_ptrE.exit

bb.j:                                             ; preds = %.invoke.i
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #49
  unreachable

_ZN5boost4json6object5table10deallocateEPS2_RKNS0_11storage_ptrE.exit: ; preds = %.invoke.i._ZN5boost4json6object5table10deallocateEPS2_RKNS0_11storage_ptrE.exit_crit_edge, %bb.f
  %i.ay = phi ptr [ %.pre2, %.invoke.i._ZN5boost4json6object5table10deallocateEPS2_RKNS0_11storage_ptrE.exit_crit_edge ], [ %i.ae, %bb.f ]
  %i.az = phi ptr [ %.pre, %.invoke.i._ZN5boost4json6object5table10deallocateEPS2_RKNS0_11storage_ptrE.exit_crit_edge ], [ %i.ad, %bb.f ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !136
  br label %bb.l

bb.k:                                             ; preds = %_ZN5boost4json6object13revert_insert7destroyEv.exit
  %i.bb = load i64, ptr %i.d, align 8, !tbaa !160
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = load ptr, ptr %0, align 8, !tbaa !158
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !136
  store i32 %i.bc, ptr %i.bf, align 8, !tbaa !141
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k, %_ZN5boost4json6object5table10deallocateEPS2_RKNS0_11storage_ptrE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @_ZN5boost4json6object5eraseEPKNS0_14key_value_pairE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !139  ; 2 uses
  %i.j = icmp ult i32 %i.i, 19
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.g, align 8, !tbaa !21   ; 3 uses
  %i.l = and i64 %i.k, 3
  %i.m = icmp eq i64 %i.l, 2
  br i1 %i.m, label %_ZN5boost4json14key_value_pairD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !146  ; 2 uses
  %i.p = icmp eq ptr %i.o, @_ZN5boost4json14key_value_pair6empty_E
  br i1 %i.p, label %_ZN5boost4json14key_value_pairD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i64 %i.k, 0
  %i.q = and i64 %i.k, -4
  %i.r = inttoptr i64 %i.q to ptr
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !142
  %i.u = add i32 %i.t, 1
  %i.v = zext i32 %i.u to i64
  %i.w = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i.i, ptr noundef %i.o, i64 noundef %i.v, i64 noundef 1)
          to label %_ZN5boost4json14key_value_pairD2Ev.exit.i unwind label %bb.e, !inline_history !171

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #49, !inline_history !172
  unreachable

_ZN5boost4json14key_value_pairD2Ev.exit.i:        ; preds = %bb.d, %bb.c, %bb.b
  tail call void @_ZN5boost4json5valueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.g) #47, !inline_history !172
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !136 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !141
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !141
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %i.ae ; 2 uses
  %.not13.i = icmp eq ptr %1, %i.ag
  br i1 %.not13.i, label %"_ZN5boost4json6object8do_eraseIZNS1_5eraseEPKNS0_14key_value_pairEE3$_0ZNS1_5eraseES5_E3$_1EEPS3_S5_T_T0_.exit", label %bb.f

bb.f:                                             ; preds = %_ZN5boost4json14key_value_pairD2Ev.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(40) %i.ag, i64 40, i1 false)
  br label %"_ZN5boost4json6object8do_eraseIZNS1_5eraseEPKNS0_14key_value_pairEE3$_0ZNS1_5eraseES5_E3$_1EEPS3_S5_T_T0_.exit"

bb.g:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !146 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !142
  %i.al = zext i32 %i.ak to i64                   ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !147
  %i.ao = and i64 %i.al, 4294967288               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ao ; 3 uses
  %i.aq = mul i64 %i.al, -4132994306676758123
  %i.ar = xor i64 %i.aq, %i.an                    ; 3 uses
  %.not55.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not55.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.g
  %i.as = add nsw i64 %i.al, -8                   ; 2 uses
  %i.at = and i64 %i.as, 8
  %lcmp.mod.not.not = icmp eq i64 %i.at, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.prol, label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %.0.copyload.i.i.i.i.prol = load i64, ptr %i.ai, align 1, !tbaa !19
  %i.au = mul i64 %.0.copyload.i.i.i.i.prol, -4132994306676758123 ; 2 uses
  %i.av = lshr i64 %i.au, 47
  %i.aw = xor i64 %i.av, %i.au
  %i.ax = mul i64 %i.aw, -4132994306676758123
  %i.ay = xor i64 %i.ax, %i.ar
  %i.az = mul i64 %i.ay, -4132994306676758123     ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %.lr.ph.i.i.i.i.prol ]
  %.057.i.i.i.i.unr = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %.lr.ph.i.i.i.i.prol ]
  %.05456.i.i.i.i.unr = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.i.i.i.i.prol ]
  %i.bb = icmp ult i64 %i.as, 8
  br i1 %i.bb, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.057.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.05456.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i ], [ %.05456.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 3 uses
  %.0.copyload.i.i.i.i = load i64, ptr %.05456.i.i.i.i, align 1, !tbaa !19
  %i.bc = mul i64 %.0.copyload.i.i.i.i, -4132994306676758123 ; 2 uses
  %i.bd = lshr i64 %i.bc, 47
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = mul i64 %i.be, -4132994306676758123
  %i.bg = xor i64 %i.bf, %.057.i.i.i.i
  %i.bh = mul i64 %i.bg, -4132994306676758123
  %i.bi = getelementptr inbounds nuw i8, ptr %.05456.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.1 = load i64, ptr %i.bi, align 1, !tbaa !19
  %i.bj = mul i64 %.0.copyload.i.i.i.i.1, -4132994306676758123 ; 2 uses
  %i.bk = lshr i64 %i.bj, 47
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = mul i64 %i.bl, -4132994306676758123
  %i.bn = xor i64 %i.bm, %i.bh
  %i.bo = mul i64 %i.bn, -4132994306676758123     ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.05456.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i15.i.1 = icmp eq ptr %i.bp, %i.ap
  br i1 %.not.i.i.i15.i.1, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !148

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.g
  %.054.lcssa.i.i.i.i = phi ptr [ %i.ai, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.prol.loopexit ] ; 7 uses
  %.0.lcssa.i.i.i.i = phi i64 [ %i.ar, %bb.g ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.bo, %.lr.ph.i.i.i.i ] ; 8 uses
  %i.bq = and i64 %i.al, 7
  switch i64 %i.bq, label %default.unreachable [
    i64 7, label %bb.h
    i64 6, label %bb.i
    i64 5, label %bb.j
    i64 4, label %bb.k
    i64 3, label %bb.l
    i64 2, label %bb.m
    i64 1, label %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i.i
    i64 0, label %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i.i, i64 6
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !19
  %i.bt = sext i8 %i.bs to i64
  %i.bu = shl nsw i64 %i.bt, 48
  %i.bv = xor i64 %i.bu, %.0.lcssa.i.i.i.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.bv, %bb.h ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i.i, i64 5
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !19
  %i.by = sext i8 %i.bx to i64
  %i.bz = shl nsw i64 %i.by, 40
  %i.ca = xor i64 %i.bz, %.1.i.i.i.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi i64 [ %i.ca, %bb.i ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i.i, i64 4
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !19
  %i.cd = sext i8 %i.cc to i64
  %i.ce = shl nsw i64 %i.cd, 32
  %i.cf = xor i64 %i.ce, %.2.i.i.i.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i
  %.3.i.i.i.i = phi i64 [ %i.cf, %bb.j ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i.i, i64 3
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !19
  %i.ci = sext i8 %i.ch to i64
  %i.cj = shl nsw i64 %i.ci, 24
  %i.ck = xor i64 %i.cj, %.3.i.i.i.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i
  %.4.i.i.i.i = phi i64 [ %i.ck, %bb.k ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i.i, i64 2
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !19
  %i.cn = sext i8 %i.cm to i64
  %i.co = shl nsw i64 %i.cn, 16
  %i.cp = xor i64 %i.co, %.4.i.i.i.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i
  %.5.i.i.i.i = phi i64 [ %i.cp, %bb.l ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i.i, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !19
  %i.cs = sext i8 %i.cr to i64
  %i.ct = shl nsw i64 %i.cs, 8
  %i.cu = xor i64 %i.ct, %.5.i.i.i.i
  br label %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i.i

_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i.i: ; preds = %bb.m, %._crit_edge.i.i.i.i
  %.6.i.i.i.i = phi i64 [ %i.cu, %bb.m ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.cv = load i8, ptr %.054.lcssa.i.i.i.i, align 1, !tbaa !19
  %i.cw = sext i8 %i.cv to i64
  %i.cx = xor i64 %.6.i.i.i.i, %i.cw
  %i.cy = mul i64 %i.cx, -4132994306676758123
  br label %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit.i

default.unreachable:                              ; preds = %._crit_edge.i.i.i.i
  unreachable

_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit.i: ; preds = %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i.i, %._crit_edge.i.i.i.i
  %.7.i.i.i.i = phi i64 [ %i.cy, %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i.i ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.cz = lshr i64 %.7.i.i.i.i, 47
  %i.da = xor i64 %i.cz, %.7.i.i.i.i
  %i.db = mul i64 %i.da, -4132994306676758123     ; 2 uses
  %i.dc = lshr i64 %i.db, 47
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = zext i32 %i.i to i64                    ; 2 uses
  %i.df = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %i.de
  %i.dg = urem i64 %i.dd, %i.de
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dg ; 2 uses
  %i.di = sdiv exact i64 %i.f, 40
  %i.dj = trunc i64 %i.di to i32                  ; 2 uses
  %i.dk = load i32, ptr %i.dh, align 4, !tbaa !149 ; 2 uses
  %i.dl = icmp eq i32 %i.dk, %i.dj
  br i1 %i.dl, label %bb.n, label %.preheader.i.i

bb.n:                                             ; preds = %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !149
  store i32 %i.dn, ptr %i.dh, align 4, !tbaa !149
  br label %_ZN5boost4json6object6removeERjRNS0_14key_value_pairE.exit.i

.preheader.i.i:                                   ; preds = %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit.i, %.preheader.i.i
  %.pn14.in.i.i = phi i32 [ %i.do, %.preheader.i.i ], [ %i.dk, %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit.i ]
  %.pn14.i.i = zext i32 %.pn14.in.i.i to i64
  %.pn.i.i = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.pn14.i.i ; 2 uses
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 36
  %i.do = load i32, ptr %.0.i.i, align 4, !tbaa !149 ; 2 uses
  %.not.i.i = icmp eq i32 %i.do, %i.dj
  br i1 %.not.i.i, label %bb.o, label %.preheader.i.i, !llvm.loop !200

bb.o:                                             ; preds = %.preheader.i.i
  %.0.i.i.le = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 36
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !149
  store i32 %i.dq, ptr %.0.i.i.le, align 4, !tbaa !149
  br label %_ZN5boost4json6object6removeERjRNS0_14key_value_pairE.exit.i

_ZN5boost4json6object6removeERjRNS0_14key_value_pairE.exit.i: ; preds = %bb.o, %bb.n
  %i.dr = load i64, ptr %i.g, align 8, !tbaa !21  ; 3 uses
  %i.ds = and i64 %i.dr, 3
  %i.dt = icmp eq i64 %i.ds, 2
  %i.du = icmp eq ptr %i.ai, @_ZN5boost4json14key_value_pair6empty_E
  %or.cond.i = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond.i, label %_ZN5boost4json14key_value_pairD2Ev.exit18.i, label %bb.p

bb.p:                                             ; preds = %_ZN5boost4json6object6removeERjRNS0_14key_value_pairE.exit.i
  %.not.i.i.i16.i = icmp eq i64 %i.dr, 0
  %i.dv = and i64 %i.dr, -4
  %i.dw = inttoptr i64 %i.dv to ptr
  %.0.i.i.i17.i = select i1 %.not.i.i.i16.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.dw ; 2 uses
  %i.dx = load i32, ptr %i.aj, align 8, !tbaa !142
  %i.dy = add i32 %i.dx, 1
  %i.dz = zext i32 %i.dy to i64
  %i.ea = load ptr, ptr %.0.i.i.i17.i, align 8, !tbaa !23
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  invoke void %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i17.i, ptr noundef %i.ai, i64 noundef %i.dz, i64 noundef 1)
          to label %_ZN5boost4json14key_value_pairD2Ev.exit18.i unwind label %bb.q, !inline_history !171

bb.q:                                             ; preds = %bb.p
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  tail call void @__clang_call_terminate(ptr %i.ee) #49, !inline_history !172
  unreachable

_ZN5boost4json14key_value_pairD2Ev.exit18.i:      ; preds = %bb.p, %_ZN5boost4json6object6removeERjRNS0_14key_value_pairE.exit.i
  tail call void @_ZN5boost4json5valueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.g) #47, !inline_history !172
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !136 ; 3 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !141
  %i.eh = add i32 %i.eg, -1                       ; 2 uses
  store i32 %i.eh, ptr %i.ef, align 8, !tbaa !141
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.ek = getelementptr inbounds nuw [40 x i8], ptr %i.ej, i64 %i.ei ; 2 uses
  %.not.i = icmp eq ptr %1, %i.ek
  br i1 %.not.i, label %"_ZN5boost4json6object8do_eraseIZNS1_5eraseEPKNS0_14key_value_pairEE3$_0ZNS1_5eraseES5_E3$_1EEPS3_S5_T_T0_.exit", label %bb.r

bb.r:                                             ; preds = %_ZN5boost4json14key_value_pairD2Ev.exit18.i
  tail call void @_ZN5boost4json6object16reindex_relocateEPNS0_14key_value_pairES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.ek, ptr noundef nonnull %i.g) #47
  br label %"_ZN5boost4json6object8do_eraseIZNS1_5eraseEPKNS0_14key_value_pairEE3$_0ZNS1_5eraseES5_E3$_1EEPS3_S5_T_T0_.exit"

"_ZN5boost4json6object8do_eraseIZNS1_5eraseEPKNS0_14key_value_pairEE3$_0ZNS1_5eraseES5_E3$_1EEPS3_S5_T_T0_.exit": ; preds = %_ZN5boost4json14key_value_pairD2Ev.exit.i, %bb.f, %_ZN5boost4json14key_value_pairD2Ev.exit18.i, %bb.r
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i64 0, 2) i64 @_ZN5boost4json6object5eraseENS_4core17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !141
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_ZN5boost4json6object4findENS_4core17basic_string_viewIcEE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call { ptr, i64 } @_ZN5boost4json6detail14find_in_objectINS_4core17basic_string_viewIcEEEESt4pairIPNS0_14key_value_pairEmERKNS0_6objectET_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) #47
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !136 ; 4 uses
  %i.h = load i32, ptr %.pre, align 8, !tbaa !141 ; 3 uses
  br i1 %.not.i, label %bb.d, label %_ZN5boost4json6object4findENS_4core17basic_string_viewIcEE.exit

bb.d:                                             ; preds = %bb.c
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %i.i
  br label %_ZN5boost4json6object4findENS_4core17basic_string_viewIcEE.exit

_ZN5boost4json6object4findENS_4core17basic_string_viewIcEE.exit: ; preds = %bb.c, %bb.b, %bb.d
  %i.l = phi i32 [ 0, %bb.b ], [ %i.h, %bb.d ], [ %i.h, %bb.c ]
  %i.m = phi ptr [ %i.b, %bb.b ], [ %.pre, %bb.d ], [ %.pre, %bb.c ]
  %.1.i = phi ptr [ %i.e, %bb.b ], [ %i.k, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.n
  %i.q = icmp eq ptr %.1.i, %i.p
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost4json6object4findENS_4core17basic_string_viewIcEE.exit
  %i.r = tail call noundef ptr @_ZN5boost4json6object5eraseEPKNS0_14key_value_pairE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %.1.i) #47 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost4json6object4findENS_4core17basic_string_viewIcEE.exit, %bb.e
  %.0 = phi i64 [ 1, %bb.e ], [ 0, %_ZN5boost4json6object4findENS_4core17basic_string_viewIcEE.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @_ZN5boost4json6object12stable_eraseEPKNS0_14key_value_pairE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !139  ; 2 uses
  %i.j = icmp ult i32 %i.i, 19
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.g, align 8, !tbaa !21   ; 3 uses
  %i.l = and i64 %i.k, 3
  %i.m = icmp eq i64 %i.l, 2
  br i1 %i.m, label %_ZN5boost4json14key_value_pairD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !146  ; 2 uses
  %i.p = icmp eq ptr %i.o, @_ZN5boost4json14key_value_pair6empty_E
  br i1 %i.p, label %_ZN5boost4json14key_value_pairD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i64 %i.k, 0
  %i.q = and i64 %i.k, -4
  %i.r = inttoptr i64 %i.q to ptr
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !142
  %i.u = add i32 %i.t, 1
  %i.v = zext i32 %i.u to i64
  %i.w = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i.i, ptr noundef %i.o, i64 noundef %i.v, i64 noundef 1)
          to label %_ZN5boost4json14key_value_pairD2Ev.exit.i unwind label %bb.e, !inline_history !171

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #49, !inline_history !172
  unreachable

_ZN5boost4json14key_value_pairD2Ev.exit.i:        ; preds = %bb.d, %bb.c, %bb.b
  tail call void @_ZN5boost4json5valueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.g) #47, !inline_history !172
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !136 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !141
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !141
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %i.ae ; 2 uses
  %.not13.i = icmp eq ptr %1, %i.ag
  br i1 %.not13.i, label %"_ZN5boost4json6object8do_eraseIZNS1_12stable_eraseEPKNS0_14key_value_pairEE3$_0ZNS1_12stable_eraseES5_E3$_1EEPS3_S5_T_T0_.exit", label %bb.f

bb.f:                                             ; preds = %_ZN5boost4json14key_value_pairD2Ev.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ai, %i.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.g, ptr nonnull align 8 %i.ah, i64 %i.aj, i1 false)
  br label %"_ZN5boost4json6object8do_eraseIZNS1_12stable_eraseEPKNS0_14key_value_pairEE3$_0ZNS1_12stable_eraseES5_E3$_1EEPS3_S5_T_T0_.exit"

bb.g:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !146 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !142
  %i.ao = zext i32 %i.an to i64                   ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !147
  %i.ar = and i64 %i.ao, 4294967288               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ar ; 3 uses
  %i.at = mul i64 %i.ao, -4132994306676758123
  %i.au = xor i64 %i.at, %i.aq                    ; 3 uses
  %.not55.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not55.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.g
  %i.av = add nsw i64 %i.ao, -8                   ; 2 uses
  %i.aw = and i64 %i.av, 8
  %lcmp.mod.not.not = icmp eq i64 %i.aw, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.prol, label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %.0.copyload.i.i.i.i.prol = load i64, ptr %i.al, align 1, !tbaa !19
  %i.ax = mul i64 %.0.copyload.i.i.i.i.prol, -4132994306676758123 ; 2 uses
  %i.ay = lshr i64 %i.ax, 47
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = mul i64 %i.az, -4132994306676758123
  %i.bb = xor i64 %i.ba, %i.au
  %i.bc = mul i64 %i.bb, -4132994306676758123     ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.bc, %.lr.ph.i.i.i.i.prol ]
  %.057.i.i.i.i.unr = phi i64 [ %i.au, %.lr.ph.i.i.i.i.preheader ], [ %i.bc, %.lr.ph.i.i.i.i.prol ]
  %.05456.i.i.i.i.unr = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.i.i.prol ]
  %i.be = icmp ult i64 %i.av, 8
  br i1 %i.be, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.057.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.05456.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %.05456.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 3 uses
  %.0.copyload.i.i.i.i = load i64, ptr %.05456.i.i.i.i, align 1, !tbaa !19
  %i.bf = mul i64 %.0.copyload.i.i.i.i, -4132994306676758123 ; 2 uses
  %i.bg = lshr i64 %i.bf, 47
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = mul i64 %i.bh, -4132994306676758123
  %i.bj = xor i64 %i.bi, %.057.i.i.i.i
  %i.bk = mul i64 %i.bj, -4132994306676758123
  %i.bl = getelementptr inbounds nuw i8, ptr %.05456.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.1 = load i64, ptr %i.bl, align 1, !tbaa !19
  %i.bm = mul i64 %.0.copyload.i.i.i.i.1, -4132994306676758123 ; 2 uses
  %i.bn = lshr i64 %i.bm, 47
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = mul i64 %i.bo, -4132994306676758123
  %i.bq = xor i64 %i.bp, %i.bk
  %i.br = mul i64 %i.bq, -4132994306676758123     ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.05456.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i15.i.1 = icmp eq ptr %i.bs, %i.as
  br i1 %.not.i.i.i15.i.1, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !148

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.g
  %.054.lcssa.i.i.i.i = phi ptr [ %i.al, %bb.g ], [ %i.as, %.lr.ph.i.i.i.i ], [ %i.as, %.lr.ph.i.i.i.i.prol.loopexit ] ; 7 uses
  %.0.lcssa.i.i.i.i = phi i64 [ %i.au, %bb.g ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.br, %.lr.ph.i.i.i.i ] ; 8 uses
  %i.bt = and i64 %i.ao, 7
  switch i64 %i.bt, label %default.unreachable [
    i64 7, label %bb.h
    i64 6, label %bb.i
    i64 5, label %bb.j
    i64 4, label %bb.k
    i64 3, label %bb.l
    i64 2, label %bb.m
    i64 1, label %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i.i
    i64 0, label %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i.i, i64 6
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !19
  %i.bw = sext i8 %i.bv to i64
  %i.bx = shl nsw i64 %i.bw, 48
  %i.by = xor i64 %i.bx, %.0.lcssa.i.i.i.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.by, %bb.h ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i.i, i64 5
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !19
  %i.cb = sext i8 %i.ca to i64
  %i.cc = shl nsw i64 %i.cb, 40
  %i.cd = xor i64 %i.cc, %.1.i.i.i.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi i64 [ %i.cd, %bb.i ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i.i, i64 4
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !19
  %i.cg = sext i8 %i.cf to i64
  %i.ch = shl nsw i64 %i.cg, 32
  %i.ci = xor i64 %i.ch, %.2.i.i.i.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i
  %.3.i.i.i.i = phi i64 [ %i.ci, %bb.j ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i.i, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !19
  %i.cl = sext i8 %i.ck to i64
  %i.cm = shl nsw i64 %i.cl, 24
  %i.cn = xor i64 %i.cm, %.3.i.i.i.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i
  %.4.i.i.i.i = phi i64 [ %i.cn, %bb.k ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i.i, i64 2
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !19
  %i.cq = sext i8 %i.cp to i64
  %i.cr = shl nsw i64 %i.cq, 16
  %i.cs = xor i64 %i.cr, %.4.i.i.i.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i
  %.5.i.i.i.i = phi i64 [ %i.cs, %bb.l ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i.i, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !19
  %i.cv = sext i8 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 8
  %i.cx = xor i64 %i.cw, %.5.i.i.i.i
  br label %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i.i

_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i.i: ; preds = %bb.m, %._crit_edge.i.i.i.i
  %.6.i.i.i.i = phi i64 [ %i.cx, %bb.m ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.cy = load i8, ptr %.054.lcssa.i.i.i.i, align 1, !tbaa !19
  %i.cz = sext i8 %i.cy to i64
  %i.da = xor i64 %.6.i.i.i.i, %i.cz
  %i.db = mul i64 %i.da, -4132994306676758123
  br label %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit.i

default.unreachable:                              ; preds = %._crit_edge.i.i.i.i
  unreachable

_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit.i: ; preds = %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i.i, %._crit_edge.i.i.i.i
  %.7.i.i.i.i = phi i64 [ %i.db, %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i.i ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.dc = lshr i64 %.7.i.i.i.i, 47
  %i.dd = xor i64 %i.dc, %.7.i.i.i.i
  %i.de = mul i64 %i.dd, -4132994306676758123     ; 2 uses
  %i.df = lshr i64 %i.de, 47
  %i.dg = xor i64 %i.df, %i.de
  %i.dh = zext i32 %i.i to i64                    ; 2 uses
  %i.di = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %i.dh
  %i.dj = urem i64 %i.dg, %i.dh
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dj ; 2 uses
  %i.dl = sdiv exact i64 %i.f, 40
  %i.dm = trunc i64 %i.dl to i32                  ; 2 uses
  %i.dn = load i32, ptr %i.dk, align 4, !tbaa !149 ; 2 uses
  %i.do = icmp eq i32 %i.dn, %i.dm
  br i1 %i.do, label %bb.n, label %.preheader.i.i

bb.n:                                             ; preds = %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !149
  store i32 %i.dq, ptr %i.dk, align 4, !tbaa !149
  br label %_ZN5boost4json6object6removeERjRNS0_14key_value_pairE.exit.i

.preheader.i.i:                                   ; preds = %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit.i, %.preheader.i.i
  %.pn14.in.i.i = phi i32 [ %i.dr, %.preheader.i.i ], [ %i.dn, %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit.i ]
  %.pn14.i.i = zext i32 %.pn14.in.i.i to i64
  %.pn.i.i = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.pn14.i.i ; 2 uses
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 36
  %i.dr = load i32, ptr %.0.i.i, align 4, !tbaa !149 ; 2 uses
  %.not.i.i = icmp eq i32 %i.dr, %i.dm
  br i1 %.not.i.i, label %bb.o, label %.preheader.i.i, !llvm.loop !200

bb.o:                                             ; preds = %.preheader.i.i
  %.0.i.i.le = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 36
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !149
  store i32 %i.dt, ptr %.0.i.i.le, align 4, !tbaa !149
  br label %_ZN5boost4json6object6removeERjRNS0_14key_value_pairE.exit.i

_ZN5boost4json6object6removeERjRNS0_14key_value_pairE.exit.i: ; preds = %bb.o, %bb.n
  %i.du = load i64, ptr %i.g, align 8, !tbaa !21  ; 3 uses
  %i.dv = and i64 %i.du, 3
  %i.dw = icmp eq i64 %i.dv, 2
  %i.dx = icmp eq ptr %i.al, @_ZN5boost4json14key_value_pair6empty_E
  %or.cond.i = select i1 %i.dw, i1 true, i1 %i.dx
  br i1 %or.cond.i, label %_ZN5boost4json14key_value_pairD2Ev.exit18.i, label %bb.p

bb.p:                                             ; preds = %_ZN5boost4json6object6removeERjRNS0_14key_value_pairE.exit.i
  %.not.i.i.i16.i = icmp eq i64 %i.du, 0
  %i.dy = and i64 %i.du, -4
  %i.dz = inttoptr i64 %i.dy to ptr
  %.0.i.i.i17.i = select i1 %.not.i.i.i16.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.dz ; 2 uses
  %i.ea = load i32, ptr %i.am, align 8, !tbaa !142
  %i.eb = add i32 %i.ea, 1
  %i.ec = zext i32 %i.eb to i64
  %i.ed = load ptr, ptr %.0.i.i.i17.i, align 8, !tbaa !23
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
end_hunk_4
begin_hunk_5_@_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_:bb.a
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #49
  unreachable

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31: ; preds = %bb.o, %bb.p
  resume { ptr, i32 } %.pn17
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4json6object16reindex_relocateEPNS0_14key_value_pairES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !146  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !142
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !147
  %i.j = and i64 %i.g, 4294967288                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.j ; 3 uses
  %i.l = mul i64 %i.g, -4132994306676758123
  %i.m = xor i64 %i.l, %i.i                       ; 3 uses
  %.not55.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not55.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.n = add nsw i64 %i.g, -8                     ; 2 uses
  %i.o = and i64 %i.n, 8
  %lcmp.mod.not.not = icmp eq i64 %i.o, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %.0.copyload.i.i.i.prol = load i64, ptr %i.d, align 1, !tbaa !19
  %i.p = mul i64 %.0.copyload.i.i.i.prol, -4132994306676758123 ; 2 uses
  %i.q = lshr i64 %i.p, 47
  %i.r = xor i64 %i.q, %i.p
  %i.s = mul i64 %i.r, -4132994306676758123
  %i.t = xor i64 %i.s, %i.m
  %i.u = mul i64 %i.t, -4132994306676758123       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %i.m, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %.05456.i.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %i.w = icmp ult i64 %i.n, 8
  br i1 %i.w, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.057.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.05456.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.05456.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.0.copyload.i.i.i = load i64, ptr %.05456.i.i.i, align 1, !tbaa !19
  %i.x = mul i64 %.0.copyload.i.i.i, -4132994306676758123 ; 2 uses
  %i.y = lshr i64 %i.x, 47
  %i.z = xor i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, -4132994306676758123
  %i.ab = xor i64 %i.aa, %.057.i.i.i
  %i.ac = mul i64 %i.ab, -4132994306676758123
  %i.ad = getelementptr inbounds nuw i8, ptr %.05456.i.i.i, i64 8
  %.0.copyload.i.i.i.1 = load i64, ptr %i.ad, align 1, !tbaa !19
  %i.ae = mul i64 %.0.copyload.i.i.i.1, -4132994306676758123 ; 2 uses
  %i.af = lshr i64 %i.ae, 47
  %i.ag = xor i64 %i.af, %i.ae
  %i.ah = mul i64 %i.ag, -4132994306676758123
  %i.ai = xor i64 %i.ah, %i.ac
  %i.aj = mul i64 %i.ai, -4132994306676758123     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05456.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.1 = icmp eq ptr %i.ak, %i.k
  br i1 %.not.i.i.i.1, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !148

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.a
  %.054.lcssa.i.i.i = phi ptr [ %i.d, %bb.a ], [ %i.k, %.lr.ph.i.i.i ], [ %i.k, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %.0.lcssa.i.i.i = phi i64 [ %i.m, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ] ; 8 uses
  %i.al = and i64 %i.g, 7
  switch i64 %i.al, label %default.unreachable [
    i64 7, label %bb.b
    i64 6, label %bb.c
    i64 5, label %bb.d
    i64 4, label %bb.e
    i64 3, label %bb.f
    i64 2, label %bb.g
    i64 1, label %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i
    i64 0, label %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i, i64 6
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19
  %i.ao = sext i8 %i.an to i64
  %i.ap = shl nsw i64 %i.ao, 48
  %i.aq = xor i64 %i.ap, %.0.lcssa.i.i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.aq, %bb.b ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i, i64 5
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !19
  %i.at = sext i8 %i.as to i64
  %i.au = shl nsw i64 %i.at, 40
  %i.av = xor i64 %i.au, %.1.i.i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i
  %.2.i.i.i = phi i64 [ %i.av, %bb.c ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !19
  %i.ay = sext i8 %i.ax to i64
  %i.az = shl nsw i64 %i.ay, 32
  %i.ba = xor i64 %i.az, %.2.i.i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.3.i.i.i = phi i64 [ %i.ba, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i, i64 3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !19
  %i.bd = sext i8 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 24
  %i.bf = xor i64 %i.be, %.3.i.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i
  %.4.i.i.i = phi i64 [ %i.bf, %bb.e ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !19
  %i.bi = sext i8 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 16
  %i.bk = xor i64 %i.bj, %.4.i.i.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %.5.i.i.i = phi i64 [ %i.bk, %bb.f ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.054.lcssa.i.i.i, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !19
  %i.bn = sext i8 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 8
  %i.bp = xor i64 %i.bo, %.5.i.i.i
  br label %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i

_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i: ; preds = %bb.g, %._crit_edge.i.i.i
  %.6.i.i.i = phi i64 [ %i.bp, %bb.g ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.bq = load i8, ptr %.054.lcssa.i.i.i, align 1, !tbaa !19
  %i.br = sext i8 %i.bq to i64
  %i.bs = xor i64 %.6.i.i.i, %i.br
  %i.bt = mul i64 %i.bs, -4132994306676758123
  br label %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit

default.unreachable:                              ; preds = %._crit_edge.i.i.i
  unreachable

_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit: ; preds = %._crit_edge.i.i.i, %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i
  %.7.i.i.i = phi i64 [ %i.bt, %_ZSt4nextIPKcET_S2_NSt15iterator_traitsIS2_E15difference_typeE.exit.i.i.i ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.bu = lshr i64 %.7.i.i.i, 47
  %i.bv = xor i64 %i.bu, %.7.i.i.i
  %i.bw = mul i64 %i.bv, -4132994306676758123     ; 2 uses
  %i.bx = lshr i64 %i.bw, 47
  %i.by = xor i64 %i.bx, %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !139
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = urem i64 %i.by, %i.cb
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ce ; 4 uses
  %i.cg = ptrtoint ptr %1 to i64
  %i.ch = ptrtoint ptr %i.cc to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = sdiv exact i64 %i.ci, 40
  %i.ck = trunc i64 %i.cj to i32                  ; 2 uses
  %i.cl = load i32, ptr %i.cf, align 4, !tbaa !149 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, %i.ck
  br i1 %i.cm, label %bb.h, label %.preheader.i

bb.h:                                             ; preds = %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !149
  store i32 %i.co, ptr %i.cf, align 4, !tbaa !149
  br label %_ZN5boost4json6object6removeERjRNS0_14key_value_pairE.exit

.preheader.i:                                     ; preds = %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit, %.preheader.i
  %.pn14.in.i = phi i32 [ %i.cp, %.preheader.i ], [ %i.cl, %_ZN5boost4json6object5table6bucketENS_4core17basic_string_viewIcEE.exit ]
  %.pn14.i = zext i32 %.pn14.in.i to i64
  %.pn.i = getelementptr inbounds nuw [40 x i8], ptr %i.cc, i64 %.pn14.i ; 2 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 36
  %i.cp = load i32, ptr %.0.i, align 4, !tbaa !149 ; 2 uses
  %.not.i = icmp eq i32 %i.cp, %i.ck
  br i1 %.not.i, label %bb.i, label %.preheader.i, !llvm.loop !200

bb.i:                                             ; preds = %.preheader.i
  %.0.i.le = getelementptr inbounds nuw i8, ptr %.pn.i, i64 36
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !149
  store i32 %i.cr, ptr %.0.i.le, align 4, !tbaa !149
  br label %_ZN5boost4json6object6removeERjRNS0_14key_value_pairE.exit

_ZN5boost4json6object6removeERjRNS0_14key_value_pairE.exit: ; preds = %bb.h, %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.cs = load i32, ptr %i.cf, align 4, !tbaa !149
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !149
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = ptrtoint ptr %2 to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = sdiv exact i64 %i.cy, 40
  %i.da = trunc i64 %i.cz to i32
  store i32 %i.da, ptr %i.cf, align 4, !tbaa !149
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN5boost4json6object12emplace_implIJRNS_4core17basic_string_viewIcEEDnEEESt4pairIPNS0_14key_value_pairEbES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::json::key_value_pair", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !141
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { ptr, i64 } @_ZN5boost4json6detail14find_in_objectINS_4core17basic_string_viewIcEEEESt4pairIPNS0_14key_value_pairEmERKNS0_6objectET_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) #47 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.ad

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.7.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %.sroa.03.0.copyload = load ptr, ptr %3, align 8, !tbaa !176
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !15 ; 9 uses
  %i.h = load i64, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.d, label %_ZN5boost4json11storage_ptrD2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = and i64 %i.h, -4
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZN5boost4json11storage_ptrD2Ev.exit.i

_ZN5boost4json11storage_ptrD2Ev.exit.i:           ; preds = %bb.d, %bb.c
  store i64 %i.h, ptr %5, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i8 0, ptr %i.n, align 8, !tbaa !73
  %i.o = icmp ugt i64 %.sroa.2.0.copyload, 2147483646
  br i1 %i.o, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost4json11storage_ptrD2Ev.exit.i
  invoke void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 12, ptr noundef nonnull @_ZZN5boost4json14key_value_pairC1IJDnRNS0_11storage_ptrEEEENS_4core17basic_string_viewIcEEDpOT_E3loc) #48
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZN5boost4json11storage_ptrD2Ev.exit.i
  %.not.i.i.i = icmp eq i64 %i.h, 0
  %i.q = and i64 %i.h, -4
  %i.r = inttoptr i64 %i.q to ptr
  %.0.i.i.i = select i1 %.not.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.r ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.2.0.copyload, 1
  %i.t = load ptr, ptr %.0.i.i.i, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, i64 noundef %i.s, i64 noundef 1)
          to label %_ZN5boost4json14key_value_pairC2IJDnRNS0_11storage_ptrEEEENS_4core17basic_string_viewIcEEDpOT_.exit unwind label %bb.i, !inline_history !25 ; 8 uses

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

common.resume:                                    ; preds = %bb.w, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.j ], [ %i.dy, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.x, %bb.i ]
  call void @_ZN5boost4json5valueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %5) #47
  br label %common.resume

_ZN5boost4json14key_value_pairC2IJDnRNS0_11storage_ptrEEEENS_4core17basic_string_viewIcEEDpOT_.exit: ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %.sroa.03.0.copyload, i64 %.sroa.2.0.copyload, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.2.0.copyload
  store i8 0, ptr %i.y, align 1, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  store ptr %i.w, ptr %i.z, align 8, !tbaa !146
  %i.aa = trunc nuw nsw i64 %.sroa.2.0.copyload to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 6 uses
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !142
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !136 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !139 ; 3 uses
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !141 ; 2 uses
  %.not.i.not = icmp ult i32 %i.af, %i.ae
  br i1 %.not.i.not, label %_ZN5boost4json6object7reserveEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost4json14key_value_pairC2IJDnRNS0_11storage_ptrEEEENS_4core17basic_string_viewIcEEDpOT_.exit
  %i.ag = zext i32 %i.af to i64
  %i.ah = add nuw nsw i64 %i.ag, 1
  %i.ai = invoke noundef ptr @_ZN5boost4json6object12reserve_implEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ah)
          to label %.noexc unwind label %bb.w     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !139 ; 4 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN5boost4json6object7reserveEm.exit, label %bb.l

bb.l:                                             ; preds = %.noexc
  %i.am = icmp ult i32 %i.ak, 19
  %i.an = load i64, ptr %0, align 8, !tbaa !21    ; 2 uses
  %.not.i.i8.i.i = icmp eq i64 %i.an, 0
  %i.ao = and i64 %i.an, -4
  %i.ap = inttoptr i64 %i.ao to ptr
  %.0.i.i9.i.i = select i1 %.not.i.i8.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.ap ; 2 uses
  %i.aq = load ptr, ptr %.0.i.i9.i.i, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  br i1 %i.am, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = zext i32 %i.ak to i64
  %i.au = mul nuw nsw i64 %i.at, 44
  %i.av = add nuw nsw i64 %i.au, 16
  br label %.invoke.i.i

bb.n:                                             ; preds = %bb.l
  %narrow.i.i = mul nuw nsw i32 %i.ak, 40
  %narrow11.i.i = add nuw nsw i32 %narrow.i.i, 16
  %i.aw = zext nneg i32 %narrow11.i.i to i64
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.n, %bb.m
  %i.ax = phi i64 [ %i.aw, %bb.n ], [ %i.av, %bb.m ]
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i9.i.i, ptr noundef nonnull %i.ai, i64 noundef %i.ax, i64 noundef 16)
          to label %_ZN5boost4json6object7reserveEm.exit unwind label %bb.o, !inline_history !38

bb.o:                                             ; preds = %.invoke.i.i
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #49
  unreachable

_ZN5boost4json6object7reserveEm.exit:             ; preds = %.invoke.i.i, %.noexc, %_ZN5boost4json14key_value_pairC2IJDnRNS0_11storage_ptrEEEENS_4core17basic_string_viewIcEEDpOT_.exit
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !136 ; 4 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !141 ; 3 uses
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !139 ; 3 uses
  %i.bf = icmp ult i32 %i.be, 19
  %or.cond.not32 = select i1 %i.bc, i1 true, i1 %i.bf
  %.not9 = icmp eq i32 %i.be, %i.ae
  %or.cond29 = select i1 %or.cond.not32, i1 %.not9, i1 false
  br i1 %or.cond29, label %bb.x, label %bb.p

bb.p:                                             ; preds = %_ZN5boost4json6object7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !147
  %i.bi = and i64 %.sroa.2.0.copyload, 2147483640 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bi ; 3 uses
  %i.bk = mul i64 %.sroa.2.0.copyload, -4132994306676758123
  %i.bl = xor i64 %i.bh, %i.bk                    ; 3 uses
  %.not55.i = icmp eq i64 %i.bi, 0
  br i1 %.not55.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.p
  %i.bm = add nsw i64 %.sroa.2.0.copyload, -8     ; 2 uses
  %i.bn = and i64 %i.bm, 8
  %lcmp.mod.not.not = icmp eq i64 %i.bn, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.0.copyload.i.prol = load i64, ptr %i.w, align 1, !tbaa !19
  %i.bo = mul i64 %.0.copyload.i.prol, -4132994306676758123 ; 2 uses
  %i.bp = lshr i64 %i.bo, 47
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = mul i64 %i.bq, -4132994306676758123
  %i.bs = xor i64 %i.br, %i.bl
  %i.bt = mul i64 %i.bs, -4132994306676758123     ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.bt, %.lr.ph.i.prol ]
  %.057.i.unr = phi i64 [ %i.bl, %.lr.ph.i.preheader ], [ %i.bt, %.lr.ph.i.prol ]
  %.05456.i.unr = phi ptr [ %i.w, %.lr.ph.i.preheader ], [ %i.bu, %.lr.ph.i.prol ]
end_hunk_5
begin_hunk_6_@_ZN5boost4json6detail8charconv6detail10fast_float8long_mulILt62EEEbRNS4_8stackvecIXT_EEENS4_4spanImEE:bb.a
  %unroll_iter123 = and i64 %i.aw, 65534
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i37.us.new
  %.016.i38.us = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %i.bq, %bb.l ] ; 3 uses
  %.01215.i39.us = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %i.bo, %bb.l ]
  %niter124 = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %niter124.next.1, %bb.l ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !15
  %i.bb = zext i64 %i.ba to i128
  %i.bc = mul nuw i128 %i.bb, %i.ax
  %i.bd = zext i64 %.01215.i39.us to i128
  %i.be = add nuw i128 %i.bc, %i.bd               ; 2 uses
  %i.bf = lshr i128 %i.be, 64
  %i.bg = trunc i128 %i.be to i64
  store i64 %i.bg, ptr %i.az, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !15
  %i.bk = zext i64 %i.bj to i128
  %i.bl = mul nuw i128 %i.bk, %i.ax
  %i.bm = add nuw i128 %i.bl, %i.bf               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64                     ; 2 uses
  %i.bo = trunc nuw i128 %i.bn to i64             ; 3 uses
  %i.bp = trunc i128 %i.bm to i64
  store i64 %i.bp, ptr %i.bi, align 8, !tbaa !15
  %i.bq = add nuw nsw i64 %.016.i38.us, 2         ; 2 uses
  %niter124.next.1 = add i64 %niter124, 2         ; 2 uses
  %niter124.ncmp.1 = icmp eq i64 %niter124.next.1, %unroll_iter123
  br i1 %niter124.ncmp.1, label %._crit_edge.i41.us.unr-lcssa, label %bb.l, !llvm.loop !994

._crit_edge.i41.us.unr-lcssa:                     ; preds = %bb.l
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %._crit_edge.i41.us, label %.epil.preheader117

.epil.preheader117:                               ; preds = %._crit_edge.i41.us.unr-lcssa, %.lr.ph.i37.us
  %.016.i38.us.epil.init = phi i64 [ 0, %.lr.ph.i37.us ], [ %i.bq, %._crit_edge.i41.us.unr-lcssa ]
  %.01215.i39.us.epil.init = phi i64 [ 0, %.lr.ph.i37.us ], [ %i.bo, %._crit_edge.i41.us.unr-lcssa ]
  %lcmp.mod122 = trunc i16 %i.av to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us.epil.init ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !15
  %i.bt = zext i64 %i.bs to i128
  %i.bu = mul nuw i128 %i.bt, %i.ax
  %i.bv = zext i64 %.01215.i39.us.epil.init to i128
  %i.bw = add nuw i128 %i.bu, %i.bv               ; 2 uses
  %i.bx = lshr i128 %i.bw, 64                     ; 2 uses
  %i.by = trunc nuw i128 %i.bx to i64
  %i.bz = trunc i128 %i.bw to i64
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !15
  br label %._crit_edge.i41.us

._crit_edge.i41.us:                               ; preds = %._crit_edge.i41.us.unr-lcssa, %.epil.preheader117
  %.lcssa108 = phi i128 [ %i.bn, %._crit_edge.i41.us.unr-lcssa ], [ %i.bx, %.epil.preheader117 ]
  %.lcssa = phi i64 [ %i.bo, %._crit_edge.i41.us.unr-lcssa ], [ %i.by, %.epil.preheader117 ]
  %.not.i42.us = icmp eq i128 %.lcssa108, 0
  br i1 %.not.i42.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i41.us
  %i.ca = icmp ult i16 %i.av, 62
  br i1 %i.ca, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_extendENS4_4spanImEE.exit

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us: ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aw
  store i64 %.lcssa, ptr %i.cb, align 8, !tbaa !15
  %i.cc = add nuw nsw i16 %i.av, 1
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, %._crit_edge.i41.us, %bb.k
  %i.cd = phi i16 [ %i.cc, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us ], [ %i.av, %._crit_edge.i41.us ], [ 0, %bb.k ] ; 2 uses
  %i.ce = zext i16 %i.cd to i64                   ; 4 uses
  %i.cf = zext i16 %i.ar to i64                   ; 5 uses
  %i.cg = icmp ugt i64 %.02769.us, %i.cf
  %i.ch = sub nsw i64 %i.cf, %.02769.us
  %i.ci = icmp ult i64 %i.ch, %i.ce
  %or.cond.i.us = select i1 %i.cg, i1 true, i1 %i.ci
  br i1 %or.cond.i.us, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cj = add i64 %.02769.us, %i.ce               ; 4 uses
  %i.ck = icmp ult i64 %i.cj, 63
  br i1 %i.ck, label %bb.p, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_extendENS4_4spanImEE.exit

bb.p:                                             ; preds = %bb.o
  %i.cl = icmp samesign ugt i64 %i.cj, %i.cf
  br i1 %i.cl, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us: ; preds = %bb.p
  %i.cm = getelementptr [8 x i8], ptr %0, i64 %i.cf
  %i.cn = sub nuw nsw i64 %i.cj, %i.cf
  %i.co = shl nuw nsw i64 %i.cn, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cm, i8 0, i64 %i.co, i1 false), !tbaa !15
  br label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us: ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, %bb.p
  %storemerge.i.i.i.us = trunc nuw nsw i64 %i.cj to i16 ; 2 uses
  store i16 %storemerge.i.i.i.us, ptr %i.a, align 8, !tbaa !991
  br label %bb.q

bb.q:                                             ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us, %bb.n
  %i.cp = phi i16 [ %i.ar, %bb.n ], [ %storemerge.i.i.i.us, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us ] ; 6 uses
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %0, i64 %.02769.us
  %.not.i46.us = icmp eq i16 %i.cd, 0
  br i1 %.not.i46.us, label %.critedge.us, label %.lr.ph.i47.us

.lr.ph.i47.us:                                    ; preds = %bb.q, %bb.s
  %.02335.i.us = phi i64 [ %i.da, %bb.s ], [ 0, %bb.q ] ; 3 uses
  %.02434.i.us = phi i1 [ %.031.in.i.us, %bb.s ], [ false, %bb.q ]
  %gep.i.us = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %.02335.i.us ; 2 uses
  %i.cq = load i64, ptr %gep.i.us, align 8, !tbaa !15
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.02335.i.us
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !15
  %i.ct = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cq, i64 %i.cs) ; 2 uses
  %i.cu = extractvalue { i64, i1 } %i.ct, 1       ; 2 uses
  %i.cv = extractvalue { i64, i1 } %i.ct, 0       ; 2 uses
  br i1 %.02434.i.us, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i47.us
  %i.cw = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cv, i64 1) ; 2 uses
  %i.cx = extractvalue { i64, i1 } %i.cw, 1
  %i.cy = extractvalue { i64, i1 } %i.cw, 0
  %i.cz = or i1 %i.cu, %i.cx
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i47.us
  %.031.in.i.us = phi i1 [ %i.cz, %bb.r ], [ %i.cu, %.lr.ph.i47.us ] ; 2 uses
  %.0.i.us = phi i64 [ %i.cy, %bb.r ], [ %i.cv, %.lr.ph.i47.us ]
  store i64 %.0.i.us, ptr %gep.i.us, align 8, !tbaa !15
  %i.da = add nuw nsw i64 %.02335.i.us, 1         ; 2 uses
  %exitcond.not.i48.us = icmp eq i64 %i.da, %i.ce
  br i1 %exitcond.not.i48.us, label %._crit_edge.i49.us, label %.lr.ph.i47.us, !llvm.loop !1014

._crit_edge.i49.us:                               ; preds = %bb.s
  br i1 %.031.in.i.us, label %bb.t, label %.critedge.us

bb.t:                                             ; preds = %._crit_edge.i49.us
  %i.db = add i64 %.02769.us, %i.ce               ; 3 uses
  %i.dc = zext i16 %i.cp to i64                   ; 3 uses
  %umax.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.db, i64 %i.dc)
  %exitcond.not.i.i.us105.not = icmp ult i64 %i.db, %i.dc
  br i1 %exitcond.not.i.i.us105.not, label %.lr.ph107, label %.critedge.i.i.us

bb.u:                                             ; preds = %.lr.ph107
  %i.dd = add i64 %.01421.i.i.us106, 1            ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.dd, %umax.i.i.us
  br i1 %exitcond.not.i.i.us, label %.critedge.i.i.us, label %.lr.ph107, !llvm.loop !1015

.lr.ph107:                                        ; preds = %bb.t, %bb.u
  %.01421.i.i.us106 = phi i64 [ %i.dd, %bb.u ], [ %i.db, %bb.t ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i.us106 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !15
  %i.dg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.df, i64 1) ; 2 uses
  %i.dh = extractvalue { i64, i1 } %i.dg, 1
  %i.di = extractvalue { i64, i1 } %i.dg, 0
  store i64 %i.di, ptr %i.de, align 8, !tbaa !15
  br i1 %i.dh, label %bb.u, label %.critedge.us, !llvm.loop !1015

.critedge.i.i.us:                                 ; preds = %bb.u, %bb.t
  %i.dj = icmp ult i16 %i.cp, 62
  br i1 %i.dj, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_extendENS4_4spanImEE.exit

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us: ; preds = %.critedge.i.i.us
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dc
  store i64 1, ptr %i.dk, align 8, !tbaa !15
  %i.dl = add nuw nsw i16 %i.cp, 1                ; 2 uses
  store i16 %i.dl, ptr %i.a, align 8, !tbaa !991
  br label %.critedge.us

.critedge.us:                                     ; preds = %.lr.ph107, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, %._crit_edge.i49.us, %bb.q, %.lr.ph.split.us
  %i.dm = phi i16 [ %i.ar, %.lr.ph.split.us ], [ %i.dl, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us ], [ %i.cp, %._crit_edge.i49.us ], [ %i.cp, %bb.q ], [ %i.cp, %.lr.ph107 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  %i.dn = add nuw i64 %.02769.us, 1               ; 2 uses
  %exitcond75.not = icmp eq i64 %i.dn, %2
  br i1 %exitcond75.not, label %.critedge34, label %.lr.ph.split.us, !llvm.loop !1016

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge
  %.02769 = phi i64 [ %i.dq, %.critedge ], [ 1, %.lr.ph ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02769
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  %.not29 = icmp eq i64 %i.dp, 0
  br i1 %.not29, label %.critedge, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_extendENS4_4spanImEE.exit

.critedge:                                        ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  %i.dq = add nuw i64 %.02769, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %2
  br i1 %exitcond.not, label %.critedge34, label %.lr.ph.split, !llvm.loop !1016

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_extendENS4_4spanImEE.exit: ; preds = %.lr.ph.split, %bb.m, %bb.o, %.critedge.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  br label %.critedge32

.critedge34:                                      ; preds = %.critedge, %.critedge.us, %_ZN5boost4json6detail8charconv6detail10fast_float9small_mulILt62EEEbRNS4_8stackvecIXT_EEEm.exit, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EEC2ENS4_4spanImEE.exit
  %.promoted.i = phi i16 [ %i.dm, %.critedge.us ], [ %i.b, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EEC2ENS4_4spanImEE.exit ], [ %i.ao, %_ZN5boost4json6detail8charconv6detail10fast_float9small_mulILt62EEEbRNS4_8stackvecIXT_EEEm.exit ], [ %i.ao, %.critedge ] ; 2 uses
  %.not1.i = icmp eq i16 %.promoted.i, 0
  br i1 %.not1.i, label %.critedge32, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.critedge34
  %i.dr = getelementptr i8, ptr %0, i64 -8
  %5 = zext i16 %.promoted.i to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i50
  %indvars.iv.i = phi i64 [ %5, %.lr.ph.i50 ], [ %indvars.iv.next.i, %bb.w ] ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %indvars.iv.i
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !15
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.w, label %.critedge32

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i16 ; 2 uses
  store i16 %indvars.i, ptr %i.a, align 8, !tbaa !991
  %.not.i51 = icmp eq i16 %indvars.i, 0
  br i1 %.not.i51, label %.critedge32, label %bb.v, !llvm.loop !1017

.critedge32:                                      ; preds = %bb.w, %bb.v, %bb.g, %.critedge34, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_extendENS4_4spanImEE.exit
  %.6 = phi i1 [ false, %bb.g ], [ false, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_extendENS4_4spanImEE.exit ], [ true, %.critedge34 ], [ true, %bb.v ], [ true, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.6
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost4json6detail8charconv6detail6parserImlEENS2_19from_chars_result_tIcEEPKcS8_RbRT_RT0_NS2_12chars_formatE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %5) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca [19 x i8], align 16               ; 15 uses
  %i.b = alloca [6 x i8], align 1                 ; 15 uses
  %i.c = icmp ugt ptr %0, %1
  %.4228.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br i1 %i.c, label %bb.ba, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !19
  switch i8 %i.d, label %bb.d [
    i8 45, label %bb.c
    i8 43, label %bb.ba
  ]

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 1, !tbaa !218
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %.preheader374

bb.d:                                             ; preds = %bb.b
  store i8 0, ptr %2, align 1, !tbaa !218
  br label %.preheader374

.preheader374:                                    ; preds = %bb.d, %bb.c
  %.1.ph = phi ptr [ %0, %bb.d ], [ %i.e, %bb.c ]
  br label %bb.e

bb.e:                                             ; preds = %.preheader374, %bb.e
  %.1 = phi ptr [ %i.j, %bb.e ], [ %.1.ph, %.preheader374 ] ; 7 uses
  %i.f = load i8, ptr %.1, align 1, !tbaa !19     ; 3 uses
  %i.g = icmp eq i8 %i.f, 48
  %i.h = icmp ne ptr %.1, %1
  %i.i = and i1 %i.h, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 5 uses
  br i1 %i.i, label %bb.e, label %bb.f, !llvm.loop !1018

bb.f:                                             ; preds = %bb.e
  %.not = icmp eq i32 %5, 4                       ; 6 uses
  %. = select i1 %.not, i32 112, i32 101          ; 2 uses
  %.248 = select i1 %.not, i32 80, i32 69
  %i.k = icmp eq ptr %.1, %1
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.248.neg = select i1 %.not, i32 -80, i32 -69
  %i.l = sext i8 %i.f to i32                      ; 2 uses
  %i.m = icmp eq i32 %., %i.l
  %i.n = icmp eq i32 %.248.neg, %i.l
  %or.cond250 = or i1 %i.m, %i.n
  br i1 %or.cond250, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  store i64 0, ptr %3, align 8, !tbaa !15
  store i64 0, ptr %4, align 8, !tbaa !15
  br label %bb.ba

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.a, i8 0, i64 19, i1 false)
  %_ZN5boost4json6detail8charconv6detail15is_integer_charEc._ZN5boost4json6detail8charconv6detail11is_hex_charEc = select i1 %.not, ptr @_ZN5boost4json6detail8charconv6detail11is_hex_charEc, ptr @_ZN5boost4json6detail8charconv6detail15is_integer_charEc ; 6 uses
  %i.o = select i1 %.not, i32 16, i32 10          ; 3 uses
  %i.p = tail call noundef zeroext i1 %_ZN5boost4json6detail8charconv6detail15is_integer_charEc._ZN5boost4json6detail8charconv6detail11is_hex_charEc(i8 noundef signext %i.f) #47, !callees !1019 ; 2 uses
  br i1 %i.p, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.q = load i8, ptr %.1, align 1, !tbaa !19
  store i8 %i.q, ptr %i.a, align 16, !tbaa !19
  %i.r = load i8, ptr %i.j, align 1, !tbaa !19
  %i.s = tail call noundef zeroext i1 %_ZN5boost4json6detail8charconv6detail15is_integer_charEc._ZN5boost4json6detail8charconv6detail11is_hex_charEc(i8 noundef signext %i.r) #47, !callees !1019
  %.not356 = icmp ne ptr %i.j, %1
  %or.cond.not = select i1 %i.s, i1 %.not356, i1 false
  br i1 %or.cond.not, label %.lr.ph337, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph337
  %i.t = icmp ne ptr %i.x, %1
  %i.u = icmp samesign ult i64 %.0224271336, 18
  %or.cond18 = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond18, label %.lr.ph337, label %.critedge, !llvm.loop !1020

.lr.ph337:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.0224271336 = phi i64 [ %i.y, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %.2273335 = phi ptr [ %i.x, %.lr.ph ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %i.v = load i8, ptr %.2273335, align 1, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0224271336
  store i8 %i.v, ptr %i.w, align 1, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %.2273335, i64 1 ; 5 uses
  %i.y = add nuw nsw i64 %.0224271336, 1          ; 3 uses
  %i.z = load i8, ptr %i.x, align 1, !tbaa !19
  %i.aa = tail call noundef zeroext i1 %_ZN5boost4json6detail8charconv6detail15is_integer_charEc._ZN5boost4json6detail8charconv6detail11is_hex_charEc(i8 noundef signext %i.z) #47, !callees !1019
  br i1 %i.aa, label %.lr.ph, label %..critedge.loopexit_crit_edge, !llvm.loop !1020

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph337
  br label %.critedge, !llvm.loop !1020

.critedge:                                        ; preds = %.lr.ph, %..critedge.loopexit_crit_edge, %.lr.ph.preheader, %bb.i
  %.0224.lcssa = phi i64 [ 0, %bb.i ], [ 1, %.lr.ph.preheader ], [ %i.y, %..critedge.loopexit_crit_edge ], [ %i.y, %.lr.ph ] ; 10 uses
  %.2.lcssa = phi ptr [ %.1, %bb.i ], [ %i.j, %.lr.ph.preheader ], [ %i.x, %..critedge.loopexit_crit_edge ], [ %i.x, %.lr.ph ] ; 6 uses
  %i.ab = icmp eq ptr %.2.lcssa, %1
  br i1 %i.ab, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.critedge
  %i.ac = icmp eq i32 %5, 1
  br i1 %i.ac, label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %4, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0224.lcssa
  %i.ae = call { ptr, i32 } @_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.o) #47
  %i.af = extractvalue { ptr, i32 } %i.ae, 1      ; 3 uses
  switch i32 %i.af, label %bb.m [
    i32 22, label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread
    i32 34, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  br label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread

bb.m:                                             ; preds = %bb.k
  br label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread

bb.n:                                             ; preds = %.critedge
  %i.ag = load i8, ptr %.2.lcssa, align 1, !tbaa !19
  %i.ah = icmp eq i8 %i.ag, 46                    ; 5 uses
  br i1 %i.ah, label %bb.o, label %.critedge3

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 1 ; 5 uses
  %.pre = load i8, ptr %i.ai, align 1, !tbaa !19  ; 3 uses
  br i1 %i.p, label %._crit_edge305, label %.preheader270

.preheader270:                                    ; preds = %bb.o
  %i.aj = icmp eq i8 %.pre, 48
  %i.ak = icmp ne ptr %i.ai, %1
  %i.al = and i1 %i.ak, %i.aj
  br i1 %i.al, label %.lr.ph282, label %._crit_edge

.lr.ph282:                                        ; preds = %.preheader270, %.lr.ph282
  %.3281 = phi ptr [ %i.am, %.lr.ph282 ], [ %i.ai, %.preheader270 ]
  %.0217280 = phi i64 [ %i.an, %.lr.ph282 ], [ 0, %.preheader270 ]
  %i.am = getelementptr inbounds nuw i8, ptr %.3281, i64 1 ; 4 uses
  %i.an = add nsw i64 %.0217280, -1               ; 2 uses
  %i.ao = load i8, ptr %i.am, align 1, !tbaa !19  ; 2 uses
  %i.ap = icmp eq i8 %i.ao, 48
  %i.aq = icmp ne ptr %i.am, %1
  %i.ar = and i1 %i.aq, %i.ap
  br i1 %i.ar, label %.lr.ph282, label %._crit_edge, !llvm.loop !1021

._crit_edge:                                      ; preds = %.lr.ph282, %.preheader270
  %i.as = phi i8 [ %.pre, %.preheader270 ], [ %i.ao, %.lr.ph282 ]
  %.0217.lcssa = phi i64 [ 0, %.preheader270 ], [ %i.an, %.lr.ph282 ]
  %.3.lcssa = phi ptr [ %i.ai, %.preheader270 ], [ %i.am, %.lr.ph282 ] ; 2 uses
  %i.at = icmp eq ptr %.3.lcssa, %1
  br i1 %i.at, label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread, label %._crit_edge305

._crit_edge305:                                   ; preds = %bb.o, %._crit_edge
  %i.au = phi i8 [ %i.as, %._crit_edge ], [ %.pre, %bb.o ]
  %.1218 = phi i64 [ %.0217.lcssa, %._crit_edge ], [ 0, %bb.o ] ; 4 uses
  %.4 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %i.ai, %bb.o ] ; 4 uses
  %i.av = tail call noundef zeroext i1 %_ZN5boost4json6detail8charconv6detail15is_integer_charEc._ZN5boost4json6detail8charconv6detail11is_hex_charEc(i8 noundef signext %i.au) #47, !callees !1019
  br i1 %i.av, label %.lr.ph288.preheader, label %.critedge3

.lr.ph288.preheader:                              ; preds = %._crit_edge305
  %i.aw = icmp ne ptr %.4, %1
  %i.ax = icmp samesign ult i64 %.0224.lcssa, 19
  %or.cond20341 = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond20341, label %.lr.ph344, label %.critedge3

.lr.ph288:                                        ; preds = %.lr.ph344
  %i.ay = icmp ne ptr %i.bc, %1
  %i.az = icmp ult i64 %.1225285343, 18
  %or.cond20 = and i1 %i.ay, %i.az
  br i1 %or.cond20, label %.lr.ph344, label %.critedge3, !llvm.loop !1022

.lr.ph344:                                        ; preds = %.lr.ph288.preheader, %.lr.ph288
  %.1225285343 = phi i64 [ %i.bd, %.lr.ph288 ], [ %.0224.lcssa, %.lr.ph288.preheader ] ; 3 uses
  %.5286342 = phi ptr [ %i.bc, %.lr.ph288 ], [ %.4, %.lr.ph288.preheader ] ; 2 uses
  %i.ba = load i8, ptr %.5286342, align 1, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1225285343
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %.5286342, i64 1 ; 5 uses
  %i.bd = add nuw nsw i64 %.1225285343, 1         ; 3 uses
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !19
  %i.bf = tail call noundef zeroext i1 %_ZN5boost4json6detail8charconv6detail15is_integer_charEc._ZN5boost4json6detail8charconv6detail11is_hex_charEc(i8 noundef signext %i.be) #47, !callees !1019
  br i1 %i.bf, label %.lr.ph288, label %..critedge3.loopexit_crit_edge, !llvm.loop !1022

..critedge3.loopexit_crit_edge:                   ; preds = %.lr.ph344
  br label %.critedge3, !llvm.loop !1022

.critedge3:                                       ; preds = %.lr.ph288, %.lr.ph288.preheader, %..critedge3.loopexit_crit_edge, %._crit_edge305, %bb.n
  %.2226 = phi i64 [ %.0224.lcssa, %bb.n ], [ %.0224.lcssa, %._crit_edge305 ], [ %.0224.lcssa, %.lr.ph288.preheader ], [ %i.bd, %..critedge3.loopexit_crit_edge ], [ %i.bd, %.lr.ph288 ] ; 11 uses
end_hunk_6
