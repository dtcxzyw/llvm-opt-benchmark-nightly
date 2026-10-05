Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/Utils?download=true
inline.NumInlined: 749
inline.NumDeleted: 312
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z10drawPointsN2cv3MatERSt6vectorINS_6Point_IfEESaIS3_EERS1_INS_7Point3_IfEESaIS8_EENS_7Scalar_IdEE:bb.a
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %.loopexit175, %.loopexit.split-lp176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125 ], [ %lpad.loopexit.split-lp178, %.loopexit.split-lp176 ], [ %lpad.loopexit177, %.loopexit175 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ] ; 2 uses
  %i.ie = load ptr, ptr %13, align 8, !tbaa !16   ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.n
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.ig = load i64, ptr %i.n, align 8, !tbaa !19
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %.loopexit170, %.loopexit.split-lp171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128 ], [ %lpad.loopexit.split-lp173, %.loopexit.split-lp171 ], [ %lpad.loopexit172, %.loopexit170 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ] ; 2 uses
  %i.ii = load ptr, ptr %14, align 8, !tbaa !16   ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.l
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %i.ik = load i64, ptr %i.l, align 8, !tbaa !19
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %.loopexit165, %.loopexit.split-lp166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ], [ %lpad.loopexit.split-lp168, %.loopexit.split-lp166 ], [ %lpad.loopexit167, %.loopexit165 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ] ; 2 uses
  %i.im = load ptr, ptr %15, align 8, !tbaa !16   ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.i
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.io = load i64, ptr %i.i, align 8, !tbaa !19
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %.loopexit160, %.loopexit.split-lp161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134 ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp161 ], [ %lpad.loopexit162, %.loopexit160 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ] ; 2 uses
  %i.iq = load ptr, ptr %16, align 8, !tbaa !16   ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.g
  br i1 %i.ir, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %bb.g
  %.sink = phi ptr [ %i.bf, %bb.g ], [ %i.iq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ]
  %.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %lpad.phi, %bb.g ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ]
  %i.is = load i64, ptr %i.g, align 8, !tbaa !19
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.it) #25
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %bb.g
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.phi, %bb.g ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ], [ %.pn.pn.pn.pn.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i98
  %i.iu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.iv = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.x
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %bb.ah
  %i.ix = load i64, ptr %i.x, align 8, !tbaa !19
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140, %.body
  %.pn33.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.iu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140 ], [ %i.iu, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.iz = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.ad
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %i.jb = load i64, ptr %i.ad, align 8, !tbaa !19
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143, %bb.af
  %.pn33.pn.pn = phi { ptr, i32 } [ %i.hr, %bb.af ], [ %.pn33.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143 ], [ %.pn33.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.jd = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.ae
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.jf = load i64, ptr %i.ae, align 8, !tbaa !19
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %bb.ae
  %.pn33.pn.pn.pn = phi { ptr, i32 } [ %i.hq, %bb.ae ], [ %.pn33.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %.pn33.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.jh = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.af
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.jj = load i64, ptr %i.af, align 8, !tbaa !19
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149, %bb.ad
  %.pn33.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hp, %bb.ad ], [ %.pn33.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149 ], [ %.pn33.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.jl = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.ag
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.jn = load i64, ptr %i.ag, align 8, !tbaa !19
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn33.pn.pn.pn.pn
}

declare void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_Z12draw2DPointsN2cv3MatERSt6vectorINS_6Point_IfEESaIS3_EENS_7Scalar_IdEE(ptr noundef align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.f = phi ptr [ %i.c, %.lr.ph ], [ %i.p, %bb.b ]
  %.07 = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.b ]  ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.07 ; 2 uses
  %i.h = load float, ptr %i.g, align 4
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load float, ptr %.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 0, ptr %i.e, align 8
  store i32 50397184, ptr %3, align 8, !tbaa !22
  store ptr %0, ptr %i.d, align 8, !tbaa !23
  %i.j = insertelement <4 x float> poison, float %i.h, i64 0
  %i.k = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.j)
  %i.l = insertelement <4 x float> poison, float %i.i, i64 0
  %i.m = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.l)
  %.sroa.2.0.insert.ext.i = zext i32 %i.m to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.k to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  call void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %.sroa.0.0.insert.insert.i, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef -1, i32 noundef 8, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.n = add nuw i64 %.07, 1                      ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.p = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = icmp ult i64 %i.n, %i.t
  br i1 %i.u, label %bb.b, label %._crit_edge, !llvm.loop !159
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z9drawArrowN2cv3MatENS_6Point_IiEES2_NS_7Scalar_IdEEiiii(ptr noundef align 8 %0, i64 %1, i64 %2, ptr noundef nonnull align 8 dead_on_return %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %9 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %10 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.b, align 8
  store i32 50397184, ptr %8, align 8, !tbaa !22
  store ptr %0, ptr %i.a, align 8, !tbaa !23
  call void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  %.sroa.7.0.extract.shift = lshr i64 %2, 32
  %.sroa.042.0.extract.trunc = trunc i64 %1 to i32
  %.sroa.749.0.extract.shift = lshr i64 %1, 32
  %.sroa.749.0.extract.trunc = trunc nuw i64 %.sroa.749.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.c = sitofp i32 %.sroa.749.0.extract.trunc to double
  %i.d = sitofp i32 %.sroa.042.0.extract.trunc to double
  %i.e = sitofp i32 %4 to double
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16
  %11 = trunc i64 %2 to i32
  %12 = trunc nuw i64 %.sroa.7.0.extract.shift to i32
  %13 = insertelement <2 x i32> poison, i32 %12, i64 0
  %14 = insertelement <2 x i32> %13, i32 %11, i64 1
  %i.h = sitofp <2 x i32> %14 to <2 x double>     ; 4 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %i.j = fsub double %i.c, %i.i
  %i.k = extractelement <2 x double> %i.h, i64 1
  %i.l = fsub double %i.d, %i.k
  %i.m = call double @atan2(double noundef %i.j, double noundef %i.l) #23 ; 2 uses
  %i.n = fadd double %i.m, f0x3FE921FB54442D18    ; 2 uses
  %i.o = call double @cos(double noundef %i.n) #23
  %i.p = call double @sin(double noundef %i.n) #23
  %i.q = insertelement <2 x double> poison, double %i.e, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = insertelement <2 x double> poison, double %i.p, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.o, i64 1
  %i.u = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.t, <2 x double> %i.h)
  %i.v = fptosi <2 x double> %i.u to <2 x i32>    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i64 0, ptr %i.g, align 8
  store i32 50397184, ptr %9, align 8, !tbaa !22
  store ptr %0, ptr %i.f, align 8, !tbaa !23
  %i.w = extractelement <2 x i32> %i.v, i64 0
  %i.x = zext i32 %i.w to i64
  %.sroa.749.0.insert.shift51 = shl nuw i64 %i.x, 32
  %i.y = extractelement <2 x i32> %i.v, i64 1
  %i.z = zext i32 %i.y to i64
  %.sroa.042.0.insert.insert45 = or disjoint i64 %.sroa.749.0.insert.shift51, %i.z
  call void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 %.sroa.042.0.insert.insert45, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.aa = fadd double %i.m, f0xBFE921FB54442D18   ; 2 uses
  %i.ab = call double @cos(double noundef %i.aa) #23
  %i.ac = call double @sin(double noundef %i.aa) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.ae, align 8
  store i32 50397184, ptr %10, align 8, !tbaa !22
  store ptr %0, ptr %i.ad, align 8, !tbaa !23
  %i.af = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.ab, i64 1
  %i.ah = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.ag, <2 x double> %i.h)
  %i.ai = fptosi <2 x double> %i.ah to <2 x i32>  ; 2 uses
  %i.aj = extractelement <2 x i32> %i.ai, i64 0
  %i.ak = zext i32 %i.aj to i64
  %.sroa.749.0.insert.shift = shl nuw i64 %i.ak, 32
  %i.al = extractelement <2 x i32> %i.ai, i64 1
  %i.am = zext i32 %i.al to i64
  %.sroa.042.0.insert.insert = or disjoint i64 %.sroa.749.0.insert.shift, %i.am
  call void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 %.sroa.042.0.insert.insert, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  ret void
}

