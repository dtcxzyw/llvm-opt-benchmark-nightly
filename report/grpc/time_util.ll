Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/time_util?download=true
inline.NumInlined: 352
inline.NumDeleted: 135
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6google8protobuf4util8TimeUtil10FromStringESt17basic_string_viewIcSt11char_traitsIcEEPNS0_8DurationE:bb.a
  br label %bb.ag

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i81: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i80
  %i.dh = load i64, ptr %i.n, align 8, !tbaa !8
  store ptr %i.cy, ptr %4, align 8, !tbaa !16
  %i.di = load <2 x i64>, ptr %i.ct, align 8, !tbaa !8
  store <2 x i64> %i.di, ptr %i.o, align 8, !tbaa !8
  %.not.i82 = icmp eq ptr %i.cw, null
  br i1 %.not.i82, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i81
  store ptr %i.cw, ptr %7, align 8, !tbaa !16
  store i64 %i.dh, ptr %i.cm, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit87

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i81, %.thread.i86
  store ptr %i.cm, ptr %7, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i83, %bb.af, %bb.ag
  %i.dj = phi ptr [ %.pre.i84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i83 ], [ %i.cw, %bb.af ], [ %i.cm, %bb.ag ]
  store i64 0, ptr %i.ct, align 8, !tbaa !17
  store i8 0, ptr %i.dj, align 1, !tbaa !8
  %i.dk = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cm
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit87
  %i.dm = load i64, ptr %i.cm, align 8, !tbaa !8
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.ah:                                            ; preds = %.noexc.i.i.i51
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.am

