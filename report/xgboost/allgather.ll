Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/allgather?download=true
inline.NumInlined: 1185
inline.NumDeleted: 570
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7xgboost10collective8cpu_impl19BroadcastAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEENS6_IaLm18446744073709551615EEE:bb.a
  br i1 %i.bt, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.q:                                             ; preds = %.noexc
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !45 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i64 %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.bs, i64 %i.bx, i1 false)
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.br, ptr %8, align 8, !tbaa !44, !alias.scope !168
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !46
  store i64 %i.by, ptr %i.bq, align 8, !tbaa !46, !alias.scope !168
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !45
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %i.bz = phi i64 [ %i.bv, %bb.q ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bz, ptr %i.cb, align 8, !tbaa !45, !alias.scope !168
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !44
  store i64 0, ptr %i.ca, align 8, !tbaa !45
  store i8 0, ptr %i.bs, align 8, !tbaa !46
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  invoke void @_ZN7xgboost10collective6detail7MakeMsgEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str, i32 noundef 64)
          to label %.noexc23 unwind label %bb.v

.noexc23:                                         ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.cc = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %.noexc.i unwind label %bb.s, !noalias !169 ; 7 uses

.noexc.i:                                         ; preds = %.noexc23
  %i.cd = load ptr, ptr %6, align 8, !tbaa !44, !noalias !171 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  %i.cg = load i64, ptr %7, align 8, !tbaa !58, !noalias !171
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 3 uses
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.thread: ; preds = %.noexc.i
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !45, !noalias !171 ; 3 uses
  %i.ck = add nuw nsw i64 %i.cj, 1
  %i.cl = icmp ult i64 %i.cj, 16
  call void @llvm.assume(i1 %i.cl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.ce, i64 %i.ck, i1 false)
  br label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %.noexc.i
  %i.cm = load i64, ptr %i.ce, align 8, !tbaa !46, !noalias !171
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !45, !noalias !171
  store i64 %i.cm, ptr %i.ch, align 8, !tbaa !46, !noalias !171
  br label %bb.t

bb.s:                                             ; preds = %.noexc23
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %6, align 8, !tbaa !44, !noalias !169 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.s
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !46, !noalias !169
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #26, !noalias !169
  br label %.body

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.thread
  %.sink = phi ptr [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.thread ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i ]
  %i.ct = phi i64 [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.thread ], [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i ]
  store ptr null, ptr %7, align 8, !tbaa !58, !noalias !171
  store ptr %.sink, ptr %i.cc, align 8, !tbaa !60, !noalias !171
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !45, !noalias !171
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  store i32 0, ptr %i.cv, align 8, !tbaa !63, !noalias !171
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.cx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #29
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !64, !noalias !171
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  store i64 %i.cg, ptr %i.cy, align 8, !tbaa !58, !noalias !171
  store ptr %i.cc, ptr %0, align 8, !tbaa !58, !alias.scope !171
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.cz = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.bq
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.t
  %i.db = load i64, ptr %i.bq, align 8, !tbaa !46
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.dd = load ptr, ptr %9, align 8, !tbaa !44    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.ak
  br i1 %i.de, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.df = load i64, ptr %i.ak, align 8, !tbaa !46
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i26

bb.u:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.v:                                             ; preds = %bb.r
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.di, %bb.v ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i ], [ %i.cn, %bb.s ] ; 2 uses
  %i.dj = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bq
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %.body
  %i.dl = load i64, ptr %i.bq, align 8, !tbaa !46
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.u
  %.pn = phi { ptr, i32 } [ %i.dh, %bb.u ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %eh.lpad-body, %.body ]
  %i.dn = load ptr, ptr %9, align 8, !tbaa !44    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.ak
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.dp = load i64, ptr %i.ak, align 8, !tbaa !46
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  resume { ptr, i32 } %.pn

