inline.NumInlined: 21632
inline.NumDeleted: 6599
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZN7httplib6detail11case_ignore8to_lowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.not.i.3 = icmp eq ptr %i.aq, %i.q
  br i1 %.not.i.3, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN7httplib6detail11case_ignore8to_lowerERKS8_EUlhE_ET0_T_SH_SG_T1_.exit, label %.lr.ph.i, !llvm.loop !266

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN7httplib6detail11case_ignore8to_lowerERKS8_EUlhE_ET0_T_SH_SG_T1_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7httplib7Request16get_header_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(776) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef readonly captures(address) %3, i64 noundef %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = tail call noundef ptr @_ZN7httplib6detail16get_header_valueERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, i64 noundef %4) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !63
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.355) #47
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.f, ptr %i.a, align 8, !tbaa !78
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !77
  %i.i = load i64, ptr %i.a, align 8, !tbaa !78
  store i64 %i.i, ptr %i.d, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.d, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.c, align 1, !tbaa !65
  store i8 %i.k, ptr %i.j, align 1, !tbaa !65
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %i.c, i64 %i.f, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !64
  %i.n = load ptr, ptr %0, align 8, !tbaa !77
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbb(ptr noundef nonnull align 8 dereferenceable(12) %0, i8 noundef zeroext %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 8 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = alloca [8 x i8], align 1                 ; 11 uses
  %6 = alloca %"class.std::random_device", align 8 ; 7 uses
  %i.d = alloca [4 x i8], align 16                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.e = select i1 %4, i8 -128, i8 0
  %i.f = and i8 %1, 15
  %i.g = or disjoint i8 %i.e, %i.f
  store i8 %i.g, ptr %i.a, align 1, !tbaa !65
  %i.h = icmp ult i64 %3, 126
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = trunc nuw nsw i64 %3 to i8               ; 2 uses
  %i.k = or disjoint i8 %i.j, -128
  %storemerge61 = select i1 %5, i8 %i.k, i8 %i.j
  store i8 %storemerge61, ptr %i.i, align 1, !tbaa !65
  %i.l = load ptr, ptr %0, align 8, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.a, i64 noundef 2)
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.aa, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %3, 65536
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %spec.select = select i1 %5, i8 -2, i8 126
  store i8 %spec.select, ptr %i.i, align 1, !tbaa !65
  %i.r = load ptr, ptr %0, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.a, i64 noundef 2)
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.aa, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.w = lshr i64 %3, 8
  %i.x = trunc nuw i64 %i.w to i8
  store i8 %i.x, ptr %i.b, align 1, !tbaa !65
  %i.y = trunc i64 %3 to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.y, ptr %i.z, align 1, !tbaa !65
  %i.aa = load ptr, ptr %0, align 8, !tbaa !81
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.b, i64 noundef 2)
  %i.ae = icmp sgt i64 %i.ad, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %i.ae, label %bb.h, label %bb.aa

bb.f:                                             ; preds = %bb.c
  %spec.select65 = select i1 %5, i8 -1, i8 127
  store i8 %spec.select65, ptr %i.i, align 1, !tbaa !65
  %i.af = load ptr, ptr %0, align 8, !tbaa !81
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.a, i64 noundef 2)
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.ak = lshr i64 %3, 56
  %i.al = trunc nuw i64 %i.ak to i8
  store i8 %i.al, ptr %i.c, align 1, !tbaa !65
  %i.am = lshr i64 %3, 48
  %i.an = trunc i64 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !65
  %i.ap = lshr i64 %3, 40
  %i.aq = trunc i64 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !65
  %i.as = lshr i64 %3, 32
  %i.at = trunc i64 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %i.at, ptr %i.au, align 1, !tbaa !65
  %i.av = lshr i64 %3, 24
  %i.aw = trunc i64 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !65
  %i.ay = lshr i64 %3, 16
  %i.az = trunc i64 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !65
  %i.bb = lshr i64 %3, 8
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !65
  %i.be = trunc i64 %3 to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !65
  %i.bg = load ptr, ptr %0, align 8, !tbaa !81
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call noundef i64 %i.bi(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.c, i64 noundef 8)
  %i.bk = icmp sgt i64 %i.bj, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br i1 %i.bk, label %bb.h, label %bb.aa

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.b
  br i1 %5, label %bb.i, label %bb.x

bb.i:                                             ; preds = %bb.h
  %.b = load i1, ptr @_ZGVZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, align 1
  br i1 %.b, label %bb.o, label %bb.j, !prof !283

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNSt13random_deviceC2Ev(ptr noundef nonnull align 8 dereferenceable(5000) %6)
  %i.bl = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %6)
          to label %_ZNSt13random_deviceclEv.exit unwind label %bb.p

