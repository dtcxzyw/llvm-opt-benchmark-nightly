inline.NumInlined: 7222
inline.NumDeleted: 1430
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 62
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost4json5arrayC2EOS1_NS0_11storage_ptrE:bb.a
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost4json5array16revert_constructD2Ev.exit, %bb.c, %_ZN5boost9container3pmreqERKNS1_15memory_resourceES4_.exit.thread
  ret void

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %_ZN5boost4json11storage_ptrC2ERKS1_.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load i64, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.bl = trunc i64 %i.bk to i1
  br i1 %i.bl, label %bb.p, label %_ZN5boost4json11storage_ptrD2Ev.exit20

bb.p:                                             ; preds = %bb.o
  %i.bm = and i64 %i.bk, -4                       ; 2 uses
  %i.bn = inttoptr i64 %i.bm to ptr               ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = atomicrmw sub ptr %i.bo, i64 1 acq_rel, align 8
  %i.bq = icmp ne i64 %i.bp, 1
  %i.br = icmp eq i64 %i.bm, 0
  %or.cond.i.i19 = or i1 %i.br, %i.bq
  br i1 %or.cond.i.i19, label %_ZN5boost4json11storage_ptrD2Ev.exit20, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #47, !inline_history !67
  br label %_ZN5boost4json11storage_ptrD2Ev.exit20

_ZN5boost4json11storage_ptrD2Ev.exit20:           ; preds = %bb.o, %bb.p, %bb.q
  call void @_ZN5boost4json5array16revert_constructD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  br label %bb.r

bb.r:                                             ; preds = %_ZN5boost4json11storage_ptrD2Ev.exit20, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bj, %_ZN5boost4json11storage_ptrD2Ev.exit20 ], [ %i.bi, %bb.n ]
  %i.bv = load i64, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.bw = trunc i64 %i.bv to i1
  br i1 %i.bw, label %bb.s, label %_ZN5boost4json11storage_ptrD2Ev.exit22

bb.s:                                             ; preds = %bb.r
  %i.bx = and i64 %i.bv, -4                       ; 2 uses
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 acq_rel, align 8
  %i.cb = icmp ne i64 %i.ca, 1
  %i.cc = icmp eq i64 %i.bx, 0
  %or.cond.i.i21 = or i1 %i.cc, %i.cb
  br i1 %or.cond.i.i21, label %_ZN5boost4json11storage_ptrD2Ev.exit22, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = load ptr, ptr %i.by, align 8, !tbaa !23
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #47, !inline_history !67
  br label %_ZN5boost4json11storage_ptrD2Ev.exit22

_ZN5boost4json11storage_ptrD2Ev.exit22:           ; preds = %bb.r, %bb.s, %bb.t
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost4json5arrayC2ESt16initializer_listINS0_9value_refEENS0_11storage_ptrE(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 9)) %0, ptr nofree readonly captures(address) %1, i64 %2, ptr nofree noundef align 8 captures(none) %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::json::storage_ptr", align 8 ; 6 uses
  %5 = alloca %"class.boost::json::array::revert_construct", align 8 ; 5 uses
  %i.a = load i64, ptr %3, align 8, !tbaa !15     ; 3 uses
  store i64 0, ptr %3, align 8, !tbaa !15
  store i64 %i.a, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 6, ptr %i.b, align 8, !tbaa !63
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN5boost4json5array6empty_E, ptr %i.d, align 8, !tbaa !43
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, 2147483646
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 11, ptr noundef nonnull @_ZZN5boost4json5array5table8allocateEmRKNS0_11storage_ptrEE3loc) #48
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i64 %i.a, 0
  %i.f = and i64 %i.a, -4
  %i.g = inttoptr i64 %i.f to ptr
  %.0.i.i.i = select i1 %.not.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.g ; 2 uses
  %i.h = mul nuw nsw i64 %2, 24
  %i.i = add nuw nsw i64 %i.h, 8
  %i.j = load ptr, ptr %.0.i.i.i, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, i64 noundef %i.i, i64 noundef 8)
          to label %bb.f unwind label %bb.o, !inline_history !65 ; 5 uses

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw nsw i64 %2 to i32              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.n, ptr %i.o, align 4, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.p, align 8, !tbaa !43
  store i32 0, ptr %i.m, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  store ptr %0, ptr %5, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.idx.i = mul nuw nsw i64 %2, 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %_ZN5boost4json11storage_ptrD2Ev.exit.i
  %.030.i = phi ptr [ %i.ai, %_ZN5boost4json11storage_ptrD2Ev.exit.i ], [ %1, %bb.f ] ; 2 uses
  %.sroa.8.029.i.idx = phi i64 [ %.sroa.8.029.i.add, %_ZN5boost4json11storage_ptrD2Ev.exit.i ], [ 8, %bb.f ] ; 4 uses
  %.sroa.8.029.i.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.8.029.i.idx
  %i.r = load i64, ptr %0, align 8, !tbaa !21     ; 3 uses
  store i64 %i.r, ptr %4, align 8, !tbaa !21
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %bb.g, label %_ZN5boost4json11storage_ptrC2ERKS1_.exit.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.t = and i64 %i.r, -4
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = atomicrmw add ptr %i.v, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZN5boost4json11storage_ptrC2ERKS1_.exit.i

_ZN5boost4json11storage_ptrC2ERKS1_.exit.i:       ; preds = %bb.g, %.lr.ph.i
  invoke void @_ZNK5boost4json9value_ref10make_valueENS0_11storage_ptrE(ptr dead_on_unwind nonnull writable sret(%"class.boost::json::value") align 8 %.sroa.8.029.i.ptr.ptr, ptr noundef nonnull align 8 dereferenceable(36) %.030.i, ptr noundef nonnull align 8 %4)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZN5boost4json11storage_ptrC2ERKS1_.exit.i
  %i.x = load i64, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %bb.i, label %_ZN5boost4json11storage_ptrD2Ev.exit.i

bb.i:                                             ; preds = %bb.h
  %i.z = and i64 %i.x, -4                         ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 acq_rel, align 8
  %i.ad = icmp ne i64 %i.ac, 1
  %i.ae = icmp eq i64 %i.z, 0
  %or.cond.i.i.i = or i1 %i.ae, %i.ad
  br i1 %or.cond.i.i.i, label %_ZN5boost4json11storage_ptrD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #47, !inline_history !79
  br label %_ZN5boost4json11storage_ptrD2Ev.exit.i

_ZN5boost4json11storage_ptrD2Ev.exit.i:           ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.8.029.i.add = add nuw nsw i64 %.sroa.8.029.i.idx, 24
  %i.ai = getelementptr inbounds nuw i8, ptr %.030.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, %i.q
  br i1 %.not.i, label %_ZN5boost4json5array16revert_constructD2Ev.exit, label %.lr.ph.i

bb.k:                                             ; preds = %_ZN5boost4json11storage_ptrC2ERKS1_.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load i64, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.al = trunc i64 %i.ak to i1
  br i1 %i.al, label %bb.l, label %_ZN5boost4json11storage_ptrD2Ev.exit12.i

bb.l:                                             ; preds = %bb.k
  %i.am = and i64 %i.ak, -4                       ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 acq_rel, align 8
  %i.aq = icmp ne i64 %i.ap, 1
  %i.ar = icmp eq i64 %i.am, 0
  %or.cond.i.i11.i = or i1 %i.ar, %i.aq
  br i1 %or.cond.i.i11.i, label %_ZN5boost4json11storage_ptrD2Ev.exit12.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #47, !inline_history !79
  br label %_ZN5boost4json11storage_ptrD2Ev.exit12.i

_ZN5boost4json11storage_ptrD2Ev.exit12.i:         ; preds = %bb.m, %bb.l, %bb.k
  %i.av = icmp samesign ugt i64 %.sroa.8.029.i.idx, 8
  br i1 %i.av, label %.lr.ph.i15.i, label %.body

.lr.ph.i15.i:                                     ; preds = %_ZN5boost4json11storage_ptrD2Ev.exit12.i, %.lr.ph.i15.i
  %.idx = phi i64 [ %.add, %.lr.ph.i15.i ], [ %.sroa.8.029.i.idx, %_ZN5boost4json11storage_ptrD2Ev.exit12.i ] ; 2 uses
  %.add = add nuw nsw i64 %.idx, -24              ; 2 uses
  %.ptr11 = getelementptr inbounds i8, ptr %i.m, i64 %.add
  tail call void @_ZN5boost4json5valueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.ptr11) #47
  %i.aw = icmp sgt i64 %.idx, 32
  br i1 %i.aw, label %.lr.ph.i15.i, label %.body, !llvm.loop !80

_ZN5boost4json5array16revert_constructD2Ev.exit:  ; preds = %_ZN5boost4json11storage_ptrD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !43
  store i32 %i.n, ptr %i.ax, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost4json5array16revert_constructD2Ev.exit, %bb.b
  ret void

bb.o:                                             ; preds = %bb.e, %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.body:                                            ; preds = %.lr.ph.i15.i, %_ZN5boost4json11storage_ptrD2Ev.exit12.i
  call void @_ZN5boost4json5array16revert_constructD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.o
  %.pn = phi { ptr, i32 } [ %i.aj, %.body ], [ %i.ay, %bb.o ]
  %i.az = load i64, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.ba = trunc i64 %i.az to i1
  br i1 %i.ba, label %bb.q, label %_ZN5boost4json11storage_ptrD2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.bb = and i64 %i.az, -4                       ; 2 uses
  %i.bc = inttoptr i64 %i.bb to ptr               ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = atomicrmw sub ptr %i.bd, i64 1 acq_rel, align 8
  %i.bf = icmp ne i64 %i.be, 1
  %i.bg = icmp eq i64 %i.bb, 0
  %or.cond.i.i = or i1 %i.bg, %i.bf
  br i1 %or.cond.i.i, label %_ZN5boost4json11storage_ptrD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #47, !inline_history !67
  br label %_ZN5boost4json11storage_ptrD2Ev.exit

