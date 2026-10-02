Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_proof_trim?download=true
inline.NumInlined: 902
inline.NumDeleted: 442
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN3sat10proof_trim4trimEv:bb.a
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !18
  %i.je = icmp eq i32 %i.jb, %i.jd
  br i1 %i.je, label %bb.ax, label %_ZN6vectorIjLb0EjED2Ev.exit82

bb.ax:                                            ; preds = %bb.aw, %bb.av
  invoke void @_ZN6vectorISt4pairIj7svectorIjjEELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc77 unwind label %bb.az

.noexc77:                                         ; preds = %bb.ax
  %.pre.i74 = load ptr, ptr %i.b, align 8, !tbaa !17 ; 2 uses
  %.phi.trans.insert.i75 = getelementptr inbounds i8, ptr %.pre.i74, i64 -4
  %.pre2.i76 = load i32, ptr %.phi.trans.insert.i75, align 4, !tbaa !18
  br label %_ZN6vectorIjLb0EjED2Ev.exit82

_ZN6vectorIjLb0EjED2Ev.exit82:                    ; preds = %bb.aw, %.noexc77
  %i.jf = phi i32 [ %.pre2.i76, %.noexc77 ], [ %i.jb, %bb.aw ] ; 2 uses
  %i.jg = phi ptr [ %.pre.i74, %.noexc77 ], [ %i.iy, %bb.aw ] ; 2 uses
  %i.jh = getelementptr inbounds i8, ptr %i.jg, i64 -4
  %i.ji = zext i32 %i.jf to i64
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %i.ji ; 2 uses
  store i32 %i.ix, ptr %i.jj, align 8, !tbaa !36
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store ptr null, ptr %i.jk, align 8, !tbaa !21
  %i.jl = add i32 %i.jf, 1
  store i32 %i.jl, ptr %i.jh, align 4, !tbaa !18
  %.pre117 = load ptr, ptr %i.cq, align 8, !tbaa !21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %.not.i.i83 = icmp eq ptr %.pre117, null
  br i1 %.not.i.i83, label %_ZN8uint_set5resetEv.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN6vectorIjLb0EjED2Ev.exit82
  %i.jm = getelementptr inbounds i8, ptr %.pre117, i64 -4
  store i32 0, ptr %i.jm, align 4, !tbaa !18
  br label %_ZN8uint_set5resetEv.exit

_ZN8uint_set5resetEv.exit:                        ; preds = %_ZN6vectorIjLb0EjED2Ev.exit82, %bb.ay
  %i.jn = load i8, ptr %i.ef, align 8, !tbaa !30, !range !40, !noundef !41
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %_ZN3sat10proof_trim6reviveERK7svectorINS_7literalEjEPNS_6clauseE.exit, label %bb.ba, !llvm.loop !246

bb.az:                                            ; preds = %bb.ax
  %i.jp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIj7svectorIjjEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #18
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.bb

bb.ba:                                            ; preds = %_ZN8uint_set5resetEv.exit
  call void @_ZN3sat10proof_trim22conflict_analysis_coreERK7svectorINS_7literalEjEPNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(4376) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr poison)
  br label %_ZN3sat10proof_trim6reviveERK7svectorINS_7literalEjEPNS_6clauseE.exit

_ZN3sat10proof_trim6reviveERK7svectorINS_7literalEjEPNS_6clauseE.exit: ; preds = %_ZN3sat6solver9mk_clauseERK7svectorINS_7literalEjENS_6statusE.exit.i, %bb.v, %_ZN8uint_set5resetEv.exit, %_ZN3sat10proof_trim3delERK7svectorINS_7literalEjEPNS_6clauseE.exit, %bb.ba
  %.not.wide = icmp eq i64 %i.ed, 0
  br i1 %.not.wide, label %._crit_edge115, label %bb.t