_ZNSt13random_deviceclEv.exit:                    ; preds = %bb.j
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  store i64 %i.bm, ptr @_ZZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, align 8, !tbaa !78
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %_ZNSt13random_deviceclEv.exit
  %store_forwarded = phi i64 [ %i.bm, %_ZNSt13random_deviceclEv.exit ], [ %i.bz, %bb.l ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZNSt13random_deviceclEv.exit ], [ %i.ca, %bb.l ] ; 4 uses
  %i.bn = getelementptr [8 x i8], ptr @_ZZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, i64 %.011.i.i
  %i.bo = lshr i64 %store_forwarded, 30
  %i.bp = xor i64 %i.bo, %store_forwarded
  %i.bq = mul nuw nsw i64 %i.bp, 1812433253
  %i.br = add nuw nsw i64 %i.bq, %.011.i.i        ; 2 uses
  %i.bs = and i64 %i.br, 4294967295               ; 2 uses
  store i64 %i.bs, ptr %i.bn, align 8, !tbaa !78
  %i.bt = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.bt, 624
  br i1 %exitcond.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr [8 x i8], ptr @_ZZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, i64 %i.bt
  %i.bv = lshr i64 %i.bs, 30
  %i.bw = xor i64 %i.bv, %i.br
  %i.bx = mul i64 %i.bw, 1812433253
  %i.by = add i64 %i.bx, %i.bt
  %i.bz = and i64 %i.by, 4294967295               ; 2 uses
  store i64 %i.bz, ptr %i.bu, align 8, !tbaa !78
  %i.ca = add nuw nsw i64 %.011.i.i, 2
  br label %bb.k

bb.m:                                             ; preds = %bb.k
  store i64 624, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, i64 4992), align 8, !tbaa !284
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %6)
          to label %_ZNSt13random_deviceD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #48
  unreachable

_ZNSt13random_deviceD2Ev.exit:                    ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  store i1 true, ptr @_ZGVZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng, align 1
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt13random_deviceD2Ev.exit, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.cd = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbbE3rng)
  %i.ce = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %i.cd)
  %.0.extract.trunc = trunc i64 %i.ce to i32
  store i32 %.0.extract.trunc, ptr %i.d, align 16
  %i.cf = load ptr, ptr %0, align 8, !tbaa !81
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call noundef i64 %i.ch(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.d, i64 noundef 4)
  %i.cj = icmp slt i64 %i.ci, 0
  br i1 %i.cj, label %.critedge, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

bb.p:                                             ; preds = %bb.j
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %6)
          to label %_ZNSt13random_deviceD2Ev.exit68 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #48
  unreachable

_ZNSt13random_deviceD2Ev.exit68:                  ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ab

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.o
  %.sroa.speculated85 = call i64 @llvm.umin.i64(i64 %3, i64 4096) ; 5 uses
  %.not.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit74, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.sroa.speculated85) #50
          to label %.noexc69 unwind label %bb.u   ; 11 uses

.noexc69:                                         ; preds = %bb.r
  store i8 0, ptr %i.cn, align 1, !tbaa !65
  %i.co = add nsw i64 %.sroa.speculated85, -1     ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %iter.check.preheader, label %bb.s

bb.s:                                             ; preds = %.noexc69
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cq, i8 0, i64 %i.co, i1 false)
  br label %iter.check.preheader

iter.check.preheader:                             ; preds = %bb.s, %.noexc69
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %iter.check

bb.t:                                             ; preds = %bb.v
  %i.cs = add i64 %.044100, 4096                  ; 2 uses
  %.not64.not = icmp ult i64 %i.cs, %3
  %indvars.iv.next = add i64 %indvars.iv, -4096
  br i1 %.not64.not, label %iter.check, label %.critedge67, !llvm.loop !286

bb.u:                                             ; preds = %bb.r
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