_ZN5boost4json11storage_ptrD2Ev.exit:             ; preds = %bb.p, %bb.q, %bb.r
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost4json9value_ref11write_arrayEPNS0_5valueESt16initializer_listIS1_ERKNS0_11storage_ptrE(ptr noundef %0, ptr nofree readonly captures(address) %1, i64 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::json::storage_ptr", align 8 ; 4 uses
  %.idx = mul nuw nsw i64 %2, 40
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not28 = icmp eq i64 %2, 0
  br i1 %.not28, label %_ZZN5boost4json9value_ref11write_arrayEPNS0_5valueESt16initializer_listIS1_ERKNS0_11storage_ptrEEN4undoD2Ev.exit, label %.lr.ph

_ZZN5boost4json9value_ref11write_arrayEPNS0_5valueESt16initializer_listIS1_ERKNS0_11storage_ptrEEN4undoD2Ev.exit: ; preds = %_ZN5boost4json11storage_ptrD2Ev.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost4json11storage_ptrD2Ev.exit
  %.030 = phi ptr [ %i.t, %_ZN5boost4json11storage_ptrD2Ev.exit ], [ %1, %bb.a ] ; 2 uses
  %.sroa.8.029 = phi ptr [ %i.s, %_ZN5boost4json11storage_ptrD2Ev.exit ], [ %0, %bb.a ] ; 4 uses
  %i.b = load i64, ptr %3, align 8, !tbaa !21     ; 3 uses
  store i64 %i.b, ptr %4, align 8, !tbaa !21
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5boost4json11storage_ptrC2ERKS1_.exit

bb.b:                                             ; preds = %.lr.ph
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = atomicrmw add ptr %i.f, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZN5boost4json11storage_ptrC2ERKS1_.exit

_ZN5boost4json11storage_ptrC2ERKS1_.exit:         ; preds = %.lr.ph, %bb.b
  invoke void @_ZNK5boost4json9value_ref10make_valueENS0_11storage_ptrE(ptr dead_on_unwind writable sret(%"class.boost::json::value") align 8 %.sroa.8.029, ptr noundef nonnull align 8 dereferenceable(36) %.030, ptr noundef nonnull align 8 %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN5boost4json11storage_ptrC2ERKS1_.exit
  %i.h = load i64, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.d, label %_ZN5boost4json11storage_ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.j = and i64 %i.h, -4                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = atomicrmw sub ptr %i.l, i64 1 acq_rel, align 8
  %i.n = icmp ne i64 %i.m, 1
  %i.o = icmp eq i64 %i.j, 0
  %or.cond.i.i = or i1 %i.o, %i.n
  br i1 %or.cond.i.i, label %_ZN5boost4json11storage_ptrD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #47, !inline_history !67
  br label %_ZN5boost4json11storage_ptrD2Ev.exit

_ZN5boost4json11storage_ptrD2Ev.exit:             ; preds = %bb.c, %bb.d, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.8.029, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %.030, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.a
  br i1 %.not, label %_ZZN5boost4json9value_ref11write_arrayEPNS0_5valueESt16initializer_listIS1_ERKNS0_11storage_ptrEEN4undoD2Ev.exit, label %.lr.ph

bb.f:                                             ; preds = %_ZN5boost4json11storage_ptrC2ERKS1_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load i64, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %bb.g, label %_ZN5boost4json11storage_ptrD2Ev.exit12

bb.g:                                             ; preds = %bb.f
  %i.x = and i64 %i.v, -4                         ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = atomicrmw sub ptr %i.z, i64 1 acq_rel, align 8
  %i.ab = icmp ne i64 %i.aa, 1
  %i.ac = icmp eq i64 %i.x, 0
  %or.cond.i.i11 = or i1 %i.ac, %i.ab
  br i1 %or.cond.i.i11, label %_ZN5boost4json11storage_ptrD2Ev.exit12, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #47, !inline_history !67
  br label %_ZN5boost4json11storage_ptrD2Ev.exit12

_ZN5boost4json11storage_ptrD2Ev.exit12:           ; preds = %bb.f, %bb.g, %bb.h
  %i.ag = icmp ugt ptr %.sroa.8.029, %0
  br i1 %i.ag, label %.lr.ph.i15, label %_ZZN5boost4json9value_ref11write_arrayEPNS0_5valueESt16initializer_listIS1_ERKNS0_11storage_ptrEEN4undoD2Ev.exit16

.lr.ph.i15:                                       ; preds = %_ZN5boost4json11storage_ptrD2Ev.exit12, %.lr.ph.i15
  %i.ah = phi ptr [ %i.ai, %.lr.ph.i15 ], [ %.sroa.8.029, %_ZN5boost4json11storage_ptrD2Ev.exit12 ]
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -24 ; 3 uses
  tail call void @_ZN5boost4json5valueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ai) #47
  %i.aj = icmp ugt ptr %i.ai, %0
  br i1 %i.aj, label %.lr.ph.i15, label %_ZZN5boost4json9value_ref11write_arrayEPNS0_5valueESt16initializer_listIS1_ERKNS0_11storage_ptrEEN4undoD2Ev.exit16, !llvm.loop !80

_ZZN5boost4json9value_ref11write_arrayEPNS0_5valueESt16initializer_listIS1_ERKNS0_11storage_ptrEEN4undoD2Ev.exit16: ; preds = %.lr.ph.i15, %_ZN5boost4json11storage_ptrD2Ev.exit12
  resume { ptr, i32 } %i.u
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost4json5arrayaSERKS1_(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::json::array", align 8 ; 7 uses
  %3 = alloca %"class.boost::json::storage_ptr", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  %i.a = load i64, ptr %0, align 8, !tbaa !21     ; 3 uses
  store i64 %i.a, ptr %3, align 8, !tbaa !21
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN5boost4json11storage_ptrC2ERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, -4
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZN5boost4json11storage_ptrC2ERKS1_.exit

_ZN5boost4json11storage_ptrC2ERKS1_.exit:         ; preds = %bb.a, %bb.b
  invoke void @_ZN5boost4json5arrayC1ERKS1_NS0_11storage_ptrE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 %3)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZN5boost4json11storage_ptrC2ERKS1_.exit
  invoke void @_ZN5boost4json5array4swapERS1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @_ZN5boost4json5arrayD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #47
  %i.g = load i64, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN5boost4json11storage_ptrD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = and i64 %i.g, -4                         ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = atomicrmw sub ptr %i.k, i64 1 acq_rel, align 8
  %i.m = icmp ne i64 %i.l, 1
  %i.n = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.n, %i.m
  br i1 %or.cond.i.i, label %_ZN5boost4json11storage_ptrD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #47, !inline_history !67
end_hunk_0
begin_hunk_1_@_ZN5boost4json6detail8charconv6detail10fast_float14parse_mantissaIcEEvRNS4_6bigintERNS4_22parsed_number_string_tIT_EEmRm:bb.a
  %.9.lcssa = phi ptr [ %.9.lcssa.ph, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not8.i63312 = icmp eq ptr %.9.lcssa, %i.f
  br i1 %.not8.i63312, label %._crit_edge346, label %.lr.ph315.preheader

.lr.ph315.preheader:                              ; preds = %._crit_edge
  %i.m = add i64 %i.e, %i.c
  %i.n = sub i64 %i.m, %.9.lcssa436.pre-phi
  %scevgep = getelementptr i8, ptr %.9.lcssa, i64 %i.n
  br label %.lr.ph315

.lr.ph315:                                        ; preds = %.lr.ph315.preheader, %bb.c
  %.10313 = phi ptr [ %i.p, %bb.c ], [ %.9.lcssa, %.lr.ph315.preheader ] ; 3 uses
  %i.o = load i8, ptr %.10313, align 1, !tbaa !19
  %.not9.i64 = icmp eq i8 %i.o, 48
  br i1 %.not9.i64, label %bb.c, label %_ZN5boost4json6detail8charconv6detail10fast_float10skip_zerosIcEEvRPKT_S8_.exit67

bb.c:                                             ; preds = %.lr.ph315
  %i.p = getelementptr inbounds nuw i8, ptr %.10313, i64 1 ; 2 uses
  %.not8.i63 = icmp eq ptr %i.p, %i.f
  br i1 %.not8.i63, label %_ZN5boost4json6detail8charconv6detail10fast_float10skip_zerosIcEEvRPKT_S8_.exit67, label %.lr.ph315, !llvm.loop !990

_ZN5boost4json6detail8charconv6detail10fast_float10skip_zerosIcEEvRPKT_S8_.exit67: ; preds = %.lr.ph315, %bb.c
  %.10.lcssa = phi ptr [ %scevgep, %bb.c ], [ %.10313, %.lr.ph315 ] ; 2 uses
  %.not344 = icmp eq ptr %.10.lcssa, %i.f
  br i1 %.not344, label %._crit_edge346, label %.preheader290.lr.ph

.preheader290.lr.ph:                              ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float10skip_zerosIcEEvRPKT_S8_.exit67
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 7 uses
  %.promoted = load i16, ptr %i.q, align 8, !tbaa !991
  br label %.preheader290

.preheader290:                                    ; preds = %.preheader290.lr.ph, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit123
  %i.r = phi i16 [ %.promoted, %.preheader290.lr.ph ], [ %i.ik, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit123 ] ; 13 uses
  %.0345 = phi ptr [ %.10.lcssa, %.preheader290.lr.ph ], [ %.2.lcssa, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit123 ] ; 5 uses
  %i.s = ptrtoint ptr %.0345 to i64
  %i.t = sub i64 %i.g, %i.s
  %i.u = icmp sgt i64 %i.t, 7
  %.pre.pre = load i64, ptr %3, align 8, !tbaa !15 ; 4 uses
  %i.v = sub i64 %2, %.pre.pre
  %i.w = icmp ugt i64 %i.v, 7
  %or.cond691 = select i1 %i.u, i1 %i.w, i1 false
  br i1 %or.cond691, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.preheader290
  %i.x = load i64, ptr %.0345, align 1
  %i.y = add i64 %i.x, -3472328296227680304       ; 2 uses
  %i.z = mul i64 %i.y, 10
  %i.aa = lshr i64 %i.y, 8
  %i.ab = add i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = and i64 %i.ab, 1095216660735
  %i.ad = mul i64 %i.ac, 4294967296000100
  %i.ae = lshr i64 %i.ab, 16
  %i.af = and i64 %i.ae, 1095216660735
  %i.ag = mul i64 %i.af, 42949672960001
  %i.ah = add i64 %i.ag, %i.ad
  %i.ai = lshr i64 %i.ah, 32                      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0345, i64 8 ; 3 uses
  %i.ak = add i64 %.pre.pre, 8                    ; 3 uses
  store i64 %i.ak, ptr %3, align 8, !tbaa !15
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.g, %i.al
  %i.an = icmp sgt i64 %i.am, 7
  %i.ao = sub i64 %2, %i.ak
  %i.ap = icmp ugt i64 %i.ao, 7
  %or.cond687 = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %or.cond687, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.aq = mul nuw nsw i64 %i.ai, 100000000
  %i.ar = load i64, ptr %i.aj, align 1
  %i.as = add i64 %i.ar, -3472328296227680304     ; 2 uses
  %i.at = mul i64 %i.as, 10
  %i.au = lshr i64 %i.as, 8
  %i.av = add i64 %i.at, %i.au                    ; 2 uses
  %i.aw = and i64 %i.av, 1095216660735
  %i.ax = mul i64 %i.aw, 4294967296000100
  %i.ay = lshr i64 %i.av, 16
  %i.az = and i64 %i.ay, 1095216660735
  %i.ba = mul i64 %i.az, 42949672960001
  %i.bb = add i64 %i.ba, %i.ax
  %i.bc = lshr i64 %i.bb, 32
  %i.bd = add nuw nsw i64 %i.bc, %i.aq
  %i.be = getelementptr inbounds nuw i8, ptr %.0345, i64 16
  %i.bf = add i64 %.pre.pre, 16                   ; 2 uses
  store i64 %i.bf, ptr %3, align 8, !tbaa !15
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e, %.preheader290
  %.pre = phi i64 [ %.pre.pre, %.preheader290 ], [ %i.ak, %bb.d ], [ %i.bf, %bb.e ] ; 3 uses
  %.1259.lcssa = phi i64 [ 0, %.preheader290 ], [ 8, %bb.d ], [ 16, %bb.e ] ; 2 uses
  %.1252.lcssa = phi i64 [ 0, %.preheader290 ], [ %i.ai, %bb.d ], [ %i.bd, %bb.e ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0345, %.preheader290 ], [ %i.aj, %bb.d ], [ %i.be, %bb.e ] ; 3 uses
  %.not60330 = icmp eq ptr %.1.lcssa, %i.f
  br i1 %.not60330, label %.critedge2, label %.lr.ph335

.lr.ph335:                                        ; preds = %.critedge
  %umax = tail call i64 @llvm.umax.i64(i64 %.pre, i64 %2) ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph335, %bb.g
  %i.bg = phi i64 [ %.pre, %.lr.ph335 ], [ %i.bo, %bb.g ] ; 2 uses
  %.2334 = phi ptr [ %.1.lcssa, %.lr.ph335 ], [ %i.bm, %bb.g ] ; 3 uses
  %.2253333 = phi i64 [ %.1252.lcssa, %.lr.ph335 ], [ %i.bl, %bb.g ] ; 2 uses
  %.2260332 = phi i64 [ %.1259.lcssa, %.lr.ph335 ], [ %i.bn, %bb.g ] ; 3 uses
  %exitcond.not = icmp eq i64 %i.bg, %umax
  br i1 %exitcond.not, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = mul i64 %.2253333, 10
  %i.bi = load i8, ptr %.2334, align 1, !tbaa !19
  %i.bj = sext i8 %i.bi to i64
  %i.bk = add i64 %i.bh, -48
  %i.bl = add i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.2334, i64 1 ; 3 uses
  %i.bn = add nuw nsw i64 %.2260332, 1            ; 2 uses
  %i.bo = add i64 %i.bg, 1                        ; 3 uses
  store i64 %i.bo, ptr %3, align 8, !tbaa !15
  %i.bp = icmp ugt i64 %.2260332, 17
  %.not60 = icmp eq ptr %i.bm, %i.f
  %or.cond = select i1 %i.bp, i1 true, i1 %.not60
  br i1 %or.cond, label %.critedge2, label %bb.f, !llvm.loop !993

.critedge2:                                       ; preds = %bb.f, %bb.g, %.critedge
  %i.bq = phi i64 [ %.pre, %.critedge ], [ %i.bo, %bb.g ], [ %umax, %bb.f ]
  %.2260.lcssa = phi i64 [ %.1259.lcssa, %.critedge ], [ %i.bn, %bb.g ], [ %.2260332, %bb.f ] ; 2 uses
  %.2253.lcssa = phi i64 [ %.1252.lcssa, %.critedge ], [ %i.bl, %bb.g ], [ %.2253333, %bb.f ] ; 8 uses
  %.2.lcssa = phi ptr [ %.1.lcssa, %.critedge ], [ %i.bm, %bb.g ], [ %.2334, %bb.f ] ; 5 uses
  %i.br = icmp eq i64 %i.bq, %2
  %i.bs = zext i16 %i.r to i64                    ; 6 uses
  %.not19.i.i = icmp eq i16 %i.r, 0               ; 2 uses
  br i1 %i.br, label %bb.h, label %bb.o

bb.h:                                             ; preds = %.critedge2
  br i1 %.not19.i.i, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost4json6detail8charconv6detail10fast_floatL20powers_of_ten_uint64E, i64 %.2260.lcssa
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !15
  %i.bv = zext i64 %i.bu to i128                  ; 3 uses
  %xtraiter611 = and i64 %i.bs, 1
  %i.bw = icmp eq i16 %i.r, 1
  br i1 %i.bw, label %.epil.preheader610, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter616 = and i64 %i.bs, 65534
  br label %bb.i

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.i
  %lcmp.mod612.not = icmp eq i64 %xtraiter611, 0
  br i1 %lcmp.mod612.not, label %._crit_edge.i.i, label %.epil.preheader610

.epil.preheader610:                               ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.016.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cy, %._crit_edge.i.i.unr-lcssa ]
  %.01215.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cw, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod615 = trunc i16 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod615)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i.epil.init ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !15
  %i.bz = zext i64 %i.by to i128
  %i.ca = mul nuw i128 %i.bz, %i.bv
  %i.cb = zext i64 %.01215.i.i.epil.init to i128
  %i.cc = add nuw i128 %i.ca, %i.cb               ; 2 uses
  %i.cd = lshr i128 %i.cc, 64                     ; 2 uses
  %i.ce = trunc nuw i128 %i.cd to i64
  %i.cf = trunc i128 %i.cc to i64
  store i64 %i.cf, ptr %i.bx, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader610
  %.lcssa595 = phi i128 [ %i.cv, %._crit_edge.i.i.unr-lcssa ], [ %i.cd, %.epil.preheader610 ]
  %.lcssa594 = phi i64 [ %i.cw, %._crit_edge.i.i.unr-lcssa ], [ %i.ce, %.epil.preheader610 ]
  %.not.i.i78 = icmp ne i128 %.lcssa595, 0
  %i.cg = icmp ult i16 %i.r, 62
  %or.cond275 = and i1 %i.cg, %.not.i.i78
  br i1 %or.cond275, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.new
  %.016.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.cy, %bb.i ] ; 3 uses
  %.01215.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.cw, %bb.i ]
  %niter617 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter617.next.1, %bb.i ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !15
  %i.cj = zext i64 %i.ci to i128
  %i.ck = mul nuw i128 %i.cj, %i.bv
  %i.cl = zext i64 %.01215.i.i to i128
  %i.cm = add nuw i128 %i.ck, %i.cl               ; 2 uses
  %i.cn = lshr i128 %i.cm, 64
  %i.co = trunc i128 %i.cm to i64
  store i64 %i.co, ptr %i.ch, align 8, !tbaa !15
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !15
  %i.cs = zext i64 %i.cr to i128
  %i.ct = mul nuw i128 %i.cs, %i.bv
  %i.cu = add nuw i128 %i.ct, %i.cn               ; 2 uses
  %i.cv = lshr i128 %i.cu, 64                     ; 2 uses
  %i.cw = trunc nuw i128 %i.cv to i64             ; 3 uses
  %i.cx = trunc i128 %i.cu to i64
  store i64 %i.cx, ptr %i.cq, align 8, !tbaa !15
  %i.cy = add nuw nsw i64 %.016.i.i, 2            ; 2 uses
  %niter617.next.1 = add nuw i64 %niter617, 2     ; 2 uses
  %niter617.ncmp.1 = icmp eq i64 %niter617.next.1, %unroll_iter616
  br i1 %niter617.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.i, !llvm.loop !994

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i: ; preds = %._crit_edge.i.i
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bs
  store i64 %.lcssa594, ptr %i.cz, align 8, !tbaa !15
  %i.da = add nuw nsw i16 %i.r, 1                 ; 2 uses
  store i16 %i.da, ptr %i.q, align 8, !tbaa !991
  br label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit

_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit: ; preds = %._crit_edge.i.i, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i
  %i.db = phi i16 [ %i.da, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i ], [ %i.r, %._crit_edge.i.i ] ; 8 uses
  %.not20.i.i = icmp eq i64 %.2253.lcssa, 0
  br i1 %.not20.i.i, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit, label %.lr.ph.i.i80

_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit.thread: ; preds = %bb.h
  %.not20.i.i485 = icmp eq i64 %.2253.lcssa, 0
  br i1 %.not20.i.i485, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i82

.lr.ph.i.i80:                                     ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit
  %i.dc = zext i16 %i.db to i64                   ; 2 uses
  %i.dd = load i64, ptr %0, align 8, !tbaa !15
  %i.de = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dd, i64 %.2253.lcssa) ; 2 uses
  %i.df = extractvalue { i64, i1 } %i.de, 1
  %i.dg = extractvalue { i64, i1 } %i.de, 0
  store i64 %i.dg, ptr %0, align 8, !tbaa !15
  br i1 %i.df, label %.peel.next.i.preheader, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit

.peel.next.i.preheader:                           ; preds = %.lr.ph.i.i80
  %exitcond.not.i.i81555 = icmp eq i16 %i.db, 1
  br i1 %exitcond.not.i.i81555, label %.critedge.i.i, label %.lr.ph557

.peel.next.i:                                     ; preds = %.lr.ph557
  %i.dh = add nuw nsw i64 %.01421.i.i556, 1       ; 2 uses
  %exitcond.not.i.i81 = icmp eq i64 %i.dh, %i.dc
  br i1 %exitcond.not.i.i81, label %.critedge.i.i, label %.lr.ph557, !llvm.loop !995

.lr.ph557:                                        ; preds = %.peel.next.i.preheader, %.peel.next.i
  %.01421.i.i556 = phi i64 [ %i.dh, %.peel.next.i ], [ 1, %.peel.next.i.preheader ] ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i556 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !15
  %i.dk = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dj, i64 1) ; 2 uses
  %i.dl = extractvalue { i64, i1 } %i.dk, 1
  %i.dm = extractvalue { i64, i1 } %i.dk, 0
  store i64 %i.dm, ptr %i.di, align 8, !tbaa !15
  br i1 %i.dl, label %.peel.next.i, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit, !llvm.loop !995

