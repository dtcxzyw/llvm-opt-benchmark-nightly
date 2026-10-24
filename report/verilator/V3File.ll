Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3File?download=true
inline.NumInlined: 2516
inline.NumDeleted: 860
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN14V3OutFormatter9endLevelsEPKc:bb.a
  %.not36 = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %.027, i64 1 ; 2 uses
  br i1 %.not36, label %bb.f, label %bb.e, !llvm.loop !333

bb.f:                                             ; preds = %bb.e
  %i.n = icmp eq i8 %i.j, 58
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = load i8, ptr %i.m, align 1, !tbaa !53
  %.not37 = icmp eq i8 %i.o, 58
  br i1 %.not37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !150
  %.neg = sdiv i32 %i.q, -2
  %i.r = add i32 %.neg, %i.b
  br label %.thread

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load i8, ptr %i.s, align 8
  %i.v = icmp eq i8 %i.u, 3
  %i.w = load i8, ptr %i.s, align 8
  %i.x = icmp eq i8 %i.w, 4
  %i.y = load i32, ptr %i.t, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.o
  %.030 = phi i32 [ %.131, %bb.o ], [ %i.b, %bb.i ] ; 8 uses
  %.0 = phi ptr [ %i.af, %bb.o ], [ %1, %bb.i ]   ; 4 uses
  %i.z = load i8, ptr %.0, align 1, !tbaa !53
  switch i8 %i.z, label %.thread [
    i8 32, label %bb.o
    i8 125, label %.sink.split
    i8 41, label %.sink.split
    i8 60, label %bb.k
    i8 101, label %bb.m
    i8 9, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  br i1 %i.x, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !53
  %i.ac = icmp eq i8 %i.ab, 47
  br i1 %i.ac, label %.sink.split, label %bb.o

bb.m:                                             ; preds = %bb.j
  br i1 %i.v, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ad = tail call noundef zeroext i1 @_ZN14V3OutFormatter8tokenEndEPKc(ptr noundef nonnull %.0)
  br i1 %i.ad, label %.sink.split, label %bb.o

.sink.split:                                      ; preds = %bb.n, %bb.l, %bb.j, %bb.j
  %i.ae = sub nsw i32 %.030, %i.y
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.j, %bb.j, %bb.l, %bb.k, %bb.n, %bb.m
  %.131 = phi i32 [ %.030, %bb.m ], [ %.030, %bb.j ], [ %.030, %bb.l ], [ %.030, %bb.k ], [ %.030, %bb.j ], [ %.030, %bb.n ], [ %i.ae, %.sink.split ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.j, !llvm.loop !334

.thread:                                          ; preds = %bb.j, %bb.h, %bb.c, %bb.d
  %.3 = phi i32 [ 0, %bb.d ], [ %i.r, %bb.h ], [ 0, %bb.c ], [ %.030, %bb.j ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 981), align 1, !tbaa !149, !range !49, !noundef !50
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %2)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.not = icmp ne ptr %1, null
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 982), align 2, !range !49
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond230 = select i1 %.not, i1 %i.h, i1 false
  %or.cond230.not = xor i1 %or.cond230, true
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1009), align 1, !range !49
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond232 = select i1 %or.cond230.not, i1 true, i1 %i.j
  br i1 %or.cond232, label %.critedge107, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !357
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !162  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !166
  %i.q = zext i16 %i.p to i32
  %.not88 = icmp eq i32 %i.l, %i.q
  br i1 %.not88, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !358
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !167
  %.not89 = icmp eq i32 %i.s, %i.u
  br i1 %.not89, label %.critedge107, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.v, ptr %3, align 8, !tbaa !51, !alias.scope !359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.v, ptr noundef nonnull align 1 dereferenceable(10) @.str.114, i64 10, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 10, ptr %i.w, align 8, !tbaa !41, !alias.scope !359
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i8 0, ptr %i.x, align 2, !tbaa !53, !alias.scope !359
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8FileLine8filenameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %bb.g unwind label %bb.v       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.w, align 8, !tbaa !41   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !41
  %i.ac = icmp eq i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %bb.g
  %.pre = load ptr, ptr %3, align 8, !tbaa !29
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp eq i64 %i.z, 0
  %.pre258 = load ptr, ptr %3, align 8, !tbaa !29 ; 3 uses
  br i1 %i.ad, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !29
  %bcmp.i.i = call i32 @bcmp(ptr %.pre258, ptr %i.ae, i64 %i.z)
  %i.af = icmp ne i32 %bcmp.i.i, 0
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.h, %bb.i
  %i.ag = phi ptr [ %.pre258, %bb.h ], [ %.pre, %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre258, %bb.i ] ; 2 uses
  %i.ah = phi i1 [ false, %bb.h ], [ true, %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.af, %bb.i ]
  %i.ai = icmp eq ptr %i.ag, %i.v
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.aj = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aj)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ak = load i64, ptr %i.v, align 8, !tbaa !53
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.al) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %.critedge107