iter.check:                                       ; preds = %iter.check.preheader, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ %3, %iter.check.preheader ] ; 7 uses
  %.044100 = phi i64 [ %i.cs, %bb.t ], [ 0, %iter.check.preheader ] ; 3 uses
  %umax128 = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  %umin129 = call i64 @llvm.umin.i64(i64 %umax128, i64 4096) ; 2 uses
  %umax116 = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  %umin117 = call i64 @llvm.umin.i64(i64 %umax116, i64 4096) ; 5 uses
  %i.cu = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  %umax = call i64 @llvm.umin.i64(i64 %i.cu, i64 4096)
  %i.cv = sub nuw i64 %3, %.044100
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.cv, i64 4096)
  %i.cw = getelementptr i8, ptr %2, i64 %.044100  ; 5 uses
  %min.iters.check = icmp ult i64 %indvars.iv, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %umin = call i64 @llvm.umin.i64(i64 %indvars.iv, i64 4096)
  %i.cx = add nsw i64 %umin, -5
  %i.cy = icmp ult i64 %i.cx, -4
  br i1 %i.cy, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check118 = icmp ult i64 %indvars.iv, 32
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cz = and i64 %umin117, 28
  %n.vec = and i64 %umin117, 8160                 ; 4 uses
  %wide.load120 = load <16 x i8>, ptr %i.d, align 16, !tbaa !65
  %wide.load121 = load <16 x i8>, ptr %i.cr, align 16, !tbaa !65
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.da = getelementptr i8, ptr %i.cw, i64 %index ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %wide.load = load <16 x i8>, ptr %i.da, align 1, !tbaa !65
  %wide.load119 = load <16 x i8>, ptr %i.db, align 1, !tbaa !65
  %i.dc = xor <16 x i8> %wide.load120, %wide.load
  %i.dd = xor <16 x i8> %wide.load121, %wide.load119
  %i.de = getelementptr inbounds nuw i8, ptr %i.cn, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <16 x i8> %i.dc, ptr %i.de, align 1, !tbaa !65
  store <16 x i8> %i.dd, ptr %i.df, align 1, !tbaa !65
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !287

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %umin117, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !290

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %umin117, 8188              ; 3 uses
  %wide.load125 = load <4 x i8>, ptr %i.d, align 16, !tbaa !65
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next126, %vec.epilog.vector.body ] ; 3 uses
  %i.dh = getelementptr i8, ptr %i.cw, i64 %index123
  %wide.load124 = load <4 x i8>, ptr %i.dh, align 1, !tbaa !65
  %i.di = xor <4 x i8> %wide.load125, %wide.load124
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cn, i64 %index123
  store <4 x i8> %i.di, ptr %i.dj, align 1, !tbaa !65
  %index.next126 = add nuw i64 %index123, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next126, %n.vec122
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !291

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n127 = icmp eq i64 %umin117, %n.vec122
  br i1 %cmp.n127, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.098.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec122, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.098.ph, 1
  %xtraiter = and i64 %umin129, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.dl = getelementptr i8, ptr %i.cw, i64 %.098.ph
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !65
  %i.dn = load i8, ptr %i.d, align 16, !tbaa !65
  %i.do = xor i8 %i.dn, %i.dm
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.098.ph
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !65
  %i.dq = or disjoint i64 %.098.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.098.unr = phi i64 [ %.098.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dq, %vec.epilog.scalar.ph.prol ]
  %i.dr = icmp eq i64 %umin129, %.neg
  br i1 %i.dr, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ds = load ptr, ptr %0, align 8, !tbaa !81
end_hunk_0
begin_hunk_1_@_ZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev"(ptr %.8.val) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %.8.val, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !324
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !326
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !785
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !785
  br label %_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !175
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23
  br label %_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !324
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !326
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !786
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !786
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !175
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !683    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !685  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !77 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !65
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !686

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !683
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !697
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #46
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail15coalesce_rangesERSt6vectorISt4pairIllESaIS3_EEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !787  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !789    ; 14 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEEZN7httplib6detail15coalesce_rangesERS7_mE3$_0EvT_SD_T0_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_T0_T1_"(ptr %i.c, ptr %i.b, i64 noundef %i.k)
  %i.l = icmp sgt i64 %i.f, 256
  br i1 %i.l, label %.lr.ph.i.i.i.i, label %.preheader.i23.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.08.020.i.idx.i.i.i = phi i64 [ %.sroa.08.020.i.add.i.i.i, %bb.f ], [ 16, %.lr.ph.i.i.i.i ] ; 3 uses
  %.pn19.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i, %bb.f ], [ %i.c, %.lr.ph.i.i.i.i ] ; 4 uses
  %.sroa.08.020.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.08.020.i.idx.i.i.i ; 6 uses
  %.val.i.i.i.i.i = load i64, ptr %.sroa.08.020.i.ptr.i.i.i, align 8, !tbaa !790 ; 5 uses
  %.val1.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !790
  %i.n = icmp slt i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 24
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8 ; 2 uses
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.preheader.i.i.i.i, label %bb.e