declare void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i64, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_Z20draw3DCoordinateAxesN2cv3MatERKSt6vectorINS_6Point_IfEESaIS3_EE(ptr noundef nonnull align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %3 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %4 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %5 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %6 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %7 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %8 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %9 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %10 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %11 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 6 uses
  %13 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 6 uses
  %15 = alloca %"class.cv::Scalar_", align 16     ; 5 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 6 uses
  %17 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %18 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !36     ; 8 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !161
  %i.c = insertelement <4 x float> poison, float %i.b, i64 0
  %i.d = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.c) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !162
  %i.g = insertelement <4 x float> poison, float %i.f, i64 0
  %i.h = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.g) ; 2 uses
  %.sroa.2.0.insert.ext.i = zext i32 %i.h to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.d to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !161
  %i.k = insertelement <4 x float> poison, float %i.j, i64 0
  %i.l = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.k) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !162
  %i.o = insertelement <4 x float> poison, float %i.n, i64 0
  %i.p = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.o) ; 2 uses
  %.sroa.2.0.insert.ext.i20 = zext i32 %i.p to i64
  %.sroa.2.0.insert.shift.i21 = shl nuw i64 %.sroa.2.0.insert.ext.i20, 32
  %.sroa.0.0.insert.ext.i22 = zext i32 %i.l to i64
  %.sroa.0.0.insert.insert.i23 = or disjoint i64 %.sroa.2.0.insert.shift.i21, %.sroa.0.0.insert.ext.i22 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load float, ptr %i.q, align 4, !tbaa !161
  %i.s = insertelement <4 x float> poison, float %i.r, i64 0
  %i.t = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.s) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.v = load float, ptr %i.u, align 4, !tbaa !162
  %i.w = insertelement <4 x float> poison, float %i.v, i64 0
  %i.x = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.w) ; 2 uses
  %.sroa.2.0.insert.ext.i24 = zext i32 %i.x to i64
  %.sroa.2.0.insert.shift.i25 = shl nuw i64 %.sroa.2.0.insert.ext.i24, 32
  %.sroa.0.0.insert.ext.i26 = zext i32 %i.t to i64
  %.sroa.0.0.insert.insert.i27 = or disjoint i64 %.sroa.2.0.insert.shift.i25, %.sroa.0.0.insert.ext.i26 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.z = load float, ptr %i.y, align 4, !tbaa !161
  %i.aa = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ab = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.aa) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !162
  %i.ae = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.af = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ae) ; 2 uses
  %.sroa.2.0.insert.ext.i28 = zext i32 %i.af to i64
  %.sroa.2.0.insert.shift.i29 = shl nuw i64 %.sroa.2.0.insert.ext.i28, 32
  %.sroa.0.0.insert.ext.i30 = zext i32 %i.ab to i64
  %.sroa.0.0.insert.insert.i31 = or disjoint i64 %.sroa.2.0.insert.shift.i29, %.sroa.0.0.insert.ext.i30 ; 3 uses
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.ag, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.ai, align 8
  store i32 50397184, ptr %8, align 8, !tbaa !22
  store ptr %12, ptr %i.ah, align 8, !tbaa !23
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 %.sroa.0.0.insert.insert.i, i64 %.sroa.0.0.insert.insert.i23, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 2, i32 noundef 8, i32 noundef 0)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.aj = sitofp i32 %i.h to double               ; 3 uses
  %i.ak = insertelement <2 x i32> poison, i32 %i.p, i64 0
  %i.al = insertelement <2 x i32> %i.ak, i32 %i.l, i64 1
  %i.am = sitofp <2 x i32> %i.al to <2 x double>  ; 4 uses
  %i.an = extractelement <2 x double> %i.am, i64 0
  %i.ao = fsub double %i.aj, %i.an
  %i.ap = sitofp i32 %i.d to double               ; 3 uses
  %i.aq = extractelement <2 x double> %i.am, i64 1
  %i.ar = fsub double %i.ap, %i.aq
  %i.as = call double @atan2(double noundef %i.ao, double noundef %i.ar) #23 ; 2 uses
  %i.at = fadd double %i.as, f0x3FE921FB54442D18  ; 2 uses
  %i.au = call double @cos(double noundef %i.at) #23
  %i.av = call double @sin(double noundef %i.at) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.ax, align 8
  store i32 50397184, ptr %9, align 8, !tbaa !22
  store ptr %12, ptr %i.aw, align 8, !tbaa !23
  %i.ay = insertelement <2 x double> poison, double %i.av, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.au, i64 1
  %i.ba = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> splat (double 9.000000e+00), <2 x double> %i.am)
  %i.bb = fptosi <2 x double> %i.ba to <2 x i32>  ; 2 uses
  %i.bc = extractelement <2 x i32> %i.bb, i64 0
  %i.bd = zext i32 %i.bc to i64
  %.sroa.749.0.insert.shift51.i = shl nuw i64 %i.bd, 32
  %i.be = extractelement <2 x i32> %i.bb, i64 1
  %i.bf = zext i32 %i.be to i64
  %.sroa.042.0.insert.insert45.i = or disjoint i64 %.sroa.749.0.insert.shift51.i, %i.bf
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 %.sroa.042.0.insert.insert45.i, i64 %.sroa.0.0.insert.insert.i23, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 2, i32 noundef 8, i32 noundef 0)
          to label %.noexc32 unwind label %bb.e

.noexc32:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.bg = fadd double %i.as, f0xBFE921FB54442D18  ; 2 uses
  %i.bh = call double @cos(double noundef %i.bg) #23
  %i.bi = call double @sin(double noundef %i.bg) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.bk, align 8
  store i32 50397184, ptr %10, align 8, !tbaa !22
  store ptr %12, ptr %i.bj, align 8, !tbaa !23
  %i.bl = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.bh, i64 1
  %i.bn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> splat (double 9.000000e+00), <2 x double> %i.am)
  %i.bo = fptosi <2 x double> %i.bn to <2 x i32>  ; 2 uses
  %i.bp = extractelement <2 x i32> %i.bo, i64 0
  %i.bq = zext i32 %i.bp to i64
  %.sroa.749.0.insert.shift.i = shl nuw i64 %i.bq, 32
  %i.br = extractelement <2 x i32> %i.bo, i64 1
  %i.bs = zext i32 %i.br to i64
  %.sroa.042.0.insert.insert.i = or disjoint i64 %.sroa.749.0.insert.shift.i, %i.bs
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 %.sroa.042.0.insert.insert.i, i64 %.sroa.0.0.insert.insert.i23, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 2, i32 noundef 8, i32 noundef 0)
end_hunk_0