.critedge.i.i:                                    ; preds = %.peel.next.i, %.peel.next.i.preheader
  %i.dn = icmp ult i16 %i.db, 62
  br i1 %i.dn, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i82, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i82: ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit.thread, %.critedge.i.i
  %i.do = phi i64 [ %i.dc, %.critedge.i.i ], [ 0, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit.thread ]
  %i.dp = phi i16 [ %i.db, %.critedge.i.i ], [ 0, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit.thread ]
  %.022.i.lcssa7.i = phi i64 [ 1, %.critedge.i.i ], [ %.2253.lcssa, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit.thread ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.do
  store i64 %.022.i.lcssa7.i, ptr %i.dq, align 8, !tbaa !15
  %i.dr = add nuw nsw i16 %i.dp, 1                ; 2 uses
  store i16 %i.dr, ptr %i.q, align 8, !tbaa !991
  br label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit

_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit: ; preds = %.lr.ph557, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit.thread, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit, %.lr.ph.i.i80, %.critedge.i.i, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i82
  %.pr = phi i16 [ 0, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit.thread ], [ %i.db, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit ], [ %i.db, %.lr.ph.i.i80 ], [ %i.db, %.critedge.i.i ], [ %i.dr, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i82 ], [ %i.db, %.lr.ph557 ] ; 7 uses
  %i.ds = ptrtoint ptr %.2.lcssa to i64
  %i.dt = sub i64 %i.g, %i.ds
  %i.du = icmp sgt i64 %i.dt, 7
  br i1 %i.du, label %.lr.ph348, label %.preheader288

.preheader288:                                    ; preds = %bb.j, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit
  %.09.i70.lcssa = phi ptr [ %.2.lcssa, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit ], [ %i.dv, %bb.j ] ; 2 uses
  %.not.i72350 = icmp eq ptr %.09.i70.lcssa, %i.f
  br i1 %.not.i72350, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit77.thread, label %.lr.ph352

.lr.ph348:                                        ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit, %bb.j
  %.09.i70347 = phi ptr [ %i.dv, %bb.j ], [ %.2.lcssa, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit ] ; 2 uses
  %.0.copyload.i75 = load i64, ptr %.09.i70347, align 1
  %.not11.i76 = icmp eq i64 %.0.copyload.i75, 3472328296227680304
  br i1 %.not11.i76, label %bb.j, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit77

bb.j:                                             ; preds = %.lr.ph348
  %i.dv = getelementptr inbounds nuw i8, ptr %.09.i70347, i64 8 ; 3 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.g, %i.dw
  %i.dy = icmp sgt i64 %i.dx, 7
  br i1 %i.dy, label %.lr.ph348, label %.preheader288, !llvm.loop !997

.lr.ph352:                                        ; preds = %.preheader288, %.lr.ph352
  %.1.i71351 = phi ptr [ %i.ea, %.lr.ph352 ], [ %.09.i70.lcssa, %.preheader288 ] ; 2 uses
  %i.dz = load i8, ptr %.1.i71351, align 1, !tbaa !19
  %.not10.i73.not = icmp ne i8 %i.dz, 48          ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.1.i71351, i64 1 ; 2 uses
  %.not.i72 = icmp eq ptr %i.ea, %i.f
  %or.cond570 = select i1 %.not10.i73.not, i1 true, i1 %.not.i72
  br i1 %or.cond570, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit77, label %.lr.ph352, !llvm.loop !998

_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit77: ; preds = %.lr.ph348, %.lr.ph352
  %.0.i74 = phi i1 [ %.not10.i73.not, %.lr.ph352 ], [ true, %.lr.ph348 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !999 ; 2 uses
  %.not61 = icmp eq ptr %i.ec, null
  br i1 %.not61, label %bb.n, label %bb.k

_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit77.thread: ; preds = %.preheader288
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !999 ; 2 uses
  %.not61488 = icmp eq ptr %i.ee, null
  br i1 %.not61488, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit77.thread, %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit77
  %i.ef = phi ptr [ %i.ee, %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit77.thread ], [ %i.ec, %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit77 ] ; 3 uses
  %.0.i74490 = phi i1 [ false, %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit77.thread ], [ %.0.i74, %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit77 ]
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !15 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.sroa.2.0.copyload ; 3 uses
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = icmp sgt i64 %.sroa.2.0.copyload, 7
  br i1 %i.ei, label %.lr.ph358, label %.preheader286

.preheader286:                                    ; preds = %bb.l, %bb.k
  %.09.i.i.lcssa = phi ptr [ %i.ef, %bb.k ], [ %i.ej, %bb.l ] ; 2 uses
  %.not.i.i360 = icmp eq ptr %.09.i.i.lcssa, %i.eg
  br i1 %.not.i.i360, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbNS4_4spanIKT_EE.exit, label %.lr.ph362

.lr.ph358:                                        ; preds = %bb.k, %bb.l
  %.09.i.i356 = phi ptr [ %i.ej, %bb.l ], [ %i.ef, %bb.k ] ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.09.i.i356, align 1
  %.not11.i.i = icmp eq i64 %.0.copyload.i.i, 3472328296227680304
  br i1 %.not11.i.i, label %bb.l, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbNS4_4spanIKT_EE.exit.thread

bb.l:                                             ; preds = %.lr.ph358
  %i.ej = getelementptr inbounds nuw i8, ptr %.09.i.i356, i64 8 ; 3 uses
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = sub i64 %i.eh, %i.ek
  %i.em = icmp sgt i64 %i.el, 7
  br i1 %i.em, label %.lr.ph358, label %.preheader286, !llvm.loop !997

bb.m:                                             ; preds = %.lr.ph362
  %i.en = getelementptr inbounds nuw i8, ptr %.1.i.i361, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.en, %i.eg
  br i1 %.not.i.i, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbNS4_4spanIKT_EE.exit, label %.lr.ph362, !llvm.loop !998

.lr.ph362:                                        ; preds = %.preheader286, %bb.m
  %.1.i.i361 = phi ptr [ %i.en, %bb.m ], [ %.09.i.i.lcssa, %.preheader286 ] ; 2 uses
  %i.eo = load i8, ptr %.1.i.i361, align 1, !tbaa !19
  %.not10.i.i = icmp eq i8 %i.eo, 48
  br i1 %.not10.i.i, label %bb.m, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbNS4_4spanIKT_EE.exit.thread

_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbNS4_4spanIKT_EE.exit: ; preds = %bb.m, %.preheader286
  br i1 %.0.i74490, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbNS4_4spanIKT_EE.exit.thread, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit

bb.n:                                             ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit77
  br i1 %.0.i74, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbNS4_4spanIKT_EE.exit.thread, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit

_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbNS4_4spanIKT_EE.exit.thread: ; preds = %.lr.ph358, %.lr.ph362, %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbNS4_4spanIKT_EE.exit, %bb.n
  %i.ep = zext i16 %.pr to i64                    ; 4 uses
  %.not19.i.i83 = icmp eq i16 %.pr, 0
  br i1 %.not19.i.i83, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i100, label %.lr.ph.i.i84.preheader

.lr.ph.i.i84.preheader:                           ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbNS4_4spanIKT_EE.exit.thread
  %xtraiter618 = and i64 %i.ep, 1
  %i.eq = icmp eq i16 %.pr, 1
  br i1 %i.eq, label %.lr.ph.i.i84.epil.preheader, label %.lr.ph.i.i84.preheader.new

.lr.ph.i.i84.preheader.new:                       ; preds = %.lr.ph.i.i84.preheader
  %unroll_iter623 = and i64 %i.ep, 65534
  br label %.lr.ph.i.i84

._crit_edge.i.i88.unr-lcssa:                      ; preds = %.lr.ph.i.i84
  %lcmp.mod619.not = icmp eq i64 %xtraiter618, 0
  br i1 %lcmp.mod619.not, label %._crit_edge.i.i88, label %.lr.ph.i.i84.epil.preheader

.lr.ph.i.i84.epil.preheader:                      ; preds = %._crit_edge.i.i88.unr-lcssa, %.lr.ph.i.i84.preheader
  %.016.i.i85.epil.init = phi i64 [ 0, %.lr.ph.i.i84.preheader ], [ %i.fs, %._crit_edge.i.i88.unr-lcssa ]
  %.01215.i.i86.epil.init = phi i64 [ 0, %.lr.ph.i.i84.preheader ], [ %i.fq, %._crit_edge.i.i88.unr-lcssa ]
  %lcmp.mod622 = trunc i16 %.pr to i1
  tail call void @llvm.assume(i1 %lcmp.mod622)
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i85.epil.init ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !15
  %i.et = zext i64 %i.es to i128
  %i.eu = mul nuw nsw i128 %i.et, 10
  %i.ev = zext nneg i64 %.01215.i.i86.epil.init to i128
  %i.ew = add nuw nsw i128 %i.eu, %i.ev           ; 2 uses
  %i.ex = lshr i128 %i.ew, 64                     ; 2 uses
  %i.ey = trunc nuw nsw i128 %i.ex to i64
  %i.ez = trunc i128 %i.ew to i64
  store i64 %i.ez, ptr %i.er, align 8, !tbaa !15
  br label %._crit_edge.i.i88

._crit_edge.i.i88:                                ; preds = %._crit_edge.i.i88.unr-lcssa, %.lr.ph.i.i84.epil.preheader
  %.lcssa589 = phi i128 [ %i.fp, %._crit_edge.i.i88.unr-lcssa ], [ %i.ex, %.lr.ph.i.i84.epil.preheader ]
  %.lcssa588 = phi i64 [ %i.fq, %._crit_edge.i.i88.unr-lcssa ], [ %i.ey, %.lr.ph.i.i84.epil.preheader ]
  %.not.i.i89 = icmp ne i128 %.lcssa589, 0
  %i.fa = icmp ult i16 %.pr, 62
  %or.cond276 = and i1 %i.fa, %.not.i.i89
  br i1 %or.cond276, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit92.thread266, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit92

.lr.ph.i.i84:                                     ; preds = %.lr.ph.i.i84, %.lr.ph.i.i84.preheader.new
  %.016.i.i85 = phi i64 [ 0, %.lr.ph.i.i84.preheader.new ], [ %i.fs, %.lr.ph.i.i84 ] ; 3 uses
  %.01215.i.i86 = phi i64 [ 0, %.lr.ph.i.i84.preheader.new ], [ %i.fq, %.lr.ph.i.i84 ]
  %niter624 = phi i64 [ 0, %.lr.ph.i.i84.preheader.new ], [ %niter624.next.1, %.lr.ph.i.i84 ]
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i85 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !15
  %i.fd = zext i64 %i.fc to i128
  %i.fe = mul nuw nsw i128 %i.fd, 10
  %i.ff = zext nneg i64 %.01215.i.i86 to i128
  %i.fg = add nuw nsw i128 %i.fe, %i.ff           ; 2 uses
  %i.fh = lshr i128 %i.fg, 64
  %i.fi = trunc i128 %i.fg to i64
  store i64 %i.fi, ptr %i.fb, align 8, !tbaa !15
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i85
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !15
  %i.fm = zext i64 %i.fl to i128
  %i.fn = mul nuw nsw i128 %i.fm, 10
  %i.fo = add nuw nsw i128 %i.fn, %i.fh           ; 2 uses
  %i.fp = lshr i128 %i.fo, 64                     ; 2 uses
  %i.fq = trunc nuw nsw i128 %i.fp to i64         ; 3 uses
  %i.fr = trunc i128 %i.fo to i64
  store i64 %i.fr, ptr %i.fk, align 8, !tbaa !15
  %i.fs = add nuw nsw i64 %.016.i.i85, 2          ; 2 uses
  %niter624.next.1 = add nuw i64 %niter624, 2     ; 2 uses
  %niter624.ncmp.1 = icmp eq i64 %niter624.next.1, %unroll_iter623
  br i1 %niter624.ncmp.1, label %._crit_edge.i.i88.unr-lcssa, label %.lr.ph.i.i84, !llvm.loop !994

_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit92.thread266: ; preds = %._crit_edge.i.i88
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ep
  store i64 %.lcssa588, ptr %i.ft, align 8, !tbaa !15
  %i.fu = add nuw nsw i16 %.pr, 1                 ; 3 uses
  store i16 %i.fu, ptr %i.q, align 8, !tbaa !991
  %.pre449 = zext nneg i16 %i.fu to i64
  br label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit92

_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit92: ; preds = %._crit_edge.i.i88, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit92.thread266
  %.pre-phi450 = phi i64 [ %.pre449, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit92.thread266 ], [ %i.ep, %._crit_edge.i.i88 ] ; 3 uses
  %i.fv = phi i16 [ %i.fu, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit92.thread266 ], [ %.pr, %._crit_edge.i.i88 ] ; 2 uses
  %i.fw = load i64, ptr %0, align 8, !tbaa !15
  %i.fx = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fw, i64 1) ; 2 uses
  %i.fy = extractvalue { i64, i1 } %i.fx, 1
  %i.fz = extractvalue { i64, i1 } %i.fx, 0
  store i64 %i.fz, ptr %0, align 8, !tbaa !15
  br i1 %i.fy, label %.peel.next.i96.preheader, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit.sink.split

.peel.next.i96.preheader:                         ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit92
  %exitcond.not.i.i98558 = icmp eq i64 %.pre-phi450, 1
  br i1 %exitcond.not.i.i98558, label %.critedge.i.i99, label %.lr.ph560

.peel.next.i96:                                   ; preds = %.lr.ph560
  %i.ga = add nuw nsw i64 %.01421.i.i97559, 1     ; 2 uses
  %exitcond.not.i.i98 = icmp eq i64 %i.ga, %.pre-phi450
  br i1 %exitcond.not.i.i98, label %.critedge.i.i99, label %.lr.ph560, !llvm.loop !995

.lr.ph560:                                        ; preds = %.peel.next.i96.preheader, %.peel.next.i96
  %.01421.i.i97559 = phi i64 [ %i.ga, %.peel.next.i96 ], [ 1, %.peel.next.i96.preheader ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i97559 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !15
  %i.gd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.gc, i64 1) ; 2 uses
  %i.ge = extractvalue { i64, i1 } %i.gd, 1
  %i.gf = extractvalue { i64, i1 } %i.gd, 0
  store i64 %i.gf, ptr %i.gb, align 8, !tbaa !15
  br i1 %i.ge, label %.peel.next.i96, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit.sink.split, !llvm.loop !995

.critedge.i.i99:                                  ; preds = %.peel.next.i96, %.peel.next.i96.preheader
  %i.gg = icmp ult i16 %i.fv, 62
  br i1 %i.gg, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i100, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit.sink.split

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i100: ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbNS4_4spanIKT_EE.exit.thread, %.critedge.i.i99
  %i.gh = phi i64 [ 0, %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbNS4_4spanIKT_EE.exit.thread ], [ %.pre-phi450, %.critedge.i.i99 ]
  %i.gi = phi i16 [ 0, %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbNS4_4spanIKT_EE.exit.thread ], [ %i.fv, %.critedge.i.i99 ]
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gh
  store i64 1, ptr %i.gj, align 8, !tbaa !15
  %i.gk = add nuw nsw i16 %i.gi, 1
  store i16 %i.gk, ptr %i.q, align 8, !tbaa !991
  br label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit.sink.split

bb.o:                                             ; preds = %.critedge2
  br i1 %.not19.i.i, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit112.thread, label %.lr.ph.i.i104

.lr.ph.i.i104:                                    ; preds = %bb.o
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost4json6detail8charconv6detail10fast_floatL20powers_of_ten_uint64E, i64 %.2260.lcssa
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !15
  %i.gn = zext i64 %i.gm to i128                  ; 3 uses
  %xtraiter = and i64 %i.bs, 1
  %i.go = icmp eq i16 %i.r, 1
  br i1 %i.go, label %.epil.preheader, label %.lr.ph.i.i104.new

.lr.ph.i.i104.new:                                ; preds = %.lr.ph.i.i104
  %unroll_iter = and i64 %i.bs, 65534
  br label %bb.p

._crit_edge.i.i108.unr-lcssa:                     ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i108, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i108.unr-lcssa, %.lr.ph.i.i104
  %.016.i.i105.epil.init = phi i64 [ 0, %.lr.ph.i.i104 ], [ %i.hq, %._crit_edge.i.i108.unr-lcssa ]
  %.01215.i.i106.epil.init = phi i64 [ 0, %.lr.ph.i.i104 ], [ %i.ho, %._crit_edge.i.i108.unr-lcssa ]
  %lcmp.mod609 = trunc i16 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod609)
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i105.epil.init ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !15
  %i.gr = zext i64 %i.gq to i128
  %i.gs = mul nuw i128 %i.gr, %i.gn
  %i.gt = zext i64 %.01215.i.i106.epil.init to i128
  %i.gu = add nuw i128 %i.gs, %i.gt               ; 2 uses
  %i.gv = lshr i128 %i.gu, 64                     ; 2 uses
  %i.gw = trunc nuw i128 %i.gv to i64
  %i.gx = trunc i128 %i.gu to i64
  store i64 %i.gx, ptr %i.gp, align 8, !tbaa !15
  br label %._crit_edge.i.i108

._crit_edge.i.i108:                               ; preds = %._crit_edge.i.i108.unr-lcssa, %.epil.preheader
  %.lcssa598 = phi i128 [ %i.hn, %._crit_edge.i.i108.unr-lcssa ], [ %i.gv, %.epil.preheader ]
  %.lcssa597 = phi i64 [ %i.ho, %._crit_edge.i.i108.unr-lcssa ], [ %i.gw, %.epil.preheader ]
  %.not.i.i109 = icmp ne i128 %.lcssa598, 0
  %i.gy = icmp ult i16 %i.r, 62
  %or.cond277 = and i1 %i.gy, %.not.i.i109
  br i1 %or.cond277, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i111, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit112

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i104.new
  %.016.i.i105 = phi i64 [ 0, %.lr.ph.i.i104.new ], [ %i.hq, %bb.p ] ; 3 uses
  %.01215.i.i106 = phi i64 [ 0, %.lr.ph.i.i104.new ], [ %i.ho, %bb.p ]
  %niter = phi i64 [ 0, %.lr.ph.i.i104.new ], [ %niter.next.1, %bb.p ]
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i105 ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !15
  %i.hb = zext i64 %i.ha to i128
  %i.hc = mul nuw i128 %i.hb, %i.gn
  %i.hd = zext i64 %.01215.i.i106 to i128
  %i.he = add nuw i128 %i.hc, %i.hd               ; 2 uses
  %i.hf = lshr i128 %i.he, 64
  %i.hg = trunc i128 %i.he to i64
  store i64 %i.hg, ptr %i.gz, align 8, !tbaa !15
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i105
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !15
  %i.hk = zext i64 %i.hj to i128
  %i.hl = mul nuw i128 %i.hk, %i.gn
  %i.hm = add nuw i128 %i.hl, %i.hf               ; 2 uses
  %i.hn = lshr i128 %i.hm, 64                     ; 2 uses
  %i.ho = trunc nuw i128 %i.hn to i64             ; 3 uses
  %i.hp = trunc i128 %i.hm to i64
  store i64 %i.hp, ptr %i.hi, align 8, !tbaa !15
  %i.hq = add nuw nsw i64 %.016.i.i105, 2         ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i108.unr-lcssa, label %bb.p, !llvm.loop !994

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i111: ; preds = %._crit_edge.i.i108
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bs
  store i64 %.lcssa597, ptr %i.hr, align 8, !tbaa !15
  %i.hs = add nuw nsw i16 %i.r, 1                 ; 2 uses
  store i16 %i.hs, ptr %i.q, align 8, !tbaa !991
  br label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit112

_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit112: ; preds = %._crit_edge.i.i108, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i111
  %i.ht = phi i16 [ %i.hs, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i111 ], [ %i.r, %._crit_edge.i.i108 ] ; 8 uses
  %.not20.i.i113 = icmp eq i64 %.2253.lcssa, 0
  br i1 %.not20.i.i113, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit123, label %.lr.ph.i.i114

_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit112.thread: ; preds = %bb.o
  %.not20.i.i113492 = icmp eq i64 %.2253.lcssa, 0
  br i1 %.not20.i.i113492, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit123, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i121

.lr.ph.i.i114:                                    ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit112
  %i.hu = zext i16 %i.ht to i64                   ; 2 uses
  %i.hv = load i64, ptr %0, align 8, !tbaa !15
  %i.hw = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.hv, i64 %.2253.lcssa) ; 2 uses
  %i.hx = extractvalue { i64, i1 } %i.hw, 1
  %i.hy = extractvalue { i64, i1 } %i.hw, 0
  store i64 %i.hy, ptr %0, align 8, !tbaa !15
  br i1 %i.hx, label %.peel.next.i117.preheader, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit123

.peel.next.i117.preheader:                        ; preds = %.lr.ph.i.i114
  %exitcond.not.i.i119552 = icmp eq i16 %i.ht, 1
  br i1 %exitcond.not.i.i119552, label %.critedge.i.i120, label %.lr.ph554

.peel.next.i117:                                  ; preds = %.lr.ph554
  %i.hz = add nuw nsw i64 %.01421.i.i118553, 1    ; 2 uses
  %exitcond.not.i.i119 = icmp eq i64 %i.hz, %i.hu
  br i1 %exitcond.not.i.i119, label %.critedge.i.i120, label %.lr.ph554, !llvm.loop !995

.lr.ph554:                                        ; preds = %.peel.next.i117.preheader, %.peel.next.i117
  %.01421.i.i118553 = phi i64 [ %i.hz, %.peel.next.i117 ], [ 1, %.peel.next.i117.preheader ] ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i118553 ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !15
  %i.ic = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ib, i64 1) ; 2 uses
  %i.id = extractvalue { i64, i1 } %i.ic, 1
  %i.ie = extractvalue { i64, i1 } %i.ic, 0
  store i64 %i.ie, ptr %i.ia, align 8, !tbaa !15
  br i1 %i.id, label %.peel.next.i117, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit123, !llvm.loop !995