.lr.ph.i.i.i.i.i.preheader.i.i.i.i:               ; preds = %bb.d
  %i.o = add nuw nsw i64 %indvar, 1
  %i.p = lshr exact i64 %.sroa.08.020.i.idx.i.i.i, 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 32 ; 2 uses
  %xtraiter163 = and i64 %i.o, 3                  ; 2 uses
  %lcmp.mod164.not = icmp eq i64 %xtraiter163, 0
  br i1 %lcmp.mod164.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ]
  %.069.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.q, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.08.020.i.ptr.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %prol.iter165 = phi i64 [ %prol.iter165.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ]
  %i.r = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.t = load i64, ptr %i.r, align 8, !tbaa !78
  store i64 %i.t, ptr %i.s, align 8, !tbaa !790
  %i.u = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.prol, i64 -8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !78
  %i.w = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.prol, i64 -8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !792
  %i.x = add nsw i64 %.010.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter165.next = add i64 %prol.iter165, 1   ; 2 uses
  %prol.iter165.cmp.not = icmp eq i64 %prol.iter165.next, %xtraiter163
  br i1 %prol.iter165.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !793

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.020.i.ptr.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.y = icmp ult i64 %indvar, 3
  br i1 %i.y, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -16
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -16
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !78
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !790
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !78
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !792
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -32
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -32
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !78
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !790
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !78
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -24
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !792
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -48
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -48
  %i.an = load i64, ptr %i.al, align 8, !tbaa !78
  store i64 %i.an, ptr %i.am, align 8, !tbaa !790
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !78
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -40
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !792
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !78
  store i64 %i.at, ptr %i.as, align 8, !tbaa !790
  %i.au = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -56
  %i.av = load i64, ptr %i.au, align 8, !tbaa !78
  %i.aw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -56
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !792
  %i.ax = add nsw i64 %.010.i.i.i.i.i.i.i.i.i, -4
  %i.ay = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i, 4
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i, !llvm.loop !794

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  store i64 %.val.i.i.i.i.i, ptr %i.c, align 8, !tbaa !790
  store i64 %.sroa.4.0.copyload.i.i.i.i, ptr %i.m, align 8, !tbaa !792
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %.val2.i8.i.i.i.i.i = load i64, ptr %.pn19.i.i.i.i, align 8, !tbaa !790 ; 2 uses
  %i.az = icmp slt i64 %.val.i.i.i.i.i, %.val2.i8.i.i.i.i.i
  br i1 %i.az, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.val2.i11.i.i.i.i.i = phi i64 [ %.val2.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.val2.i8.i.i.i.i.i, %bb.e ]
  %.sroa.0.010.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn19.i.i.i.i, %bb.e ] ; 3 uses
  %.sroa.04.09.i.i.i.i.i = phi ptr [ %.sroa.0.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.020.i.ptr.i.i.i, %bb.e ] ; 3 uses
  store i64 %.val2.i11.i.i.i.i.i, ptr %.sroa.04.09.i.i.i.i.i, align 8, !tbaa !790
  %i.ba = getelementptr inbounds i8, ptr %.sroa.04.09.i.i.i.i.i, i64 -8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !78
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i.i.i, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !792
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.i.i, i64 -16 ; 2 uses
  %.val2.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !790 ; 2 uses
  %i.bd = icmp slt i64 %.val.i.i.i.i.i, %.val2.i.i.i.i.i.i
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !795

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.e
  %.sroa.04.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i, %bb.e ], [ %.sroa.0.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store i64 %.val.i.i.i.i.i, ptr %.sroa.04.0.lcssa.i.i.i.i.i, align 8, !tbaa !790
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i.i.i, i64 8
  store i64 %.sroa.4.0.copyload.i.i.i.i, ptr %i.be, align 8, !tbaa !792
  br label %bb.f

bb.f:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i
  %.sroa.08.020.i.add.i.i.i = add nuw nsw i64 %.sroa.08.020.i.idx.i.i.i, 16 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.08.020.i.add.i.i.i, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_T0_.exit.i.i.i", label %bb.d, !llvm.loop !796

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_T0_.exit.i.i.i": ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.bf, %i.b
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEEZN7httplib6detail15coalesce_rangesERS7_mE3$_0EvT_SD_T0_.exit", label %.lr.ph.i12.i.i.i

.lr.ph.i12.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_.exit.i14.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.bm, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_.exit.i14.i.i.i" ], [ %i.bf, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_T0_.exit.i.i.i" ] ; 6 uses
  %i.bg = load <2 x i64>, ptr %.sroa.0.07.i.i.i.i, align 8
  %.sroa.03.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.07.i.i.i.i, align 8 ; 2 uses
  %.sroa.0.07.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -16 ; 2 uses
  %.val2.i8.i.i13.i.i.i = load i64, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !790 ; 2 uses
  %i.bh = icmp slt i64 %.sroa.03.0.copyload.i.i.i.i.i, %.val2.i8.i.i13.i.i.i
  br i1 %i.bh, label %.lr.ph.i.i17.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_.exit.i14.i.i.i"