.critedge107:                                     ; preds = %bb.e, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = phi i1 [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.e ], [ false, %bb.c ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !146, !range !49, !noundef !50
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.j, label %bb.w

bb.j:                                             ; preds = %.critedge107
  %i.aq = load i8, ptr %2, align 1, !tbaa !53     ; 2 uses
  %.not90 = icmp eq i8 %i.aq, 0
  br i1 %.not90, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = icmp ne i8 %i.aq, 10
  %or.cond = or i1 %i.am, %i.ar
  br i1 %or.cond, label %bb.m, label %bb.w

bb.l:                                             ; preds = %bb.j
  br i1 %i.am, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.as = call noundef i32 @_ZN14V3OutFormatter9endLevelsEPKc(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull %2)
  %i.at = call i32 @llvm.smax.i32(i32 %i.as, i32 0)
  %i.au = call i32 @llvm.umin.i32(i32 %i.at, i32 80)
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr @_ZL14s_indentSpacesB5cxx11, i64 %i.av ; 2 uses
  %i.ax = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 981), align 1, !tbaa !149, !range !49, !noundef !50
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !29 ; 3 uses
  br i1 %i.ay, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = load ptr, ptr %0, align 8, !tbaa !31
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %i.az), !inline_history !168
  br label %_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.o:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !41 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.be
  %.not8.i = icmp samesign eq i64 %i.be, 0
  br i1 %.not8.i, label %_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %_ZN14V3OutFormatter14putcNoTrackingEc.exit.i, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.az, %.lr.ph.i ], [ %i.bz, %_ZN14V3OutFormatter14putcNoTrackingEc.exit.i ] ; 2 uses
  %i.bj = load i8, ptr %.sroa.05.09.i, align 1, !tbaa !53 ; 2 uses
  %i.bk = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 981), align 1, !tbaa !149, !range !49, !noundef !50
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.q, label %_ZN14V3OutFormatter14putcNoTrackingEc.exit.i

bb.q:                                             ; preds = %bb.p
  switch i8 %i.bj, label %bb.u [
    i8 10, label %bb.r
    i8 9, label %bb.s
    i8 32, label %bb.t
    i8 40, label %bb.t
    i8 124, label %bb.t
    i8 38, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.bm = load i32, ptr %i.bh, align 4, !tbaa !145
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bh, align 4, !tbaa !145
  store i32 0, ptr %i.bg, align 8, !tbaa !169
  store i32 1, ptr %i.bi, align 4, !tbaa !170
  br label %_ZN14V3OutFormatter14putcNoTrackingEc.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bo = load i32, ptr %i.bg, align 8, !tbaa !169
  %i.bp = add nsw i32 %i.bo, 9
  %i.bq = sdiv i32 %i.bp, 8
  %i.br = shl nsw i32 %i.bq, 3
  store i32 %i.br, ptr %i.bg, align 8, !tbaa !169
  br label %_ZN14V3OutFormatter14putcNoTrackingEc.exit.i

bb.t:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q
  %i.bs = load i32, ptr %i.bg, align 8, !tbaa !169
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.bg, align 8, !tbaa !169
  br label %_ZN14V3OutFormatter14putcNoTrackingEc.exit.i

bb.u:                                             ; preds = %bb.q
  %i.bu = load i32, ptr %i.bg, align 8, !tbaa !169
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bg, align 8, !tbaa !169
  store i32 0, ptr %i.bi, align 4, !tbaa !170
  br label %_ZN14V3OutFormatter14putcNoTrackingEc.exit.i

_ZN14V3OutFormatter14putcNoTrackingEc.exit.i:     ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.p
  %i.bw = load ptr, ptr %0, align 8, !tbaa !31
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(132) %0, i8 noundef signext %i.bj), !inline_history !171
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.bz, %i.bf
  br i1 %.not.i, label %_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.p