bb.bb:                                            ; preds = %bb.az, %bb.s
  %.pn = phi { ptr, i32 } [ %i.jp, %bb.az ], [ %i.ec, %bb.s ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i32 @_Z19get_verbosity_levelv() local_unnamed_addr #2

declare noundef zeroext i1 @_Z11is_threadedv() local_unnamed_addr #2

declare void @_Z12verbose_lockv() local_unnamed_addr #2

declare void @_ZNK3sat6solver7displayERSo(ptr noundef nonnull align 8 dereferenceable(4264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() local_unnamed_addr #2

declare void @_Z14verbose_unlockv() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIj7svectorIjjEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6vectorIjLb0EjED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.c)
          to label %_ZN6vectorIjLb0EjED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #17
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit:                      ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat10proof_trim22conflict_analysis_coreERK7svectorINS_7literalEjEPNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(4376) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.sat::mk_lits_pp", align 8  ; 5 uses
  %4 = alloca %"struct.sat::mk_lits_pp", align 8  ; 5 uses
  %5 = alloca %"class.sat::justification", align 8 ; 13 uses
  %6 = alloca %"struct.sat::mk_lits_pp", align 8  ; 5 uses
  %7 = alloca %"struct.sat::mk_lits_pp", align 8  ; 5 uses
  %i.a = tail call noundef i32 @_Z19get_verbosity_levelv()
  %i.b = icmp ugt i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @_Z12verbose_lockv()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.9, i64 noundef 5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.f = load ptr, ptr %1, align 8, !tbaa !39     ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !18
  br label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit

_ZN3satlsERSoRK7svectorINS_7literalEjE.exit:      ; preds = %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.i, %bb.d ], [ 0, %bb.c ]
  store i32 %.0.i.i, ptr %7, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.f, ptr %i.j, align 8, !tbaa !59
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoRKNS_10mk_lits_ppE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  call void @_Z14verbose_unlockv()
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.9, i64 noundef 5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.o = load ptr, ptr %1, align 8, !tbaa !39     ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !18
  br label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit40

_ZN3satlsERSoRK7svectorINS_7literalEjE.exit40:    ; preds = %bb.e, %bb.f
  %.0.i.i39 = phi i32 [ %i.r, %bb.f ], [ 0, %bb.e ]
  store i32 %.0.i.i39, ptr %6, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.o, ptr %i.s, align 8, !tbaa !59
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoRKNS_10mk_lits_ppE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit, %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit40, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3784 ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !18
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.z, %bb.h ], [ 0, %bb.g ]   ; 3 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.thread, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit:    ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !18
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !204, !range !40, !noundef !41
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN3sat6solver4pushEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3612
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !254
  %.fr86 = freeze i32 %i.aj                       ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !39    ; 5 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %._crit_edge, label %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit

_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit:      ; preds = %bb.j
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !18 ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ap ; 2 uses
  %.not79 = icmp eq i32 %i.an, 0
  br i1 %.not79, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3272 ; 2 uses
  %.not87 = icmp eq i32 %.fr86, 0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3832
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3280
  br i1 %.not87, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN3sat6solver6assignENS_7literalENS_13justificationE.exit.us
  %.03780.us = phi ptr [ %i.az, %_ZN3sat6solver6assignENS_7literalENS_13justificationE.exit.us ], [ %i.ak, %.lr.ph ] ; 2 uses
  %.sroa.018.0.copyload.us = load i32, ptr %.03780.us, align 4, !tbaa !18 ; 2 uses
  %i.au = xor i32 %.sroa.018.0.copyload.us, 1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 %.fr86, ptr %5, align 8
  store i64 0, ptr %.sroa.261.0..sroa_idx, align 8
  store i32 0, ptr %.sroa.3.0..sroa_idx, align 8
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !205
  %i.aw = zext i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !207
  switch i32 %i.ay, label %_ZN3sat6solver6assignENS_7literalENS_13justificationE.exit.us [
    i32 -1, label %bb.l
    i32 0, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph.split.us
  call void @_ZN3sat6solver11assign_coreENS_7literalENS_13justificationE(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 %i.au, ptr noundef nonnull byval(%"class.sat::justification") align 8 %5)
  br label %_ZN3sat6solver6assignENS_7literalENS_13justificationE.exit.us

bb.l:                                             ; preds = %.lr.ph.split.us
  call void @_ZN3sat6solver12set_conflictENS_13justificationENS_7literalE(ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr noundef nonnull byval(%"class.sat::justification") align 8 %5, i32 %.sroa.018.0.copyload.us)
  br label %_ZN3sat6solver6assignENS_7literalENS_13justificationE.exit.us

_ZN3sat6solver6assignENS_7literalENS_13justificationE.exit.us: ; preds = %bb.l, %bb.k, %.lr.ph.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.az = getelementptr inbounds nuw i8, ptr %.03780.us, i64 4 ; 2 uses
  %.not.us = icmp eq ptr %i.az, %i.aq
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %_ZN3sat6solver6assignENS_7literalENS_13justificationE.exit.us, %_ZN3sat6solver6assignENS_7literalENS_13justificationE.exit, %bb.j, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit
  %i.ba = load ptr, ptr %i.v, align 8, !tbaa !39  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit43, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !18
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit43

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit43:   ; preds = %._crit_edge, %bb.m
  %.0.i42 = phi i32 [ %i.bd, %bb.m ], [ 0, %._crit_edge ] ; 6 uses
  %i.be = call noundef zeroext i1 @_ZN3sat6solver9propagateEb(ptr noundef nonnull align 8 dereferenceable(4264) %0, i1 noundef zeroext false) ; 0 uses
  %i.bf = load i8, ptr %i.af, align 8, !tbaa !204, !range !40, !noundef !41
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.thread111, label %bb.s

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN3sat6solver6assignENS_7literalENS_13justificationE.exit
  %.03780 = phi ptr [ %i.bt, %_ZN3sat6solver6assignENS_7literalENS_13justificationE.exit ], [ %i.ak, %.lr.ph ] ; 2 uses
  %.sroa.018.0.copyload = load i32, ptr %.03780, align 4, !tbaa !18 ; 3 uses
  %i.bh = xor i32 %.sroa.018.0.copyload, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 0, ptr %5, align 8
  store i64 0, ptr %.sroa.261.0..sroa_idx, align 8
  store i32 0, ptr %.sroa.3.0..sroa_idx, align 8
  %i.bi = load ptr, ptr %i.ar, align 8, !tbaa !205
  %i.bj = zext i32 %i.bh to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !207
  switch i32 %i.bl, label %_ZN3sat6solver6assignENS_7literalENS_13justificationE.exit [
    i32 -1, label %bb.n
    i32 0, label %bb.o
    i32 1, label %bb.p
  ]

bb.n:                                             ; preds = %.lr.ph.split
  call void @_ZN3sat6solver12set_conflictENS_13justificationENS_7literalE(ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr noundef nonnull byval(%"class.sat::justification") align 8 %5, i32 %.sroa.018.0.copyload)
  br label %_ZN3sat6solver6assignENS_7literalENS_13justificationE.exit

bb.o:                                             ; preds = %.lr.ph.split
  call void @_ZN3sat6solver11assign_coreENS_7literalENS_13justificationE(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 %i.bh, ptr noundef nonnull byval(%"class.sat::justification") align 8 %5)
  br label %_ZN3sat6solver6assignENS_7literalENS_13justificationE.exit

bb.p:                                             ; preds = %.lr.ph.split
  %i.bm = load i8, ptr %i.as, align 8, !range !40
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_ZN3sat6solver6assignENS_7literalENS_13justificationE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = lshr i32 %.sroa.018.0.copyload, 1
  %i.bp = load ptr, ptr %i.at, align 8, !tbaa !25
  %i.bq = zext nneg i32 %i.bo to i64
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.bq ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !208
  %.not.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i, label %_ZN3sat6solver6assignENS_7literalENS_13justificationE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.br, align 8, !tbaa !18
  %.sroa.5.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx10.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.2.0..sroa_idx, i64 16, i1 false)
  br label %_ZN3sat6solver6assignENS_7literalENS_13justificationE.exit

_ZN3sat6solver6assignENS_7literalENS_13justificationE.exit: ; preds = %bb.p, %bb.q, %bb.r, %.lr.ph.split, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bt = getelementptr inbounds nuw i8, ptr %.03780, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bt, %i.aq
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

bb.s:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit43
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 3608
  store i32 0, ptr %i.bu, align 8, !tbaa !213
  %i.bv = call noundef zeroext i1 @_ZN3sat6solver9propagateEb(ptr noundef nonnull align 8 dereferenceable(4264) %0, i1 noundef zeroext false) ; 0 uses
  %.pre = load i8, ptr %i.af, align 8, !tbaa !204, !range !40
  %i.bw = trunc nuw i8 %.pre to i1
  br i1 %i.bw, label %.thread111, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = call noundef i32 @_Z19get_verbosity_levelv() ; 0 uses
  %i.by = call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.by, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @_Z12verbose_lockv()
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull @.str.10, i64 noundef 9) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.cb = load ptr, ptr %1, align 8, !tbaa !39    ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit45, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !18
  br label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit45