.lr.ph.i.i17.i.i.i:                               ; preds = %.lr.ph.i12.i.i.i, %.lr.ph.i.i17.i.i.i
  %.val2.i11.i.i18.i.i.i = phi i64 [ %.val2.i.i.i22.i.i.i, %.lr.ph.i.i17.i.i.i ], [ %.val2.i8.i.i13.i.i.i, %.lr.ph.i12.i.i.i ]
  %.sroa.0.010.i.i19.i.i.i = phi ptr [ %.sroa.0.0.i.i21.i.i.i, %.lr.ph.i.i17.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i12.i.i.i ] ; 3 uses
  %.sroa.04.09.i.i20.i.i.i = phi ptr [ %.sroa.0.010.i.i19.i.i.i, %.lr.ph.i.i17.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ] ; 3 uses
  store i64 %.val2.i11.i.i18.i.i.i, ptr %.sroa.04.09.i.i20.i.i.i, align 8, !tbaa !790
  %i.bi = getelementptr inbounds i8, ptr %.sroa.04.09.i.i20.i.i.i, i64 -8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !78
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i20.i.i.i, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !792
  %.sroa.0.0.i.i21.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i19.i.i.i, i64 -16 ; 2 uses
  %.val2.i.i.i22.i.i.i = load i64, ptr %.sroa.0.0.i.i21.i.i.i, align 8, !tbaa !790 ; 2 uses
  %i.bl = icmp slt i64 %.sroa.03.0.copyload.i.i.i.i.i, %.val2.i.i.i22.i.i.i
  br i1 %i.bl, label %.lr.ph.i.i17.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_.exit.i14.i.i.i", !llvm.loop !795

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_T0_.exit.i14.i.i.i": ; preds = %.lr.ph.i.i17.i.i.i, %.lr.ph.i12.i.i.i
  %.sroa.04.0.lcssa.i.i15.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ], [ %.sroa.0.010.i.i19.i.i.i, %.lr.ph.i.i17.i.i.i ]
  store <2 x i64> %i.bg, ptr %.sroa.04.0.lcssa.i.i15.i.i.i, align 8, !tbaa !78
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 16 ; 2 uses
  %.not.i16.i.i.i = icmp eq ptr %i.bm, %i.b
  br i1 %.not.i16.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEEZN7httplib6detail15coalesce_rangesERS7_mE3$_0EvT_SD_T0_.exit", label %.lr.ph.i12.i.i.i, !llvm.loop !797

.preheader.i23.i.i.i:                             ; preds = %bb.c
  %.sroa.08.017.i24.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.not18.i25.i.i.i = icmp eq ptr %.sroa.08.017.i24.i.i.i, %i.b
  br i1 %.not18.i25.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEEZN7httplib6detail15coalesce_rangesERS7_mE3$_0EvT_SD_T0_.exit", label %.lr.ph.i26.i.i.i

.lr.ph.i26.i.i.i:                                 ; preds = %.preheader.i23.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph.i26.i.i.i
  %.sroa.08.020.i27.i.i.i = phi ptr [ %.sroa.08.017.i24.i.i.i, %.lr.ph.i26.i.i.i ], [ %.sroa.08.0.i36.i.i.i, %bb.j ] ; 8 uses
  %.pn19.i28.i.i.i = phi ptr [ %i.c, %.lr.ph.i26.i.i.i ], [ %.sroa.08.020.i27.i.i.i, %bb.j ] ; 4 uses
  %.val.i.i29.i.i.i = load i64, ptr %.sroa.08.020.i27.i.i.i, align 8, !tbaa !790 ; 5 uses
  %.val1.i.i30.i.i.i = load i64, ptr %i.c, align 8, !tbaa !790
  %i.bo = icmp slt i64 %.val.i.i29.i.i.i, %.val1.i.i30.i.i.i
  %.sroa.4.0..sroa_idx.i31.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i28.i.i.i, i64 24
  %.sroa.4.0.copyload.i32.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i31.i.i.i, align 8 ; 2 uses
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bp = ptrtoint ptr %.sroa.08.020.i27.i.i.i to i64
  %i.bq = sub i64 %i.bp, %i.e
  %i.br = ashr exact i64 %i.bq, 4                 ; 5 uses
  %i.bs = icmp sgt i64 %i.br, 0
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i.preheader.i45.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i44.i.i.i

.lr.ph.i.i.i.i.i.preheader.i45.i.i.i:             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn19.i28.i.i.i, i64 32 ; 2 uses
  %xtraiter = and i64 %i.br, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i46.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i46.i.i.i.prol

.lr.ph.i.i.i.i.i.i46.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.i45.i.i.i, %.lr.ph.i.i.i.i.i.i46.i.i.i.prol
  %.010.i.i.i.i.i.i47.i.i.i.prol = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i.i46.i.i.i.prol ], [ %i.br, %.lr.ph.i.i.i.i.i.preheader.i45.i.i.i ]
  %.069.i.i.i.i.i.i48.i.i.i.prol = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i46.i.i.i.prol ], [ %i.bt, %.lr.ph.i.i.i.i.i.preheader.i45.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i49.i.i.i.prol = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i46.i.i.i.prol ], [ %.sroa.08.020.i27.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i45.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i46.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i45.i.i.i ]
  %i.bu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i49.i.i.i.prol, i64 -16 ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i48.i.i.i.prol, i64 -16 ; 3 uses
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !78
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !790
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i49.i.i.i.prol, i64 -8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !78
  %i.bz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i48.i.i.i.prol, i64 -8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !792
  %i.ca = add nsw i64 %.010.i.i.i.i.i.i47.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i46.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i46.i.i.i.prol, !llvm.loop !798