_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN14V3OutFormatter14putcNoTrackingEc.exit.i, %bb.n, %bb.o
  store i8 0, ptr %i.an, align 8, !tbaa !146
  br i1 %i.am, label %bb.x, label %.critedge109

bb.v:                                             ; preds = %bb.f
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.v
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.v
  %i.cd = load i64, ptr %i.v, align 8, !tbaa !53
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.es

bb.w:                                             ; preds = %bb.k, %.critedge107
  br i1 %i.am, label %bb.x, label %.critedge109

bb.x:                                             ; preds = %_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !162 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 12 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !167
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !358
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !166
  %i.cm = zext i16 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.co = load i32, ptr %i.ch, align 4, !tbaa !167
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cq = load i16, ptr %i.cp, align 8, !tbaa !172
  %i.cr = zext i16 %i.cq to i32
  %i.cs = add nsw i32 %i.co, %i.cr                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.ct = call i32 @llvm.abs.i32(i32 %i.cs, i1 false) ; 5 uses
  %i.cu = icmp ult i32 %i.ct, 10
  br i1 %i.cu, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x, %bb.ad
  %.030.i.i = phi i32 [ %i.dc, %bb.ad ], [ 1, %bb.x ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.db, %bb.ad ], [ %i.ct, %bb.x ] ; 5 uses
  %i.cv = icmp ult i32 %.02329.i.i, 100
  br i1 %i.cv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.cw = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.cx = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.cx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cy = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.cz = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.cz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.da = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.db = udiv i32 %.02329.i.i, 10000
  %i.dc = add i32 %.030.i.i, 4                    ; 2 uses
  %i.dd = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.dd, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !339

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.y, %bb.x
  %.022.i.i = phi i32 [ %i.da, %bb.ac ], [ %i.cw, %bb.y ], [ %i.cy, %bb.aa ], [ 1, %bb.x ], [ %i.dc, %bb.ad ] ; 2 uses
  %.lobit.i = lshr i32 %i.cs, 31                  ; 2 uses
  %i.de = add i32 %.022.i.i, %.lobit.i
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.dg, ptr %4, align 8, !tbaa !51, !alias.scope !360
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.df, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i unwind label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.dh = zext nneg i32 %.lobit.i to i64
  %i.di = load ptr, ptr %4, align 8, !tbaa !29, !alias.scope !360
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dh ; 4 uses
  %i.dk = icmp ugt i32 %i.ct, 99
  br i1 %i.dk, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.dl = add i32 %.022.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.do, %.lr.ph.i11.i ], [ %i.ct, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.dz, %.lr.ph.i11.i ], [ %i.dl, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.dm = urem i32 %.020.i.i, 100
  %i.dn = shl nuw nsw i32 %i.dm, 1
  %i.do = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.dp = zext nneg i32 %i.dn to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !53, !noalias !360
  %i.dt = zext i32 %.01819.i.i to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dt
  store i8 %i.ds, ptr %i.du, align 1, !tbaa !53
  %i.dv = load i8, ptr %i.dq, align 2, !tbaa !53, !noalias !360
  %i.dw = add i32 %.01819.i.i, -1
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dx
  store i8 %i.dv, ptr %i.dy, align 1, !tbaa !53
  %i.dz = add i32 %.01819.i.i, -2
  %i.ea = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.ea, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !340

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.do, %.lr.ph.i11.i ] ; 3 uses
  %i.eb = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.eb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i
  %i.ec = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !53, !noalias !360
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !53
  %i.ei = load i8, ptr %i.ee, align 2, !tbaa !53, !noalias !360
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.ej = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.ek = or disjoint i8 %i.ej, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.ag:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #29
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.ae, %bb.af
  %storemerge.i.i = phi i8 [ %i.ek, %bb.af ], [ %i.ei, %bb.ae ]
  store i8 %storemerge.i.i, ptr %i.dj, align 1, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.en = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8FileLine8filenameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.cg)
          to label %bb.ah unwind label %bb.bk     ; 2 uses