.critedge.i.i120:                                 ; preds = %.peel.next.i117, %.peel.next.i117.preheader
  %i.if = icmp ult i16 %i.ht, 62
  br i1 %i.if, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i121, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit123

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i121: ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit112.thread, %.critedge.i.i120
  %i.ig = phi i64 [ %i.hu, %.critedge.i.i120 ], [ 0, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit112.thread ]
  %i.ih = phi i16 [ %i.ht, %.critedge.i.i120 ], [ 0, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit112.thread ]
  %.022.i.lcssa7.i122 = phi i64 [ 1, %.critedge.i.i120 ], [ %.2253.lcssa, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit112.thread ]
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ig
  store i64 %.022.i.lcssa7.i122, ptr %i.ii, align 8, !tbaa !15
  %i.ij = add nuw nsw i16 %i.ih, 1                ; 2 uses
  store i16 %i.ij, ptr %i.q, align 8, !tbaa !991
  br label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit123

_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit123: ; preds = %.lr.ph554, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit112.thread, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit112, %.lr.ph.i.i114, %.critedge.i.i120, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i121
  %i.ik = phi i16 [ %i.ij, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i121 ], [ %i.r, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit112.thread ], [ %i.ht, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit112 ], [ %i.ht, %.lr.ph.i.i114 ], [ %i.ht, %.critedge.i.i120 ], [ %i.ht, %.lr.ph554 ]
  %.not = icmp eq ptr %.2.lcssa, %i.f
  br i1 %.not, label %._crit_edge346, label %.preheader290, !llvm.loop !1000

._crit_edge346:                                   ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit123, %._crit_edge, %_ZN5boost4json6detail8charconv6detail10fast_float10skip_zerosIcEEvRPKT_S8_.exit67
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !999 ; 6 uses
  %i.in = ptrtoaddr ptr %i.im to i64              ; 2 uses
  %.not55 = icmp eq ptr %i.im, null
  br i1 %.not55, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge346
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !988 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ip ; 10 uses
  %i.ir = load i64, ptr %3, align 8, !tbaa !15
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %.preheader285, label %_ZN5boost4json6detail8charconv6detail10fast_float10skip_zerosIcEEvRPKT_S8_.exit

.preheader285:                                    ; preds = %bb.q
  %i.it = ptrtoint ptr %i.iq to i64
  %i.iu = icmp sgt i64 %i.ip, 7
  br i1 %i.iu, label %.lr.ph364, label %._crit_edge365

.lr.ph364:                                        ; preds = %.preheader285, %bb.r
  %.7363 = phi ptr [ %i.iv, %bb.r ], [ %i.im, %.preheader285 ] ; 3 uses
  %.0.copyload.i = load i64, ptr %.7363, align 1
  %.not.i = icmp eq i64 %.0.copyload.i, 3472328296227680304
  br i1 %.not.i, label %bb.r, label %._crit_edge365.loopexit

bb.r:                                             ; preds = %.lr.ph364
  %i.iv = getelementptr inbounds nuw i8, ptr %.7363, i64 8 ; 3 uses
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = sub i64 %i.it, %i.iw
  %i.iy = icmp sgt i64 %i.ix, 7
  br i1 %i.iy, label %.lr.ph364, label %._crit_edge365.loopexit, !llvm.loop !989

._crit_edge365.loopexit:                          ; preds = %.lr.ph364, %bb.r
  %.7.lcssa.ph = phi ptr [ %i.iv, %bb.r ], [ %.7363, %.lr.ph364 ] ; 2 uses
  %.pre447 = ptrtoaddr ptr %.7.lcssa.ph to i64
  br label %._crit_edge365

._crit_edge365:                                   ; preds = %._crit_edge365.loopexit, %.preheader285
  %.7.lcssa437.pre-phi = phi i64 [ %.pre447, %._crit_edge365.loopexit ], [ %i.in, %.preheader285 ]
  %.7.lcssa = phi ptr [ %.7.lcssa.ph, %._crit_edge365.loopexit ], [ %i.im, %.preheader285 ] ; 3 uses
  %.not8.i369 = icmp eq ptr %.7.lcssa, %i.iq
  br i1 %.not8.i369, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit, label %.lr.ph372.preheader

.lr.ph372.preheader:                              ; preds = %._crit_edge365
  %i.iz = add i64 %i.ip, %i.in
  %i.ja = sub i64 %i.iz, %.7.lcssa437.pre-phi
  %scevgep438 = getelementptr i8, ptr %.7.lcssa, i64 %i.ja
  br label %.lr.ph372

.lr.ph372:                                        ; preds = %.lr.ph372.preheader, %bb.s
  %.8370 = phi ptr [ %i.jc, %bb.s ], [ %.7.lcssa, %.lr.ph372.preheader ] ; 3 uses
  %i.jb = load i8, ptr %.8370, align 1, !tbaa !19
  %.not9.i = icmp eq i8 %i.jb, 48
  br i1 %.not9.i, label %bb.s, label %_ZN5boost4json6detail8charconv6detail10fast_float10skip_zerosIcEEvRPKT_S8_.exit

bb.s:                                             ; preds = %.lr.ph372
  %i.jc = getelementptr inbounds nuw i8, ptr %.8370, i64 1 ; 2 uses
  %.not8.i = icmp eq ptr %i.jc, %i.iq
  br i1 %.not8.i, label %_ZN5boost4json6detail8charconv6detail10fast_float10skip_zerosIcEEvRPKT_S8_.exit, label %.lr.ph372, !llvm.loop !990

_ZN5boost4json6detail8charconv6detail10fast_float10skip_zerosIcEEvRPKT_S8_.exit: ; preds = %bb.s, %.lr.ph372, %bb.q
  %.3 = phi ptr [ %i.im, %bb.q ], [ %.8370, %.lr.ph372 ], [ %scevgep438, %bb.s ] ; 2 uses
  %.not56404 = icmp eq ptr %.3, %i.iq
  br i1 %.not56404, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit, label %.preheader283.lr.ph

.preheader283.lr.ph:                              ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float10skip_zerosIcEEvRPKT_S8_.exit
  %i.jd = ptrtoint ptr %i.iq to i64               ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 7 uses
  %.promoted685 = load i16, ptr %i.je, align 8, !tbaa !991
  br label %.preheader283

.preheader283:                                    ; preds = %.preheader283.lr.ph, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit185
  %i.jf = phi i16 [ %.promoted685, %.preheader283.lr.ph ], [ %i.rk, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit185 ] ; 13 uses
  %.4405 = phi ptr [ %.3, %.preheader283.lr.ph ], [ %.6.lcssa, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit185 ] ; 5 uses
  %i.jg = ptrtoint ptr %.4405 to i64
  %i.jh = sub i64 %i.jd, %i.jg
  %i.ji = icmp sgt i64 %i.jh, 7
  %.pre441.pre = load i64, ptr %3, align 8, !tbaa !15 ; 4 uses
  %i.jj = sub i64 %2, %.pre441.pre
  %i.jk = icmp ugt i64 %i.jj, 7
  %or.cond693 = select i1 %i.ji, i1 %i.jk, i1 false
  br i1 %or.cond693, label %bb.t, label %.critedge4

bb.t:                                             ; preds = %.preheader283
  %i.jl = load i64, ptr %.4405, align 1
  %i.jm = add i64 %i.jl, -3472328296227680304     ; 2 uses
  %i.jn = mul i64 %i.jm, 10
  %i.jo = lshr i64 %i.jm, 8
  %i.jp = add i64 %i.jn, %i.jo                    ; 2 uses
  %i.jq = and i64 %i.jp, 1095216660735
  %i.jr = mul i64 %i.jq, 4294967296000100
  %i.js = lshr i64 %i.jp, 16
  %i.jt = and i64 %i.js, 1095216660735
  %i.ju = mul i64 %i.jt, 42949672960001
  %i.jv = add i64 %i.ju, %i.jr
  %i.jw = lshr i64 %i.jv, 32                      ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.4405, i64 8 ; 3 uses
  %i.jy = add i64 %.pre441.pre, 8                 ; 3 uses
  store i64 %i.jy, ptr %3, align 8, !tbaa !15
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = sub i64 %i.jd, %i.jz
  %i.kb = icmp sgt i64 %i.ka, 7
  %i.kc = sub i64 %2, %i.jy
  %i.kd = icmp ugt i64 %i.kc, 7
  %or.cond689 = select i1 %i.kb, i1 %i.kd, i1 false
  br i1 %or.cond689, label %bb.u, label %.critedge4

bb.u:                                             ; preds = %bb.t
  %i.ke = mul nuw nsw i64 %i.jw, 100000000
  %i.kf = load i64, ptr %i.jx, align 1
  %i.kg = add i64 %i.kf, -3472328296227680304     ; 2 uses
  %i.kh = mul i64 %i.kg, 10
  %i.ki = lshr i64 %i.kg, 8
  %i.kj = add i64 %i.kh, %i.ki                    ; 2 uses
  %i.kk = and i64 %i.kj, 1095216660735
  %i.kl = mul i64 %i.kk, 4294967296000100
  %i.km = lshr i64 %i.kj, 16
  %i.kn = and i64 %i.km, 1095216660735
  %i.ko = mul i64 %i.kn, 42949672960001
  %i.kp = add i64 %i.ko, %i.kl
  %i.kq = lshr i64 %i.kp, 32
  %i.kr = add nuw nsw i64 %i.kq, %i.ke
  %i.ks = getelementptr inbounds nuw i8, ptr %.4405, i64 16
  %i.kt = add i64 %.pre441.pre, 16                ; 2 uses
  store i64 %i.kt, ptr %3, align 8, !tbaa !15
  br label %.critedge4

.critedge4:                                       ; preds = %bb.t, %bb.u, %.preheader283
  %.pre441 = phi i64 [ %.pre441.pre, %.preheader283 ], [ %i.jy, %bb.t ], [ %i.kt, %bb.u ] ; 3 uses
  %.4262.lcssa = phi i64 [ 0, %.preheader283 ], [ 8, %bb.t ], [ 16, %bb.u ] ; 2 uses
  %.4255.lcssa = phi i64 [ 0, %.preheader283 ], [ %i.jw, %bb.t ], [ %i.kr, %bb.u ] ; 2 uses
  %.5.lcssa = phi ptr [ %.4405, %.preheader283 ], [ %i.jx, %bb.t ], [ %i.ks, %bb.u ] ; 3 uses
  %.not58390 = icmp eq ptr %.5.lcssa, %i.iq
  br i1 %.not58390, label %.critedge6, label %.lr.ph395

.lr.ph395:                                        ; preds = %.critedge4
  %umax439 = tail call i64 @llvm.umax.i64(i64 %.pre441, i64 %2) ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph395, %bb.w
  %i.ku = phi i64 [ %.pre441, %.lr.ph395 ], [ %i.lc, %bb.w ] ; 2 uses
  %.6394 = phi ptr [ %.5.lcssa, %.lr.ph395 ], [ %i.la, %bb.w ] ; 3 uses
  %.5256393 = phi i64 [ %.4255.lcssa, %.lr.ph395 ], [ %i.kz, %bb.w ] ; 2 uses
  %.5263392 = phi i64 [ %.4262.lcssa, %.lr.ph395 ], [ %i.lb, %bb.w ] ; 3 uses
  %exitcond440.not = icmp eq i64 %i.ku, %umax439
  br i1 %exitcond440.not, label %.critedge6, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.kv = mul i64 %.5256393, 10
  %i.kw = load i8, ptr %.6394, align 1, !tbaa !19
  %i.kx = sext i8 %i.kw to i64
  %i.ky = add i64 %i.kv, -48
  %i.kz = add i64 %i.ky, %i.kx                    ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.6394, i64 1 ; 3 uses
  %i.lb = add nuw nsw i64 %.5263392, 1            ; 2 uses
  %i.lc = add i64 %i.ku, 1                        ; 3 uses
  store i64 %i.lc, ptr %3, align 8, !tbaa !15
  %i.ld = icmp ugt i64 %.5263392, 17
  %.not58 = icmp eq ptr %i.la, %i.iq
  %or.cond62 = select i1 %i.ld, i1 true, i1 %.not58
  br i1 %or.cond62, label %.critedge6, label %bb.v, !llvm.loop !1001

.critedge6:                                       ; preds = %bb.v, %bb.w, %.critedge4
  %i.le = phi i64 [ %.pre441, %.critedge4 ], [ %i.lc, %bb.w ], [ %umax439, %bb.v ]
  %.5263.lcssa = phi i64 [ %.4262.lcssa, %.critedge4 ], [ %i.lb, %bb.w ], [ %.5263392, %bb.v ] ; 2 uses
  %.5256.lcssa = phi i64 [ %.4255.lcssa, %.critedge4 ], [ %i.kz, %bb.w ], [ %.5256393, %bb.v ] ; 8 uses
  %.6.lcssa = phi ptr [ %.5.lcssa, %.critedge4 ], [ %i.la, %bb.w ], [ %.6394, %bb.v ] ; 5 uses
  %i.lf = icmp eq i64 %i.le, %2
  %i.lg = zext i16 %i.jf to i64                   ; 6 uses
  %.not19.i.i124 = icmp eq i16 %i.jf, 0           ; 2 uses
  br i1 %i.lf, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %.critedge6
  br i1 %.not19.i.i124, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit133.thread, label %.lr.ph.i.i125

.lr.ph.i.i125:                                    ; preds = %bb.x
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost4json6detail8charconv6detail10fast_floatL20powers_of_ten_uint64E, i64 %.5263.lcssa
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !15
  %i.lj = zext i64 %i.li to i128                  ; 3 uses
  %xtraiter634 = and i64 %i.lg, 1
  %i.lk = icmp eq i16 %i.jf, 1
  br i1 %i.lk, label %.epil.preheader633, label %.lr.ph.i.i125.new

.lr.ph.i.i125.new:                                ; preds = %.lr.ph.i.i125
  %unroll_iter639 = and i64 %i.lg, 65534
  br label %bb.y

._crit_edge.i.i129.unr-lcssa:                     ; preds = %bb.y
  %lcmp.mod635.not = icmp eq i64 %xtraiter634, 0
  br i1 %lcmp.mod635.not, label %._crit_edge.i.i129, label %.epil.preheader633

.epil.preheader633:                               ; preds = %._crit_edge.i.i129.unr-lcssa, %.lr.ph.i.i125
  %.016.i.i126.epil.init = phi i64 [ 0, %.lr.ph.i.i125 ], [ %i.mm, %._crit_edge.i.i129.unr-lcssa ]
  %.01215.i.i127.epil.init = phi i64 [ 0, %.lr.ph.i.i125 ], [ %i.mk, %._crit_edge.i.i129.unr-lcssa ]
  %lcmp.mod638 = trunc i16 %i.jf to i1
  tail call void @llvm.assume(i1 %lcmp.mod638)
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i126.epil.init ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !15
  %i.ln = zext i64 %i.lm to i128
  %i.lo = mul nuw i128 %i.ln, %i.lj
  %i.lp = zext i64 %.01215.i.i127.epil.init to i128
  %i.lq = add nuw i128 %i.lo, %i.lp               ; 2 uses
  %i.lr = lshr i128 %i.lq, 64                     ; 2 uses
  %i.ls = trunc nuw i128 %i.lr to i64
  %i.lt = trunc i128 %i.lq to i64
  store i64 %i.lt, ptr %i.ll, align 8, !tbaa !15
  br label %._crit_edge.i.i129

._crit_edge.i.i129:                               ; preds = %._crit_edge.i.i129.unr-lcssa, %.epil.preheader633
  %.lcssa575 = phi i128 [ %i.mj, %._crit_edge.i.i129.unr-lcssa ], [ %i.lr, %.epil.preheader633 ]
  %.lcssa574 = phi i64 [ %i.mk, %._crit_edge.i.i129.unr-lcssa ], [ %i.ls, %.epil.preheader633 ]
  %.not.i.i130 = icmp ne i128 %.lcssa575, 0
  %i.lu = icmp ult i16 %i.jf, 62
  %or.cond279 = and i1 %i.lu, %.not.i.i130
  br i1 %or.cond279, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i132, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit133

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i125.new
  %.016.i.i126 = phi i64 [ 0, %.lr.ph.i.i125.new ], [ %i.mm, %bb.y ] ; 3 uses
  %.01215.i.i127 = phi i64 [ 0, %.lr.ph.i.i125.new ], [ %i.mk, %bb.y ]
  %niter640 = phi i64 [ 0, %.lr.ph.i.i125.new ], [ %niter640.next.1, %bb.y ]
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i126 ; 2 uses
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !15
  %i.lx = zext i64 %i.lw to i128
  %i.ly = mul nuw i128 %i.lx, %i.lj
  %i.lz = zext i64 %.01215.i.i127 to i128
  %i.ma = add nuw i128 %i.ly, %i.lz               ; 2 uses
  %i.mb = lshr i128 %i.ma, 64
  %i.mc = trunc i128 %i.ma to i64
  store i64 %i.mc, ptr %i.lv, align 8, !tbaa !15
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i126
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !15
  %i.mg = zext i64 %i.mf to i128
  %i.mh = mul nuw i128 %i.mg, %i.lj
  %i.mi = add nuw i128 %i.mh, %i.mb               ; 2 uses
  %i.mj = lshr i128 %i.mi, 64                     ; 2 uses
  %i.mk = trunc nuw i128 %i.mj to i64             ; 3 uses
  %i.ml = trunc i128 %i.mi to i64
  store i64 %i.ml, ptr %i.me, align 8, !tbaa !15
  %i.mm = add nuw nsw i64 %.016.i.i126, 2         ; 2 uses
  %niter640.next.1 = add nuw i64 %niter640, 2     ; 2 uses
  %niter640.ncmp.1 = icmp eq i64 %niter640.next.1, %unroll_iter639
  br i1 %niter640.ncmp.1, label %._crit_edge.i.i129.unr-lcssa, label %bb.y, !llvm.loop !994

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i132: ; preds = %._crit_edge.i.i129
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.lg
  store i64 %.lcssa574, ptr %i.mn, align 8, !tbaa !15
  %i.mo = add nuw nsw i16 %i.jf, 1                ; 2 uses
  store i16 %i.mo, ptr %i.je, align 8, !tbaa !991
  br label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit133

