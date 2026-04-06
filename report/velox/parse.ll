begin_hunk_0
inline.NumInlined: 1142
inline.NumDeleted: 385
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN3re26Regexp5ParseESt17basic_string_viewIcSt11char_traitsIcEENS0_10ParseFlagsEPNS_12RegexpStatusE:bb.a
  %i.ab = load i32, ptr @_ZN3re215num_perl_groupsE, align 4 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 1
  %wide.trip.count.i.i.i = zext nneg i32 %i.ab to i64
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  br label %bb.p

.lr.ph:                                           ; preds = %.preheader261, %bb.o
end_hunk_1
begin_hunk_2_@_ZN3re26Regexp5ParseESt17basic_string_viewIcSt11char_traitsIcEENS0_10ParseFlagsEPNS_12RegexpStatusE:bb.a
  br label %.loopexit258

bb.w:                                             ; preds = %bb.p
  %i.bm = load i32, ptr %6, align 8, !tbaa !7     ; 4 uses
  %i.bn = and i32 %i.bm, 512
  %.not105 = icmp ne i32 %i.bn, 0
  %i.bo = icmp ne i64 %i.aw, 1
end_hunk_2
begin_hunk_3_@_ZN3re26Regexp5ParseESt17basic_string_viewIcSt11char_traitsIcEENS0_10ParseFlagsEPNS_12RegexpStatusE:bb.a
bb.z:                                             ; preds = %bb.y
  br i1 %i.bs, label %.loopexit258thread-pre-split, label %.thread246

bb.aa:                                            ; preds = %bb.ad, %bb.cw, %bb.cv, %bb.ct, %bb.cs, %_ZN3re26Regexp10ParseState12PushSimpleOpENS_8RegexpOpE.exit.i148, %bb.ck, %_ZN3re26Regexp10ParseState12PushSimpleOpENS_8RegexpOpE.exit.i, %bb.ak, %bb.ac, %9, %bb.cy, %bb.ar, %bb.ap, %bb.ah, %bb.af, %bb.y
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body
end_hunk_3
begin_hunk_4_@_ZN3re26Regexp5ParseESt17basic_string_viewIcSt11char_traitsIcEENS0_10ParseFlagsEPNS_12RegexpStatusE:bb.a
bb.ab:                                            ; preds = %bb.x, %bb.w
  %i.bu = and i32 %i.bm, 4096
  %.not106 = icmp eq i32 %i.bu, 0
  br i1 %.not106, label %bb.ac, label %9

9:                                                ; preds = %bb.ab
  %10 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36
          to label %.noexc137 unwind label %bb.aa ; 3 uses

.noexc137:                                        ; preds = %9
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 22, i32 noundef %i.bm)
          to label %bb.ad unwind label %11

11:                                               ; preds = %.noexc137
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %10, i64 noundef 40) #33
  br label %.body

bb.ac:                                            ; preds = %bb.ab
  %i.bv = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36
          to label %.noexc137.a unwind label %bb.aa ; 3 uses

.noexc137.a:                                      ; preds = %bb.ac
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.bv, i32 noundef 22, i32 noundef %i.bm)
          to label %13 unwind label %bb.ae

13:                                               ; preds = %.noexc137.a
  %14 = load i32, ptr %i.ae, align 8, !tbaa !20
  %15 = add nsw i32 %14, 1                        ; 2 uses
  store i32 %15, ptr %i.ae, align 8, !tbaa !20
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc137, %13
  %.sink545 = phi ptr [ %i.bv, %13 ], [ %10, %.noexc137 ] ; 2 uses
  %.sink = phi i32 [ %15, %13 ], [ -1, %.noexc137 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sink545, i64 24
  store i32 %.sink, ptr %i.bw, align 8, !tbaa !26
  %i.bx = invoke noundef zeroext i1 @_ZN3re26Regexp10ParseState10PushRegexpEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %.sink545)
          to label %_ZN3re26Regexp10ParseState20DoLeftParenNoCaptureEv.exit unwind label %bb.aa ; 0 uses

bb.ae:                                            ; preds = %.noexc137.a
end_hunk_4
begin_hunk_5_@_ZN3re26Regexp5ParseESt17basic_string_viewIcSt11char_traitsIcEENS0_10ParseFlagsEPNS_12RegexpStatusE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 40) #33
  br label %.body

_ZN3re26Regexp10ParseState20DoLeftParenNoCaptureEv.exit: ; preds = %bb.ad
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store ptr %i.bz, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !167
  %i.ca = add i64 %i.aw, -1                       ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN3re26Regexp5ParseESt17basic_string_viewIcSt11char_traitsIcEENS0_10ParseFlagsEPNS_12RegexpStatusE:bb.a
  br i1 %i.du, label %.loopexit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dv = load ptr, ptr %i.ad, align 8, !tbaa !167 ; 3 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !26
  %.not.i144 = icmp eq i8 %i.dw, 123
  br i1 %.not.i144, label %bb.bl, label %.loopexit
