Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/gmock-gtest-all?download=true
inline.NumInlined: 10506
inline.NumDeleted: 2792
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7testing10TestResult20ValidateTestPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_12TestPropertyE:bb.a
bb.h:                                             ; preds = %.noexc16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  %i.bq = invoke noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #59
          to label %.noexc17 unwind label %bb.y   ; 8 uses

.noexc17:                                         ; preds = %bb.h
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.bq)
          to label %_ZN7testing7MessageC2Ev.exit.i unwind label %bb.i

bb.i:                                             ; preds = %.noexc17
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 392) #57
  br label %.body18

_ZN7testing7MessageC2Ev.exit.i:                   ; preds = %.noexc17
  store ptr %i.bq, ptr %2, align 8, !tbaa !23
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 9 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !25
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %i.bs, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 17, ptr %i.bx, align 8, !tbaa !27
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.472, i64 noundef 39)
          to label %_ZN7testing7MessagelsIA40_cEERS0_RKT_.exit.i unwind label %bb.q ; 0 uses

_ZN7testing7MessagelsIA40_cEERS0_RKT_.exit.i:     ; preds = %_ZN7testing7MessageC2Ev.exit.i
  %i.bz = load ptr, ptr %6, align 8, !tbaa !9
  %i.ca = load i64, ptr %i.l, align 8, !tbaa !17
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef %i.bz, i64 noundef %i.ca)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.i unwind label %bb.q ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.i: ; preds = %_ZN7testing7MessagelsIA40_cEERS0_RKT_.exit.i
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.69, i64 noundef 2)
          to label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i unwind label %bb.q ; 0 uses

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i:      ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  %i.cd = invoke noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #59
          to label %.noexc.i14 unwind label %bb.r ; 8 uses

.noexc.i14:                                       ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.cd)
          to label %_ZN7testing7MessageC2Ev.exit.i.i unwind label %bb.j, !noalias !671

bb.j:                                             ; preds = %.noexc.i14
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef 392) #57, !noalias !671
  br label %.body.i

_ZN7testing7MessageC2Ev.exit.i.i:                 ; preds = %.noexc.i14
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 11 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !25, !noalias !671
  %i.ch = getelementptr i8, ptr %i.cg, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !671
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 17, ptr %i.ck, align 8, !tbaa !27, !noalias !671
  %.not25.i.i = icmp eq ptr %i.bo, %.pr.i
  br i1 %.not25.i.i, label %._crit_edge.i.i15, label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.peel.i.i

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.peel.i.i: ; preds = %_ZN7testing7MessageC2Ev.exit.i.i
  %i.cl = ptrtoint ptr %i.bo to i64
  %i.cm = ptrtoint ptr %.pr.i to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  %i.co = icmp eq i64 %i.cn, 32
  br i1 %i.co, label %bb.k, label %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit.peel.i.i

bb.k:                                             ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.peel.i.i
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.474, i64 noundef 4)
          to label %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit.peel.i.i unwind label %.loopexit.split-lp.i.i, !noalias !671 ; 0 uses

_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit.peel.i.i: ; preds = %bb.k, %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.peel.i.i
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.52, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit.peel.i.i unwind label %.loopexit.split-lp.i.i, !noalias !671 ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit.peel.i.i: ; preds = %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit.peel.i.i
  %i.cr = load ptr, ptr %.pr.i, align 8, !tbaa !9, !noalias !671
  %i.cs = getelementptr inbounds nuw i8, ptr %.pr.i, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !17, !noalias !671
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef %i.cr, i64 noundef %i.ct)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.peel.i.i unwind label %.loopexit.split-lp.i.i, !noalias !671 ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.peel.i.i: ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit.peel.i.i
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.52, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit13.peel.i.i unwind label %.loopexit.split-lp.i.i, !noalias !671 ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit13.peel.i.i: ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.peel.i.i
  %i.cw = ashr exact i64 %i.cn, 5                 ; 3 uses
  %i.cx = icmp ugt i64 %i.cw, 1
  br i1 %i.cx, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i15