_ZN3satlsERSoRK7svectorINS_7literalEjE.exit45:    ; preds = %bb.u, %bb.v
  %.0.i.i44 = phi i32 [ %i.ce, %bb.v ], [ 0, %bb.u ]
  store i32 %.0.i.i44, ptr %4, align 8, !tbaa !58
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cb, ptr %i.cf, align 8, !tbaa !59
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoRKNS_10mk_lits_ppE(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ch = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  call void @_ZNK3sat6solver7displayERSo(ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cg)
  call void @_Z14verbose_unlockv()
  br label %.thread111

bb.w:                                             ; preds = %bb.t
  %i.ci = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.cj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.10, i64 noundef 9) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.ck = load ptr, ptr %1, align 8, !tbaa !39    ; 3 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit47, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !18
  br label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit47

_ZN3satlsERSoRK7svectorINS_7literalEjE.exit47:    ; preds = %bb.w, %bb.x
  %.0.i.i46 = phi i32 [ %i.cn, %bb.x ], [ 0, %bb.w ]
  store i32 %.0.i.i46, ptr %3, align 8, !tbaa !58
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ck, ptr %i.co, align 8, !tbaa !59
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoRKNS_10mk_lits_ppE(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.cq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  call void @_ZNK3sat6solver7displayERSo(ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
  br label %.thread111

.thread111:                                       ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit43, %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit47, %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit45, %bb.s
  %i.cr = load ptr, ptr %i.v, align 8, !tbaa !39  ; 7 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %.thread, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.lr.ph

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.lr.ph: ; preds = %.thread111
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !18 ; 2 uses
  %i.cv = icmp ult i32 %.0.i42, %i.cu
  br i1 %i.cv, label %.lr.ph83, label %.thread

.lr.ph83:                                         ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 4360
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !28 ; 5 uses
  %i.cy = zext i32 %.0.i42 to i64                 ; 4 uses
  %wide.trip.count = zext i32 %i.cu to i64        ; 3 uses
  %i.cz = sub nsw i64 %wide.trip.count, %i.cy
  %xtraiter = and i64 %i.cz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.prol.loopexit, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.prol

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.prol: ; preds = %.lr.ph83, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.prol ], [ %i.cy, %.lr.ph83 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.prol ], [ 0, %.lr.ph83 ]
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.prol
  %i.db = load i32, ptr %i.da, align 4, !tbaa !214
  %i.dc = lshr i32 %i.db, 1
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dd
  store i8 1, ptr %i.de, align 1, !tbaa !30
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.prol.loopexit, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.prol, !llvm.loop !248

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.prol.loopexit: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.prol, %.lr.ph83
  %indvars.iv.unr = phi i64 [ %i.cy, %.lr.ph83 ], [ %indvars.iv.next.prol, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.prol ]
  %i.df = sub nsw i64 %i.cy, %wide.trip.count
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %.thread, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49:   ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.prol.loopexit, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49 ], [ %indvars.iv.unr, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.prol.loopexit ] ; 5 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !214
  %i.dj = lshr i32 %i.di, 1
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dk
  store i8 1, ptr %i.dl, align 1, !tbaa !30
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !214
  %i.dp = lshr i32 %i.do, 1
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dq
  store i8 1, ptr %i.dr, align 1, !tbaa !30
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !214
  %i.dv = lshr i32 %i.du, 1
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dw
  store i8 1, ptr %i.dx, align 1, !tbaa !30
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !214
  %i.eb = lshr i32 %i.ea, 1
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.ec
  store i8 1, ptr %i.ed, align 1, !tbaa !30
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.thread, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49

.thread:                                          ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.prol.loopexit, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49, %.thread111, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.lr.ph, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit, %bb.i
  %i.ee = phi i1 [ false, %bb.i ], [ false, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ], [ false, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit ], [ true, %.thread111 ], [ true, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.lr.ph ], [ true, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49 ], [ true, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.prol.loopexit ]
  %.036 = phi i32 [ %.0.i, %bb.i ], [ %.0.i, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ], [ %.0.i, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit ], [ %.0.i42, %.thread111 ], [ %.0.i42, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.lr.ph ], [ %.0.i42, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49 ], [ %.0.i42, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit49.prol.loopexit ] ; 2 uses
  %i.ef = call noundef i32 @_Z19get_verbosity_levelv()
  %i.eg = icmp ugt i32 %i.ef, 2
  br i1 %i.eg, label %bb.y, label %bb.af

bb.y:                                             ; preds = %.thread
  %i.eh = call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.eh, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @_Z12verbose_lockv()
  %i.ei = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 6 uses
  %i.ej = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull @.str.11, i64 noundef 9) ; 0 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %.sroa.012.0.copyload = load i32, ptr %i.ek, align 8, !tbaa !18 ; 4 uses
  %i.el = icmp eq i32 %.sroa.012.0.copyload, -2
  br i1 %i.el, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.em = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull @.str.27, i64 noundef 4) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit

bb.ab:                                            ; preds = %bb.z
  %i.en = trunc i32 %.sroa.012.0.copyload to i1
  %i.eo = select i1 %i.en, ptr @.str.28, ptr @.str.29
  %.mask.i = and i32 %.sroa.012.0.copyload, 1
  %i.ep = zext nneg i32 %.mask.i to i64
  %i.eq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull %i.eo, i64 noundef %i.ep) ; 0 uses
  %i.er = lshr i32 %.sroa.012.0.copyload, 1
  %i.es = zext nneg i32 %i.er to i64
  %i.et = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, i64 noundef %i.es) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit

_ZN3satlsERSoNS_7literalE.exit:                   ; preds = %bb.aa, %bb.ab
  %i.eu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull @.str.12, i64 noundef 1) ; 0 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.ew = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3sat6solver21display_justificationERSoRKNS_13justificationE(ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull align 8 dereferenceable(20) %i.ev)
  %i.ex = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  call void @_Z14verbose_unlockv()
  br label %bb.af

bb.ac:                                            ; preds = %bb.y
  %i.ey = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 6 uses
  %i.ez = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull @.str.11, i64 noundef 9) ; 0 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %.sroa.011.0.copyload = load i32, ptr %i.fa, align 8, !tbaa !18 ; 4 uses
  %i.fb = icmp eq i32 %.sroa.011.0.copyload, -2
  br i1 %i.fb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull @.str.27, i64 noundef 4) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit51

bb.ae:                                            ; preds = %bb.ac
  %i.fd = trunc i32 %.sroa.011.0.copyload to i1
  %i.fe = select i1 %i.fd, ptr @.str.28, ptr @.str.29
  %.mask.i50 = and i32 %.sroa.011.0.copyload, 1
  %i.ff = zext nneg i32 %.mask.i50 to i64
  %i.fg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull %i.fe, i64 noundef %i.ff) ; 0 uses
  %i.fh = lshr i32 %.sroa.011.0.copyload, 1
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, i64 noundef %i.fi) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit51

_ZN3satlsERSoNS_7literalE.exit51:                 ; preds = %bb.ad, %bb.ae
  %i.fk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull @.str.12, i64 noundef 1) ; 0 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.fm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3sat6solver21display_justificationERSoRKNS_13justificationE(ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull align 8 dereferenceable(20) %i.fl)
  %i.fn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %_ZN3satlsERSoNS_7literalE.exit, %_ZN3satlsERSoNS_7literalE.exit51, %.thread
  %i.fo = call noundef i32 @_Z19get_verbosity_levelv()
  %i.fp = icmp ugt i32 %i.fo, 2
  br i1 %i.fp, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.fq = call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.fq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @_Z12verbose_lockv()
  %i.fr = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  call void @_ZNK3sat6solver7displayERSo(ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.fr)
  call void @_Z14verbose_unlockv()
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.fs = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  call void @_ZNK3sat6solver7displayERSo(ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.fs)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.af
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 3200 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !214 ; 2 uses
  %.not78 = icmp eq i32 %i.fu, -2
  br i1 %.not78, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN3sat10proof_trim14add_dependencyENS_7literalE(ptr noundef nonnull align 8 dereferenceable(4376) %0, i32 %i.fu)
  %.sroa.07.0.copyload = load i32, ptr %i.ft, align 8, !tbaa !18
  %i.fv = xor i32 %.sroa.07.0.copyload, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.010.0 = phi i32 [ %i.fv, %bb.ak ], [ -2, %bb.aj ]
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 3176
  call void @_ZN3sat10proof_trim8add_coreENS_7literalENS_13justificationE(ptr noundef nonnull align 8 dereferenceable(4376) %0, i32 %.sroa.010.0, ptr noundef nonnull byval(%"class.sat::justification") align 8 %i.fw)
  %.sroa.266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %.sroa.266.0.copyload = load i64, ptr %.sroa.266.0..sroa_idx, align 8, !tbaa !216 ; 2 uses
  %.sroa.367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3192
  %.sroa.367.0.copyload = load i32, ptr %.sroa.367.0..sroa_idx, align 8, !tbaa !18
  %i.fx = and i32 %.sroa.367.0.copyload, 7
  switch i32 %i.fx, label %_ZN3sat10proof_trim14add_dependencyENS_13justificationE.exit [
    i32 1, label %bb.am
    i32 2, label %bb.an
    i32 3, label %bb.ar
  ]