end_hunk_6
begin_hunk_7_@_ZN3re26Regexp5ParseESt17basic_string_viewIcSt11char_traitsIcEENS0_10ParseFlagsEPNS_12RegexpStatusE:bb.a
  br i1 %i.ew, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !204

bb.br:                                            ; preds = %.lr.ph.i.i
  store ptr %i.ek, ptr %i.ad, align 8
  %i.ex = icmp eq i8 %i.em, 44
  br i1 %i.ex, label %bb.bs, label %.thread36.sink.split.i

bb.bs:                                            ; preds = %bb.br
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 1 ; 3 uses
  store ptr %i.ey, ptr %i.ad, align 8, !tbaa !167
  %i.ez = add i64 %i.ej, -1                       ; 3 uses
  store i64 %i.ez, ptr %4, align 8, !tbaa !166
  %i.fa = icmp eq i64 %i.ez, 0
end_hunk_7
begin_hunk_8_@_ZN3re26Regexp5ParseESt17basic_string_viewIcSt11char_traitsIcEENS0_10ParseFlagsEPNS_12RegexpStatusE:bb.a
  br i1 %or.cond.not.i, label %..thread36.i_crit_edge, label %.loopexit

..thread36.i_crit_edge:                           ; preds = %bb.bu
  %.pre422 = load ptr, ptr %i.ad, align 8, !tbaa !167
  br label %.thread36.i

.thread36.sink.split.i:                           ; preds = %bb.bt, %bb.br
end_hunk_8
begin_hunk_9_@_ZN3re26Regexp5ParseESt17basic_string_viewIcSt11char_traitsIcEENS0_10ParseFlagsEPNS_12RegexpStatusE:bb.a

bb.bx:                                            ; preds = %.thread36.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  store ptr %i.fn, ptr %i.ad, align 8, !tbaa !167
  %i.fo = add i64 %i.fh, -1
  store i64 %i.fo, ptr %4, align 8, !tbaa !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !203
end_hunk_9
begin_hunk_10_@_ZN3re26Regexp5ParseESt17basic_string_viewIcSt11char_traitsIcEENS0_10ParseFlagsEPNS_12RegexpStatusE:bb.a

.loopexit257:                                     ; preds = %bb.dy, %bb.dx, %.thread237, %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #35
  %i.jv = load i32, ptr %8, align 4, !tbaa !21
  %i.jw = invoke fastcc noundef zeroext i1 @_ZN3re2L11ParseEscapeEPSt17basic_string_viewIcSt11char_traitsIcEEPiPNS_12RegexpStatusEi(ptr noundef nonnull %7, ptr noundef nonnull %i.f, ptr noundef nonnull %spec.store.select, i32 noundef %i.jv)
          to label %bb.ei unwind label %bb.ej

end_hunk_10
begin_hunk_11_@_ZN3re26Regexp5ParseESt17basic_string_viewIcSt11char_traitsIcEENS0_10ParseFlagsEPNS_12RegexpStatusE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  ret ptr %.18

.body:                                            ; preds = %.loopexit259, %.loopexit.split-lp, %bb.em, %11, %common.resume.i, %bb.cu, %bb.cx, %bb.aa, %common.resume.i146, %bb.ae, %bb.ej, %bb.eh, %bb.eg, %bb.ef, %bb.dr, %bb.ds, %bb.di, %bb.cg, %bb.be, %bb.av, %bb.t, %bb.m, %bb.i, %bb.h
  %.pn110 = phi { ptr, i32 } [ %i.as, %bb.m ], [ %i.w, %bb.h ], [ %i.x, %bb.i ], [ %i.kd, %bb.em ], [ %i.bk, %bb.t ], [ %i.jt, %bb.eg ], [ %i.cw, %bb.av ], [ %i.di, %bb.be ], [ %.pn102, %bb.cg ], [ %i.ih, %bb.di ], [ %i.iq, %bb.dr ], [ %i.bt, %bb.aa ], [ %i.ir, %bb.ds ], [ %i.hd, %bb.cx ], [ %i.jx, %bb.ej ], [ %i.js, %bb.ef ], [ %i.ju, %bb.eh ], [ %12, %11 ], [ %i.by, %bb.ae ], [ %common.resume.op.i, %common.resume.i ], [ %common.resume.op.i147, %common.resume.i146 ], [ %i.gy, %bb.cu ], [ %lpad.loopexit, %.loopexit259 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @_ZN3re26Regexp10ParseStateD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #35
  br label %bb.eo
end_hunk_11