.lr.ph.i.i.preheader:                             ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit13.peel.i.i
  %.not = icmp eq i64 %i.cn, 64
  %i.cy = add nsw i64 %i.cw, -1
  br label %.lr.ph.i.i

._crit_edge.i.i15:                                ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit13.i.i, %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit13.peel.i.i, %_ZN7testing7MessageC2Ev.exit.i.i
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %i.cd)
          to label %bb.o unwind label %bb.n

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit13.i.i
  %.01124.i.i = phi i64 [ %i.dj, %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit13.i.i ], [ 1, %.lr.ph.i.i.preheader ] ; 3 uses
  br i1 %.not, label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.298, i64 noundef 2)
          to label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i.i unwind label %.loopexit.i.i, !noalias !671 ; 0 uses

.loopexit.i.i:                                    ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.i.i, %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit.i.i, %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit.i.i, %bb.m, %bb.l
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit16.i.i

.loopexit.split-lp.i.i:                           ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.peel.i.i, %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit.peel.i.i, %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit.peel.i.i, %bb.k
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit16.i.i

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i.i:    ; preds = %bb.l, %.lr.ph.i.i
  %i.da = icmp eq i64 %.01124.i.i, %i.cy
  br i1 %i.da, label %bb.m, label %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit.i.i

bb.m:                                             ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i.i
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.474, i64 noundef 4)
          to label %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit.i.i unwind label %.loopexit.i.i, !noalias !671 ; 0 uses

_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit.i.i:    ; preds = %bb.m, %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i.i
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.52, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit.i.i unwind label %.loopexit.i.i, !noalias !671 ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit.i.i:    ; preds = %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit.i.i
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %.pr.i, i64 %.01124.i.i ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !9, !noalias !671
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !17, !noalias !671
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef %i.de, i64 noundef %i.dg)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.i.i unwind label %.loopexit.i.i, !noalias !671 ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.i.i: ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit.i.i
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.52, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit13.i.i unwind label %.loopexit.i.i, !noalias !671 ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit13.i.i:  ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.i.i
  %i.dj = add nuw i64 %.01124.i.i, 1              ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.cw
  br i1 %i.dk, label %.lr.ph.i.i, label %._crit_edge.i.i15, !llvm.loop !674

bb.n:                                             ; preds = %._crit_edge.i.i15
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit16.i.i

_ZN7testing7MessageD2Ev.exit16.i.i:               ; preds = %bb.n, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.dl, %bb.n ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  %i.dm = load ptr, ptr %i.cd, align 8, !tbaa !25
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(128) %i.cd) #56, !inline_history !675
  br label %.body.i

bb.o:                                             ; preds = %._crit_edge.i.i15
  %i.dp = load ptr, ptr %i.cd, align 8, !tbaa !25
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(128) %i.cd) #56, !inline_history !675
  %i.ds = load ptr, ptr %3, align 8, !tbaa !9
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !17
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef %i.ds, i64 noundef %i.du)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit19.i unwind label %bb.s ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit19.i: ; preds = %bb.o
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.473, i64 noundef 17)
          to label %_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit.i unwind label %bb.s ; 0 uses

_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit.i:     ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit19.i
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.145, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i unwind label %bb.s ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i:     ; preds = %_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit.i
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.70, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit.i unwind label %bb.s ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit.i:      ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  %i.dz = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #59
          to label %.noexc23.i unwind label %bb.t ; 9 uses

.noexc23.i:                                       ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit.i
  store i32 1, ptr %i.dz, align 8, !tbaa !41
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store ptr @.str.37, ptr %i.ea, align 8, !tbaa !44
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store i32 3831, ptr %i.eb, align 8, !tbaa !45
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 40 ; 4 uses
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ed, ptr noundef nonnull align 1 dereferenceable(6) @.str.103, i64 6, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  store i64 6, ptr %i.ee, align 8, !tbaa !17
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 46
  store i8 0, ptr %i.ef, align 2, !tbaa !15
  store ptr %i.dz, ptr %4, align 8, !tbaa !47
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %.noexc23.i
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !9  ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.ed
  br i1 %i.eh, label %_ZN7testing8internal12AssertHelperD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.p
  %i.ei = load i64, ptr %i.ed, align 8, !tbaa !15
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #57
  br label %_ZN7testing8internal12AssertHelperD2Ev.exit.i