bb.ah:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !29, !noalias !361
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !41, !noalias !361 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  store ptr %i.er, ptr %10, align 8, !tbaa !51, !alias.scope !362
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 0, ptr %i.es, align 8, !tbaa !41, !alias.scope !362
  store i8 0, ptr %i.er, align 8, !tbaa !53, !alias.scope !362
  %i.et = add i64 %i.eq, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.et)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !41, !alias.scope !362
  %i.ev = and i64 %i.eu, -2
  %i.ew = icmp eq i64 %i.ev, 4611686018427387902
  br i1 %i.ew, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.ex = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.56, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.aj ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ey = load i64, ptr %i.es, align 8, !tbaa !41, !alias.scope !362
  %i.ez = sub i64 4611686018427387903, %i.ey
  %i.fa = icmp ult i64 %i.ez, %i.eq
  br i1 %i.fa, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #32
          to label %.cont.i.i unwind label %bb.aj

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.fb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.eo, i64 noundef %i.eq)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.ah
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %10, align 8, !tbaa !29, !alias.scope !362 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.er
  br i1 %i.fe, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.aj
  %i.ff = load i64, ptr %i.er, align 8, !tbaa !53, !alias.scope !362
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #31
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.fh = load i64, ptr %i.es, align 8, !tbaa !41, !noalias !363
  %i.fi = icmp eq i64 %i.fh, 4611686018427387903
  br i1 %i.fi, label %bb.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

end_hunk_0
begin_hunk_1_@_ZN14V3OutFormatter5putnsEPK7AstNodePKc:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %i.lk = load i64, ptr %i.gd, align 8, !tbaa !53
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  %i.lm = load ptr, ptr %9, align 8, !tbaa !29    ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.fk
  br i1 %i.ln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  %i.lo = load i64, ptr %i.fk, align 8, !tbaa !53
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  %i.lq = load ptr, ptr %10, align 8, !tbaa !29   ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.er
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %i.ls = load i64, ptr %i.er, align 8, !tbaa !53
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.lu = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.dg
  br i1 %i.lv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.lw = load i64, ptr %i.dg, align 8, !tbaa !53
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %.critedge109

bb.bk:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.ak
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.an
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i122, %bb.aq
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

bb.bo:                                            ; preds = %bb.as
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i130, %bb.ax, %.critedge.i
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i136, %bb.az
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN14V3OutFormatter14putcNoTrackingEc.exit.i147, %bb.bc
  %lpad.loopexit.split-lp371 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mf = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.jc
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.mh = load i64, ptr %i.jc, align 8, !tbaa !53
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mi) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176, %bb.bq
  %.pn = phi { ptr, i32 } [ %i.me, %bb.bq ], [ %lpad.loopexit.split-lp371, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176 ], [ %lpad.loopexit.split-lp371, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.mj = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ml = icmp eq ptr %i.mj, %i.mk
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178
  %i.mm = load i64, ptr %i.mk, align 8, !tbaa !53
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.mn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179, %bb.bp
  %.pn.pn = phi { ptr, i32 } [ %i.md, %bb.bp ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178 ] ; 2 uses
  %i.mo = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.mq = icmp eq ptr %i.mo, %i.mp
  br i1 %i.mq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  %i.mr = load i64, ptr %i.mp, align 8, !tbaa !53
  %i.ms = add i64 %i.mr, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.ms) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182, %bb.bo
  %.pn.pn.pn = phi { ptr, i32 } [ %i.mc, %bb.bo ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.mt = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.mu = icmp eq ptr %i.mt, %i.gs
  br i1 %i.mu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  %i.mv = load i64, ptr %i.gs, align 8, !tbaa !53
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.mt, i64 noundef %i.mw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185, %bb.bn
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mb, %bb.bn ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184 ] ; 2 uses
  %i.mx = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.my = icmp eq ptr %i.mx, %i.gd
  br i1 %i.my, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
  %i.mz = load i64, ptr %i.gd, align 8, !tbaa !53
  %i.na = add i64 %i.mz, 1
  call void @_ZdlPvm(ptr noundef %i.mx, i64 noundef %i.na) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188, %bb.bm
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ma, %bb.bm ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187 ] ; 2 uses
  %i.nb = load ptr, ptr %9, align 8, !tbaa !29    ; 2 uses
  %i.nc = icmp eq ptr %i.nb, %i.fk
  br i1 %i.nc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  %i.nd = load i64, ptr %i.fk, align 8, !tbaa !53
  %i.ne = add i64 %i.nd, 1
  call void @_ZdlPvm(ptr noundef %i.nb, i64 noundef %i.ne) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191, %bb.bl
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lz, %bb.bl ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ] ; 2 uses
  %i.nf = load ptr, ptr %10, align 8, !tbaa !29   ; 2 uses
  %i.ng = icmp eq ptr %i.nf, %i.er
  br i1 %i.ng, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  %i.nh = load i64, ptr %i.er, align 8, !tbaa !53
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.ni) #31
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194, %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194 ], [ %i.ly, %bb.bk ], [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.fc, %bb.aj ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.nj = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.dg
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %.body
  %i.nl = load i64, ptr %i.dg, align 8, !tbaa !53
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.es

.critedge109:                                     ; preds = %_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %bb.w
  %.pr341 = load i8, ptr %2, align 1, !tbaa !53   ; 2 uses
  %.not99242 = icmp eq i8 %.pr341, 0
  br i1 %.not99242, label %.loopexit, label %.lr.ph248

.lr.ph248:                                        ; preds = %.critedge109
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 30 uses
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 10 uses
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 8 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 10 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 20 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 7 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph248, %_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit205.thread
  %i.ob = phi i8 [ %.pr341, %.lr.ph248 ], [ %i.wc, %_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit205.thread ] ; 2 uses
  %.0247 = phi ptr [ %2, %.lr.ph248 ], [ %i.wb, %_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit205.thread ] ; 41 uses
  %.060245 = phi i1 [ false, %.lr.ph248 ], [ %.161, %_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit205.thread ] ; 2 uses
  %.062244 = phi i1 [ true, %.lr.ph248 ], [ %.163225, %_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit205.thread ] ; 25 uses
  %.064243 = phi i1 [ false, %.lr.ph248 ], [ %.266, %_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit205.thread ] ; 4 uses
  %i.oc = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 981), align 1, !tbaa !149, !range !49, !noundef !50
  %i.od = trunc nuw i8 %i.oc to i1
  br i1 %i.od, label %bb.bs, label %_ZN14V3OutFormatter14putcNoTrackingEc.exit