_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit133: ; preds = %._crit_edge.i.i129, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i132
  %i.mp = phi i16 [ %i.mo, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i132 ], [ %i.jf, %._crit_edge.i.i129 ] ; 8 uses
  %.not20.i.i134 = icmp eq i64 %.5256.lcssa, 0
  br i1 %.not20.i.i134, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit144, label %.lr.ph.i.i135

_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit133.thread: ; preds = %bb.x
  %.not20.i.i134496 = icmp eq i64 %.5256.lcssa, 0
  br i1 %.not20.i.i134496, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit144, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i142

.lr.ph.i.i135:                                    ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit133
  %i.mq = zext i16 %i.mp to i64                   ; 2 uses
  %i.mr = load i64, ptr %0, align 8, !tbaa !15
  %i.ms = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.mr, i64 %.5256.lcssa) ; 2 uses
  %i.mt = extractvalue { i64, i1 } %i.ms, 1
  %i.mu = extractvalue { i64, i1 } %i.ms, 0
  store i64 %i.mu, ptr %0, align 8, !tbaa !15
  br i1 %i.mt, label %.peel.next.i138.preheader, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit144

.peel.next.i138.preheader:                        ; preds = %.lr.ph.i.i135
  %exitcond.not.i.i140564 = icmp eq i16 %i.mp, 1
  br i1 %exitcond.not.i.i140564, label %.critedge.i.i141, label %.lr.ph566

.peel.next.i138:                                  ; preds = %.lr.ph566
  %i.mv = add nuw nsw i64 %.01421.i.i139565, 1    ; 2 uses
  %exitcond.not.i.i140 = icmp eq i64 %i.mv, %i.mq
  br i1 %exitcond.not.i.i140, label %.critedge.i.i141, label %.lr.ph566, !llvm.loop !995

.lr.ph566:                                        ; preds = %.peel.next.i138.preheader, %.peel.next.i138
  %.01421.i.i139565 = phi i64 [ %i.mv, %.peel.next.i138 ], [ 1, %.peel.next.i138.preheader ] ; 2 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i139565 ; 2 uses
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !15
  %i.my = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.mx, i64 1) ; 2 uses
  %i.mz = extractvalue { i64, i1 } %i.my, 1
  %i.na = extractvalue { i64, i1 } %i.my, 0
  store i64 %i.na, ptr %i.mw, align 8, !tbaa !15
  br i1 %i.mz, label %.peel.next.i138, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit144, !llvm.loop !995

.critedge.i.i141:                                 ; preds = %.peel.next.i138, %.peel.next.i138.preheader
  %i.nb = icmp ult i16 %i.mp, 62
  br i1 %i.nb, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i142, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit144

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i142: ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit133.thread, %.critedge.i.i141
  %i.nc = phi i64 [ %i.mq, %.critedge.i.i141 ], [ 0, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit133.thread ]
  %i.nd = phi i16 [ %i.mp, %.critedge.i.i141 ], [ 0, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit133.thread ]
  %.022.i.lcssa7.i143 = phi i64 [ 1, %.critedge.i.i141 ], [ %.5256.lcssa, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit133.thread ]
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.nc
  store i64 %.022.i.lcssa7.i143, ptr %i.ne, align 8, !tbaa !15
  %i.nf = add nuw nsw i16 %i.nd, 1                ; 2 uses
  store i16 %i.nf, ptr %i.je, align 8, !tbaa !991
  br label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit144

_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit144: ; preds = %.lr.ph566, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit133.thread, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit133, %.lr.ph.i.i135, %.critedge.i.i141, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i142
  %.pr269 = phi i16 [ 0, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit133.thread ], [ %i.mp, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit133 ], [ %i.mp, %.lr.ph.i.i135 ], [ %i.mp, %.critedge.i.i141 ], [ %i.nf, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i142 ], [ %i.mp, %.lr.ph566 ] ; 7 uses
  %i.ng = ptrtoint ptr %.6.lcssa to i64
  %i.nh = sub i64 %i.jd, %i.ng
  %i.ni = icmp sgt i64 %i.nh, 7
  br i1 %i.ni, label %.lr.ph407, label %.preheader

.preheader:                                       ; preds = %bb.z, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit144
  %.09.i.lcssa = phi ptr [ %.6.lcssa, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit144 ], [ %i.nj, %bb.z ] ; 2 uses
  %.not.i68409 = icmp eq ptr %.09.i.lcssa, %i.iq
  br i1 %.not.i68409, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit, label %.lr.ph411

.lr.ph407:                                        ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit144, %bb.z
  %.09.i406 = phi ptr [ %i.nj, %bb.z ], [ %.6.lcssa, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit144 ] ; 2 uses
  %.0.copyload.i69 = load i64, ptr %.09.i406, align 1
  %.not11.i = icmp eq i64 %.0.copyload.i69, 3472328296227680304
  br i1 %.not11.i, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %.lr.ph407
  %i.nj = getelementptr inbounds nuw i8, ptr %.09.i406, i64 8 ; 3 uses
  %i.nk = ptrtoint ptr %i.nj to i64
  %i.nl = sub i64 %i.jd, %i.nk
  %i.nm = icmp sgt i64 %i.nl, 7
  br i1 %i.nm, label %.lr.ph407, label %.preheader, !llvm.loop !997

bb.aa:                                            ; preds = %.lr.ph411
  %i.nn = getelementptr inbounds nuw i8, ptr %.1.i410, i64 1 ; 2 uses
  %.not.i68 = icmp eq ptr %i.nn, %i.iq
  br i1 %.not.i68, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit, label %.lr.ph411, !llvm.loop !998

.lr.ph411:                                        ; preds = %.preheader, %bb.aa
  %.1.i410 = phi ptr [ %i.nn, %bb.aa ], [ %.09.i.lcssa, %.preheader ] ; 2 uses
  %i.no = load i8, ptr %.1.i410, align 1, !tbaa !19
  %.not10.i = icmp eq i8 %i.no, 48
  br i1 %.not10.i, label %bb.aa, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph407, %.lr.ph411
  %i.np = zext i16 %.pr269 to i64                 ; 4 uses
  %.not19.i.i145 = icmp eq i16 %.pr269, 0
  br i1 %.not19.i.i145, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i162, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %.loopexit
  %xtraiter641 = and i64 %i.np, 1
  %i.nq = icmp eq i16 %.pr269, 1
  br i1 %i.nq, label %.lr.ph.i.i146.epil.preheader, label %.lr.ph.i.i146.preheader.new

.lr.ph.i.i146.preheader.new:                      ; preds = %.lr.ph.i.i146.preheader
  %unroll_iter646 = and i64 %i.np, 65534
  br label %.lr.ph.i.i146

._crit_edge.i.i150.unr-lcssa:                     ; preds = %.lr.ph.i.i146
  %lcmp.mod642.not = icmp eq i64 %xtraiter641, 0
  br i1 %lcmp.mod642.not, label %._crit_edge.i.i150, label %.lr.ph.i.i146.epil.preheader

.lr.ph.i.i146.epil.preheader:                     ; preds = %._crit_edge.i.i150.unr-lcssa, %.lr.ph.i.i146.preheader
  %.016.i.i147.epil.init = phi i64 [ 0, %.lr.ph.i.i146.preheader ], [ %i.os, %._crit_edge.i.i150.unr-lcssa ]
  %.01215.i.i148.epil.init = phi i64 [ 0, %.lr.ph.i.i146.preheader ], [ %i.oq, %._crit_edge.i.i150.unr-lcssa ]
  %lcmp.mod645 = trunc i16 %.pr269 to i1
  tail call void @llvm.assume(i1 %lcmp.mod645)
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i147.epil.init ; 2 uses
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !15
  %i.nt = zext i64 %i.ns to i128
  %i.nu = mul nuw nsw i128 %i.nt, 10
  %i.nv = zext nneg i64 %.01215.i.i148.epil.init to i128
  %i.nw = add nuw nsw i128 %i.nu, %i.nv           ; 2 uses
  %i.nx = lshr i128 %i.nw, 64                     ; 2 uses
  %i.ny = trunc nuw nsw i128 %i.nx to i64
  %i.nz = trunc i128 %i.nw to i64
  store i64 %i.nz, ptr %i.nr, align 8, !tbaa !15
  br label %._crit_edge.i.i150

._crit_edge.i.i150:                               ; preds = %._crit_edge.i.i150.unr-lcssa, %.lr.ph.i.i146.epil.preheader
  %.lcssa571 = phi i128 [ %i.op, %._crit_edge.i.i150.unr-lcssa ], [ %i.nx, %.lr.ph.i.i146.epil.preheader ]
  %.lcssa = phi i64 [ %i.oq, %._crit_edge.i.i150.unr-lcssa ], [ %i.ny, %.lr.ph.i.i146.epil.preheader ]
  %.not.i.i151 = icmp ne i128 %.lcssa571, 0
  %i.oa = icmp ult i16 %.pr269, 62
  %or.cond280 = and i1 %i.oa, %.not.i.i151
  br i1 %or.cond280, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit154.thread271, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit154

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146, %.lr.ph.i.i146.preheader.new
  %.016.i.i147 = phi i64 [ 0, %.lr.ph.i.i146.preheader.new ], [ %i.os, %.lr.ph.i.i146 ] ; 3 uses
  %.01215.i.i148 = phi i64 [ 0, %.lr.ph.i.i146.preheader.new ], [ %i.oq, %.lr.ph.i.i146 ]
  %niter647 = phi i64 [ 0, %.lr.ph.i.i146.preheader.new ], [ %niter647.next.1, %.lr.ph.i.i146 ]
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i147 ; 2 uses
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !15
  %i.od = zext i64 %i.oc to i128
  %i.oe = mul nuw nsw i128 %i.od, 10
  %i.of = zext nneg i64 %.01215.i.i148 to i128
  %i.og = add nuw nsw i128 %i.oe, %i.of           ; 2 uses
  %i.oh = lshr i128 %i.og, 64
  %i.oi = trunc i128 %i.og to i64
  store i64 %i.oi, ptr %i.ob, align 8, !tbaa !15
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i147
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 2 uses
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !15
  %i.om = zext i64 %i.ol to i128
  %i.on = mul nuw nsw i128 %i.om, 10
  %i.oo = add nuw nsw i128 %i.on, %i.oh           ; 2 uses
  %i.op = lshr i128 %i.oo, 64                     ; 2 uses
  %i.oq = trunc nuw nsw i128 %i.op to i64         ; 3 uses
  %i.or = trunc i128 %i.oo to i64
  store i64 %i.or, ptr %i.ok, align 8, !tbaa !15
  %i.os = add nuw nsw i64 %.016.i.i147, 2         ; 2 uses
  %niter647.next.1 = add nuw i64 %niter647, 2     ; 2 uses
  %niter647.ncmp.1 = icmp eq i64 %niter647.next.1, %unroll_iter646
  br i1 %niter647.ncmp.1, label %._crit_edge.i.i150.unr-lcssa, label %.lr.ph.i.i146, !llvm.loop !994

_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit154.thread271: ; preds = %._crit_edge.i.i150
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.np
  store i64 %.lcssa, ptr %i.ot, align 8, !tbaa !15
  %i.ou = add nuw nsw i16 %.pr269, 1              ; 3 uses
  store i16 %i.ou, ptr %i.je, align 8, !tbaa !991
  %.pre448 = zext nneg i16 %i.ou to i64
  br label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit154

_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit154: ; preds = %._crit_edge.i.i150, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit154.thread271
  %.pre-phi = phi i64 [ %.pre448, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit154.thread271 ], [ %i.np, %._crit_edge.i.i150 ] ; 3 uses
  %i.ov = phi i16 [ %i.ou, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit154.thread271 ], [ %.pr269, %._crit_edge.i.i150 ] ; 2 uses
  %i.ow = load i64, ptr %0, align 8, !tbaa !15
  %i.ox = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ow, i64 1) ; 2 uses
  %i.oy = extractvalue { i64, i1 } %i.ox, 1
  %i.oz = extractvalue { i64, i1 } %i.ox, 0
  store i64 %i.oz, ptr %0, align 8, !tbaa !15
  br i1 %i.oy, label %.peel.next.i158.preheader, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit.sink.split

.peel.next.i158.preheader:                        ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit154
  %exitcond.not.i.i160567 = icmp eq i64 %.pre-phi, 1
  br i1 %exitcond.not.i.i160567, label %.critedge.i.i161, label %.lr.ph569

.peel.next.i158:                                  ; preds = %.lr.ph569
  %i.pa = add nuw nsw i64 %.01421.i.i159568, 1    ; 2 uses
  %exitcond.not.i.i160 = icmp eq i64 %i.pa, %.pre-phi
  br i1 %exitcond.not.i.i160, label %.critedge.i.i161, label %.lr.ph569, !llvm.loop !995

.lr.ph569:                                        ; preds = %.peel.next.i158.preheader, %.peel.next.i158
  %.01421.i.i159568 = phi i64 [ %i.pa, %.peel.next.i158 ], [ 1, %.peel.next.i158.preheader ] ; 2 uses
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i159568 ; 2 uses
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !15
  %i.pd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.pc, i64 1) ; 2 uses
  %i.pe = extractvalue { i64, i1 } %i.pd, 1
  %i.pf = extractvalue { i64, i1 } %i.pd, 0
  store i64 %i.pf, ptr %i.pb, align 8, !tbaa !15
  br i1 %i.pe, label %.peel.next.i158, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit.sink.split, !llvm.loop !995

.critedge.i.i161:                                 ; preds = %.peel.next.i158, %.peel.next.i158.preheader
  %i.pg = icmp ult i16 %i.ov, 62
  br i1 %i.pg, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i162, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit.sink.split

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i162: ; preds = %.loopexit, %.critedge.i.i161
  %i.ph = phi i64 [ 0, %.loopexit ], [ %.pre-phi, %.critedge.i.i161 ]
  %i.pi = phi i16 [ 0, %.loopexit ], [ %i.ov, %.critedge.i.i161 ]
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ph
  store i64 1, ptr %i.pj, align 8, !tbaa !15
  %i.pk = add nuw nsw i16 %i.pi, 1
  store i16 %i.pk, ptr %i.je, align 8, !tbaa !991
  br label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit.sink.split

bb.ab:                                            ; preds = %.critedge6
  br i1 %.not19.i.i124, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit174.thread, label %.lr.ph.i.i166

.lr.ph.i.i166:                                    ; preds = %bb.ab
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost4json6detail8charconv6detail10fast_floatL20powers_of_ten_uint64E, i64 %.5263.lcssa
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !15
  %i.pn = zext i64 %i.pm to i128                  ; 3 uses
  %xtraiter626 = and i64 %i.lg, 1
  %i.po = icmp eq i16 %i.jf, 1
  br i1 %i.po, label %.epil.preheader625, label %.lr.ph.i.i166.new

.lr.ph.i.i166.new:                                ; preds = %.lr.ph.i.i166
  %unroll_iter631 = and i64 %i.lg, 65534
  br label %bb.ac

._crit_edge.i.i170.unr-lcssa:                     ; preds = %bb.ac
  %lcmp.mod627.not = icmp eq i64 %xtraiter626, 0
  br i1 %lcmp.mod627.not, label %._crit_edge.i.i170, label %.epil.preheader625

.epil.preheader625:                               ; preds = %._crit_edge.i.i170.unr-lcssa, %.lr.ph.i.i166
  %.016.i.i167.epil.init = phi i64 [ 0, %.lr.ph.i.i166 ], [ %i.qq, %._crit_edge.i.i170.unr-lcssa ]
  %.01215.i.i168.epil.init = phi i64 [ 0, %.lr.ph.i.i166 ], [ %i.qo, %._crit_edge.i.i170.unr-lcssa ]
  %lcmp.mod630 = trunc i16 %i.jf to i1
  tail call void @llvm.assume(i1 %lcmp.mod630)
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i167.epil.init ; 2 uses
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !15
  %i.pr = zext i64 %i.pq to i128
  %i.ps = mul nuw i128 %i.pr, %i.pn
  %i.pt = zext i64 %.01215.i.i168.epil.init to i128
  %i.pu = add nuw i128 %i.ps, %i.pt               ; 2 uses
  %i.pv = lshr i128 %i.pu, 64                     ; 2 uses
  %i.pw = trunc nuw i128 %i.pv to i64
  %i.px = trunc i128 %i.pu to i64
  store i64 %i.px, ptr %i.pp, align 8, !tbaa !15
  br label %._crit_edge.i.i170