_ZN7testing8internal12AssertHelperD2Ev.exit.i:    ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef 56) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  %i.ek = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZN7testing7MessageD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal12AssertHelperD2Ev.exit.i
  %i.en = load i64, ptr %i.el, align 8, !tbaa !15
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #57
  br label %_ZN7testing7MessageD2Ev.exit.i

_ZN7testing7MessageD2Ev.exit.i:                   ; preds = %_ZN7testing8internal12AssertHelperD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  %i.ep = load ptr, ptr %i.bq, align 8, !tbaa !25
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(128) %i.bq) #56, !inline_history !676
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %_ZN7testingL24ValidateTestPropertyNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE.exit

bb.q:                                             ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.i, %_ZN7testing7MessagelsIA40_cEERS0_RKT_.exit.i, %_ZN7testing7MessageC2Ev.exit.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit31.i

bb.r:                                             ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.s:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i, %_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit.i, %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit19.i, %bb.o
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit.i
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i

bb.u:                                             ; preds = %.noexc23.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #56
  br label %.body24.i

.body24.i:                                        ; preds = %bb.u, %bb.t
  %.pn.i = phi { ptr, i32 } [ %i.ew, %bb.u ], [ %i.ev, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  br label %bb.v

bb.v:                                             ; preds = %.body24.i, %bb.s
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body24.i ], [ %i.eu, %bb.s ] ; 2 uses
  %i.ex = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i: ; preds = %bb.v
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !15
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #57
  br label %.body.i

.body.i:                                          ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i, %bb.r, %_ZN7testing7MessageD2Ev.exit16.i.i, %bb.j
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.i.i, %_ZN7testing7MessageD2Ev.exit16.i.i ], [ %i.et, %bb.r ], [ %i.ce, %bb.j ], [ %.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i ], [ %.pn.pn.i, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  br label %_ZN7testing7MessageD2Ev.exit31.i

_ZN7testing7MessageD2Ev.exit31.i:                 ; preds = %.body.i, %bb.q
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %.body.i ], [ %i.es, %bb.q ]
  %i.fc = load ptr, ptr %i.bq, align 8, !tbaa !25
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(128) %i.bq) #56, !inline_history !676
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %.body18

_ZN7testingL24ValidateTestPropertyNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE.exit: ; preds = %_ZN7testing7MessageD2Ev.exit.i, %.noexc16
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.bo
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7testingL24ValidateTestPropertyNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pr.i, %_ZN7testingL24ValidateTestPropertyNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE.exit ] ; 3 uses
  %i.ff = load ptr, ptr %.05.i.i.i, align 8, !tbaa !9 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !15
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #57
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fk, %i.bo
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !242

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZN7testingL24ValidateTestPropertyNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE.exit
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.fl = ptrtoint ptr %i.bn to i64
  %i.fm = ptrtoint ptr %.pr.i to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.fn) #57
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #56
  %i.fo = load ptr, ptr %6, align 8, !tbaa !9     ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.c
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.fq = load i64, ptr %i.c, align 8, !tbaa !15
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #56
  ret i1 %.not.i

bb.x:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.thread16.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.h, %_ZN7testingL31GetReservedAttributesForElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body18