_ZN7xgboost10collective6ResultD2Ev.exit.thread:   ; preds = %_ZNK7xgboost6common4SpanIaLm18446744073709551615EE7subspanEmm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79129, 1 ; 3 uses
  %i.dr = load i32, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %.not.i = icmp ne i32 %i.dr, -1
  %i.ds = sext i32 %i.dr to i64
  %.not61 = icmp slt i64 %indvars.iv.next80, %i.ds
  %.not = select i1 %.not.i, i1 %.not61, i1 false
  br i1 %.not, label %.lr.ph.split, label %.critedge, !llvm.loop !156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %.pr = load ptr, ptr %7, align 8, !tbaa !58     ; 3 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN7xgboost10collective6ResultD2Ev.exit, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i26
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.pr) #13, !inline_history !0
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 56) #26, !inline_history !0
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

_ZN7xgboost10collective6ResultD2Ev.exit:          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i26, %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.w

.critedge:                                        ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit.thread.us, %_ZN7xgboost10collective6ResultD2Ev.exit.thread, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !49, !alias.scope !172
  br label %bb.w

bb.w:                                             ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit, %.critedge
  ret void
}

declare void @_ZN7xgboost10collective8cpu_impl9BroadcastERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEi(ptr dead_on_unwind writable sret(%"struct.xgboost::collective::Result") align 8, ptr noundef nonnull align 8 dereferenceable(184), i64, ptr, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost10collective6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES8_NS6_IaLm18446744073709551615EEE(ptr dead_on_unwind noalias writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %2, ptr nofree readonly captures(none) %3, i64 %4, ptr nofree readonly captures(none) %5, ptr nofree noundef readonly byval(%"class.xgboost::common::Span") align 8 captures(none) %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::shared_ptr", align 8   ; 10 uses
  %9 = alloca %"class.std::shared_ptr", align 8   ; 8 uses
  %10 = alloca %"struct.xgboost::collective::Result", align 8 ; 16 uses
  %11 = alloca %"struct.xgboost::collective::Result", align 8 ; 14 uses
  %12 = alloca %"struct.xgboost::collective::Result", align 8 ; 14 uses
  %13 = alloca %"struct.xgboost::collective::Result", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39   ; 13 uses
  switch i32 %i.b, label %bb.c [
    i32 -1, label %bb.b
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !49, !alias.scope !205
  br label %bb.bh

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40   ; 3 uses
  %16 = add i32 %i.b, -1
  %17 = add i32 %16, %i.d
  %18 = srem i32 %17, %i.b
  %19 = add nuw i32 %i.b, 1
  %20 = add i32 %19, %i.d
  %21 = srem i32 %20, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.e = load ptr, ptr %1, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.h = load ptr, ptr %1, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %21)
          to label %.preheader unwind label %bb.m

.preheader:                                       ; preds = %bb.c
  %.not119 = icmp sgt i32 %i.b, 0
  br i1 %.not119, label %.lr.ph, label %.critedge30

.lr.ph:                                           ; preds = %.preheader
  %i.k = add nsw i32 %i.d, %i.b                   ; 4 uses
  %i.l = load i64, ptr %6, align 8                ; 12 uses
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = load ptr, ptr %.in.i.i.i, align 8        ; 5 uses
  %i.n = icmp ne ptr %i.m, null                   ; 4 uses
  %injected.cond = icmp ule i64 %4, %2
  %injected.cond.fr = freeze i1 %injected.cond
  br i1 %injected.cond.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.l
  %storemerge120.us = phi i32 [ %i.bj, %bb.l ], [ 0, %.lr.ph ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  store ptr null, ptr %13, align 8, !tbaa !49, !alias.scope !206
  %i.o = sub i32 %i.k, %storemerge120.us
  %i.p = srem i32 %i.o, %i.b
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  %i.r = icmp ugt i64 %4, %i.q
  br i1 %i.r, label %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.us, label %.split.us, !prof !51

_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.us: ; preds = %.lr.ph.split.us
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.q
  %i.t = load i64, ptr %i.s, align 8, !tbaa !52, !noalias !207 ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.q
  %i.v = load i64, ptr %i.u, align 8, !tbaa !52, !noalias !207 ; 3 uses
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %.split.i.i.i.us, label %bb.d

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.us
  %i.x = add i64 %i.v, %i.t
  %.not.i.i.i.us = icmp ugt i64 %i.x, %i.l
  br i1 %.not.i.i.i.us, label %.split122.us, label %bb.f, !prof !50

.split.i.i.i.us:                                  ; preds = %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.us
  %.not8.i.i.i.us = icmp ugt i64 %i.t, %i.l
  br i1 %.not8.i.i.i.us, label %.split122.us, label %bb.e, !prof !50

bb.e:                                             ; preds = %.split.i.i.i.us
  %i.y = sub nuw i64 %i.l, %i.t
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = phi i64 [ %i.y, %bb.e ], [ %i.v, %bb.d ] ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = or i1 %i.aa, %i.n
  br i1 %i.ab, label %"_ZZN7xgboost10collective6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES8_NS6_IaLm18446744073709551615EEEENK3$_0clEv.exit.i.us", label %.split124.us, !prof !51

"_ZZN7xgboost10collective6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES8_NS6_IaLm18446744073709551615EEEENK3$_0clEv.exit.i.us": ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t
  %i.ad = load ptr, ptr %9, align 8, !tbaa !55, !noalias !207 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !57, !noalias !208
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !208
  invoke void %i.ag(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %12, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef %i.ac, i64 noundef %i.z)
          to label %"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_0EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.us" unwind label %.split126.us, !inline_history !183

"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_0EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.us": ; preds = %"_ZZN7xgboost10collective6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES8_NS6_IaLm18446744073709551615EEEENK3$_0clEv.exit.i.us"
  %i.ah = load ptr, ptr %12, align 8, !noalias !209 ; 2 uses
  %.not.i.i35.us = icmp eq ptr %i.ah, null
  br i1 %.not.i.i35.us, label %bb.g, label %"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.us.thread"

"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.us.thread": ; preds = %"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_0EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.us"
  store ptr null, ptr %12, align 8, !tbaa !58, !noalias !209
  br label %"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.thread.us"

bb.g:                                             ; preds = %"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_0EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.us"
  %i.ai = xor i32 %storemerge120.us, -1
  %i.aj = add i32 %i.k, %i.ai
  %i.ak = srem i32 %i.aj, %i.b
  %i.al = sext i32 %i.ak to i64                   ; 4 uses
  %i.am = icmp ugt i64 %4, %i.al
  br i1 %i.am, label %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i36.us, label %.split128.us, !prof !51

_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i36.us: ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.al
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !52, !noalias !210 ; 4 uses
  %i.ap = icmp ugt i64 %2, %i.al
  br i1 %i.ap, label %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit4.i.i37.us, label %.split130.us, !prof !51

_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit4.i.i37.us: ; preds = %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i36.us
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.al
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !52, !noalias !210 ; 3 uses
  %i.as = icmp eq i64 %i.ar, -1
  br i1 %i.as, label %.split.i.i.i40.us, label %bb.h

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit4.i.i37.us
  %i.at = add i64 %i.ar, %i.ao
  %.not.i.i.i38.us = icmp ugt i64 %i.at, %i.l
  br i1 %.not.i.i.i38.us, label %.split132.us, label %bb.j, !prof !50

.split.i.i.i40.us:                                ; preds = %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit4.i.i37.us
  %.not8.i.i.i41.us = icmp ugt i64 %i.ao, %i.l
  br i1 %.not8.i.i.i41.us, label %.split132.us, label %bb.i, !prof !50

bb.i:                                             ; preds = %.split.i.i.i40.us
  %i.au = sub nuw i64 %i.l, %i.ao
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.av = phi i64 [ %i.au, %bb.i ], [ %i.ar, %bb.h ] ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = or i1 %i.aw, %i.n
  br i1 %i.ax, label %"_ZZN7xgboost10collective6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES8_NS6_IaLm18446744073709551615EEEENK3$_1clEv.exit.i.us", label %.split134.us, !prof !51

"_ZZN7xgboost10collective6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES8_NS6_IaLm18446744073709551615EEEENK3$_1clEv.exit.i.us": ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ao
  %i.az = load ptr, ptr %8, align 8, !tbaa !55, !noalias !210 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !57, !noalias !210
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !210
  invoke void %i.bc(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %11, ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef %i.ay, i64 noundef %i.av)
          to label %"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.us" unwind label %.split136.us, !inline_history !188

"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.us": ; preds = %"_ZZN7xgboost10collective6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES8_NS6_IaLm18446744073709551615EEEENK3$_1clEv.exit.i.us"
  %.pr.us = load ptr, ptr %11, align 8, !noalias !211 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %.not.i.i43.us = icmp eq ptr %.pr.us, null
  br i1 %.not.i.i43.us, label %bb.k, label %"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.thread.us"

"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.thread.us": ; preds = %"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.us.thread", %"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.us"
  %i.bd = phi ptr [ %i.ah, %"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.us.thread" ], [ %.pr.us, %"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.us" ]
  %i.be = ptrtoint ptr %i.bd to i64
  store i64 %i.be, ptr %10, align 8, !tbaa !58, !alias.scope !211
  store ptr null, ptr %11, align 8, !tbaa !58, !noalias !211
  br label %_ZN7xgboost10collective6ResultD2Ev.exit.us

bb.k:                                             ; preds = %"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.us"
  %.val.val.i.us = load ptr, ptr %8, align 8, !tbaa !55, !noalias !211 ; 2 uses
  %i.bf = load ptr, ptr %.val.val.i.us, align 8, !tbaa !57, !noalias !212
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !212
  invoke void %i.bh(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %10, ptr noundef nonnull align 8 dereferenceable(40) %.val.val.i.us)
          to label %"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.us" unwind label %.split139.us, !inline_history !193

"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.us": ; preds = %bb.k
  %.pr101.us = load ptr, ptr %11, align 8, !tbaa !58 ; 3 uses
  %.not.i.i45.us = icmp eq ptr %.pr101.us, null
  br i1 %.not.i.i45.us, label %_ZN7xgboost10collective6ResultD2Ev.exit.us, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.us

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.us: ; preds = %"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.us"
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.pr101.us) #13, !inline_history !0
  call void @_ZdlPvm(ptr noundef nonnull %.pr101.us, i64 noundef 56) #26, !inline_history !0
  br label %_ZN7xgboost10collective6ResultD2Ev.exit.us

_ZN7xgboost10collective6ResultD2Ev.exit.us:       ; preds = %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.us, %"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.us", %"_ZN7xgboost10collectivelsIZNS0_6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES9_NS7_IaLm18446744073709551615EEEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSE_OSD_.exit.thread.us"
  %i.bi = load ptr, ptr %12, align 8, !tbaa !58   ; 3 uses
  %.not.i.i46.us = icmp eq ptr %i.bi, null
  br i1 %.not.i.i46.us, label %_ZN7xgboost10collective6ResultD2Ev.exit51.us, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i47.us

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i47.us: ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit.us
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bi) #13, !inline_history !0
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef 56) #26, !inline_history !0
  br label %_ZN7xgboost10collective6ResultD2Ev.exit51.us

_ZN7xgboost10collective6ResultD2Ev.exit51.us:     ; preds = %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i47.us, %_ZN7xgboost10collective6ResultD2Ev.exit.us
  %.pre181 = load ptr, ptr %10, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %.not.i52.us = icmp eq ptr %.pre181, null
  br i1 %.not.i52.us, label %bb.l, label %.split142.us

bb.l:                                             ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit51.us
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  %i.bj = add nuw nsw i32 %storemerge120.us, 1    ; 2 uses
  %exitcond180.not = icmp eq i32 %i.bj, %i.b
  br i1 %exitcond180.not, label %.critedge30, label %.lr.ph.split.us, !llvm.loop !194

.split126.us:                                     ; preds = %"_ZZN7xgboost10collective6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES8_NS6_IaLm18446744073709551615EEEENK3$_0clEv.exit.i.us"
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.split136.us:                                     ; preds = %"_ZZN7xgboost10collective6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES8_NS6_IaLm18446744073709551615EEEENK3$_1clEv.exit.i.us"
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.split139.us:                                     ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.m:                                             ; preds = %bb.c
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ao
  %storemerge120 = phi i32 [ %i.hg, %bb.ao ], [ 0, %.lr.ph ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
end_hunk_0