._crit_edge.i.i170:                               ; preds = %._crit_edge.i.i170.unr-lcssa, %.epil.preheader625
  %.lcssa578 = phi i128 [ %i.qn, %._crit_edge.i.i170.unr-lcssa ], [ %i.pv, %.epil.preheader625 ]
  %.lcssa577 = phi i64 [ %i.qo, %._crit_edge.i.i170.unr-lcssa ], [ %i.pw, %.epil.preheader625 ]
  %.not.i.i171 = icmp ne i128 %.lcssa578, 0
  %i.py = icmp ult i16 %i.jf, 62
  %or.cond281 = and i1 %i.py, %.not.i.i171
  br i1 %or.cond281, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i173, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit174

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i.i166.new
  %.016.i.i167 = phi i64 [ 0, %.lr.ph.i.i166.new ], [ %i.qq, %bb.ac ] ; 3 uses
  %.01215.i.i168 = phi i64 [ 0, %.lr.ph.i.i166.new ], [ %i.qo, %bb.ac ]
  %niter632 = phi i64 [ 0, %.lr.ph.i.i166.new ], [ %niter632.next.1, %bb.ac ]
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i167 ; 2 uses
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !15
  %i.qb = zext i64 %i.qa to i128
  %i.qc = mul nuw i128 %i.qb, %i.pn
  %i.qd = zext i64 %.01215.i.i168 to i128
  %i.qe = add nuw i128 %i.qc, %i.qd               ; 2 uses
  %i.qf = lshr i128 %i.qe, 64
  %i.qg = trunc i128 %i.qe to i64
  store i64 %i.qg, ptr %i.pz, align 8, !tbaa !15
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i167
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8 ; 2 uses
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !15
  %i.qk = zext i64 %i.qj to i128
  %i.ql = mul nuw i128 %i.qk, %i.pn
  %i.qm = add nuw i128 %i.ql, %i.qf               ; 2 uses
  %i.qn = lshr i128 %i.qm, 64                     ; 2 uses
  %i.qo = trunc nuw i128 %i.qn to i64             ; 3 uses
  %i.qp = trunc i128 %i.qm to i64
  store i64 %i.qp, ptr %i.qi, align 8, !tbaa !15
  %i.qq = add nuw nsw i64 %.016.i.i167, 2         ; 2 uses
  %niter632.next.1 = add nuw i64 %niter632, 2     ; 2 uses
  %niter632.ncmp.1 = icmp eq i64 %niter632.next.1, %unroll_iter631
  br i1 %niter632.ncmp.1, label %._crit_edge.i.i170.unr-lcssa, label %bb.ac, !llvm.loop !994

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i173: ; preds = %._crit_edge.i.i170
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.lg
  store i64 %.lcssa577, ptr %i.qr, align 8, !tbaa !15
  %i.qs = add nuw nsw i16 %i.jf, 1                ; 2 uses
  store i16 %i.qs, ptr %i.je, align 8, !tbaa !991
  br label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit174

_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit174: ; preds = %._crit_edge.i.i170, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i173
  %i.qt = phi i16 [ %i.qs, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i173 ], [ %i.jf, %._crit_edge.i.i170 ] ; 8 uses
  %.not20.i.i175 = icmp eq i64 %.5256.lcssa, 0
  br i1 %.not20.i.i175, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit185, label %.lr.ph.i.i176

_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit174.thread: ; preds = %bb.ab
  %.not20.i.i175498 = icmp eq i64 %.5256.lcssa, 0
  br i1 %.not20.i.i175498, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit185, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i183

.lr.ph.i.i176:                                    ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit174
  %i.qu = zext i16 %i.qt to i64                   ; 2 uses
  %i.qv = load i64, ptr %0, align 8, !tbaa !15
  %i.qw = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.qv, i64 %.5256.lcssa) ; 2 uses
  %i.qx = extractvalue { i64, i1 } %i.qw, 1
  %i.qy = extractvalue { i64, i1 } %i.qw, 0
  store i64 %i.qy, ptr %0, align 8, !tbaa !15
  br i1 %i.qx, label %.peel.next.i179.preheader, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit185

.peel.next.i179.preheader:                        ; preds = %.lr.ph.i.i176
  %exitcond.not.i.i181561 = icmp eq i16 %i.qt, 1
  br i1 %exitcond.not.i.i181561, label %.critedge.i.i182, label %.lr.ph563

.peel.next.i179:                                  ; preds = %.lr.ph563
  %i.qz = add nuw nsw i64 %.01421.i.i180562, 1    ; 2 uses
  %exitcond.not.i.i181 = icmp eq i64 %i.qz, %i.qu
  br i1 %exitcond.not.i.i181, label %.critedge.i.i182, label %.lr.ph563, !llvm.loop !995

.lr.ph563:                                        ; preds = %.peel.next.i179.preheader, %.peel.next.i179
  %.01421.i.i180562 = phi i64 [ %i.qz, %.peel.next.i179 ], [ 1, %.peel.next.i179.preheader ] ; 2 uses
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i180562 ; 2 uses
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !15
  %i.rc = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.rb, i64 1) ; 2 uses
  %i.rd = extractvalue { i64, i1 } %i.rc, 1
  %i.re = extractvalue { i64, i1 } %i.rc, 0
  store i64 %i.re, ptr %i.ra, align 8, !tbaa !15
  br i1 %i.rd, label %.peel.next.i179, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit185, !llvm.loop !995

.critedge.i.i182:                                 ; preds = %.peel.next.i179, %.peel.next.i179.preheader
  %i.rf = icmp ult i16 %i.qt, 62
  br i1 %i.rf, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i183, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit185

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i183: ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit174.thread, %.critedge.i.i182
  %i.rg = phi i64 [ %i.qu, %.critedge.i.i182 ], [ 0, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit174.thread ]
  %i.rh = phi i16 [ %i.qt, %.critedge.i.i182 ], [ 0, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit174.thread ]
  %.022.i.lcssa7.i184 = phi i64 [ 1, %.critedge.i.i182 ], [ %.5256.lcssa, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit174.thread ]
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.rg
  store i64 %.022.i.lcssa7.i184, ptr %i.ri, align 8, !tbaa !15
  %i.rj = add nuw nsw i16 %i.rh, 1                ; 2 uses
  store i16 %i.rj, ptr %i.je, align 8, !tbaa !991
  br label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit185

_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit185: ; preds = %.lr.ph563, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit174.thread, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit174, %.lr.ph.i.i176, %.critedge.i.i182, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i183
  %i.rk = phi i16 [ %i.rj, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i183 ], [ %i.jf, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit174.thread ], [ %i.qt, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit174 ], [ %i.qt, %.lr.ph.i.i176 ], [ %i.qt, %.critedge.i.i182 ], [ %i.qt, %.lr.ph563 ]
  %.not56 = icmp eq ptr %.6.lcssa, %i.iq
  br i1 %.not56, label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit, label %.preheader283, !llvm.loop !1002

_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit.sink.split: ; preds = %.lr.ph560, %.lr.ph569, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i162, %.critedge.i.i161, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit154, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i100, %.critedge.i.i99, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3mulEm.exit92
  %i.rl = load i64, ptr %3, align 8, !tbaa !15
  %i.rm = add i64 %i.rl, 1
  store i64 %i.rm, ptr %3, align 8, !tbaa !15
  br label %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit

_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit: ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float6bigint3addEm.exit185, %bb.aa, %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit.sink.split, %._crit_edge365, %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbPKT_S8_.exit77.thread, %_ZN5boost4json6detail8charconv6detail10fast_float10skip_zerosIcEEvRPKT_S8_.exit, %.preheader, %._crit_edge346, %_ZN5boost4json6detail8charconv6detail10fast_float12is_truncatedIcEEbNS4_4spanIKT_EE.exit, %bb.n
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i32 } @_ZN5boost4json6detail8charconv6detail10fast_float19positive_digit_compIdEENS4_17adjusted_mantissaERNS4_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5boost4json6detail8charconv6detail10fast_float6bigint4pow5Ej(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) #47
  br i1 %i.a, label %bb.b, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint5pow10Ej.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = and i64 %i.b, 63                         ; 4 uses
  %i.d = lshr i64 %i.b, 6                         ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw nsw i64 64, %i.c                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !991  ; 5 uses
  %i.h = zext i16 %i.g to i64                     ; 4 uses
  %.not25.i.i.i.i = icmp eq i16 %i.g, 0
  br i1 %.not25.i.i.i.i, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %min.iters.check = icmp ult i16 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.h, 65532                    ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <2 x i64> poison, i64 %i.e, i64 0
  %broadcast.splat47 = shufflevector <2 x i64> %broadcast.splatinsert46, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <2 x i64> [ <i64 poison, i64 0>, %vector.ph ], [ %wide.load48, %vector.body ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !tbaa !15 ; 3 uses
  %wide.load48 = load <2 x i64>, ptr %i.j, align 8, !tbaa !15 ; 4 uses
  %i.k = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.l = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load48, <2 x i32> <i32 1, i32 2>
  %i.m = shl <2 x i64> %wide.load, %broadcast.splat
  %i.n = shl <2 x i64> %wide.load48, %broadcast.splat
  %i.o = lshr <2 x i64> %i.k, %broadcast.splat47
  %i.p = lshr <2 x i64> %i.l, %broadcast.splat47
  %i.q = or disjoint <2 x i64> %i.m, %i.o
  %i.r = or disjoint <2 x i64> %i.n, %i.p
  store <2 x i64> %i.q, ptr %i.i, align 8, !tbaa !15
  store <2 x i64> %i.r, ptr %i.j, align 8, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !1003

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load48, i64 1 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader49

.lr.ph.i.i.i.i.preheader49:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.01622.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.01721.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %vector.recur.extract, %middle.block ]
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.lcssa45 = phi i64 [ %vector.recur.extract, %middle.block ], [ %i.v, %.lr.ph.i.i.i.i ]
  %i.t = lshr i64 %.lcssa45, %i.e                 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %bb.d

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader49, %.lr.ph.i.i.i.i
  %.01622.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i ], [ %.01622.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader49 ] ; 2 uses
  %.01721.i.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i.i ], [ %.01721.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader49 ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01622.i.i.i.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !15   ; 3 uses
  %i.w = shl i64 %i.v, %i.c
  %i.x = lshr i64 %.01721.i.i.i.i, %i.e
  %i.y = or disjoint i64 %i.w, %i.x
  store i64 %i.y, ptr %i.u, align 8, !tbaa !15
  %i.z = add nuw nsw i64 %.01622.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.z, %i.h
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1004

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = icmp ult i16 %i.g, 62
  br i1 %i.aa, label %bb.e, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint5pow10Ej.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  store i64 %i.t, ptr %i.ab, align 8, !tbaa !15
  %i.ac = add nuw nsw i16 %i.g, 1
  store i16 %i.ac, ptr %i.f, align 8, !tbaa !991
  br label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i

_ZN5boost4json6detail8charconv6detail10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i: ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c, %bb.b
  %.not9.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not9.i.i.i, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint5pow10Ej.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !991 ; 3 uses
  %i.af = zext i16 %i.ae to i64                   ; 3 uses
  %i.ag = add nuw nsw i64 %i.d, %i.af
  %i.ah = icmp samesign ult i64 %i.ag, 63
  %i.ai = icmp ne i16 %i.ae, 0
  %or.cond.not.i.i.i.i = and i1 %i.ai, %i.ah
  br i1 %or.cond.not.i.i.i.i, label %bb.g, label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint5pow10Ej.exit

bb.g:                                             ; preds = %bb.f
  %.idx12.i.i.i.i = shl nuw nsw i64 %i.d, 3       ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx12.i.i.i.i ; 2 uses
  %i.ak = icmp ugt i16 %i.ae, 1
  br i1 %i.ak, label %bb.h, label %bb.i, !prof !319

bb.h:                                             ; preds = %bb.g
  %.idx.i.i.i.i = shl nuw nsw i64 %i.af, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 8 dereferenceable(504) %0, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i = load i16, ptr %i.ad, align 8, !tbaa !991
  br label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.af
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = load i64, ptr %0, align 8, !tbaa !15
end_hunk_1
begin_hunk_2_@_ZN5boost4json6detail8charconv6detail10fast_float19negative_digit_compIdEENS4_17adjusted_mantissaERNS4_6bigintES6_i:bb.a
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -8
  %i.dd = load i64, ptr %0, align 8, !tbaa !15
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !15
  br label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint9shl_limbsEm.exit.thread.i.i47

_ZN5boost4json6detail8charconv6detail10fast_float6bigint9shl_limbsEm.exit.thread.i.i47: ; preds = %bb.y, %bb.x
  %i.de = phi i16 [ %.pre.i.i49, %bb.x ], [ 1, %bb.y ]
  call void @llvm.memset.p0.i64(ptr nonnull align 8 dereferenceable(504) %0, i8 0, i64 %.idx12.i.i.i46, i1 false), !tbaa !15
  %i.df = trunc nuw i64 %i.bt to i16
  %i.dg = add i16 %i.de, %i.df
  store i16 %i.dg, ptr %i.ct, align 8, !tbaa !991
  br label %_ZN5boost4json6detail8charconv6detail10fast_float6bigint4pow2Ej.exit

_ZN5boost4json6detail8charconv6detail10fast_float6bigint4pow2Ej.exit: ; preds = %bb.v, %bb.m, %bb.t, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint9shl_limbsEm.exit.thread.i.i47, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint8shl_bitsEm.exit.thread.i.i42, %bb.k, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint9shl_limbsEm.exit.thread.i.i, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint8shl_bitsEm.exit.thread.i.i, %bb.q
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.di = load i16, ptr %i.dh, align 8, !tbaa !991 ; 4 uses
  %i.dj = load i16, ptr %i.v, align 8, !tbaa !991 ; 2 uses
  %i.dk = icmp ugt i16 %i.di, %i.dj
  br i1 %i.dk, label %_ZNK5boost4json6detail8charconv6detail10fast_float6bigint7compareERKS5_.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float6bigint4pow2Ej.exit
  %i.dl = icmp ult i16 %i.di, %i.dj
  br i1 %i.dl, label %_ZNK5boost4json6detail8charconv6detail10fast_float6bigint7compareERKS5_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.z
  %.not.i51122 = icmp eq i16 %i.di, 0
  br i1 %.not.i51122, label %_ZNK5boost4json6detail8charconv6detail10fast_float6bigint7compareERKS5_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader.i
  %i.dm = zext i16 %i.di to i64
  br label %bb.aa

.preheader.i:                                     ; preds = %bb.aa
  %.not.i51 = icmp eq i64 %i.dn, 0
  br i1 %.not.i51, label %_ZNK5boost4json6detail8charconv6detail10fast_float6bigint7compareERKS5_.exit, label %bb.aa, !llvm.loop !1010

bb.aa:                                            ; preds = %.lr.ph, %.preheader.i
  %.014.i124 = phi i64 [ %i.dm, %.lr.ph ], [ %i.dn, %.preheader.i ]
  %.015.i123 = phi i32 [ undef, %.lr.ph ], [ %.116.i, %.preheader.i ]
  %i.dn = add nsw i64 %.014.i124, -1              ; 4 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !15 ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dn
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !15 ; 3 uses
  %.not21.i = icmp ugt i64 %i.dp, %i.dr
  %.not22.i = icmp ult i64 %i.dp, %i.dr
  %..015.i = select i1 %.not22.i, i32 -1, i32 %.015.i123
  %.116.i = select i1 %.not21.i, i32 1, i32 %..015.i ; 2 uses
  %cond.i = icmp eq i64 %i.dp, %i.dr
  br i1 %cond.i, label %.preheader.i, label %._ZNK5boost4json6detail8charconv6detail10fast_float6bigint7compareERKS5_.exit.loopexit_crit_edge, !llvm.loop !1010

._ZNK5boost4json6detail8charconv6detail10fast_float6bigint7compareERKS5_.exit.loopexit_crit_edge: ; preds = %bb.aa
  br label %_ZNK5boost4json6detail8charconv6detail10fast_float6bigint7compareERKS5_.exit, !llvm.loop !1010

_ZNK5boost4json6detail8charconv6detail10fast_float6bigint7compareERKS5_.exit: ; preds = %.preheader.i, %.preheader.preheader.i, %._ZNK5boost4json6detail8charconv6detail10fast_float6bigint7compareERKS5_.exit.loopexit_crit_edge, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint4pow2Ej.exit, %bb.z
  %.3.i = phi i32 [ -1, %bb.z ], [ 1, %_ZN5boost4json6detail8charconv6detail10fast_float6bigint4pow2Ej.exit ], [ 0, %.preheader.preheader.i ], [ %.116.i, %._ZNK5boost4json6detail8charconv6detail10fast_float6bigint7compareERKS5_.exit.loopexit_crit_edge ], [ 0, %.preheader.i ] ; 4 uses
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNK5boost4json6detail8charconv6detail10fast_float6bigint7compareERKS5_.exit
  %i.ds = sub i32 1, %2                           ; 2 uses
  %.sroa.speculated87 = call i32 @llvm.smin.i32(i32 %i.ds, i32 64)
  %i.dt = icmp sgt i32 %i.ds, 63
  %i.du = zext nneg i32 %.sroa.speculated87 to i64
  %i.dv = lshr i64 %1, %i.du
  %storemerge.i53 = select i1 %i.dt, i64 0, i64 %i.dv ; 2 uses
  %i.dw = trunc i64 %storemerge.i53 to i1
  %i.dx = icmp sgt i32 %.3.i, 0
  %i.dy = icmp sgt i32 %.3.i, -1
  %..i.i = and i1 %i.dy, %i.dw
  %.0.i.i54 = or i1 %i.dx, %..i.i
  %i.dz = zext i1 %.0.i.i54 to i64
  %i.ea = add i64 %storemerge.i53, %i.dz          ; 2 uses
  %i.eb = icmp ugt i64 %i.ea, 4503599627370495
  %i.ec = zext i1 %i.eb to i32
  br label %_ZN5boost4json6detail8charconv6detail10fast_float5roundIdZNS4_19negative_digit_compIdEENS4_17adjusted_mantissaERNS4_6bigintES7_iEUlRS7_iE0_EEvSA_T0_.exit

bb.ac:                                            ; preds = %_ZNK5boost4json6detail8charconv6detail10fast_float6bigint7compareERKS5_.exit
  %i.ed = lshr i64 %1, 11                         ; 2 uses
  %i.ee = trunc i64 %i.ed to i1
  %i.ef = icmp sgt i32 %.3.i, 0
  %i.eg = icmp sgt i32 %.3.i, -1
  %..i.i56 = and i1 %i.eg, %i.ee
  %.0.i.i57 = or i1 %i.ef, %..i.i56
  %i.eh = zext i1 %.0.i.i57 to i64
  %i.ei = add nuw nsw i64 %i.ed, %i.eh            ; 2 uses
  %.not14.i28 = icmp samesign ult i64 %i.ei, 9007199254740992 ; 2 uses
  %spec.select96.v = select i1 %.not14.i28, i32 11, i32 12
  %spec.select96 = add nsw i32 %spec.select96.v, %2 ; 2 uses
  %i.ej = and i64 %i.ei, 13510798882111487
  %.not15.i29 = icmp samesign ult i32 %spec.select96, 2047
  %i.ek = call i32 @llvm.umin.i32(i32 %spec.select96, i32 2047)
  %i.el = select i1 %.not15.i29, i1 %.not14.i28, i1 false
  %spec.select99 = select i1 %i.el, i64 %i.ej, i64 0
  br label %_ZN5boost4json6detail8charconv6detail10fast_float5roundIdZNS4_19negative_digit_compIdEENS4_17adjusted_mantissaERNS4_6bigintES7_iEUlRS7_iE0_EEvSA_T0_.exit

_ZN5boost4json6detail8charconv6detail10fast_float5roundIdZNS4_19negative_digit_compIdEENS4_17adjusted_mantissaERNS4_6bigintES7_iEUlRS7_iE0_EEvSA_T0_.exit: ; preds = %bb.ac, %bb.ab
  %.sroa.12.1 = phi i32 [ %i.ek, %bb.ac ], [ %i.ec, %bb.ab ]
  %.sroa.069.1 = phi i64 [ %spec.select99, %bb.ac ], [ %i.ea, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.069.1, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.12.1, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #39

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost4json6detail8charconv6detail10fast_float6bigint4pow5Ej(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i32 %1, 134
  br i1 %i.a, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.a
  %.07.lcssa = phi i32 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 3 uses
  %i.b = icmp samesign ugt i32 %.07.lcssa, 26
  br i1 %i.b, label %.lr.ph30, label %._crit_edge

.lr.ph30:                                         ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %.promoted = load i16, ptr %i.c, align 8, !tbaa !991
  br label %bb.c

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0728 = phi i32 [ %i.e, %bb.b ], [ %1, %bb.a ]
  %i.d = tail call noundef zeroext i1 @_ZN5boost4json6detail8charconv6detail10fast_float8long_mulILt62EEEbRNS4_8stackvecIXT_EEENS4_4spanImEE(ptr noundef nonnull align 8 dereferenceable(498) %0, ptr nonnull @_ZN5boost4json6detail8charconv6detail10fast_float11pow5_tablesIvE16large_power_of_5E, i64 5) #47
  br i1 %i.d, label %bb.b, label %_ZN5boost4json6detail8charconv6detail10fast_float9large_mulILt62EEEbRNS4_8stackvecIXT_EEENS4_4spanImEE.exit

bb.b:                                             ; preds = %.lr.ph
  %i.e = add i32 %.0728, -135                     ; 3 uses
  %i.f = icmp ugt i32 %i.e, 134
  br i1 %i.f, label %.lr.ph, label %.preheader, !llvm.loop !1011

bb.c:                                             ; preds = %.lr.ph30, %bb.e
  %i.g = phi i16 [ %.promoted, %.lr.ph30 ], [ %i.an, %bb.e ] ; 7 uses
  %.1829 = phi i32 [ %.07.lcssa, %.lr.ph30 ], [ %i.ao, %bb.e ]
  %i.h = zext i16 %i.g to i64                     ; 3 uses
  %.not19.i = icmp eq i16 %i.g, 0
  br i1 %.not19.i, label %bb.e, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %xtraiter = and i64 %i.h, 1
  %i.i = icmp eq i16 %i.g, 1
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.h, 65534
  br label %.lr.ph.i

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.preheader
  %.016.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.aj, %._crit_edge.i.unr-lcssa ]
  %.01215.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ah, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod67 = trunc i16 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod67)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.epil.init ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !15
  %i.l = zext i64 %i.k to i128
  %i.m = mul nuw nsw i128 %i.l, 7450580596923828125
  %i.n = zext nneg i64 %.01215.i.epil.init to i128
  %i.o = add nuw nsw i128 %i.m, %i.n              ; 2 uses
  %i.p = lshr i128 %i.o, 64                       ; 2 uses
  %i.q = trunc nuw nsw i128 %i.p to i64
  %i.r = trunc i128 %i.o to i64
  store i64 %i.r, ptr %i.j, align 8, !tbaa !15
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa61 = phi i128 [ %i.ag, %._crit_edge.i.unr-lcssa ], [ %i.p, %.lr.ph.i.epil.preheader ]
  %.lcssa60 = phi i64 [ %i.ah, %._crit_edge.i.unr-lcssa ], [ %i.q, %.lr.ph.i.epil.preheader ]
  %.not.i = icmp eq i128 %.lcssa61, 0
  br i1 %.not.i, label %bb.e, label %bb.d

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.016.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.aj, %.lr.ph.i ] ; 3 uses
  %.01215.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ah, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !15
  %i.u = zext i64 %i.t to i128
  %i.v = mul nuw nsw i128 %i.u, 7450580596923828125
  %i.w = zext nneg i64 %.01215.i to i128
  %i.x = add nuw nsw i128 %i.v, %i.w              ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = trunc i128 %i.x to i64
  store i64 %i.z, ptr %i.s, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !15
  %i.ad = zext i64 %i.ac to i128
  %i.ae = mul nuw nsw i128 %i.ad, 7450580596923828125
  %i.af = add nuw nsw i128 %i.ae, %i.y            ; 2 uses
  %i.ag = lshr i128 %i.af, 64                     ; 2 uses
  %i.ah = trunc nuw nsw i128 %i.ag to i64         ; 3 uses
  %i.ai = trunc i128 %i.af to i64
  store i64 %i.ai, ptr %i.ab, align 8, !tbaa !15
  %i.aj = add nuw nsw i64 %.016.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !994