bb.bs:                                            ; preds = %bb.br
  switch i8 %i.ob, label %bb.bw [
    i8 10, label %bb.bt
    i8 9, label %bb.bu
    i8 32, label %bb.bv
    i8 40, label %bb.bv
    i8 124, label %bb.bv
    i8 38, label %bb.bv
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.oe = load i32, ptr %i.no, align 4, !tbaa !145
  %i.of = add nsw i32 %i.oe, 1
  store i32 %i.of, ptr %i.no, align 4, !tbaa !145
  store i32 0, ptr %i.nn, align 8, !tbaa !169
  store i32 1, ptr %i.np, align 4, !tbaa !170
  br label %_ZN14V3OutFormatter14putcNoTrackingEc.exit

bb.bu:                                            ; preds = %bb.bs
  %i.og = load i32, ptr %i.nn, align 8, !tbaa !169
  %i.oh = add nsw i32 %i.og, 9
  %i.oi = sdiv i32 %i.oh, 8
  %i.oj = shl nsw i32 %i.oi, 3
  store i32 %i.oj, ptr %i.nn, align 8, !tbaa !169
  br label %_ZN14V3OutFormatter14putcNoTrackingEc.exit

bb.bv:                                            ; preds = %bb.bs, %bb.bs, %bb.bs, %bb.bs
  %i.ok = load i32, ptr %i.nn, align 8, !tbaa !169
  %i.ol = add nsw i32 %i.ok, 1
  store i32 %i.ol, ptr %i.nn, align 8, !tbaa !169
  br label %_ZN14V3OutFormatter14putcNoTrackingEc.exit

bb.bw:                                            ; preds = %bb.bs
  %i.om = load i32, ptr %i.nn, align 8, !tbaa !169
  %i.on = add nsw i32 %i.om, 1
  store i32 %i.on, ptr %i.nn, align 8, !tbaa !169
  store i32 0, ptr %i.np, align 4, !tbaa !170
  br label %_ZN14V3OutFormatter14putcNoTrackingEc.exit

_ZN14V3OutFormatter14putcNoTrackingEc.exit:       ; preds = %bb.br, %bb.bt, %bb.bu, %bb.bv, %bb.bw
  %i.oo = load ptr, ptr %0, align 8, !tbaa !31
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.oq = load ptr, ptr %i.op, align 8
  call void %i.oq(ptr noundef nonnull align 8 dereferenceable(132) %0, i8 noundef signext %i.ob), !inline_history !173
  %i.or = load i8, ptr %.0247, align 1, !tbaa !53 ; 2 uses
  %i.os = sext i8 %i.or to i32
  %i.ot = call i32 @isalpha(i32 noundef %i.os) #33
  %.not100 = icmp eq i32 %i.ot, 0
  br i1 %.not100, label %.critedge111, label %bb.bx

bb.bx:                                            ; preds = %_ZN14V3OutFormatter14putcNoTrackingEc.exit
  br i1 %.062244, label %bb.by, label %.critedge111thread-pre-split

bb.by:                                            ; preds = %bb.bx
  %i.ou = load i8, ptr %i.nq, align 8, !tbaa !144
  %.not340 = icmp eq i8 %i.ou, 3
  br i1 %.not340, label %bb.bz, label %.critedge111thread-pre-split

bb.bz:                                            ; preds = %bb.by
  %i.ov = call noundef zeroext i1 @_ZN14V3OutFormatter13tokenNotStartEPKc(ptr noundef nonnull %.0247)
  %spec.select = select i1 %i.ov, i1 true, i1 %.064243 ; 3 uses
  br i1 %spec.select, label %.thread221, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ow = call noundef zeroext i1 @_ZN14V3OutFormatter10tokenStartEPKc(ptr noundef nonnull %.0247)
  br i1 %i.ow, label %bb.cb, label %.thread221

bb.cb:                                            ; preds = %bb.ca
  %i.ox = load i32, ptr %i.nr, align 4, !tbaa !150
  %i.oy = load i32, ptr %i.ns, align 4, !tbaa !152
  %i.oz = add nsw i32 %i.oy, %i.ox
  store i32 %i.oz, ptr %i.ns, align 4, !tbaa !152
  br label %.thread221

.thread221:                                       ; preds = %bb.bz, %bb.cb, %bb.ca
  %i.pa = call noundef zeroext i1 @_ZN14V3OutFormatter8tokenEndEPKc(ptr noundef nonnull %.0247)
  br i1 %i.pa, label %bb.cc, label %.critedge111thread-pre-split

bb.cc:                                            ; preds = %.thread221
  %i.pb = load i32, ptr %i.nr, align 4, !tbaa !150
  %i.pc = load i32, ptr %i.ns, align 4, !tbaa !152
  %i.pd = sub nsw i32 %i.pc, %i.pb                ; 2 uses
  store i32 %i.pd, ptr %i.ns, align 4, !tbaa !152
  %i.pe = icmp slt i32 %i.pd, 0
  br i1 %i.pe, label %bb.cd, label %.critedge111thread-pre-split, !prof !103

bb.cd:                                            ; preds = %bb.cc
  %i.pf = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.116, i32 noundef 160) ; 0 uses
  %i.pg = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ph = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.pg, ptr noundef nonnull @.str.117)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ph) #32
  unreachable