bb.ai:                                            ; preds = %.noexc.i.i.i76
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.am

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.dq = load ptr, ptr %3, align 8, !tbaa !16
  %i.dr = call i64 @__isoc23_strtoll(ptr noundef %i.dq, ptr noundef nonnull %i.d, i32 noundef 10) #18 ; 2 uses
  %i.ds = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.dt = load ptr, ptr %3, align 8, !tbaa !16
  %i.du = load i64, ptr %i.m, align 8, !tbaa !17
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.du
  %.not34 = icmp eq ptr %i.ds, %i.dv
  %.pre = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  br i1 %.not34, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.dw = call i64 @__isoc23_strtoll(ptr noundef %.pre, ptr noundef nonnull %i.d, i32 noundef 10) #18 ; 2 uses
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.dy = load ptr, ptr %4, align 8, !tbaa !16    ; 3 uses
  %i.dz = load i64, ptr %i.o, align 8, !tbaa !17  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dz
  %.not35 = icmp eq ptr %i.dx, %i.ea
  br i1 %.not35, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.eb = trunc i64 %i.dz to i32                  ; 2 uses
  %i.ec = sub i32 9, %i.eb                        ; 3 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.ak
  %xtraiter = and i32 %i.ec, 7                    ; 3 uses
  %i.ee = add i32 %i.eb, -2
  %i.ef = icmp ult i32 %i.ee, 7
  br i1 %i.ef, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.ec, 2147483640
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.067.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %i.eg, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.eg = mul nuw nsw i64 %.067.i, 100000000      ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !67

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.067.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.eg, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod179 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod179)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.067.i.epil = phi i64 [ %i.eh, %.lr.ph.i.epil ], [ %.067.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.eh = mul nuw nsw i64 %.067.i.epil, 10        ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %.lr.ph.i.epil, !llvm.loop !68

.loopexit.loopexit:                               ; preds = %.lr.ph.i.epil, %.loopexit.loopexit.unr-lcssa
  %.lcssa = phi i64 [ %i.eg, %.loopexit.loopexit.unr-lcssa ], [ %i.eh, %.lr.ph.i.epil ]
  %i.ei = mul nsw i64 %.lcssa, %i.dw
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ak
  %.06.lcssa.i = phi i64 [ %i.dw, %bb.ak ], [ %i.ei, %.loopexit.loopexit ] ; 2 uses
  %i.ej = sub nsw i64 0, %i.dr
  %i.ek = sub nsw i64 0, %.06.lcssa.i
  %.019 = select i1 %i.j, i64 %i.ej, i64 %i.dr
  %.0 = select i1 %i.j, i64 %i.ek, i64 %.06.lcssa.i
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.019, ptr %i.el, align 8, !tbaa !8
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !18
  %i.eo = trunc i64 %.0 to i32
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.eo, ptr %i.ep, align 8, !tbaa !8
  %i.eq = or i32 %i.en, 3
  store i32 %i.eq, ptr %i.em, align 8, !tbaa !18
  br label %bb.al

bb.al:                                            ; preds = %.loopexit, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.er = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %i.dy, %.loopexit ], [ %i.dy, %bb.aj ] ; 2 uses
  %.126 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ true, %.loopexit ], [ false, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.es = icmp eq ptr %i.er, %i.n
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.al
  %i.et = load i64, ptr %i.n, align 8, !tbaa !8
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ev = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.l
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.ex = load i64, ptr %i.l, align 8, !tbaa !8
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.an

bb.am:                                            ; preds = %bb.ai, %bb.ah, %bb.p, %bb.o
  %.pn36 = phi { ptr, i32 } [ %i.do, %bb.ah ], [ %i.bc, %bb.p ], [ %i.bb, %bb.o ], [ %i.dp, %bb.ai ]
  %i.ez = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.n
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.am
  %i.fb = load i64, ptr %i.n, align 8, !tbaa !8
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.fd = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.l
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.ff = load i64, ptr %i.l, align 8, !tbaa !8
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn36

bb.an:                                            ; preds = %bb.a, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %.227 = phi i1 [ %.126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.227
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util8TimeUtil21NanosecondsToDurationEl(ptr dead_on_unwind noalias nonnull writable sret(%"class.google::protobuf::Duration") align 8 %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit:
  %2 = sdiv i64 %1, 1000000000
  %3 = srem i64 %1, 1000000000
  %4 = trunc nsw i64 %3 to i32
  tail call void @_ZN6google8protobuf8DurationC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.a, align 8, !tbaa !8, !alias.scope !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18, !alias.scope !75
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %4, ptr %i.d, align 8, !tbaa !8, !alias.scope !75
  %i.e = or i32 %i.c, 3
  store i32 %i.e, ptr %i.b, align 8, !tbaa !18, !alias.scope !75
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util8TimeUtil22MicrosecondsToDurationEl(ptr dead_on_unwind noalias nonnull writable sret(%"class.google::protobuf::Duration") align 8 %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit:
  %2 = sdiv i64 %1, 1000000
  %3 = srem i64 %1, 1000000
  %4 = trunc nsw i64 %3 to i32
  %5 = mul nsw i32 %4, 1000
  tail call void @_ZN6google8protobuf8DurationC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.a, align 8, !tbaa !8, !alias.scope !78
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18, !alias.scope !78
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %5, ptr %i.d, align 8, !tbaa !8, !alias.scope !78
  %i.e = or i32 %i.c, 3
  store i32 %i.e, ptr %i.b, align 8, !tbaa !18, !alias.scope !78
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util8TimeUtil22MillisecondsToDurationEl(ptr dead_on_unwind noalias nonnull writable sret(%"class.google::protobuf::Duration") align 8 %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit:
  %2 = sdiv i64 %1, 1000
  %3 = srem i64 %1, 1000
  %4 = trunc nsw i64 %3 to i32
  %5 = mul nsw i32 %4, 1000000
  tail call void @_ZN6google8protobuf8DurationC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.a, align 8, !tbaa !8, !alias.scope !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18, !alias.scope !81
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %5, ptr %i.d, align 8, !tbaa !8, !alias.scope !81
  %i.e = or i32 %i.c, 3
  store i32 %i.e, ptr %i.b, align 8, !tbaa !18, !alias.scope !81
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util8TimeUtil17SecondsToDurationEl(ptr dead_on_unwind noalias nonnull writable sret(%"class.google::protobuf::Duration") align 8 %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6google8protobuf8DurationC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.a, align 8, !tbaa !8, !alias.scope !84
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18, !alias.scope !84
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !8, !alias.scope !84
  %i.e = or i32 %i.c, 3
  store i32 %i.e, ptr %i.b, align 8, !tbaa !18, !alias.scope !84
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util8TimeUtil17MinutesToDurationEl(ptr dead_on_unwind noalias nonnull writable sret(%"class.google::protobuf::Duration") align 8 %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul nsw i64 %1, 60
  tail call void @_ZN6google8protobuf8DurationC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.a, ptr %i.b, align 8, !tbaa !8, !alias.scope !89
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18, !alias.scope !89
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.e, align 8, !tbaa !8, !alias.scope !89
  %i.f = or i32 %i.d, 3
  store i32 %i.f, ptr %i.c, align 8, !tbaa !18, !alias.scope !89
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util8TimeUtil15HoursToDurationEl(ptr dead_on_unwind noalias nonnull writable sret(%"class.google::protobuf::Duration") align 8 %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul nsw i64 %1, 3600
  tail call void @_ZN6google8protobuf8DurationC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.a, ptr %i.b, align 8, !tbaa !8, !alias.scope !94
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18, !alias.scope !94
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.e, align 8, !tbaa !8, !alias.scope !94
  %i.f = or i32 %i.d, 3
  store i32 %i.f, ptr %i.c, align 8, !tbaa !18, !alias.scope !94
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN6google8protobuf4util8TimeUtil21DurationToNanosecondsERKNS0_8DurationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = mul nsw i64 %i.b, 1000000000
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !8
  %i.f = sext i32 %i.e to i64
  %i.g = add nsw i64 %i.c, %i.f
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN6google8protobuf4util8TimeUtil22DurationToMicrosecondsERKNS0_8DurationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = mul nsw i64 %i.b, 1000000
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !8
  %i.f = sdiv i32 %i.e, 1000
  %.sext = sext i32 %i.f to i64
  %i.g = add nsw i64 %i.c, %.sext
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN6google8protobuf4util8TimeUtil17DurationToSecondsERKNS0_8DurationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN6google8protobuf4util8TimeUtil22DurationToMillisecondsERKNS0_8DurationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = mul nsw i64 %i.b, 1000
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !8
  %i.f = sdiv i32 %i.e, 1000000
  %.sext = sext i32 %i.f to i64
  %i.g = add nsw i64 %i.c, %.sext
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 -153722867280912930, 153722867280912931) i64 @_ZN6google8protobuf4util8TimeUtil17DurationToMinutesERKNS0_8DurationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = sdiv i64 %i.b, 60
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 -2562047788015215, 2562047788015216) i64 @_ZN6google8protobuf4util8TimeUtil15DurationToHoursERKNS0_8DurationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = sdiv i64 %i.b, 3600
  ret i64 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util8TimeUtil22NanosecondsToTimestampEl(ptr dead_on_unwind noalias nonnull writable sret(%"class.google::protobuf::Timestamp") align 8 %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit:
  %i.a = sdiv i64 %1, 1000000000
  %i.b = srem i64 %1, 1000000000                  ; 3 uses
  %i.c = trunc nsw i64 %i.b to i32                ; 2 uses
  %i.d = icmp slt i64 %i.b, 0
  %i.e = add nsw i32 %i.c, 1000000000
  %.114.i = select i1 %i.d, i32 %i.e, i32 %i.c
  %i.f = ashr i64 %i.b, 63
  %.1.i = add nsw i64 %i.f, %i.a
  tail call void @_ZN6google8protobuf9TimestampC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.1.i, ptr %i.g, align 8, !tbaa !8, !alias.scope !97
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18, !alias.scope !97
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.114.i, ptr %i.j, align 8, !tbaa !8, !alias.scope !97
  %i.k = or i32 %i.i, 3
  store i32 %i.k, ptr %i.h, align 8, !tbaa !18, !alias.scope !97
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util8TimeUtil23MicrosecondsToTimestampEl(ptr dead_on_unwind noalias nonnull writable sret(%"class.google::protobuf::Timestamp") align 8 %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit:
  %i.a = sdiv i64 %1, 1000000
  %i.b = srem i64 %1, 1000000                     ; 2 uses
  %i.c = trunc nsw i64 %i.b to i32
  %i.d = mul nsw i32 %i.c, 1000                   ; 3 uses
  %i.e = icmp slt i64 %i.b, 0
  %i.f = add nsw i32 %i.d, 1000000000
  %.114.i = select i1 %i.e, i32 %i.f, i32 %i.d
  %.013.lobit.i = ashr i32 %i.d, 31
  %i.g = sext i32 %.013.lobit.i to i64
  %.1.i = add nsw i64 %i.a, %i.g
  tail call void @_ZN6google8protobuf9TimestampC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.1.i, ptr %i.h, align 8, !tbaa !8, !alias.scope !100
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !18, !alias.scope !100
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.114.i, ptr %i.k, align 8, !tbaa !8, !alias.scope !100
  %i.l = or i32 %i.j, 3
  store i32 %i.l, ptr %i.i, align 8, !tbaa !18, !alias.scope !100
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util8TimeUtil23MillisecondsToTimestampEl(ptr dead_on_unwind noalias nonnull writable sret(%"class.google::protobuf::Timestamp") align 8 %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit:
  %i.a = sdiv i64 %1, 1000
  %i.b = srem i64 %1, 1000                        ; 2 uses
  %i.c = trunc nsw i64 %i.b to i32
  %i.d = mul nsw i32 %i.c, 1000000                ; 3 uses
  %i.e = icmp slt i64 %i.b, 0
  %i.f = add nsw i32 %i.d, 1000000000
  %.114.i = select i1 %i.e, i32 %i.f, i32 %i.d
  %.013.lobit.i = ashr i32 %i.d, 31
  %i.g = sext i32 %.013.lobit.i to i64
  %.1.i = add nsw i64 %i.a, %i.g
  tail call void @_ZN6google8protobuf9TimestampC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.1.i, ptr %i.h, align 8, !tbaa !8, !alias.scope !103
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !18, !alias.scope !103
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.114.i, ptr %i.k, align 8, !tbaa !8, !alias.scope !103
  %i.l = or i32 %i.j, 3
  store i32 %i.l, ptr %i.i, align 8, !tbaa !18, !alias.scope !103
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util8TimeUtil18SecondsToTimestampEl(ptr dead_on_unwind noalias nonnull writable sret(%"class.google::protobuf::Timestamp") align 8 %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6google8protobuf9TimestampC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.a, align 8, !tbaa !8, !alias.scope !106
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18, !alias.scope !106
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !8, !alias.scope !106
  %i.e = or i32 %i.c, 3
  store i32 %i.e, ptr %i.b, align 8, !tbaa !18, !alias.scope !106
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN6google8protobuf4util8TimeUtil22TimestampToNanosecondsERKNS0_9TimestampE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = mul nsw i64 %i.b, 1000000000
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !8
  %i.f = sext i32 %i.e to i64
  %i.g = add nsw i64 %i.c, %i.f
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN6google8protobuf4util8TimeUtil23TimestampToMicrosecondsERKNS0_9TimestampE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = mul nsw i64 %i.b, 1000000
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !8
  %i.f = sdiv i32 %i.e, 1000
  %.sext = sext i32 %i.f to i64
  %i.g = add nsw i64 %i.c, %.sext
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN6google8protobuf4util8TimeUtil23TimestampToMillisecondsERKNS0_9TimestampE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = mul nsw i64 %i.b, 1000
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !8
  %i.f = sdiv i32 %i.e, 1000000
  %.sext = sext i32 %i.f to i64
  %i.g = add nsw i64 %i.c, %.sext
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN6google8protobuf4util8TimeUtil18TimestampToSecondsERKNS0_9TimestampE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util8TimeUtil16TimeTToTimestampEl(ptr dead_on_unwind noalias nonnull writable sret(%"class.google::protobuf::Timestamp") align 8 %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6google8protobuf9TimestampC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.a, align 8, !tbaa !8, !alias.scope !109
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18, !alias.scope !109
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !8, !alias.scope !109
  %i.e = or i32 %i.c, 3
  store i32 %i.e, ptr %i.b, align 8, !tbaa !18, !alias.scope !109
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN6google8protobuf4util8TimeUtil16TimestampToTimeTERKNS0_9TimestampE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util8TimeUtil18TimevalToTimestampERK7timeval(ptr dead_on_unwind noalias writable sret(%"class.google::protobuf::Timestamp") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28
  %i.d = trunc i64 %i.c to i32
  %i.e = mul i32 %i.d, 1000                       ; 4 uses
  %i.f = add i32 %i.e, -1000000000
  %or.cond.i = icmp ult i32 %i.f, -1999999999
  br i1 %or.cond.i, label %bb.b, label %_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i32 %i.e, 1000000000
  %i.h = sext i32 %i.g to i64
  %i.i = add nsw i64 %i.a, %i.h
  %i.j = srem i32 %i.e, 1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit

_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit: ; preds = %bb.a, %bb.b
  %.013.i = phi i32 [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 4 uses
  %.0.i = phi i64 [ %i.i, %bb.b ], [ %i.a, %bb.a ]
  %i.k = icmp slt i32 %.013.i, 0
  %i.l = add nsw i32 %.013.i, 1000000000
  %.114.i = select i1 %i.k, i32 %i.l, i32 %.013.i
  %.013.lobit.i = ashr i32 %.013.i, 31
  %i.m = sext i32 %.013.lobit.i to i64
  %.1.i = add nsw i64 %.0.i, %i.m
  tail call void @_ZN6google8protobuf9TimestampC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.1.i, ptr %i.n, align 8, !tbaa !8, !alias.scope !112
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !18, !alias.scope !112
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.114.i, ptr %i.q, align 8, !tbaa !8, !alias.scope !112
  %i.r = or i32 %i.p, 3
  store i32 %i.r, ptr %i.o, align 8, !tbaa !18, !alias.scope !112
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN6google8protobuf4util8TimeUtil18TimestampToTimevalERKNS0_9TimestampE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8
  %i.e = sdiv i32 %i.d, 1000
  %.sext = sext i32 %i.e to i64
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sext, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util8TimeUtil17TimevalToDurationERK7timeval(ptr dead_on_unwind noalias writable sret(%"class.google::protobuf::Duration") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28
  %i.d = trunc i64 %i.c to i32
  %i.e = mul i32 %i.d, 1000                       ; 4 uses
  %i.f = add i32 %i.e, -1000000000
  %or.cond.i = icmp ult i32 %i.f, -1999999999
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i32 %i.e, 1000000000
  %i.h = sext i32 %i.g to i64
  %i.i = add nsw i64 %i.a, %i.h
  %i.j = srem i32 %i.e, 1000000000
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.022.i = phi i32 [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 5 uses
  %.0.i = phi i64 [ %i.i, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %i.k = icmp slt i64 %.0.i, 0
  %i.l = icmp sgt i32 %.022.i, 0
  %or.cond3.i = and i1 %i.l, %i.k
  br i1 %or.cond3.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i64 %.0.i, 1
  %i.n = add nuw nsw i32 %.022.i, -1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

bb.e:                                             ; preds = %bb.c
  %i.o = icmp sgt i64 %.0.i, 0
  %i.p = icmp slt i32 %.022.i, 0
  %or.cond5.i = and i1 %i.p, %i.o
  br i1 %or.cond5.i, label %bb.f, label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i64 %.0.i, -1
  %i.r = add nsw i32 %.022.i, 1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.123.i = phi i32 [ %i.n, %bb.d ], [ %i.r, %bb.f ], [ %.022.i, %bb.e ]
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %i.q, %bb.f ], [ %.0.i, %bb.e ]
  tail call void @_ZN6google8protobuf8DurationC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.1.i, ptr %i.s, align 8, !tbaa !8, !alias.scope !115
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !18, !alias.scope !115
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.123.i, ptr %i.v, align 8, !tbaa !8, !alias.scope !115
  %i.w = or i32 %i.u, 3
  store i32 %i.w, ptr %i.t, align 8, !tbaa !18, !alias.scope !115
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN6google8protobuf4util8TimeUtil17DurationToTimevalERKNS0_8DurationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8    ; 2 uses
  %i.e = sdiv i32 %i.d, 1000
  %.sext = sext i32 %i.e to i64                   ; 2 uses
  %i.f = icmp slt i32 %i.d, -999                  ; 2 uses
  %i.g = add nsw i64 %.sext, 1000000
  %1 = sext i1 %i.f to i64
  %.sroa.0.0 = add nsw i64 %i.b, %1
  %.sroa.4.0 = select i1 %i.f, i64 %i.g, i64 %.sext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN6google8protobufpLERNS0_8DurationERKS1_(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::Duration", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !8
  %i.e = add nsw i64 %i.d, %i.b                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !8
  %i.j = add nsw i32 %i.i, %i.g                   ; 4 uses
  %i.k = add i32 %i.j, -1000000000
  %or.cond.i = icmp ult i32 %i.k, -1999999999
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = sdiv i32 %i.j, 1000000000
  %i.m = sext i32 %i.l to i64
  %i.n = add nsw i64 %i.e, %i.m
  %i.o = srem i32 %i.j, 1000000000
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.022.i = phi i32 [ %i.o, %bb.b ], [ %i.j, %bb.a ] ; 5 uses
  %.0.i = phi i64 [ %i.n, %bb.b ], [ %i.e, %bb.a ] ; 5 uses
  %i.p = icmp slt i64 %.0.i, 0
  %i.q = icmp sgt i32 %.022.i, 0
  %or.cond3.i = and i1 %i.q, %i.p
  br i1 %or.cond3.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = add nsw i64 %.0.i, 1
  %i.s = add nuw nsw i32 %.022.i, -1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp sgt i64 %.0.i, 0
  %i.u = icmp slt i32 %.022.i, 0
  %or.cond5.i = and i1 %i.u, %i.t
  br i1 %or.cond5.i, label %bb.f, label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i64 %.0.i, -1
  %i.w = add nsw i32 %.022.i, 1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.123.i = phi i32 [ %i.s, %bb.d ], [ %i.w, %bb.f ], [ %.022.i, %bb.e ]
  %.1.i = phi i64 [ %i.r, %bb.d ], [ %i.v, %bb.f ], [ %.0.i, %bb.e ]
  call void @_ZN6google8protobuf8DurationC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef null)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.1.i, ptr %i.x, align 8, !tbaa !8, !alias.scope !118
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !18, !alias.scope !118
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.123.i, ptr %i.aa, align 8, !tbaa !8, !alias.scope !118
  %i.ab = or i32 %i.z, 3
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !18, !alias.scope !118
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !20 ; 3 uses
  %i.ae = trunc i64 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit
  %i.af = add nsw i64 %i.ad, -1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !24
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.h:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit
  %i.ai = inttoptr i64 %i.ad to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.ah, %bb.g ], [ %i.ai, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !20 ; 3 uses
  %i.al = trunc i64 %i.ak to i1
  br i1 %i.al, label %bb.i, label %bb.j, !prof !21

bb.i:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.am = add nsw i64 %i.ak, -1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.ap = inttoptr i64 %i.ak to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i: ; preds = %bb.j, %bb.i
  %.0.i.i7.i = phi ptr [ %i.ao, %bb.i ], [ %i.ap, %bb.j ]
  %i.aq = icmp eq ptr %.0.i.i.i, %.0.i.i7.i
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i
  invoke void @_ZN6google8protobuf8Duration12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN6google8protobuf8DurationaSEOS1_.exit unwind label %bb.m

bb.l:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i
  invoke void @_ZN6google8protobuf8Duration8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN6google8protobuf8DurationaSEOS1_.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #20
  unreachable

_ZN6google8protobuf8DurationaSEOS1_.exit:         ; preds = %bb.k, %bb.l
  call void @_ZN6google8protobuf8DurationD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN6google8protobuf8DurationD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN6google8protobufmIERNS0_8DurationERKS1_(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::Duration", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !8
  %i.e = sub nsw i64 %i.b, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !8
  %i.j = sub nsw i32 %i.g, %i.i                   ; 4 uses
  %i.k = add i32 %i.j, -1000000000
  %or.cond.i = icmp ult i32 %i.k, -1999999999
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = sdiv i32 %i.j, 1000000000
  %i.m = sext i32 %i.l to i64
  %i.n = add nsw i64 %i.e, %i.m
  %i.o = srem i32 %i.j, 1000000000
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.022.i = phi i32 [ %i.o, %bb.b ], [ %i.j, %bb.a ] ; 5 uses
  %.0.i = phi i64 [ %i.n, %bb.b ], [ %i.e, %bb.a ] ; 5 uses
  %i.p = icmp slt i64 %.0.i, 0
  %i.q = icmp sgt i32 %.022.i, 0
  %or.cond3.i = and i1 %i.q, %i.p
  br i1 %or.cond3.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = add nsw i64 %.0.i, 1
  %i.s = add nuw nsw i32 %.022.i, -1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp sgt i64 %.0.i, 0
  %i.u = icmp slt i32 %.022.i, 0
  %or.cond5.i = and i1 %i.u, %i.t
  br i1 %or.cond5.i, label %bb.f, label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i64 %.0.i, -1
  %i.w = add nsw i32 %.022.i, 1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.123.i = phi i32 [ %i.s, %bb.d ], [ %i.w, %bb.f ], [ %.022.i, %bb.e ]
  %.1.i = phi i64 [ %i.r, %bb.d ], [ %i.v, %bb.f ], [ %.0.i, %bb.e ]
  call void @_ZN6google8protobuf8DurationC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef null)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.1.i, ptr %i.x, align 8, !tbaa !8, !alias.scope !121
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !18, !alias.scope !121
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.123.i, ptr %i.aa, align 8, !tbaa !8, !alias.scope !121
  %i.ab = or i32 %i.z, 3
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !18, !alias.scope !121
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !20 ; 3 uses
  %i.ae = trunc i64 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit
  %i.af = add nsw i64 %i.ad, -1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !24
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
end_hunk_0