bb.d:                                             ; preds = %._crit_edge.i
  %i.ak = icmp ult i16 %i.g, 62
  br i1 %i.ak, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i, label %_ZN5boost4json6detail8charconv6detail10fast_float9large_mulILt62EEEbRNS4_8stackvecIXT_EEENS4_4spanImEE.exit

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i: ; preds = %bb.d
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  store i64 %.lcssa60, ptr %i.al, align 8, !tbaa !15
  %i.am = add nuw nsw i16 %i.g, 1                 ; 2 uses
  store i16 %i.am, ptr %i.c, align 8, !tbaa !991
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i, %._crit_edge.i, %bb.c
  %i.an = phi i16 [ %i.am, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i ], [ %i.g, %._crit_edge.i ], [ 0, %bb.c ]
  %i.ao = add nsw i32 %.1829, -27                 ; 3 uses
  %i.ap = icmp ugt i32 %i.ao, 26
  br i1 %i.ap, label %bb.c, label %._crit_edge, !llvm.loop !1012

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %.18.lcssa = phi i32 [ %.07.lcssa, %.preheader ], [ %i.ao, %bb.e ] ; 2 uses
  %.not = icmp eq i32 %.18.lcssa, 0
  br i1 %.not, label %_ZN5boost4json6detail8charconv6detail10fast_float9large_mulILt62EEEbRNS4_8stackvecIXT_EEENS4_4spanImEE.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !991 ; 6 uses
  %i.as = zext i16 %i.ar to i64                   ; 3 uses
  %.not19.i9 = icmp eq i16 %i.ar, 0
  br i1 %.not19.i9, label %_ZN5boost4json6detail8charconv6detail10fast_float9large_mulILt62EEEbRNS4_8stackvecIXT_EEENS4_4spanImEE.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.f
  %i.at = zext nneg i32 %.18.lcssa to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost4json6detail8charconv6detail10fast_float11pow5_tablesIvE16small_power_of_5E, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !15
  %i.aw = zext i64 %i.av to i128                  ; 3 uses
  %xtraiter68 = and i64 %i.as, 1
  %i.ax = icmp eq i16 %i.ar, 1
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.i10.new

.lr.ph.i10.new:                                   ; preds = %.lr.ph.i10
  %unroll_iter73 = and i64 %i.as, 65534
  br label %bb.g

._crit_edge.i14.unr-lcssa:                        ; preds = %bb.g
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %._crit_edge.i14, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i14.unr-lcssa, %.lr.ph.i10
  %.016.i11.epil.init = phi i64 [ 0, %.lr.ph.i10 ], [ %i.by, %._crit_edge.i14.unr-lcssa ]
  %.01215.i12.epil.init = phi i64 [ 0, %.lr.ph.i10 ], [ %i.bw, %._crit_edge.i14.unr-lcssa ]
  %lcmp.mod72 = trunc i16 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod72)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i11.epil.init ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !15
  %i.ba = zext i64 %i.az to i128
  %i.bb = mul nuw i128 %i.ba, %i.aw
  %i.bc = zext i64 %.01215.i12.epil.init to i128
  %i.bd = add nuw i128 %i.bb, %i.bc               ; 2 uses
  %i.be = lshr i128 %i.bd, 64                     ; 2 uses
  %i.bf = trunc nuw i128 %i.be to i64
  %i.bg = trunc i128 %i.bd to i64
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !15
  br label %._crit_edge.i14

._crit_edge.i14:                                  ; preds = %._crit_edge.i14.unr-lcssa, %.epil.preheader
  %.lcssa59 = phi i128 [ %i.bv, %._crit_edge.i14.unr-lcssa ], [ %i.be, %.epil.preheader ]
  %.lcssa = phi i64 [ %i.bw, %._crit_edge.i14.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %.not.i15 = icmp eq i128 %.lcssa59, 0
  br i1 %.not.i15, label %_ZN5boost4json6detail8charconv6detail10fast_float9large_mulILt62EEEbRNS4_8stackvecIXT_EEENS4_4spanImEE.exit, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i10.new
  %.016.i11 = phi i64 [ 0, %.lr.ph.i10.new ], [ %i.by, %bb.g ] ; 3 uses
  %.01215.i12 = phi i64 [ 0, %.lr.ph.i10.new ], [ %i.bw, %bb.g ]
  %niter74 = phi i64 [ 0, %.lr.ph.i10.new ], [ %niter74.next.1, %bb.g ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i11 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !15
  %i.bj = zext i64 %i.bi to i128
  %i.bk = mul nuw i128 %i.bj, %i.aw
  %i.bl = zext i64 %.01215.i12 to i128
  %i.bm = add nuw i128 %i.bk, %i.bl               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64
  %i.bo = trunc i128 %i.bm to i64
  store i64 %i.bo, ptr %i.bh, align 8, !tbaa !15
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !15
  %i.bs = zext i64 %i.br to i128
  %i.bt = mul nuw i128 %i.bs, %i.aw
  %i.bu = add nuw i128 %i.bt, %i.bn               ; 2 uses
  %i.bv = lshr i128 %i.bu, 64                     ; 2 uses
  %i.bw = trunc nuw i128 %i.bv to i64             ; 3 uses
  %i.bx = trunc i128 %i.bu to i64
  store i64 %i.bx, ptr %i.bq, align 8, !tbaa !15
  %i.by = add nuw nsw i64 %.016.i11, 2            ; 2 uses
  %niter74.next.1 = add nuw i64 %niter74, 2       ; 2 uses
  %niter74.ncmp.1 = icmp eq i64 %niter74.next.1, %unroll_iter73
  br i1 %niter74.ncmp.1, label %._crit_edge.i14.unr-lcssa, label %bb.g, !llvm.loop !994

bb.h:                                             ; preds = %._crit_edge.i14
  %i.bz = icmp ult i16 %i.ar, 62
  br i1 %i.bz, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i17, label %_ZN5boost4json6detail8charconv6detail10fast_float9large_mulILt62EEEbRNS4_8stackvecIXT_EEENS4_4spanImEE.exit

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i17: ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.as
  store i64 %.lcssa, ptr %i.ca, align 8, !tbaa !15
  %i.cb = add nuw nsw i16 %i.ar, 1
  store i16 %i.cb, ptr %i.aq, align 8, !tbaa !991
  br label %_ZN5boost4json6detail8charconv6detail10fast_float9large_mulILt62EEEbRNS4_8stackvecIXT_EEENS4_4spanImEE.exit

_ZN5boost4json6detail8charconv6detail10fast_float9large_mulILt62EEEbRNS4_8stackvecIXT_EEENS4_4spanImEE.exit: ; preds = %.lr.ph, %bb.d, %bb.f, %._crit_edge.i14, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i17, %._crit_edge, %bb.h
  %.1 = phi i1 [ true, %bb.f ], [ false, %bb.d ], [ false, %bb.h ], [ true, %._crit_edge ], [ true, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i17 ], [ true, %._crit_edge.i14 ], [ false, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost4json6detail8charconv6detail10fast_float8long_mulILt62EEEbRNS4_8stackvecIXT_EEENS4_4spanImEE(ptr noundef nonnull align 8 dereferenceable(498) %0, ptr %1, i64 %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::json::detail::charconv::detail::fast_float::stackvec", align 8 ; 9 uses
  %4 = alloca %"struct.boost::json::detail::charconv::detail::fast_float::stackvec", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 5 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !991  ; 12 uses
  %i.c = zext i16 %i.b to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.496..496..496..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 496
  store i16 0, ptr %.496..496..496..sroa_idx, align 8, !tbaa !991
  %.not.i.i = icmp ult i16 %i.b, 63
  br i1 %.not.i.i, label %bb.b, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EEC2ENS4_4spanImEE.exit

bb.b:                                             ; preds = %bb.a
  switch i16 %i.b, label %bb.c [
    i16 0, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE16extend_uncheckedENS4_4spanImEE.exit.i.i
    i16 1, label %bb.d
  ], !prof !1013

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.c, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(498) %3, ptr nonnull align 8 %0, i64 %.idx.i.i.i.i.i, i1 false)
  %.496..496..496..sroa_idx125.a = getelementptr inbounds nuw i8, ptr %3, i64 496
  %.496..496..496..pre.i.i.i = load i16, ptr %.496..496..496..sroa_idx125.a, align 8, !tbaa !991
  br label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE16extend_uncheckedENS4_4spanImEE.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.d = load i64, ptr %0, align 8, !tbaa !15
  store i64 %i.d, ptr %3, align 8, !tbaa !15
  br label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE16extend_uncheckedENS4_4spanImEE.exit.i.i

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE16extend_uncheckedENS4_4spanImEE.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.e = phi i16 [ %i.b, %bb.b ], [ 0, %bb.d ], [ %.496..496..496..pre.i.i.i, %bb.c ]
  %i.f = add i16 %i.e, %i.b
  %i.g = freeze i16 %i.f                          ; 2 uses
  %.496..496..496..sroa_idx126 = getelementptr inbounds nuw i8, ptr %3, i64 496
  store i16 %i.g, ptr %.496..496..496..sroa_idx126, align 8, !tbaa !991
  br label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EEC2ENS4_4spanImEE.exit

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EEC2ENS4_4spanImEE.exit: ; preds = %bb.a, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE16extend_uncheckedENS4_4spanImEE.exit.i.i
  %.496..496. = phi i16 [ 0, %bb.a ], [ %i.g, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE16extend_uncheckedENS4_4spanImEE.exit.i.i ] ; 5 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.critedge34, label %bb.e

bb.e:                                             ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EEC2ENS4_4spanImEE.exit
  %.not19.i = icmp eq i16 %i.b, 0
  br i1 %.not19.i, label %_ZN5boost4json6detail8charconv6detail10fast_float9small_mulILt62EEEbRNS4_8stackvecIXT_EEEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.h = load i64, ptr %1, align 8, !tbaa !15
  %i.i = zext i64 %i.h to i128                    ; 3 uses
  %xtraiter = and i64 %i.c, 1
  %i.j = icmp eq i16 %i.b, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.c, 65534
  br label %bb.f

._crit_edge.i.unr-lcssa:                          ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.016.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ak, %._crit_edge.i.unr-lcssa ]
  %.01215.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ai, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod116 = trunc i16 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.epil.init ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !15
  %i.m = zext i64 %i.l to i128
  %i.n = mul nuw i128 %i.m, %i.i
  %i.o = zext i64 %.01215.i.epil.init to i128
  %i.p = add nuw i128 %i.n, %i.o                  ; 2 uses
  %i.q = lshr i128 %i.p, 64                       ; 2 uses
  %i.r = trunc nuw i128 %i.q to i64
  %i.s = trunc i128 %i.p to i64
  store i64 %i.s, ptr %i.k, align 8, !tbaa !15
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa113 = phi i128 [ %i.ah, %._crit_edge.i.unr-lcssa ], [ %i.q, %.epil.preheader ]
  %.lcssa112 = phi i64 [ %i.ai, %._crit_edge.i.unr-lcssa ], [ %i.r, %.epil.preheader ]
  %.not.i = icmp eq i128 %.lcssa113, 0
  br i1 %.not.i, label %_ZN5boost4json6detail8charconv6detail10fast_float9small_mulILt62EEEbRNS4_8stackvecIXT_EEEm.exit, label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %.016.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ak, %bb.f ] ; 3 uses
  %.01215.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ai, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !15
  %i.v = zext i64 %i.u to i128
  %i.w = mul nuw i128 %i.v, %i.i
  %i.x = zext i64 %.01215.i to i128
  %i.y = add nuw i128 %i.w, %i.x                  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = trunc i128 %i.y to i64
  store i64 %i.aa, ptr %i.t, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !15
  %i.ae = zext i64 %i.ad to i128
  %i.af = mul nuw i128 %i.ae, %i.i
  %i.ag = add nuw i128 %i.af, %i.z                ; 2 uses
  %i.ah = lshr i128 %i.ag, 64                     ; 2 uses
  %i.ai = trunc nuw i128 %i.ah to i64             ; 3 uses
  %i.aj = trunc i128 %i.ag to i64
  store i64 %i.aj, ptr %i.ac, align 8, !tbaa !15
  %i.ak = add nuw nsw i64 %.016.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.f, !llvm.loop !994

bb.g:                                             ; preds = %._crit_edge.i
  %i.al = icmp ult i16 %i.b, 62
  br i1 %i.al, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i, label %.critedge32

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i: ; preds = %bb.g
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  store i64 %.lcssa112, ptr %i.am, align 8, !tbaa !15
  %i.an = add nuw nsw i16 %i.b, 1                 ; 2 uses
  store i16 %i.an, ptr %i.a, align 8, !tbaa !991
  br label %_ZN5boost4json6detail8charconv6detail10fast_float9small_mulILt62EEEbRNS4_8stackvecIXT_EEEm.exit

_ZN5boost4json6detail8charconv6detail10fast_float9small_mulILt62EEEbRNS4_8stackvecIXT_EEEm.exit: ; preds = %bb.e, %._crit_edge.i, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i
  %i.ao = phi i16 [ 0, %bb.e ], [ %i.b, %._crit_edge.i ], [ %i.an, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i ] ; 3 uses
  %.not30.not68.not = icmp eq i64 %2, 1
  br i1 %.not30.not68.not, label %.critedge34, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float9small_mulILt62EEEbRNS4_8stackvecIXT_EEEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 496 ; 2 uses
  %.not.i35 = icmp ult i16 %.496..496., 63
  %.0..0..0. = load i64, ptr %3, align 8
  %i.aq = shl nuw nsw i16 %.496..496., 3
  %.idx.i.i.i.i = zext nneg i16 %i.aq to i64
  br i1 %.not.i35, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.us
  %i.ar = phi i16 [ %i.dm, %.critedge.us ], [ %i.ao, %.lr.ph ] ; 3 uses
  %.02769.us = phi i64 [ %i.dn, %.critedge.us ], [ 1, %.lr.ph ] ; 7 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02769.us
  %i.at = load i64, ptr %i.as, align 8, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  %.not29.us = icmp eq i64 %i.at, 0
  br i1 %.not29.us, label %.critedge.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us
  store i16 0, ptr %i.ap, align 8, !tbaa !991
  switch i16 %.496..496., label %bb.j [
    i16 0, label %bb.k
    i16 1, label %bb.i
  ], !prof !1013

bb.i:                                             ; preds = %bb.h
  store i64 %.0..0..0., ptr %4, align 8, !tbaa !15
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull align 8 %3, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.us = load i16, ptr %i.ap, align 8, !tbaa !991
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.au = phi i16 [ %.496..496., %bb.h ], [ 0, %bb.i ], [ %.pre.i.i.us, %bb.j ]
  %i.av = add i16 %i.au, %.496..496.              ; 7 uses
  %i.aw = zext i16 %i.av to i64                   ; 3 uses
  %.not19.i36.us = icmp eq i16 %i.av, 0
  br i1 %.not19.i36.us, label %bb.n, label %.lr.ph.i37.us

.lr.ph.i37.us:                                    ; preds = %bb.k
  %i.ax = zext i64 %i.at to i128                  ; 3 uses
  %xtraiter118 = and i64 %i.aw, 1
  %i.ay = icmp eq i16 %i.av, 1
  br i1 %i.ay, label %.epil.preheader117, label %.lr.ph.i37.us.new

.lr.ph.i37.us.new:                                ; preds = %.lr.ph.i37.us
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
  %niter124.next.1 = add nuw i64 %niter124, 2     ; 2 uses
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
  %i.am = getelementptr inbounds nuw i8, ptr %.3281, i64 1 ; 4 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19  ; 2 uses
  %i.ao = icmp eq i8 %i.an, 48
  %i.ap = icmp ne ptr %i.am, %1
  %i.aq = and i1 %i.ap, %i.ao
  br i1 %i.aq, label %.lr.ph282, label %._crit_edge, !llvm.loop !1021

._crit_edge:                                      ; preds = %.lr.ph282, %.preheader270
  %i.ar = phi i8 [ %.pre, %.preheader270 ], [ %i.an, %.lr.ph282 ]
  %.0217.lcssa = phi i64 [ 0, %.preheader270 ], [ -1, %.lr.ph282 ]
  %.3.lcssa = phi ptr [ %i.ai, %.preheader270 ], [ %i.am, %.lr.ph282 ] ; 2 uses
  %i.as = icmp eq ptr %.3.lcssa, %1
  br i1 %i.as, label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread, label %._crit_edge305

._crit_edge305:                                   ; preds = %bb.o, %._crit_edge
  %i.at = phi i8 [ %i.ar, %._crit_edge ], [ %.pre, %bb.o ]
  %.1218 = phi i64 [ %.0217.lcssa, %._crit_edge ], [ 0, %bb.o ] ; 4 uses
  %.4 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %i.ai, %bb.o ] ; 4 uses
  %i.au = tail call noundef zeroext i1 %_ZN5boost4json6detail8charconv6detail15is_integer_charEc._ZN5boost4json6detail8charconv6detail11is_hex_charEc(i8 noundef signext %i.at) #47, !callees !1019
  br i1 %i.au, label %.lr.ph288.preheader, label %.critedge3