.lr.ph.i.i.i.i.i.i46.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i46.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i45.i.i.i
  %.010.i.i.i.i.i.i47.i.i.i.unr = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i.preheader.i45.i.i.i ], [ %i.ca, %.lr.ph.i.i.i.i.i.i46.i.i.i.prol ]
  %.069.i.i.i.i.i.i48.i.i.i.unr = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.preheader.i45.i.i.i ], [ %i.bv, %.lr.ph.i.i.i.i.i.i46.i.i.i.prol ]
  %.078.i.i.i.i.i.i49.i.i.i.unr = phi ptr [ %.sroa.08.020.i27.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i45.i.i.i ], [ %i.bu, %.lr.ph.i.i.i.i.i.i46.i.i.i.prol ]
  %i.cb = icmp ult i64 %i.br, 4
  br i1 %i.cb, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i44.i.i.i, label %.lr.ph.i.i.i.i.i.i46.i.i.i

end_hunk_1
begin_hunk_2_@_ZN7httplib6detail6fields8is_tokenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.k = icmp ult <4 x i8> %i.j, <i8 10, i8 26, i8 2, i8 3>
  %i.l = shufflevector <2 x i8> %i.g, <2 x i8> poison, <4 x i32> zeroinitializer
  %i.m = and <4 x i8> %i.l, <i8 -3, i8 -4, i8 -2, i8 -3>
  %i.n = icmp eq <4 x i8> %i.m, <i8 33, i8 36, i8 42, i8 124>
  %i.o = shufflevector <4 x i1> %i.n, <4 x i1> %i.k, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.p = bitcast <8 x i1> %i.o to i8
  %i.q = icmp ne i8 %i.p, 0                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 1 ; 2 uses
  %.not = icmp ne ptr %i.r, %i.e
  %or.cond.not = select i1 %i.q, i1 %.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ %i.q, %.lr.ph ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN7httplib6detail6fields8is_tokenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !77     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.sroa.09.013.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.d, %.lr.ph.preheader.i ] ; 2 uses
  %i.f = load i8, ptr %.sroa.09.013.i, align 1, !tbaa !65
  %i.g = insertelement <2 x i8> poison, i8 %i.f, i64 0 ; 2 uses
  %i.h = shufflevector <2 x i8> %i.g, <2 x i8> poison, <4 x i32> zeroinitializer
  %i.i = and <4 x i8> %i.h, <i8 -1, i8 -33, i8 -1, i8 -1>
  %i.j = add <4 x i8> %i.i, <i8 -48, i8 -65, i8 -45, i8 -94>
  %i.k = icmp ult <4 x i8> %i.j, <i8 10, i8 26, i8 2, i8 3>
  %i.l = shufflevector <2 x i8> %i.g, <2 x i8> poison, <4 x i32> zeroinitializer
  %i.m = and <4 x i8> %i.l, <i8 -3, i8 -4, i8 -2, i8 -3>
  %i.n = icmp eq <4 x i8> %i.m, <i8 33, i8 36, i8 42, i8 124>
  %i.o = shufflevector <4 x i1> %i.n, <4 x i1> %i.k, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.p = bitcast <8 x i1> %i.o to i8
  %i.q = icmp ne i8 %i.p, 0                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 1 ; 2 uses
  %.not.i = icmp ne ptr %i.r, %i.e
  %or.cond.not = select i1 %i.q, i1 %.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN7httplib6detail6fields8is_tokenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN7httplib6detail6fields8is_tokenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i, %bb.a
  %.3.i = phi i1 [ false, %bb.a ], [ %i.q, %.lr.ph.i ]
  ret i1 %.3.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN7httplib6detail6fields8is_vcharEc(i8 noundef signext %0) local_unnamed_addr #13 {