.body18:                                          ; preds = %bb.i, %_ZN7testing7MessageD2Ev.exit31.i, %bb.y
  %eh.lpad-body19 = phi { ptr, i32 } [ %i.ft, %bb.y ], [ %i.br, %bb.i ], [ %.pn.pn.pn.pn.i, %_ZN7testing7MessageD2Ev.exit31.i ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #56
  br label %.body

.body:                                            ; preds = %bb.x, %bb.f, %.body.i11.i, %.body.i7.i, %.body.i.i, %.body18
  %.pn = phi { ptr, i32 } [ %eh.lpad-body19, %.body18 ], [ %i.fs, %bb.x ], [ %i.ag, %.body.i.i ], [ %i.aw, %.body.i7.i ], [ %i.bg, %.body.i11.i ], [ %i.bm, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #56
  %i.fu = load ptr, ptr %6, align 8, !tbaa !9     ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.c
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %.body
  %i.fw = load i64, ptr %i.c, align 8, !tbaa !15
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #56
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN7testing12TestPropertyESt6vectorIS3_SaIS3_EEEENS2_8internal17TestPropertyKeyIsEET_SB_SB_T0_(ptr %0, ptr %1, ptr nofree noundef align 8 dereferenceable(32) %2) local_unnamed_addr #24 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8 ; 14 uses
  %.sroa.4 = alloca %union.anon, align 8          ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8 ; 9 uses
  %5 = alloca %"class.testing::internal::TestPropertyKeyIs", align 8 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 13 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !16
  %i.d = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  store i64 %i.f, ptr %i.b, align 8, !tbaa !46
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i
end_hunk_0
begin_hunk_1_@_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  ret void

bb.g:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.f
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.g
  %i.o = load i64, ptr %i.f, align 8, !tbaa !15
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7testing4Test19HasSameFixtureClassEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.testing::Message", align 8  ; 5 uses
  %1 = alloca %"class.testing::internal::AssertHelper", align 8 ; 6 uses
  %2 = alloca %"class.testing::Message", align 8  ; 5 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 6 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #56, !inline_history !206
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !206

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #56, !inline_history !206 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #56, !inline_history !206
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZN7testing7MessageD2Ev.exit60, %_ZN7testing7MessageD2Ev.exit105, %bb.o, %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.aa, %bb.h ], [ %i.cd, %bb.o ], [ %.pn33.pn.pn, %_ZN7testing7MessageD2Ev.exit60 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit105 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #56, !inline_history !206
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !52 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !339
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !379
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !361  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !706  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9    ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !338  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !706  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !9    ; 5 uses
  %.not = icmp eq ptr %i.s, %i.m                  ; 2 uses
  br i1 %.not, label %bb.u, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.v = icmp eq ptr %i.m, @_ZN7testing8internal12TypeIdHelperINS_4TestEE6dummy_E ; 3 uses
  %i.w = icmp eq ptr %i.s, @_ZN7testing8internal12TypeIdHelperINS_4TestEE6dummy_E
  %or.cond = or i1 %i.v, %i.w
  br i1 %or.cond, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.x = select i1 %i.v, ptr %i.o, ptr %i.u       ; 3 uses
  %i.y = select i1 %i.v, ptr %i.u, ptr %i.o       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #56
  %i.z = tail call noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #59 ; 8 uses
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.z)
          to label %_ZN7testing7MessageC2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 392) #57
  br label %common.resume

_ZN7testing7MessageC2Ev.exit:                     ; preds = %bb.g
  store ptr %i.z, ptr %0, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 15 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 17, ptr %i.ag, align 8, !tbaa !27
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.95, i64 noundef 64)
          to label %_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessageC2Ev.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.96, i64 noundef 59)
          to label %_ZN7testing7MessagelsIA60_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA60_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.97, i64 noundef 24)
          to label %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA60_cEERS0_RKT_.exit
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !9   ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit
  %i.am = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ak) #56
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke: ; preds = %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.an = phi ptr [ %i.ak, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ @.str.90, %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit ]
  %i.ao = phi i64 [ %i.am, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ 6, %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit ]
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.an, i64 noundef %i.ao)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit unwind label %bb.k ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.77, i64 noundef 2)
          to label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit unwind label %bb.k ; 0 uses

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.98, i64 noundef 5)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit unwind label %bb.k ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit
  %i.as = icmp eq ptr %i.y, null
  br i1 %i.as, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41: ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit
  %i.at = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #56
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41.invoke: ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41
  %i.au = phi ptr [ %i.y, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41 ], [ @.str.90, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit ]
  %i.av = phi i64 [ %i.at, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41 ], [ 6, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit ]
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.au, i64 noundef %i.av)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit44 unwind label %bb.k ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit44:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41.invoke
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.99, i64 noundef 29)
          to label %_ZN7testing7MessagelsIA30_cEERS0_RKT_.exit unwind label %bb.k ; 0 uses