.critedge111thread-pre-split:                     ; preds = %bb.by, %.thread221, %bb.bx, %bb.cc
  %.266.ph = phi i1 [ %spec.select, %bb.cc ], [ %.064243, %bb.bx ], [ %spec.select, %.thread221 ], [ %.064243, %bb.by ]
  %.pr = load i8, ptr %.0247, align 1, !tbaa !53
  br label %.critedge111

.critedge111:                                     ; preds = %.critedge111thread-pre-split, %_ZN14V3OutFormatter14putcNoTrackingEc.exit
  %i.pi = phi i8 [ %.pr, %.critedge111thread-pre-split ], [ %i.or, %_ZN14V3OutFormatter14putcNoTrackingEc.exit ]
  %.266 = phi i1 [ %.266.ph, %.critedge111thread-pre-split ], [ %.064243, %_ZN14V3OutFormatter14putcNoTrackingEc.exit ]
  switch i8 %i.pi, label %bb.ep [
    i8 10, label %bb.ce
    i8 32, label %_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit205
    i8 9, label %_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit205
    i8 34, label %bb.co
    i8 47, label %bb.cp
    i8 123, label %bb.df
    i8 125, label %bb.dn
    i8 40, label %bb.du
    i8 41, label %bb.dy
    i8 60, label %bb.ef
    i8 62, label %bb.ej
  ]