bb.a:
  %i.a = add i8 %0, -33
  %i.b = icmp ult i8 %i.a, 94
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN7httplib6detail6fields11is_obs_textEc(i8 noundef signext %0) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp slt i8 %0, 0
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN7httplib6detail6fields14is_field_vcharEc(i8 noundef signext %0) local_unnamed_addr #13 {
bb.a:
  %i.a = add i8 %0, -33
  %i.b = icmp ult i8 %i.a, 94
  %i.c = icmp slt i8 %0, 0
  %spec.select = or i1 %i.c, %i.b
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7httplib6detail6fields16is_field_contentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  switch i64 %i.b, label %bb.e [
    i64 0, label %.loopexit
    i64 1, label %bb.b
    i64 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !77
  %i.d = load i8, ptr %i.c, align 1, !tbaa !65    ; 2 uses
  %i.e = add i8 %i.d, -33
  %i.f = icmp ult i8 %i.e, 94
  %i.g = icmp slt i8 %i.d, 0
  %spec.select.i = or i1 %i.g, %i.f
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !77     ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !65    ; 2 uses
  %i.j = add i8 %i.i, -33
  %i.k = icmp ult i8 %i.j, 94
  %i.l = icmp slt i8 %i.i, 0
  %spec.select.i23 = or i1 %i.l, %i.k
  br i1 %spec.select.i23, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !65    ; 2 uses
  %i.o = add i8 %i.n, -33
  %i.p = icmp ult i8 %i.o, 94
  %i.q = icmp slt i8 %i.n, 0
  %spec.select.i24 = or i1 %i.q, %i.p
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %0, align 8, !tbaa !77     ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !65    ; 2 uses
  %i.t = add i8 %i.s, -33
  %i.u = icmp ult i8 %i.t, 94
  %i.v = icmp slt i8 %i.s, 0
  %spec.select.i25 = or i1 %i.v, %i.u
  br i1 %spec.select.i25, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.w = add i64 %i.b, -1                         ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %.02129 = phi i64 [ %i.x, %.critedge ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.x = add nuw i64 %.02129, 1                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %.02129
  %i.z = load i8, ptr %i.y, align 1, !tbaa !65    ; 3 uses
  switch i8 %i.z, label %bb.f [
    i8 32, label %.critedge
    i8 9, label %.critedge
  ]

bb.f:                                             ; preds = %.lr.ph
  %i.aa = add i8 %i.z, -33
  %i.ab = icmp ult i8 %i.aa, 94
  %i.ac = icmp slt i8 %i.z, 0
  %spec.select.i26 = or i1 %i.ac, %i.ab
  br i1 %spec.select.i26, label %.critedge, label %.loopexit, !llvm.loop !344

.critedge:                                        ; preds = %.lr.ph, %.lr.ph, %bb.f
  %exitcond.not = icmp eq i64 %i.x, %i.w
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !65  ; 2 uses
  %i.af = add i8 %i.ae, -33
  %i.ag = icmp ult i8 %i.af, 94
  %i.ah = icmp slt i8 %i.ae, 0
  %spec.select.i27 = or i1 %i.ah, %i.ag
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.a, %._crit_edge, %bb.e, %bb.c, %bb.d, %bb.b
  %.3 = phi i1 [ %spec.select.i24, %bb.d ], [ %spec.select.i, %bb.b ], [ true, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ %spec.select.i27, %._crit_edge ], [ false, %bb.f ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib6detail27perform_websocket_handshakeERNS_6StreamERNS_7RequestERNS0_24WebSocketUpgradeResponseE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(776) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::random_device", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.httplib::detail::BufferStream", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.b = load i1, ptr @_ZGVZN7httplib6detail27perform_websocket_handshakeERNS_6StreamERNS_7RequestERNS0_24WebSocketUpgradeResponseEE3rng, align 1
  br i1 %.b, label %bb.g, label %bb.b, !prof !283

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZNSt13random_deviceC2Ev(ptr noundef nonnull align 8 dereferenceable(5000) %3)
  %i.c = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %3)
          to label %_ZNSt13random_deviceclEv.exit unwind label %bb.h

_ZNSt13random_deviceclEv.exit:                    ; preds = %bb.b
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  store i64 %i.d, ptr @_ZZN7httplib6detail27perform_websocket_handshakeERNS_6StreamERNS_7RequestERNS0_24WebSocketUpgradeResponseEE3rng, align 8, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_ZNSt13random_deviceclEv.exit
  %store_forwarded = phi i64 [ %i.d, %_ZNSt13random_deviceclEv.exit ], [ %i.q, %bb.d ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZNSt13random_deviceclEv.exit ], [ %i.r, %bb.d ] ; 4 uses
  %i.e = getelementptr [8 x i8], ptr @_ZZN7httplib6detail27perform_websocket_handshakeERNS_6StreamERNS_7RequestERNS0_24WebSocketUpgradeResponseEE3rng, i64 %.011.i.i
  %i.f = lshr i64 %store_forwarded, 30
  %i.g = xor i64 %i.f, %store_forwarded
  %i.h = mul nuw nsw i64 %i.g, 1812433253
  %i.i = add nuw nsw i64 %i.h, %.011.i.i          ; 2 uses
  %i.j = and i64 %i.i, 4294967295                 ; 2 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !78
  %i.k = add nuw nsw i64 %.011.i.i, 1             ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.k, 624
  br i1 %exitcond.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr [8 x i8], ptr @_ZZN7httplib6detail27perform_websocket_handshakeERNS_6StreamERNS_7RequestERNS0_24WebSocketUpgradeResponseEE3rng, i64 %i.k
  %i.m = lshr i64 %i.j, 30
  %i.n = xor i64 %i.m, %i.i
  %i.o = mul i64 %i.n, 1812433253
  %i.p = add i64 %i.o, %i.k
  %i.q = and i64 %i.p, 4294967295                 ; 2 uses
  store i64 %i.q, ptr %i.l, align 8, !tbaa !78
  %i.r = add nuw nsw i64 %.011.i.i, 2
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  store i64 624, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7httplib6detail27perform_websocket_handshakeERNS_6StreamERNS_7RequestERNS0_24WebSocketUpgradeResponseEE3rng, i64 4992), align 8, !tbaa !284
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %3)
          to label %_ZNSt13random_deviceD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #48
  unreachable