_ZN7testing7MessagelsIA30_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit44
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.98, i64 noundef 5)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47 unwind label %bb.k ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47:      ; preds = %_ZN7testing7MessagelsIA30_cEERS0_RKT_.exit
  %i.az = icmp eq ptr %i.x, null
  br i1 %i.az, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48: ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47
  %i.ba = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #56
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48.invoke: ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48
  %i.bb = phi ptr [ %i.x, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48 ], [ @.str.90, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47 ]
  %i.bc = phi i64 [ %i.ba, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48 ], [ 6, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47 ]
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.bb, i64 noundef %i.bc)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit51 unwind label %bb.k ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit51:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48.invoke
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.100, i64 noundef 38)
          to label %_ZN7testing7MessagelsIA39_cEERS0_RKT_.exit unwind label %bb.k ; 0 uses

_ZN7testing7MessagelsIA39_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit51
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.101, i64 noundef 61)
          to label %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit unwind label %bb.k ; 0 uses

_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA39_cEERS0_RKT_.exit
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.102, i64 noundef 5)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit55 unwind label %bb.k ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit55:      ; preds = %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #56
  %i.bh = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #59
          to label %.noexc56 unwind label %bb.l   ; 9 uses

.noexc56:                                         ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit55
  store i32 1, ptr %i.bh, align 8, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr @.str.37, ptr %i.bi, align 8, !tbaa !44
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i32 3997, ptr %i.bj, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 4 uses
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bl, ptr noundef nonnull align 1 dereferenceable(6) @.str.103, i64 6, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store i64 6, ptr %i.bm, align 8, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 46
  store i8 0, ptr %i.bn, align 2, !tbaa !15
  store ptr %i.bh, ptr %1, align 8, !tbaa !47
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %.noexc56
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !9  ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bl
  br i1 %i.bp, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bq = load i64, ptr %i.bl, align 8, !tbaa !15
  %i.br = add i64 %i.bq, 1
  tail call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #57
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 56) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  %i.bs = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(128) %i.z) #56, !inline_history !36
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #56
  br label %bb.u

bb.j:                                             ; preds = %_ZN7testing7MessagelsIA60_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit, %_ZN7testing7MessageC2Ev.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit60

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48.invoke, %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIA39_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit51, %_ZN7testing7MessagelsIA30_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit44, %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit60

bb.l:                                             ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit55
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %.noexc56
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #56
  br label %.body

.body:                                            ; preds = %bb.l, %bb.m
  %.pn33 = phi { ptr, i32 } [ %i.by, %bb.m ], [ %i.bx, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  br label %_ZN7testing7MessageD2Ev.exit60

_ZN7testing7MessageD2Ev.exit60:                   ; preds = %bb.k, %.body, %bb.j
  %.pn33.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.j ], [ %.pn33, %.body ], [ %i.bw, %bb.k ]
  %i.bz = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.z) #56, !inline_history !36
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #56
  br label %common.resume

bb.n:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  %i.cc = tail call noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #59 ; 8 uses
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.cc)
          to label %_ZN7testing7MessageC2Ev.exit61 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 392) #57
  br label %common.resume

_ZN7testing7MessageC2Ev.exit61:                   ; preds = %bb.n
  store ptr %i.cc, ptr %2, align 8, !tbaa !23
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 15 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !25
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 17, ptr %i.cj, align 8, !tbaa !27
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.95, i64 noundef 64)
          to label %_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit63 unwind label %bb.q ; 0 uses

_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit63:     ; preds = %_ZN7testing7MessageC2Ev.exit61
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.104, i64 noundef 31)
          to label %_ZN7testing7MessagelsIA32_cEERS0_RKT_.exit unwind label %bb.q ; 0 uses

