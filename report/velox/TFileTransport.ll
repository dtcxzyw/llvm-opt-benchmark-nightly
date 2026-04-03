begin_hunk_0
inline.NumInlined: 730
inline.NumDeleted: 337
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 12 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %.backedge146

.backedge146:                                     ; preds = %.backedge146.backedge, %bb.q
  %.060 = phi i32 [ 0, %bb.q ], [ %.060.be, %.backedge146.backedge ] ; 2 uses
  %.2 = phi i8 [ %.1, %bb.q ], [ %.2.be, %.backedge146.backedge ] ; 3 uses
  %i.bq = load atomic i8, ptr %i.az seq_cst, align 8, !range !54, !noundef !55
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.r, label %bb.x
end_hunk_1
begin_hunk_2
  %.1070 = phi i32 [ %.060, %bb.x ], [ %.161, %.sink.split ] ; 5 uses
  %.11 = phi i8 [ %.2, %bb.x ], [ %.3, %.sink.split ]
  %i.gx = trunc nuw i8 %.11 to i1
  br i1 %i.gx, label %.backedge146.backedge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gy = load ptr, ptr %i.bm, align 8, !tbaa !7
end_hunk_2
begin_hunk_3
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
  %i.hb = load atomic i8, ptr %i.bn seq_cst, align 8, !range !54, !noundef !55
  %i.hc = trunc nuw i8 %i.hb to i1                ; 3 uses
  br i1 %i.hc, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hd = load ptr, ptr %i.ba, align 8, !tbaa !96
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !130
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %bb.ay, label %.critedge, !llvm.loop !149

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.hh = load ptr, ptr %i.bm, align 8, !tbaa !7
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  %i.hj = load ptr, ptr %i.hi, align 8
  invoke void %i.hj(ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_ZN6apache6thrift11concurrency5GuardD2Ev.exit.a unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hk = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4
  call void @__clang_call_terminate(ptr %i.hl) #36
  unreachable

_ZN6apache6thrift11concurrency5GuardD2Ev.exit.a:  ; preds = %bb.ay
  %i.hm = load i32, ptr %i.bo, align 4
  %i.hn = icmp ugt i32 %.1070, %i.hm
  %or.cond = select i1 %i.hc, i1 true, i1 %i.hn
  br i1 %or.cond, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %_ZN6apache6thrift11concurrency5GuardD2Ev.exit.a
  %i.ho = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #31
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8, !tbaa !49
  %i.hp = icmp slt i64 %.sroa.0.0.copyload.i.i.i, %i.ho
  br i1 %i.hp, label %bb.bb, label %.backedge146.backedge

.backedge146.backedge:                            ; preds = %bb.ba, %bb.bc, %bb.bd, %bb.bf, %.critedge, %bb.av
  %.060.be = phi i32 [ %.1070, %bb.av ], [ 0, %bb.bf ], [ %.1070, %bb.ba ], [ 0, %bb.bd ], [ 0, %bb.bc ], [ %.1070, %.critedge ]
  %.2.be = phi i8 [ 1, %bb.av ], [ 0, %bb.bf ], [ 0, %bb.ba ], [ 0, %bb.bd ], [ 0, %bb.bc ], [ 0, %.critedge ]
  br label %.backedge146, !llvm.loop !149

bb.bb:                                            ; preds = %bb.ba
  %.not91 = icmp eq i32 %.1070, 0
end_hunk_4
begin_hunk_5
  %i.ht = mul nuw nsw i64 %i.hs, 1000
  %i.hu = add nsw i64 %i.ht, %i.hq
  store i64 %i.hu, ptr %1, align 8, !tbaa !49
  br label %.backedge146.backedge

bb.bd:                                            ; preds = %_ZN6apache6thrift11concurrency5GuardD2Ev.exit.a, %bb.bb
  %i.hv = load i32, ptr %i.k, align 8, !tbaa !51
end_hunk_5
begin_hunk_6
  %i.ia = mul nuw nsw i64 %i.hz, 1000
  %i.ib = add nsw i64 %i.ia, %i.hx
  store i64 %i.ib, ptr %1, align 8, !tbaa !49
  br i1 %i.hc, label %bb.be, label %.backedge146.backedge

bb.be:                                            ; preds = %bb.bd
  %i.ic = load ptr, ptr %i.bm, align 8, !tbaa !7
end_hunk_6
begin_hunk_7
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 40
  %i.ih = load ptr, ptr %i.ig, align 8
  invoke void %i.ih(ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %.backedge146.backedge unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ii = landingpad { ptr, i32 }
end_hunk_7
begin_hunk_8
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 40
  %i.in = load ptr, ptr %i.im, align 8
  invoke void %i.in(ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_ZN6apache6thrift11concurrency5GuardD2Ev.exit107 unwind label %2

2:                                                ; preds = %bb.bh
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #36
  unreachable

.critedge:                                        ; preds = %bb.ax
  %5 = load ptr, ptr %i.bm, align 8, !tbaa !7
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 40
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %.backedge146.backedge unwind label %bb.bi

bb.bi:                                            ; preds = %.critedge
  %i.io = landingpad { ptr, i32 }
          catch ptr null
  %i.ip = extractvalue { ptr, i32 } %i.io, 0
end_hunk_8