bb.ce:                                            ; preds = %.critedge111
  %i.pj = load i32, ptr %i.no, align 4, !tbaa !145
  %i.pk = add nsw i32 %i.pj, 1
  store i32 %i.pk, ptr %i.no, align 4, !tbaa !145
  %i.pl = getelementptr inbounds nuw i8, ptr %.0247, i64 1 ; 2 uses
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !53
  %i.pn = icmp eq i8 %i.pm, 0
  br i1 %i.pn, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i8 1, ptr %i.an, align 8, !tbaa !146
  br label %_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit205

bb.cg:                                            ; preds = %bb.ce
  store i8 0, ptr %i.an, align 8, !tbaa !146
  %i.po = call noundef i32 @_ZN14V3OutFormatter9endLevelsEPKc(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull %i.pl)
  %i.pp = call i32 @llvm.smax.i32(i32 %i.po, i32 0)
  %i.pq = call i32 @llvm.umin.i32(i32 %i.pp, i32 80)
  %i.pr = zext nneg i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw [32 x i8], ptr @_ZL14s_indentSpacesB5cxx11, i64 %i.pr ; 2 uses
  %i.pt = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 981), align 1, !tbaa !149, !range !49, !noundef !50
  %i.pu = trunc nuw i8 %i.pt to i1
  %i.pv = load ptr, ptr %i.ps, align 8, !tbaa !29 ; 3 uses
  br i1 %i.pu, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pw = load ptr, ptr %0, align 8, !tbaa !31
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 24
  %i.py = load ptr, ptr %i.px, align 8
  call void %i.py(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %i.pv), !inline_history !168
  br label %_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit205

bb.ci:                                            ; preds = %bb.cg
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !41 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.qa
  %.not8.i200 = icmp samesign eq i64 %i.qa, 0
  br i1 %.not8.i200, label %_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit205, label %.lr.ph.i201

.lr.ph.i201:                                      ; preds = %bb.ci, %_ZN14V3OutFormatter14putcNoTrackingEc.exit.i203
  %.sroa.05.09.i202 = phi ptr [ %i.qs, %_ZN14V3OutFormatter14putcNoTrackingEc.exit.i203 ], [ %i.pv, %bb.ci ] ; 2 uses
  %i.qc = load i8, ptr %.sroa.05.09.i202, align 1, !tbaa !53 ; 2 uses
  %i.qd = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 981), align 1, !tbaa !149, !range !49, !noundef !50
  %i.qe = trunc nuw i8 %i.qd to i1
  br i1 %i.qe, label %bb.cj, label %_ZN14V3OutFormatter14putcNoTrackingEc.exit.i203

bb.cj:                                            ; preds = %.lr.ph.i201
  switch i8 %i.qc, label %bb.cn [
    i8 10, label %bb.ck
    i8 9, label %bb.cl
    i8 32, label %bb.cm
    i8 40, label %bb.cm
    i8 124, label %bb.cm
    i8 38, label %bb.cm
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.qf = load i32, ptr %i.no, align 4, !tbaa !145
  %i.qg = add nsw i32 %i.qf, 1
  store i32 %i.qg, ptr %i.no, align 4, !tbaa !145
  store i32 0, ptr %i.nn, align 8, !tbaa !169
  store i32 1, ptr %i.np, align 4, !tbaa !170
  br label %_ZN14V3OutFormatter14putcNoTrackingEc.exit.i203

bb.cl:                                            ; preds = %bb.cj
  %i.qh = load i32, ptr %i.nn, align 8, !tbaa !169
  %i.qi = add nsw i32 %i.qh, 9
  %i.qj = sdiv i32 %i.qi, 8
  %i.qk = shl nsw i32 %i.qj, 3
  store i32 %i.qk, ptr %i.nn, align 8, !tbaa !169
  br label %_ZN14V3OutFormatter14putcNoTrackingEc.exit.i203

bb.cm:                                            ; preds = %bb.cj, %bb.cj, %bb.cj, %bb.cj
  %i.ql = load i32, ptr %i.nn, align 8, !tbaa !169
  %i.qm = add nsw i32 %i.ql, 1
  store i32 %i.qm, ptr %i.nn, align 8, !tbaa !169
  br label %_ZN14V3OutFormatter14putcNoTrackingEc.exit.i203
end_hunk_1