_ZNSt13random_deviceD2Ev.exit:                    ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store i1 true, ptr @_ZGVZN7httplib6detail27perform_websocket_handshakeERNS_6StreamERNS_7RequestERNS0_24WebSocketUpgradeResponseEE3rng, align 1
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt13random_deviceD2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !63
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 16, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.preheader unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.preheader: ; preds = %bb.g
  %i.v = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN7httplib6detail27perform_websocket_handshakeERNS_6StreamERNS_7RequestERNS0_24WebSocketUpgradeResponseEE3rng) ; 4 uses
  %i.w = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %i.v)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %3)
          to label %_ZNSt13random_deviceD2Ev.exit60 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #48
  unreachable

_ZNSt13random_deviceD2Ev.exit60:                  ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.az

bb.j:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.preheader
  %.sroa.0.0.extract.trunc = trunc i64 %i.w to i32
  %i.ab = load ptr, ptr %4, align 8, !tbaa !77
  store i32 %.sroa.0.0.extract.trunc, ptr %i.ab, align 1
  %i.ac = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %i.v)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.1 unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %.sroa.0.0.extract.trunc161 = trunc i64 %i.ac to i32
  %i.ad = load ptr, ptr %4, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 %.sroa.0.0.extract.trunc161, ptr %i.ae, align 1
  %i.af = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %i.v)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.2 unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.1
  %.sroa.0.0.extract.trunc162 = trunc i64 %i.af to i32
  %i.ag = load ptr, ptr %4, align 8, !tbaa !77
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %.sroa.0.0.extract.trunc162, ptr %i.ah, align 1
  %i.ai = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %i.v)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.3 unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.2
  %.sroa.0.0.extract.trunc163 = trunc i64 %i.ai to i32
  %i.aj = load ptr, ptr %4, align 8, !tbaa !77
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 %.sroa.0.0.extract.trunc163, ptr %i.ak, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN7httplib6detail13base64_encodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %._crit_edge.i.i unwind label %bb.z

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.preheader
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.3
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.an, ptr %6, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.an, ptr noundef nonnull align 1 dereferenceable(7) @.str.19, i64 7, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 7, ptr %i.ao, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 23
  store i8 0, ptr %i.ap, align 1, !tbaa !65
  %i.aq = invoke noundef i64 @_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE5eraseERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.l unwind label %bb.aa      ; 0 uses

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ar = load ptr, ptr %6, align 8, !tbaa !77    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.an
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.at = load i64, ptr %i.an, align 8, !tbaa !65
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.av, ptr %7, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.av, ptr noundef nonnull align 1 dereferenceable(10) @.str.21, i64 10, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 10, ptr %i.aw, align 8, !tbaa !64
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i8 0, ptr %i.ax, align 2, !tbaa !65
  %i.ay = invoke noundef i64 @_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE5eraseERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.m unwind label %bb.ab      ; 0 uses

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = load ptr, ptr %7, align 8, !tbaa !77    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.av
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.m
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !65
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.bd, ptr %8, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 17, ptr %i.b, align 8, !tbaa !78
  %i.be = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc70 unwind label %bb.ac  ; 2 uses

.noexc70:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  store ptr %i.be, ptr %8, align 8, !tbaa !77
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !78  ; 3 uses
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.be, ptr noundef nonnull align 1 dereferenceable(17) @.str.23, i64 17, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !64
  %i.bh = load ptr, ptr %8, align 8, !tbaa !77
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store i8 0, ptr %i.bi, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.bj = invoke noundef i64 @_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE5eraseERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.n unwind label %bb.ad      ; 0 uses

bb.n:                                             ; preds = %.noexc70
  %i.bk = load ptr, ptr %8, align 8, !tbaa !77    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.bd
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.n
  %i.bm = load i64, ptr %i.bd, align 8, !tbaa !65
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.bo, ptr %9, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 21, ptr %i.a, align 8, !tbaa !78
  %i.bp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc77 unwind label %bb.ae  ; 2 uses

.noexc77:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  store ptr %i.bp, ptr %9, align 8, !tbaa !77
end_hunk_2