.lr.ph288.preheader:                              ; preds = %._crit_edge305
  %i.av = icmp ne ptr %.4, %1
  %i.aw = icmp samesign ult i64 %.0224.lcssa, 19
  %or.cond20341 = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond20341, label %.lr.ph344, label %.critedge3

.lr.ph288:                                        ; preds = %.lr.ph344
  %i.ax = icmp ne ptr %i.bb, %1
  %i.ay = icmp ult i64 %.1225285343, 18
  %or.cond20 = and i1 %i.ax, %i.ay
  br i1 %or.cond20, label %.lr.ph344, label %.critedge3, !llvm.loop !1022

.lr.ph344:                                        ; preds = %.lr.ph288.preheader, %.lr.ph288
  %.1225285343 = phi i64 [ %i.bc, %.lr.ph288 ], [ %.0224.lcssa, %.lr.ph288.preheader ] ; 3 uses
  %.5286342 = phi ptr [ %i.bb, %.lr.ph288 ], [ %.4, %.lr.ph288.preheader ] ; 2 uses
  %i.az = load i8, ptr %.5286342, align 1, !tbaa !19
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1225285343
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %.5286342, i64 1 ; 5 uses
  %i.bc = add nuw nsw i64 %.1225285343, 1         ; 3 uses
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !19
  %i.be = tail call noundef zeroext i1 %_ZN5boost4json6detail8charconv6detail15is_integer_charEc._ZN5boost4json6detail8charconv6detail11is_hex_charEc(i8 noundef signext %i.bd) #47, !callees !1019
  br i1 %i.be, label %.lr.ph288, label %..critedge3.loopexit_crit_edge, !llvm.loop !1022

..critedge3.loopexit_crit_edge:                   ; preds = %.lr.ph344
  br label %.critedge3, !llvm.loop !1022

.critedge3:                                       ; preds = %.lr.ph288, %.lr.ph288.preheader, %..critedge3.loopexit_crit_edge, %._crit_edge305, %bb.n
  %.2226 = phi i64 [ %.0224.lcssa, %bb.n ], [ %.0224.lcssa, %._crit_edge305 ], [ %.0224.lcssa, %.lr.ph288.preheader ], [ %i.bc, %..critedge3.loopexit_crit_edge ], [ %i.bc, %.lr.ph288 ] ; 11 uses
  %.0223 = phi i64 [ 0, %bb.n ], [ %.0224.lcssa, %._crit_edge305 ], [ %.0224.lcssa, %.lr.ph288.preheader ], [ %.0224.lcssa, %..critedge3.loopexit_crit_edge ], [ %.0224.lcssa, %.lr.ph288 ] ; 5 uses
  %.2219 = phi i64 [ 0, %bb.n ], [ %.1218, %._crit_edge305 ], [ %.1218, %.lr.ph288.preheader ], [ %.1218, %..critedge3.loopexit_crit_edge ], [ %.1218, %.lr.ph288 ] ; 2 uses
  %.6 = phi ptr [ %.2.lcssa, %bb.n ], [ %.4, %._crit_edge305 ], [ %.4, %.lr.ph288.preheader ], [ %i.bb, %..critedge3.loopexit_crit_edge ], [ %i.bb, %.lr.ph288 ] ; 3 uses
  %i.bf = icmp eq i64 %.2226, 19
  br i1 %i.bf, label %.preheader269.preheader, label %.critedge5

.preheader269.preheader:                          ; preds = %.critedge3
  %.pre306 = load i8, ptr %.6, align 1, !tbaa !19
  br label %.preheader269

.preheader269:                                    ; preds = %.preheader269.preheader, %bb.r
  %i.bg = phi i8 [ %i.bn, %bb.r ], [ %.pre306, %.preheader269.preheader ]
  %.0220 = phi i64 [ %spec.select, %bb.r ], [ 0, %.preheader269.preheader ] ; 3 uses
  %.0213 = phi i8 [ %.1214, %bb.r ], [ 0, %.preheader269.preheader ] ; 2 uses
  %.7 = phi ptr [ %i.bk, %bb.r ], [ %.6, %.preheader269.preheader ] ; 6 uses
  %i.bh = tail call noundef zeroext i1 %_ZN5boost4json6detail8charconv6detail15is_integer_charEc._ZN5boost4json6detail8charconv6detail11is_hex_charEc(i8 noundef signext %i.bg) #47, !callees !1019
  br i1 %i.bh, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader269
  %i.bi = load i8, ptr %.7, align 1, !tbaa !19
  %i.bj = icmp ne i8 %i.bi, 46
  %.not244 = icmp eq ptr %.7, %1
  %or.cond251 = or i1 %.not244, %i.bj
  br i1 %or.cond251, label %.critedge5, label %bb.r

bb.q:                                             ; preds = %.preheader269
  %.not244.old = icmp eq ptr %.7, %1
  br i1 %.not244.old, label %.critedge5, label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 2 uses
  %i.bl = xor i8 %.0213, 1
  %i.bm = select i1 %i.ah, i8 0, i8 %i.bl
  %not.or.cond = zext nneg i8 %i.bm to i64
  %spec.select = add nuw nsw i64 %.0220, %not.or.cond
  %i.bn = load i8, ptr %i.bk, align 1, !tbaa !19  ; 2 uses
  %i.bo = icmp eq i8 %i.bn, 46
  %.1214 = select i1 %i.bo, i8 1, i8 %.0213
  br label %.preheader269, !llvm.loop !1023

.critedge5:                                       ; preds = %bb.q, %bb.p, %.critedge3
  %.2222 = phi i64 [ 0, %.critedge3 ], [ %.0220, %bb.p ], [ %.0220, %bb.q ] ; 3 uses
  %.8 = phi ptr [ %.6, %.critedge3 ], [ %.7, %bb.p ], [ %.7, %bb.q ] ; 9 uses
  %i.bp = icmp eq ptr %.8, %1
  br i1 %i.bp, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge5
  %i.bq = load i8, ptr %.8, align 1, !tbaa !19    ; 3 uses
  %.not15.i = icmp ne i32 %5, 4                   ; 2 uses
  %i.br = add i8 %i.bq, -58
  %i.bs = icmp ult i8 %i.br, -10
  %i.bt = and i8 %i.bq, -33                       ; 2 uses
  %i.bu = add i8 %i.bt, -71
  %i.bv = icmp ult i8 %i.bu, -6
  %.sink23.i = select i1 %.not15.i, i8 69, i8 80
  %.not22.i = or i1 %.not15.i, %i.bv
  %.not22.sink.i = and i1 %i.bs, %.not22.i
  %i.bw = icmp ne i8 %i.bt, %.sink23.i
  %spec.select18.i = and i1 %i.bw, %.not22.sink.i
  br i1 %spec.select18.i, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s, %.critedge5
  %i.bx = icmp eq i32 %5, 1
  br i1 %i.bx, label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = icmp ne i64 %.0223, 0
  %or.cond8 = or i1 %i.ah, %i.by
  %i.bz = sub nsw i64 %.0223, %.2226
  %i.ca = select i1 %or.cond8, i64 %i.bz, i64 0
  %.2222.pn = add i64 %i.ca, %.2219
  %storemerge247 = add i64 %.2222.pn, %.2222
  store i64 %storemerge247, ptr %4, align 8, !tbaa !15
  %i.cb = zext nneg i32 %i.o to i64               ; 6 uses
  %.not.i.i = icmp samesign eq i64 %.2226, 0
  br i1 %.not.i.i, label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = load i8, ptr %i.a, align 16, !tbaa !19
  switch i8 %i.cc, label %bb.w [
    i8 45, label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread
    i8 43, label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread
  ]

bb.w:                                             ; preds = %bb.v
  %i.cd = udiv i64 -1, %i.cb                      ; 2 uses
  %i.ce = urem i64 -1, %i.cb
  %invariant.smin.i.i = tail call i64 @llvm.smin.i64(i64 %.2226, i64 19) ; 3 uses
  %i.cf = icmp sgt i64 %.2226, 0
  br i1 %i.cf, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.w
  %scevgep.i.i = getelementptr i8, ptr %i.a, i64 %invariant.smin.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.lr.ph.preheader.i.i
  %.093.i.i = phi i64 [ %i.co, %bb.x ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %.05992.i.i = phi ptr [ %i.cl, %bb.x ], [ %i.a, %.lr.ph.preheader.i.i ] ; 3 uses
  %.06591.i.i = phi i64 [ %i.cn, %bb.x ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.cg = load i8, ptr %.05992.i.i, align 1, !tbaa !19
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @_ZN5boost4json6detail8charconv6detailL12uchar_valuesE, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !19
  %i.ck = zext i8 %i.cj to i64                    ; 2 uses
  %.not80.i.i = icmp samesign ult i64 %i.ck, %i.cb
  br i1 %.not80.i.i, label %bb.x, label %._crit_edge.i.i

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.05992.i.i, i64 1
  %i.cm = mul i64 %.06591.i.i, %i.cb
  %i.cn = add i64 %i.cm, %i.ck                    ; 2 uses
  %i.co = add nuw nsw i64 %.093.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.co, %invariant.smin.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !1024

._crit_edge.i.i:                                  ; preds = %bb.x, %.lr.ph.i.i, %bb.w
  %.065.lcssa.i.i = phi i64 [ 0, %bb.w ], [ %.06591.i.i, %.lr.ph.i.i ], [ %i.cn, %bb.x ] ; 2 uses
  %.059.lcssa.i.i = phi ptr [ %i.a, %bb.w ], [ %.05992.i.i, %.lr.ph.i.i ], [ %scevgep.i.i, %bb.x ]
  %.0.lcssa.i.i = phi i64 [ 0, %bb.w ], [ %.093.i.i, %.lr.ph.i.i ], [ %invariant.smin.i.i, %bb.x ] ; 2 uses
  %i.cp = icmp slt i64 %.0.lcssa.i.i, %.2226
  br i1 %i.cp, label %.lr.ph105.i.i, label %bb.ac

.lr.ph105.i.i:                                    ; preds = %._crit_edge.i.i, %bb.ab
  %.1103.i.i = phi i64 [ %i.da, %bb.ab ], [ %.0.lcssa.i.i, %._crit_edge.i.i ]
  %.057102.i.i = phi i1 [ %.158.i.i, %bb.ab ], [ false, %._crit_edge.i.i ] ; 2 uses
  %.362101.i.i = phi ptr [ %i.cz, %bb.ab ], [ %.059.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %.368100.i.i = phi i64 [ %.469.i.i, %bb.ab ], [ %.065.lcssa.i.i, %._crit_edge.i.i ] ; 5 uses
  %i.cq = load i8, ptr %.362101.i.i, align 1, !tbaa !19
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @_ZN5boost4json6detail8charconv6detailL12uchar_valuesE, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !19
  %i.cu = zext i8 %i.ct to i64                    ; 3 uses
  %.not81.i.i = icmp samesign ult i64 %i.cu, %i.cb
  br i1 %.not81.i.i, label %bb.y, label %._crit_edge106.i.i

bb.y:                                             ; preds = %.lr.ph105.i.i
  %i.cv = icmp ult i64 %.368100.i.i, %i.cd
  br i1 %i.cv, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = icmp ne i64 %.368100.i.i, %i.cd
  %.not82.i.i = icmp samesign ult i64 %i.ce, %i.cu
  %or.cond.i.i = select i1 %i.cw, i1 true, i1 %.not82.i.i
  br i1 %or.cond.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cx = mul i64 %.368100.i.i, %i.cb
  %i.cy = add i64 %i.cx, %i.cu
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.469.i.i = phi i64 [ %i.cy, %bb.aa ], [ %.368100.i.i, %bb.z ] ; 2 uses
  %.158.i.i = phi i1 [ %.057102.i.i, %bb.aa ], [ true, %bb.z ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.362101.i.i, i64 1
  %i.da = add i64 %.1103.i.i, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.da, %.2226
  br i1 %exitcond.not, label %._crit_edge106.i.i, label %.lr.ph105.i.i, !llvm.loop !1025

._crit_edge106.i.i:                               ; preds = %bb.ab, %.lr.ph105.i.i
  %.368.lcssa.i.i = phi i64 [ %.368100.i.i, %.lr.ph105.i.i ], [ %.469.i.i, %bb.ab ]
end_hunk_2