_ZN7testing7MessagelsIA32_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit63
  %i.cm = load ptr, ptr %i.q, align 8, !tbaa !9   ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i65.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i65

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i65: ; preds = %_ZN7testing7MessagelsIA32_cEERS0_RKT_.exit
  %i.co = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cm) #56
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i65.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i65.invoke: ; preds = %_ZN7testing7MessagelsIA32_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i65
  %i.cp = phi ptr [ %i.cm, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i65 ], [ @.str.90, %_ZN7testing7MessagelsIA32_cEERS0_RKT_.exit ]
  %i.cq = phi i64 [ %i.co, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i65 ], [ 6, %_ZN7testing7MessagelsIA32_cEERS0_RKT_.exit ]
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull %i.cp, i64 noundef %i.cq)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit68 unwind label %bb.r ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit68:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i65.invoke
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.77, i64 noundef 2)
          to label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit70 unwind label %bb.r ; 0 uses

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit70:      ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit68
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.105, i64 noundef 17)
          to label %_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit unwind label %bb.r ; 0 uses

_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit70
  %i.cu = icmp eq ptr %i.o, null
  br i1 %i.cu, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i72.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i72

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i72: ; preds = %_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit
  %i.cv = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #56
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i72.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i72.invoke: ; preds = %_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i72
  %i.cw = phi ptr [ %i.o, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i72 ], [ @.str.90, %_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit ]
  %i.cx = phi i64 [ %i.cv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i72 ], [ 6, %_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit ]
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull %i.cw, i64 noundef %i.cx)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit75 unwind label %bb.r ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit75:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i72.invoke
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.106, i64 noundef 10)
          to label %_ZN7testing7MessagelsIA11_cEERS0_RKT_.exit unwind label %bb.r ; 0 uses

_ZN7testing7MessagelsIA11_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit75
  %i.da = icmp eq ptr %i.u, null
  br i1 %i.da, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i77.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i77

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i77: ; preds = %_ZN7testing7MessagelsIA11_cEERS0_RKT_.exit
  %i.db = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #56
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i77.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i77.invoke: ; preds = %_ZN7testing7MessagelsIA11_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i77
  %i.dc = phi ptr [ %i.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i77 ], [ @.str.90, %_ZN7testing7MessagelsIA11_cEERS0_RKT_.exit ]
  %i.dd = phi i64 [ %i.db, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i77 ], [ 6, %_ZN7testing7MessagelsIA11_cEERS0_RKT_.exit ]
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull %i.dc, i64 noundef %i.dd)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit80 unwind label %bb.r ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit80:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i77.invoke
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.94, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit unwind label %bb.r ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit80
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.107, i64 noundef 62)
          to label %_ZN7testing7MessagelsIA63_cEERS0_RKT_.exit unwind label %bb.r ; 0 uses

_ZN7testing7MessagelsIA63_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.108, i64 noundef 61)
          to label %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit84 unwind label %bb.r ; 0 uses

_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit84:     ; preds = %_ZN7testing7MessagelsIA63_cEERS0_RKT_.exit
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.109, i64 noundef 62)
          to label %_ZN7testing7MessagelsIA63_cEERS0_RKT_.exit86 unwind label %bb.r ; 0 uses

_ZN7testing7MessagelsIA63_cEERS0_RKT_.exit86:     ; preds = %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit84
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.110, i64 noundef 59)
          to label %_ZN7testing7MessagelsIA60_cEERS0_RKT_.exit88 unwind label %bb.r ; 0 uses

_ZN7testing7MessagelsIA60_cEERS0_RKT_.exit88:     ; preds = %_ZN7testing7MessagelsIA63_cEERS0_RKT_.exit86
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  %i.dk = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #59
          to label %.noexc92 unwind label %bb.s   ; 9 uses

.noexc92:                                         ; preds = %_ZN7testing7MessagelsIA60_cEERS0_RKT_.exit88
  store i32 1, ptr %i.dk, align 8, !tbaa !41
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr @.str.37, ptr %i.dl, align 8, !tbaa !44
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i32 4009, ptr %i.dm, align 8, !tbaa !45
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 24 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 40 ; 4 uses
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.do, ptr noundef nonnull align 1 dereferenceable(6) @.str.103, i64 6, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  store i64 6, ptr %i.dp, align 8, !tbaa !17
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 46
  store i8 0, ptr %i.dq, align 2, !tbaa !15
  store ptr %i.dk, ptr %3, align 8, !tbaa !47
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %.noexc92
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !9  ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.do
  br i1 %i.ds, label %_ZN7testing7MessageD2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i96: ; preds = %bb.p
  %i.dt = load i64, ptr %i.do, align 8, !tbaa !15
  %i.du = add i64 %i.dt, 1
  tail call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #57
  br label %_ZN7testing7MessageD2Ev.exit102