bb.am:                                            ; preds = %bb.al
  %i.fy = trunc i64 %.sroa.266.0.copyload to i32
  call void @_ZN3sat10proof_trim14add_dependencyENS_7literalE(ptr noundef nonnull align 8 dereferenceable(4376) %0, i32 %i.fy) #19, !inline_history !255
  br label %_ZN3sat10proof_trim14add_dependencyENS_13justificationE.exit

bb.an:                                            ; preds = %bb.al
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 2336
  %i.gb = load i8, ptr %i.ga, align 8, !tbaa !217, !range !40, !noundef !41
  %i.gc = zext nneg i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [568 x i8], ptr %i.fz, i64 %i.gc
  %i.ge = call noundef nonnull align 4 dereferenceable(20) ptr @_ZNK3sat16clause_allocator10get_clauseEm(ptr noundef nonnull align 8 dereferenceable(568) %i.gd, i64 noundef %.sroa.266.0.copyload), !inline_history !255 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 20 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !219 ; 2 uses
  %i.gi = zext i32 %i.gh to i64
  %.idx.i = shl nuw nsw i64 %i.gi, 2
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.idx.i
  %.not11.i = icmp eq i32 %i.gh, 0
  br i1 %.not11.i, label %_ZN3sat10proof_trim14add_dependencyENS_13justificationE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.an
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 3272
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %.lr.ph.i
  %.012.i = phi ptr [ %i.gf, %.lr.ph.i ], [ %i.gq, %bb.aq ] ; 2 uses
  %.sroa.02.0.copyload.i = load i32, ptr %.012.i, align 4, !tbaa !18 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !205
  %i.gm = zext i32 %.sroa.02.0.copyload.i to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !207
  %i.gp = icmp eq i32 %i.go, -1
  br i1 %i.gp, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN3sat10proof_trim14add_dependencyENS_7literalE(ptr noundef nonnull align 8 dereferenceable(4376) %0, i32 %.sroa.02.0.copyload.i) #19, !inline_history !255
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gq = getelementptr inbounds nuw i8, ptr %.012.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.gq, %i.gj
  br i1 %.not.i, label %_ZN3sat10proof_trim14add_dependencyENS_13justificationE.exit, label %bb.ao

bb.ar:                                            ; preds = %bb.al
  call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.7, i32 noundef 247, ptr noundef nonnull @.str.8), !inline_history !255
  call void @_Z18invoke_exit_actionj(i32 noundef 114), !inline_history !255
  br label %_ZN3sat10proof_trim14add_dependencyENS_13justificationE.exit

_ZN3sat10proof_trim14add_dependencyENS_13justificationE.exit: ; preds = %bb.aq, %bb.al, %bb.am, %bb.an, %bb.ar
  %i.gr = load ptr, ptr %i.v, align 8, !tbaa !39  ; 2 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %._crit_edge85, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit53

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit53:   ; preds = %_ZN3sat10proof_trim14add_dependencyENS_13justificationE.exit
  %i.gt = getelementptr inbounds i8, ptr %i.gr, i64 -4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !18 ; 2 uses
  %i.gv = icmp ugt i32 %i.gu, %.036
  br i1 %i.gv, label %.lr.ph84, label %._crit_edge85

.lr.ph84:                                         ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit53
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 4360
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 3296 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 3280 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 3272 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 2336
  %i.hc = zext i32 %i.gu to i64
  %i.hd = zext i32 %.036 to i64
  br label %bb.as

._crit_edge85:                                    ; preds = %_ZN3sat10proof_trim14add_dependencyENS_13justificationE.exit60, %_ZN3sat10proof_trim14add_dependencyENS_13justificationE.exit, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit53
  br i1 %i.ee, label %bb.az, label %bb.ba

bb.as:                                            ; preds = %.lr.ph84, %_ZN3sat10proof_trim14add_dependencyENS_13justificationE.exit60
  %indvars.iv90 = phi i64 [ %i.hc, %.lr.ph84 ], [ %i.he, %_ZN3sat10proof_trim14add_dependencyENS_13justificationE.exit60 ]
  %i.he = add nsw i64 %indvars.iv90, -1           ; 3 uses
  %i.hf = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.he
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !214 ; 2 uses
  %i.hi = lshr i32 %i.hh, 1
end_hunk_0