_ZN7testing7MessageD2Ev.exit102:                  ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i96
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef 56) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  %i.dv = load ptr, ptr %i.cc, align 8, !tbaa !25
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  tail call void %i.dx(ptr noundef nonnull align 8 dereferenceable(128) %i.cc) #56, !inline_history !36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %bb.u

bb.q:                                             ; preds = %_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit63, %_ZN7testing7MessageC2Ev.exit61
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit105

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i65.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i72.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i77.invoke, %_ZN7testing7MessagelsIA63_cEERS0_RKT_.exit86, %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit84, %_ZN7testing7MessagelsIA63_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit80, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit75, %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit70, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit68
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit105

bb.s:                                             ; preds = %_ZN7testing7MessagelsIA60_cEERS0_RKT_.exit88
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body93

bb.t:                                             ; preds = %.noexc92
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #56
  br label %.body93

.body93:                                          ; preds = %bb.s, %bb.t
  %.pn = phi { ptr, i32 } [ %i.eb, %bb.t ], [ %i.ea, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  br label %_ZN7testing7MessageD2Ev.exit105

_ZN7testing7MessageD2Ev.exit105:                  ; preds = %bb.r, %.body93, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dy, %bb.q ], [ %.pn, %.body93 ], [ %i.dz, %bb.r ]
  %i.ec = load ptr, ptr %i.cc, align 8, !tbaa !25
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  tail call void %i.ee(ptr noundef nonnull align 8 dereferenceable(128) %i.cc) #56, !inline_history !36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %common.resume

bb.u:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %_ZN7testing7MessageD2Ev.exit, %_ZN7testing7MessageD2Ev.exit102
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing8internal26GoogleTestFailureExceptionC2ERKNS_14TestPartResultE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  call fastcc void @_ZN7testing8internalL27PrintTestPartResultToStringB5cxx11ERKNS_14TestPartResultE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.a = load ptr, ptr %2, align 8, !tbaa !9
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !15
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal26GoogleTestFailureExceptionE, i64 16), ptr %0, align 8, !tbaa !25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.k = load i64, ptr %i.i, align 8, !tbaa !15
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7testing8internalL27PrintTestPartResultToStringB5cxx11ERKNS_14TestPartResultE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #59 ; 8 uses
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.a)
          to label %_ZN7testing7MessageC2Ev.exit unwind label %bb.b

common.resume:                                    ; preds = %_ZN7testing7MessageD2Ev.exit22, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit22 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 392) #57
  br label %common.resume

_ZN7testing7MessageC2Ev.exit:                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 17, ptr %i.h, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17
  %i.l = icmp eq i64 %i.k, 0
  %i.m = load ptr, ptr %i.i, align 8
  %spec.select.i = select i1 %i.l, ptr null, ptr %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !707
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %spec.select.i, i32 noundef %i.o)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN7testing7MessageC2Ev.exit
  %i.p = load ptr, ptr %2, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !17
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.p, i64 noundef %i.r)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.e ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.c
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.122, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit unwind label %bb.e ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.u = load i32, ptr %1, align 8, !tbaa !328    ; 2 uses
  %i.v = icmp ult i32 %i.u, 4
  br i1 %i.v, label %switch.lookup, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

switch.lookup:                                    ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit
  %i.w = zext nneg i32 %i.u to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN7testing8internalL27PrintTestPartResultToStringB5cxx11ERKNS_14TestPartResultE, i64 %i.w
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.482, %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit ] ; 2 uses
  %i.x = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #56
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %.0.i, i64 noundef %i.x)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit unwind label %bb.f ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !9   ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #56
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12.invoke: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12
  %i.ad = phi ptr [ %i.aa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12 ], [ @.str.90, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit ]
  %i.ae = phi i64 [ %i.ac, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12 ], [ 6, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit ]
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.ad, i64 noundef %i.ae)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit15 unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit15:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12.invoke
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull %i.a)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit unwind label %bb.g

end_hunk_1
