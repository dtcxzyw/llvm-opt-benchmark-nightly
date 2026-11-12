Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_record?download=true
inline.NumInlined: 71
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RecordIndex = type { %union.TValue, %union.TValue, %union.TValue, %union.TValue, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%union.TValue = type { i64 }
%struct.RecCatDataCP = type { [6 x %union.TValue], ptr, i32, i32, i32 }
%struct.ScEvEntry = type { %struct.MRef, i16, i16, i16, i16, %struct.IRType1, i8 }
%struct.MRef = type { i64 }
%struct.IRType1 = type { i8 }

@lj_bc_mode = external hidden local_unnamed_addr constant [0 x i16], align 2

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 3) i32 @lj_record_objcmp(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lj_obj_equal(ptr noundef %3, ptr noundef %4) #8
  %.not = icmp eq i32 %i.a, 0                     ; 2 uses
  %i.b = zext i1 %.not to i32                     ; 2 uses
  %i.c = or i32 %2, %1
  %i.d = and i32 %i.c, 32768
  %.not38.not = icmp eq i32 %i.d, 0
  br i1 %.not38.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %1, 24
  %i.f = and i32 %i.e, 31                         ; 2 uses
  %i.g = add nsw i32 %i.f, -15
  %i.h = icmp ult i32 %i.g, 5
  %i.i = select i1 %i.h, i32 19, i32 %i.f         ; 4 uses
  %i.j = lshr i32 %2, 24
  %i.k = and i32 %i.j, 31                         ; 2 uses
  %i.l = add nsw i32 %i.k, -15
  %i.m = icmp ult i32 %i.l, 5
  %i.n = select i1 %i.m, i32 19, i32 %i.k         ; 3 uses
  %.not39 = icmp eq i32 %i.i, %i.n
  br i1 %.not39, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i32 %i.i, 19
  %i.p = icmp eq i32 %i.n, 14
  %or.cond = and i1 %i.o, %i.p
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = trunc i32 %1 to i16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 23310, ptr %i.s, align 4, !tbaa !9
  store i16 %i.q, ptr %i.r, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 467, ptr %i.t, align 2, !tbaa !9
  %i.u = tail call i32 @lj_opt_fold(ptr noundef %0) #8
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.v = icmp eq i32 %i.i, 14
  %i.w = icmp eq i32 %i.n, 19
  %or.cond3 = and i1 %i.v, %i.w
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = trunc i32 %2 to i16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 23310, ptr %i.z, align 4, !tbaa !9
  store i16 %i.x, ptr %i.y, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 467, ptr %i.aa, align 2, !tbaa !9
  %i.ab = tail call i32 @lj_opt_fold(ptr noundef %0) #8
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f, %bb.b
  %.034 = phi i32 [ %2, %bb.d ], [ %i.ab, %bb.f ], [ %2, %bb.b ]
  %.033 = phi i32 [ %i.u, %bb.d ], [ %1, %bb.f ], [ %1, %bb.b ]
  %.031 = phi i32 [ 14, %bb.d ], [ 14, %bb.f ], [ %i.i, %bb.b ]
  %i.ac = select i1 %.not, i32 2304, i32 2048
  %i.ad = or i32 %.031, %i.ac
  %i.ae = trunc nuw nsw i32 %i.ad to i16
  %5 = or i16 %i.ae, 128
  %i.af = trunc i32 %.033 to i16
  %i.ag = trunc i32 %.034 to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %5, ptr %i.ai, align 4, !tbaa !9
  store i16 %i.af, ptr %i.ah, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.ag, ptr %i.aj, align 2, !tbaa !9
  %i.ak = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %.critedge, %bb.e
  %.1 = phi i32 [ 2, %bb.e ], [ %i.b, %.critedge ], [ %i.b, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare hidden i32 @lj_obj_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @lj_opt_fold(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i32 @lj_record_constify(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = ashr i64 %i.a, 47                        ; 4 uses
  %i.c = trunc nsw i64 %i.b to i32                ; 3 uses
  %i.d = add nsw i32 %i.c, 13
  %i.e = icmp ult i32 %i.d, 9
  %i.f = bitcast i64 %i.a to double
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %i.a, 140737488355327
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = icmp ult i64 %i.b, -14
  %i.j = xor i32 %i.c, -1
  %.0.i13 = select i1 %i.i, i32 14, i32 %i.j
  %i.k = tail call i32 @lj_ir_kgc(ptr noundef %0, ptr noundef %i.h, i32 noundef %.0.i13) #8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %i.b, -14
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @lj_ir_knumint(ptr noundef %0, double noundef %i.f) #8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %.off = add nsw i64 %i.b, 3
  %switch = icmp ult i64 %.off, 2
  br i1 %switch, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = xor i32 %i.c, -1
  %i.o = mul nuw nsw i32 %i.n, 16777217
  %i.p = xor i32 %i.o, 32767
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ %i.m, %bb.d ], [ %i.p, %bb.f ], [ 0, %bb.e ]
  ret i32 %.0
}

declare hidden i32 @lj_ir_kgc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @lj_ir_knumint(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @lj_record_vload(ptr noundef initializes((184, 190)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %3 to i16
  %i.b = or i16 %i.a, 18560
  %i.c = trunc i32 %1 to i16
  %i.d = trunc i32 %2 to i16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.b, ptr %i.f, align 4, !tbaa !9
  store i16 %i.c, ptr %i.e, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.d, ptr %i.g, align 2, !tbaa !9
  %i.h = tail call i32 @lj_opt_fold(ptr noundef %0) #8
  %i.i = icmp ult i32 %3, 3
  %reass.sub = mul nuw nsw i32 %3, 16777215
  %i.j = add nuw nsw i32 %reass.sub, 32767
  %.0 = select i1 %i.i, i32 %i.j, i32 %i.h
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @lj_record_stop(ptr noundef initializes((106, 108), (116, 117), (236, 240)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 20, ptr %i.a, align 4, !tbaa !29
  %i.b = trunc i32 %1 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 %i.b, ptr %i.c, align 4, !tbaa !112
  %i.d = trunc i32 %2 to i16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 106 ; 2 uses
  store i16 %i.d, ptr %i.e, align 2, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load i16, ptr %i.f, align 8, !tbaa !30
  %i.h = zext i16 %i.g to i32
  %i.i = icmp eq i32 %2, %i.h
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.k = load i32, ptr %i.j, align 4, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.m = load i32, ptr %i.l, align 8, !tbaa !32
  %i.n = sub i32 0, %i.m
  %i.o = icmp eq i32 %i.k, %i.n
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = load i32, ptr %i.p, align 8, !tbaa !33
  %i.r = and i32 %i.q, 4194304
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.d, label %canonicalize_slots.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.t = load i16, ptr %i.s, align 4, !tbaa !34   ; 2 uses
  %.not16 = icmp eq i16 %i.t, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i16 %i.t, ptr %i.e, align 2, !tbaa !113
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = load i32, ptr %i.u, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.x = load i32, ptr %i.w, align 4, !tbaa !36
  %i.y = add i32 %i.v, -1
  %.018.i = add i32 %i.y, %i.x                    ; 2 uses
  %.not19.i = icmp eq i32 %.018.i, 0
  br i1 %.not19.i, label %canonicalize_slots.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.ae = zext i32 %.018.i to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ae, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !37 ; 4 uses
  %i.ah = lshr i32 %i.ag, 24
  %i.ai = and i32 %i.ah, 31
  %i.aj = add nsw i32 %i.ai, -15
  %i.ak = icmp ult i32 %i.aj, 5
  %i.al = and i32 %i.ag, 1048576
  %.not16.i = icmp eq i32 %i.al, 0
  %or.cond.i = and i1 %.not16.i, %i.ak
  br i1 %or.cond.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.aa, align 8, !tbaa !38
  %i.an = trunc i32 %i.ag to i16
  %.mask.i = and i32 %i.ag, 65535
  %i.ao = zext nneg i32 %.mask.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = icmp eq i8 %i.ar, 71
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !9
  %i.av = and i16 %i.au, 16
  %.not17.i = icmp eq i16 %i.av, 0
  br i1 %.not17.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  store i16 23310, ptr %i.ac, align 4, !tbaa !9
  store i16 %i.an, ptr %i.ab, align 8, !tbaa !9
  store i16 467, ptr %i.ad, align 2, !tbaa !9
  %i.aw = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  store i32 %i.aw, ptr %i.af, align 4, !tbaa !37
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ax = and i64 %indvars.iv.next.i, 4294967295
  %.not.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i, label %canonicalize_slots.exit, label %bb.g, !llvm.loop !111

canonicalize_slots.exit:                          ; preds = %bb.k, %bb.f, %bb.c
  tail call void @lj_snap_add(ptr noundef nonnull %0) #8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 181
end_hunk_0
begin_hunk_1_@lj_record_idx:bb.a

bb.ai:                                            ; preds = %bb.ah
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !79
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gk = load i32, ptr %i.a, align 8, !tbaa !49
  %i.gl = trunc i32 %i.gk to i16
  store i16 17683, ptr %i.h, align 4, !tbaa !9
  store i16 %i.gl, ptr %i.g, align 8, !tbaa !9
  store i16 8, ptr %i.i, align 2, !tbaa !9
  %i.gm = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.gn = trunc i32 %i.gm to i16
  %i.go = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef 0) #8
  %i.gp = trunc i32 %i.go to i16
  store i16 2195, ptr %i.h, align 4, !tbaa !9
  store i16 %i.gn, ptr %i.g, align 8, !tbaa !9
  store i16 %i.gp, ptr %i.i, align 2, !tbaa !9
  %i.gq = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %.thread.i

bb.ak:                                            ; preds = %bb.ai
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 20) #9
  unreachable

bb.al:                                            ; preds = %bb.ae
  tail call fastcc void @rec_idx_abc(ptr noundef nonnull %0, i32 noundef %i.fx, i32 noundef %i.fu, i32 noundef %i.fz)
  %i.gr = load i32, ptr %i.a, align 8, !tbaa !49
  %i.gs = trunc i32 %i.gr to i16
  store i16 17673, ptr %i.h, align 4, !tbaa !9
  store i16 %i.gs, ptr %i.g, align 8, !tbaa !9
  store i16 6, ptr %i.i, align 2, !tbaa !9
  %i.gt = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.gu = trunc i32 %i.gt to i16
  %i.gv = trunc i32 %i.fu to i16
  store i16 14345, ptr %i.h, align 4, !tbaa !9
  store i16 %i.gu, ptr %i.g, align 8, !tbaa !9
  store i16 %i.gv, ptr %i.i, align 2, !tbaa !9
  %i.gw = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %rec_idx_key.exit

.thread.i:                                        ; preds = %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ac
  %.4104.i = phi i32 [ %i.fk, %bb.aj ], [ %i.fk, %bb.ac ], [ %i.fk, %bb.ah ], [ %i.fk, %bb.af ], [ %i.gf, %bb.ag ] ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fh, i64 52 ; 3 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !80
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.thread.i
  %i.ha = load i32, ptr %i.a, align 8, !tbaa !49
  %i.hb = trunc i32 %i.ha to i16
  store i16 17683, ptr %i.h, align 4, !tbaa !9
  store i16 %i.hb, ptr %i.g, align 8, !tbaa !9
  store i16 9, ptr %i.i, align 2, !tbaa !9
  %i.hc = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.hd = trunc i32 %i.hc to i16
  %i.he = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef 0) #8
  %i.hf = trunc i32 %i.he to i16
  store i16 2195, ptr %i.h, align 4, !tbaa !9
  store i16 %i.hd, ptr %i.g, align 8, !tbaa !9
  store i16 %i.hf, ptr %i.i, align 2, !tbaa !9
  %i.hg = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  %i.hh = tail call i32 @lj_ir_kptr_(ptr noundef nonnull %0, i32 noundef 26, ptr noundef nonnull %i.l) #8
  br label %rec_idx_key.exit

bb.an:                                            ; preds = %.thread.i
  %i.hi = lshr i32 %.4104.i, 24
  %i.hj = and i32 %i.hi, 31
  %i.hk = add nsw i32 %i.hj, -15
  %i.hl = icmp ult i32 %i.hk, 5
  br i1 %i.hl, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hm = trunc i32 %.4104.i to i16
  store i16 23310, ptr %i.h, align 4, !tbaa !9
  store i16 %i.hm, ptr %i.g, align 8, !tbaa !9
  store i16 467, ptr %i.i, align 2, !tbaa !9
  %i.hn = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.5105.i = phi i32 [ %i.hn, %bb.ao ], [ %.4104.i, %bb.an ] ; 3 uses
  %i.ho = trunc i32 %.5105.i to i16
  %i.hp = and i32 %.5105.i, 32768
  %.not115.not.i = icmp eq i32 %i.hp, 0
  br i1 %.not115.not.i, label %bb.aq, label %.thread127.i

bb.aq:                                            ; preds = %bb.ap
  %i.hq = load ptr, ptr %i.f, align 8, !tbaa !123
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !81
  %i.ht = ptrtoint ptr %i.hq to i64
  %i.hu = sub i64 %i.ht, %i.hs                    ; 3 uses
  %i.hv = load i32, ptr %i.gx, align 4, !tbaa !80
  %i.hw = zext i32 %i.hv to i64
  %i.hx = mul nuw nsw i64 %i.hw, 24
  %i.hy = icmp ugt i64 %i.hu, %i.hx
  %i.hz = icmp ugt i64 %i.hu, 1572840
  %or.cond.not.i = or i1 %i.hz, %i.hy
  br i1 %or.cond.not.i, label %.thread127.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ia = load i32, ptr %i.j, align 4, !tbaa !82
  %i.ib = load i8, ptr %i.k, align 2, !tbaa !9
  %i.ic = load i32, ptr %i.a, align 8, !tbaa !49
  %i.id = trunc i32 %i.ic to i16
  store i16 17683, ptr %i.h, align 4, !tbaa !9
  store i16 %i.id, ptr %i.g, align 8, !tbaa !9
  store i16 9, ptr %i.i, align 2, !tbaa !9
  %i.ie = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.if = trunc i32 %i.ie to i16
  %i.ig = load i32, ptr %i.gx, align 4, !tbaa !80
  %i.ih = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.ig) #8
  %i.ii = trunc i32 %i.ih to i16
  store i16 2195, ptr %i.h, align 4, !tbaa !9
  store i16 %i.if, ptr %i.g, align 8, !tbaa !9
  store i16 %i.ii, ptr %i.i, align 2, !tbaa !9
  %i.ij = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  %i.ik = load i32, ptr %i.a, align 8, !tbaa !49
  %i.il = trunc i32 %i.ik to i16
  store i16 17673, ptr %i.h, align 4, !tbaa !9
  store i16 %i.il, ptr %i.g, align 8, !tbaa !9
  store i16 7, ptr %i.i, align 2, !tbaa !9
  %i.im = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %.lhs.trunc.i = trunc nuw nsw i64 %i.hu to i32
  %i.in = udiv i32 %.lhs.trunc.i, 24
  %i.io = tail call i32 @lj_ir_kslot(ptr noundef nonnull %0, i32 noundef %.5105.i, i32 noundef %i.in) #8
  %i.ip = trunc i32 %i.im to i16
  %i.iq = trunc i32 %i.io to i16
  store i16 14729, ptr %i.h, align 4, !tbaa !9
  store i16 %i.ip, ptr %i.g, align 8, !tbaa !9
  store i16 %i.iq, ptr %i.i, align 2, !tbaa !9
  %i.ir = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %rec_idx_key.exit

.thread127.i:                                     ; preds = %bb.aq, %bb.ap
  %i.is = load i32, ptr %i.a, align 8, !tbaa !49
  %i.it = trunc i32 %i.is to i16
  store i16 14857, ptr %i.h, align 4, !tbaa !9
  store i16 %i.it, ptr %i.g, align 8, !tbaa !9
  store i16 %i.ho, ptr %i.i, align 2, !tbaa !9
  %i.iu = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %rec_idx_key.exit

rec_idx_key.exit:                                 ; preds = %bb.al, %bb.am, %bb.ar, %.thread127.i
  %.0265 = phi i32 [ 0, %bb.al ], [ 0, %bb.am ], [ 0, %.thread127.i ], [ %i.ia, %bb.ar ] ; 4 uses
  %.sroa.0.0 = phi i8 [ 0, %bb.al ], [ 0, %bb.am ], [ 0, %.thread127.i ], [ %i.ib, %bb.ar ] ; 2 uses
  %.5.i = phi i32 [ %i.gw, %bb.al ], [ %i.hh, %bb.am ], [ %i.iu, %.thread127.i ], [ %i.ir, %bb.ar ] ; 7 uses
  %i.iv = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.iw = trunc i32 %.5.i to i16                  ; 5 uses
  %.mask = and i32 %.5.i, 65535                   ; 3 uses
  %i.ix = zext nneg i32 %.mask to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.ix ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 5
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !9   ; 4 uses
  %i.jb = icmp eq i8 %i.ja, 56
  %i.jc = select i1 %i.jb, i32 66, i32 67         ; 5 uses
  %i.jd = icmp eq i8 %i.ja, 26
  br i1 %i.jd, label %bb.as, label %bb.at

bb.as:                                            ; preds = %rec_idx_key.exit
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !9
  %i.jg = inttoptr i64 %i.jf to ptr
  br label %bb.au

bb.at:                                            ; preds = %rec_idx_key.exit
  %i.jh = load ptr, ptr %i.f, align 8, !tbaa !123
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ji = phi ptr [ %i.jg, %bb.as ], [ %i.jh, %bb.at ] ; 6 uses
  %i.jj = load i32, ptr %i.b, align 8, !tbaa !75  ; 3 uses
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %bb.av, label %bb.be

bb.av:                                            ; preds = %bb.au
  %i.jl = load i64, ptr %i.ji, align 8, !tbaa !9
  %i.jm = ashr i64 %i.jl, 47                      ; 2 uses
  %i.jn = icmp ult i64 %i.jm, -14
  %i.jo = trunc nsw i64 %i.jm to i32
  %i.jp = xor i32 %i.jo, -1
  %.0.i258 = select i1 %i.jn, i32 14, i32 %i.jp
  %.0.i258.fr = freeze i32 %.0.i258               ; 4 uses
  %i.jq = icmp eq ptr %i.ji, %i.l
  br i1 %i.jq, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.jr = tail call i32 @lj_ir_kptr_(ptr noundef nonnull %0, i32 noundef 26, ptr noundef nonnull %i.l) #8
  %i.js = trunc i32 %i.jr to i16
  store i16 2185, ptr %i.h, align 4, !tbaa !9
  store i16 %i.iw, ptr %i.g, align 8, !tbaa !9
  store i16 %i.js, ptr %i.i, align 2, !tbaa !9
  %i.jt = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.ju = shl nuw nsw i32 %i.jc, 8
  %2 = add nuw nsw i32 %.0.i258.fr, %i.ju
  %3 = trunc nuw nsw i32 %2 to i16
  %4 = or disjoint i16 %3, 128
  store i16 %4, ptr %i.h, align 4, !tbaa !9
  store i16 %i.iw, ptr %i.g, align 8, !tbaa !9
  store i16 0, ptr %i.i, align 2, !tbaa !9
  %i.jv = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0215 = phi i32 [ 32767, %bb.aw ], [ %i.jv, %bb.ax ] ; 2 uses
  %i.jw = and i32 %.0215, 65535
  %i.jx = icmp ult i32 %i.jw, %.0265
  br i1 %i.jx, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  tail call void @lj_ir_rollback(ptr noundef nonnull %0, i32 noundef %.0265) #8
  store i8 %.sroa.0.0, ptr %i.k, align 2, !tbaa !9
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.jy = icmp eq i32 %.0.i258.fr, 0
  br i1 %i.jy, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.jz = load i32, ptr %i.n, align 4, !tbaa !76
  %.not245 = icmp eq i32 %i.jz, 0
  br i1 %.not245, label %lj_record_call.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ka = tail call i32 @lj_record_mm_lookup(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0)
  %.not246 = icmp eq i32 %i.ka, 0
  br i1 %.not246, label %lj_record_call.exit, label %.thread

bb.bd:                                            ; preds = %bb.ba
  %i.kb = icmp ult i32 %.0.i258.fr, 3
  %i.kc = mul nuw nsw i32 %.0.i258.fr, 16777217
  %i.kd = xor i32 %i.kc, 32767
  %spec.select = select i1 %i.kb, i32 %i.kd, i32 %.0215
  br label %lj_record_call.exit

bb.be:                                            ; preds = %bb.au
  %i.ke = load i64, ptr %1, align 8, !tbaa !9
  %i.kf = and i64 %i.ke, 140737488355327
  %i.kg = inttoptr i64 %i.kf to ptr
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 32
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !9  ; 3 uses
  %i.kj = inttoptr i64 %i.ki to ptr
  %i.kk = load i32, ptr %i.d, align 4, !tbaa !74  ; 2 uses
  %i.kl = icmp ult i32 %.mask, %.0265
  br i1 %i.kl, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void @lj_ir_rollback(ptr noundef nonnull %0, i32 noundef %.0265) #8
  store i8 %.sroa.0.0, ptr %i.k, align 2, !tbaa !9
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.km = load i64, ptr %i.ji, align 8, !tbaa !9
  %i.kn = icmp eq i64 %i.km, -1
  br i1 %i.kn, label %bb.bh, label %bb.bx

bb.bh:                                            ; preds = %bb.bg
  %i.ko = load i32, ptr %i.n, align 4, !tbaa !76
  %i.kp = icmp ne i32 %i.ko, 0
  %i.kq = icmp ne i64 %i.ki, 0
  %or.cond = select i1 %i.kp, i1 %i.kq, i1 false
  br i1 %or.cond, label %bb.bi, label %.critedge

bb.bi:                                            ; preds = %bb.bh
  %i.kr = load i64, ptr %i.o, align 8, !tbaa !71
  %i.ks = inttoptr i64 %i.kr to ptr
  %i.kt = tail call ptr @lj_tab_getstr(ptr noundef nonnull %i.kj, ptr noundef %i.ks) #8 ; 2 uses
  %.not237 = icmp eq ptr %i.kt, null
  br i1 %.not237, label %.critedge, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !9
  %.not239 = icmp eq i64 %i.ku, -1
  br i1 %.not239, label %.critedge, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.tr = trunc nuw nsw i32 %i.jc to i16
  %i.kv = shl nuw nsw i16 %.tr, 8
  %i.kw = or disjoint i16 %i.kv, 128
  br label %.sink.split

.critedge:                                        ; preds = %bb.bh, %bb.bi, %bb.bj
  %i.kx = icmp eq i8 %i.ja, 58
  br i1 %i.kx, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.critedge
  %i.ky = icmp eq ptr %i.ji, %i.l
  %i.kz = select i1 %i.ky, i16 2185, i16 2441
  %i.la = tail call i32 @lj_ir_kptr_(ptr noundef nonnull %0, i32 noundef 26, ptr noundef nonnull %i.l) #8
  %i.lb = trunc i32 %i.la to i16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bk, %bb.bl
  %.sink409 = phi i16 [ %i.kz, %bb.bl ], [ %i.kw, %bb.bk ]
  %.sink = phi i16 [ %i.lb, %bb.bl ], [ 0, %bb.bk ]
  store i16 %.sink409, ptr %i.h, align 4, !tbaa !9
  store i16 %i.iw, ptr %i.g, align 8, !tbaa !9
  store i16 %.sink, ptr %i.i, align 2, !tbaa !9
  %i.lc = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %.sink.split, %.critedge
  %i.ld = load i32, ptr %i.n, align 4, !tbaa !76
  %.not240 = icmp eq i32 %i.ld, 0
  br i1 %.not240, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.le = tail call i32 @lj_record_mm_lookup(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1)
  %.not241 = icmp eq i32 %i.le, 0
  br i1 %.not241, label %bb.bo, label %.thread

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.lf = lshr i32 %i.kk, 24
  %i.lg = and i32 %i.lf, 31
  %i.lh = add nsw i32 %i.lg, -4
  %i.li = icmp ult i32 %i.lh, 9
  %i.lj = and i32 %i.jj, 520093696
  %i.lk = icmp ne i32 %i.lj, 0
  %narrow.le = and i1 %i.lk, %i.li
  %i.ll = icmp eq ptr %i.ji, %i.l
  br i1 %i.ll, label %bb.bp, label %.thread271

bb.bp:                                            ; preds = %bb.bo
  %i.lm = load i32, ptr %i.d, align 4, !tbaa !74  ; 8 uses
  %i.ln = lshr i32 %i.lm, 24
  %i.lo = and i32 %i.ln, 31
  %i.lp = add nsw i32 %i.lo, -15
  %i.lq = icmp ult i32 %i.lp, 5
  br i1 %i.lq, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.lr = trunc i32 %i.lm to i16
  store i16 23310, ptr %i.h, align 4, !tbaa !9
  store i16 %i.lr, ptr %i.g, align 8, !tbaa !9
  store i16 467, ptr %i.i, align 2, !tbaa !9
  %i.ls = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %bb.bw

bb.br:                                            ; preds = %bb.bp
  %i.lt = and i32 %i.lm, 520093696
  %i.lu = icmp eq i32 %i.lt, 234881024
  br i1 %i.lu, label %bb.bs, label %bb.bw

bb.bs:                                            ; preds = %bb.br
  %i.lv = and i32 %i.lm, 32768
  %.not242.not = icmp eq i32 %i.lv, 0
  br i1 %.not242.not, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.lw = load i64, ptr %i.c, align 8, !tbaa !9
  %i.lx = icmp eq i64 %i.lw, -9223372036854775808
  br i1 %i.lx, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.ly = tail call i32 @lj_ir_knum_u64(ptr noundef nonnull %0, i64 noundef 0) #8
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bs
  %i.lz = trunc i32 %i.lm to i16                  ; 2 uses
  store i16 2190, ptr %i.h, align 4, !tbaa !9
  store i16 %i.lz, ptr %i.g, align 8, !tbaa !9
  store i16 %i.lz, ptr %i.i, align 2, !tbaa !9
  %i.ma = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.br, %bb.bt, %bb.bu, %bb.bv, %bb.bq
  %.0210 = phi i32 [ %i.ls, %bb.bq ], [ %i.ly, %bb.bu ], [ %i.lm, %bb.bt ], [ %i.lm, %bb.bv ], [ %i.lm, %bb.br ]
  %i.mb = load i32, ptr %i.a, align 8, !tbaa !49
  %i.mc = trunc i32 %i.mb to i16
  %i.md = trunc i32 %.0210 to i16
  store i16 15113, ptr %i.h, align 4, !tbaa !9
  store i16 %i.mc, ptr %i.g, align 8, !tbaa !9
  store i16 %i.md, ptr %i.i, align 2, !tbaa !9
  %i.me = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %.thread271

bb.bx:                                            ; preds = %bb.bg
  %i.mf = lshr i32 %i.kk, 24
  %i.mg = and i32 %i.mf, 31
  %i.mh = add nsw i32 %i.mg, -4
  %i.mi = icmp ult i32 %i.mh, 9
  %i.mj = and i32 %i.jj, 520093696
  %i.mk = icmp ne i32 %i.mj, 0
  %narrow.le332 = and i1 %i.mk, %i.mi             ; 3 uses
  %i.ml = trunc nuw nsw i32 %i.jc to i16
  %i.mm = tail call i32 @lj_opt_fwd_wasnonnil(ptr noundef nonnull %0, i16 noundef zeroext %i.ml, i32 noundef %.mask) #8
  %.not234 = icmp eq i32 %i.mm, 0
  br i1 %.not234, label %bb.by, label %.thread271

bb.by:                                            ; preds = %bb.bx
  %i.mn = icmp eq i8 %i.ja, 58
  br i1 %i.mn, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.mo = tail call i32 @lj_ir_kptr_(ptr noundef nonnull %0, i32 noundef 26, ptr noundef nonnull %i.l) #8
  %i.mp = trunc i32 %i.mo to i16
  store i16 2441, ptr %i.h, align 4, !tbaa !9
  store i16 %i.iw, ptr %i.g, align 8, !tbaa !9
  store i16 %i.mp, ptr %i.i, align 2, !tbaa !9
  %i.mq = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.mr = load i32, ptr %i.n, align 4, !tbaa !76
  %.not235 = icmp eq i32 %i.mr, 0
  br i1 %.not235, label %.thread271, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.not236 = icmp eq i64 %i.ki, 0
  br i1 %.not236, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ms = load i32, ptr %i.a, align 8, !tbaa !49
  %i.mt = trunc i32 %i.ms to i16
  store i16 17675, ptr %i.h, align 4, !tbaa !9
  store i16 %i.mt, ptr %i.g, align 8, !tbaa !9
  store i16 5, ptr %i.i, align 2, !tbaa !9
  %i.mu = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.mv = trunc i32 %i.mu to i16
  %i.mw = tail call i32 @lj_ir_knull(ptr noundef nonnull %0, i32 noundef 11) #8
  %i.mx = trunc i32 %i.mw to i16
  store i16 2187, ptr %i.h, align 4, !tbaa !9
  store i16 %i.mv, ptr %i.g, align 8, !tbaa !9
  store i16 %i.mx, ptr %i.i, align 2, !tbaa !9
  %i.my = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %.thread271

bb.cd:                                            ; preds = %bb.cb
  %i.mz = load i64, ptr %i.ji, align 8, !tbaa !9
  %i.na = ashr i64 %i.mz, 47                      ; 2 uses
  %i.nb = icmp ult i64 %i.na, -14
  %i.nc = trunc nsw i64 %i.na to i32
  %i.nd = xor i32 %i.nc, -1
  %.0.i = select i1 %i.nb, i32 14, i32 %i.nd
  %5 = shl nuw nsw i32 %i.jc, 8
  %6 = add nuw nsw i32 %.0.i, %5
  %7 = trunc nuw nsw i32 %6 to i16
  %8 = or disjoint i16 %7, 128
  store i16 %8, ptr %i.h, align 4, !tbaa !9
  store i16 %i.iw, ptr %i.g, align 8, !tbaa !9
  store i16 0, ptr %i.i, align 2, !tbaa !9
  %i.ne = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %.thread271

.thread271:                                       ; preds = %bb.bo, %bb.bw, %bb.bx, %bb.cc, %bb.cd, %bb.ca
  %.2214.shrunk = phi i1 [ false, %bb.bx ], [ %narrow.le332, %bb.ca ], [ %narrow.le332, %bb.cd ], [ %narrow.le332, %bb.cc ], [ %narrow.le, %bb.bo ], [ false, %bb.bw ]
  %.2209 = phi i32 [ %.5.i, %bb.bx ], [ %.5.i, %bb.ca ], [ %.5.i, %bb.cd ], [ %.5.i, %bb.cc ], [ %.5.i, %bb.bo ], [ %i.me, %bb.bw ]
  %i.nf = load i32, ptr %i.b, align 8, !tbaa !75  ; 3 uses
  %i.ng = lshr i32 %i.nf, 24
  %i.nh = and i32 %i.ng, 31                       ; 2 uses
  %i.ni = add nsw i32 %i.nh, -15
  %i.nj = icmp ult i32 %i.ni, 5
  br i1 %i.nj, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.thread271
  %i.nk = trunc i32 %i.nf to i16
  store i16 23310, ptr %i.h, align 4, !tbaa !9
  store i16 %i.nk, ptr %i.g, align 8, !tbaa !9
  store i16 467, ptr %i.i, align 2, !tbaa !9
  %i.nl = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 3 uses
  store i32 %i.nl, ptr %i.b, align 8, !tbaa !75
  %.pre369 = lshr i32 %i.nl, 24
  %.pre370 = and i32 %.pre369, 31
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.thread271
  %.pre-phi371 = phi i32 [ %.pre370, %bb.ce ], [ %i.nh, %.thread271 ]
  %i.nm = phi i32 [ %i.nl, %bb.ce ], [ %i.nf, %.thread271 ]
  %i.nn = shl nuw nsw i32 %i.jc, 8
  %i.no = or disjoint i32 %.pre-phi371, %i.nn
  %i.np = trunc nuw nsw i32 %i.no to i16
  %i.nq = or disjoint i16 %i.np, 2048
  %i.nr = trunc i32 %.2209 to i16
  %i.ns = trunc i32 %i.nm to i16
  store i16 %i.nq, ptr %i.h, align 4, !tbaa !9
  store i16 %i.nr, ptr %i.g, align 8, !tbaa !9
  store i16 %i.ns, ptr %i.i, align 2, !tbaa !9
  %i.nt = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br i1 %.2214.shrunk, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nu = load i32, ptr %i.b, align 8, !tbaa !75
  %i.nv = lshr i32 %i.nu, 24
  %i.nw = and i32 %i.nv, 31
  %i.nx = add nsw i32 %i.nw, -4
  %i.ny = icmp ult i32 %i.nx, 9
  br i1 %i.ny, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.nz = load i32, ptr %i.a, align 8, !tbaa !49
  %i.oa = trunc i32 %i.nz to i16
  store i16 22528, ptr %i.h, align 4, !tbaa !9
  store i16 %i.oa, ptr %i.g, align 8, !tbaa !9
  store i16 0, ptr %i.i, align 2, !tbaa !9
  %i.ob = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.oc = load i32, ptr %i.d, align 4, !tbaa !74  ; 3 uses
  %i.od = and i32 %i.oc, 520093696
  %i.oe = icmp eq i32 %i.od, 67108864
  br i1 %i.oe, label %bb.cj, label %nommstr.exit.thread278

bb.cj:                                            ; preds = %bb.ci
  %i.of = and i32 %i.oc, 32768
  %.not.not.i262 = icmp eq i32 %i.of, 0
  br i1 %.not.not.i262, label %bb.ck, label %nommstr.exit.thread

bb.ck:                                            ; preds = %bb.cj
  %i.og = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.oh = and i32 %i.oc, 32767
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %i.oi
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !9  ; 6 uses
  %i.om = getelementptr inbounds i8, ptr %0, i64 -312
  %i.on = load i64, ptr %i.om, align 8, !tbaa !71
  %i.oo = icmp eq i64 %i.on, %i.ol
  br i1 %i.oo, label %nommstr.exit.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.op = load i64, ptr %i.o, align 8, !tbaa !71
  %i.oq = icmp eq i64 %i.op, %i.ol
  br i1 %i.oq, label %nommstr.exit.thread, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.or = getelementptr inbounds i8, ptr %0, i64 -296
  %i.os = load i64, ptr %i.or, align 8, !tbaa !71
  %i.ot = icmp eq i64 %i.os, %i.ol
  br i1 %i.ot, label %nommstr.exit.thread, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ou = getelementptr inbounds i8, ptr %0, i64 -288
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !71
  %i.ow = icmp eq i64 %i.ov, %i.ol
  br i1 %i.ow, label %nommstr.exit.thread, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ox = getelementptr inbounds i8, ptr %0, i64 -280
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !71
  %i.oz = icmp eq i64 %i.oy, %i.ol
  br i1 %i.oz, label %nommstr.exit.thread, label %nommstr.exit

nommstr.exit:                                     ; preds = %bb.co
  %i.pa = getelementptr inbounds i8, ptr %0, i64 -272
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !71
  %.not285 = icmp eq i64 %i.pb, %i.ol
  br i1 %.not285, label %nommstr.exit.thread, label %nommstr.exit.thread278

nommstr.exit.thread:                              ; preds = %bb.co, %bb.cm, %bb.cl, %bb.cn, %bb.ck, %bb.cj, %nommstr.exit
  %i.pc = load i32, ptr %i.a, align 8, !tbaa !49
  %i.pd = trunc i32 %i.pc to i16
  store i16 15881, ptr %i.h, align 4, !tbaa !9
  store i16 %i.pd, ptr %i.g, align 8, !tbaa !9
  store i16 10, ptr %i.i, align 2, !tbaa !9
  %i.pe = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.pf = trunc i32 %i.pe to i16
  %i.pg = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef 0) #8
  %i.ph = trunc i32 %i.pg to i16
  store i16 19728, ptr %i.h, align 4, !tbaa !9
  store i16 %i.pf, ptr %i.g, align 8, !tbaa !9
  store i16 %i.ph, ptr %i.i, align 2, !tbaa !9
  %i.pi = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %nommstr.exit.thread278

nommstr.exit.thread278:                           ; preds = %bb.ci, %nommstr.exit, %nommstr.exit.thread
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 1, ptr %i.pj, align 1, !tbaa !40
  br label %lj_record_call.exit

lj_record_call.exit:                              ; preds = %bb.bc, %bb.bb, %bb.aa, %bb.ab, %lj_record_constify.exit, %bb.bd, %nommstr.exit.thread278, %bb.h, %bb.f
  %.7 = phi i32 [ 0, %nommstr.exit.thread278 ], [ 0, %bb.f ], [ 0, %bb.h ], [ %spec.select, %bb.bd ], [ 32767, %bb.ab ], [ 32767, %bb.bc ], [ 32767, %bb.bb ], [ 32767, %bb.aa ], [ %.0.i260, %lj_record_constify.exit ]
  ret i32 %.7
}

declare hidden void @lj_ir_rollback(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare hidden i32 @lj_ir_knum_u64(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden i32 @lj_opt_fwd_wasnonnil(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 1, 3) i32 @lj_record_next(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !9
  %i.b = and i64 %i.a, 140737488355327
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !9    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !79   ; 4 uses
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !126
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = zext i32 %i.e to i64
  %wide.trip.count.i = zext i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.l, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9    ; 2 uses
  %.not24.not.i = icmp eq i64 %i.n, -1
  br i1 %.not24.not.i, label %bb.d, label %bb.c, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.o = ashr i64 %i.n, 47                        ; 2 uses
  %i.p = icmp ult i64 %i.o, -14
  %i.q = trunc nsw i64 %i.o to i32
  %i.r = xor i32 %i.q, -1
  %i.s = shl nuw nsw i32 %i.r, 8
  %i.t = or disjoint i32 %i.s, 14
  %i.u = select i1 %i.p, i32 3598, i32 %i.t
  br label %rec_next_types.exit

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !124

._crit_edge.i:                                    ; preds = %bb.d, %bb.a
  %.019.lcssa.i = phi i32 [ %i.e, %bb.a ], [ %i.g, %bb.d ]
  %i.v = sub nuw i32 %.019.lcssa.i, %i.g          ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.x = load i32, ptr %i.w, align 4, !tbaa !80   ; 2 uses
  %.not40.i = icmp ugt i32 %i.v, %i.x
  br i1 %.not40.i, label %rec_next_types.exit, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %._crit_edge.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !81
  %i.aa = inttoptr i64 %i.z to ptr
end_hunk_1
begin_hunk_2_@rec_for:bb.a
  %i.dq = xor i32 %i.dp, 32767
  %.0.i.1 = select i1 %i.do, i32 %i.dq, i32 %i.dn
  %i.dr = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.cx
  store i32 %.0.i.1, ptr %i.ds, align 4, !tbaa !37
  %.pre113 = load i32, ptr %i.cv, align 4, !tbaa !37
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %fori_conv.exit
  %i.dt = phi i32 [ %.pre113, %bb.t ], [ %i.cw, %fori_conv.exit ] ; 3 uses
  %i.du = and i32 %i.dt, 520093696
  %i.dv = icmp eq i32 %i.du, 67108864
  br i1 %i.dv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dw = trunc i32 %i.dt to i16
  store i16 24206, ptr %i.bj, align 4, !tbaa !9
  store i16 %i.dw, ptr %i.bi, align 8, !tbaa !9
  store i16 0, ptr %i.bk, align 2, !tbaa !9
  %i.dx = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 2 uses
  store i32 %i.dx, ptr %i.cv, align 4, !tbaa !37
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dy = phi i32 [ %i.dx, %bb.v ], [ %i.dt, %bb.u ] ; 5 uses
  br i1 %i.bl, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dz = and i32 %i.dy, 520093696
  %i.ea = icmp eq i32 %i.dz, 234881024
  br i1 %i.ea, label %fori_conv.exit.1, label %.sink.split.i.1

bb.y:                                             ; preds = %bb.w
  %i.eb = lshr i32 %i.dy, 24
  %i.ec = and i32 %i.eb, 31
  %i.ed = add nsw i32 %i.ec, -15
  %i.ee = icmp ult i32 %i.ed, 5
  br i1 %i.ee, label %fori_conv.exit.1, label %.sink.split.i.1

.sink.split.i.1:                                  ; preds = %bb.y, %bb.x
  %i.ef = phi <2 x i16> [ <i16 12910, i16 23443>, %bb.y ], [ <i16 467, i16 23310>, %bb.x ]
  %i.eg = trunc i32 %i.dy to i16
  store i16 %i.eg, ptr %i.bi, align 8, !tbaa !9
  store <2 x i16> %i.ef, ptr %i.bk, align 2, !tbaa !9
  %i.eh = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %fori_conv.exit.1

fori_conv.exit.1:                                 ; preds = %.sink.split.i.1, %bb.y, %bb.x
  %.0.i101.1 = phi i32 [ %i.dy, %bb.x ], [ %i.dy, %bb.y ], [ %i.eh, %.sink.split.i.1 ]
  store i32 %.0.i101.1, ptr %i.cv, align 4, !tbaa !37
  %i.ei = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !37 ; 2 uses
  %.not100.2 = icmp eq i32 %i.ej, 0
  br i1 %.not100.2, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %fori_conv.exit.1
  %i.ek = add nuw nsw i64 %i.h, 2                 ; 3 uses
  %i.el = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !46
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.ek
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !9
  %i.eq = ashr i64 %i.ep, 47                      ; 2 uses
  %i.er = icmp ult i64 %i.eq, -14
  %i.es = trunc nsw i64 %i.eq to i32
  %i.et = xor i32 %i.es, -1
  %.0.i.i.2 = select i1 %i.er, i32 14, i32 %i.et  ; 3 uses
  %i.eu = trunc nuw nsw i32 %.0.i.i.2 to i16
  %i.ev = or disjoint i16 %i.eu, 18304
  %i.ew = load i32, ptr %i.bh, align 8, !tbaa !35
  %i.ex = trunc nuw nsw i64 %i.ek to i32
  %i.ey = add nsw i32 %i.ew, %i.ex
  %i.ez = trunc i32 %i.ey to i16
  store i16 %i.ev, ptr %i.bj, align 4, !tbaa !9
  store i16 %i.ez, ptr %i.bi, align 8, !tbaa !9
  store i16 4, ptr %i.bk, align 2, !tbaa !9
  %i.fa = tail call i32 @lj_ir_emit(ptr noundef nonnull %0) #8
  %i.fb = icmp samesign ult i32 %.0.i.i.2, 3
  %i.fc = mul nuw nsw i32 %.0.i.i.2, 16777217
  %i.fd = xor i32 %i.fc, 32767
  %.0.i.2 = select i1 %i.fb, i32 %i.fd, i32 %i.fa
  %i.fe = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.ek
  store i32 %.0.i.2, ptr %i.ff, align 4, !tbaa !37
  %.pre114 = load i32, ptr %i.ei, align 4, !tbaa !37
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %fori_conv.exit.1
  %i.fg = phi i32 [ %.pre114, %bb.z ], [ %i.ej, %fori_conv.exit.1 ] ; 3 uses
  %i.fh = and i32 %i.fg, 520093696
  %i.fi = icmp eq i32 %i.fh, 67108864
  br i1 %i.fi, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fj = trunc i32 %i.fg to i16
  store i16 24206, ptr %i.bj, align 4, !tbaa !9
  store i16 %i.fj, ptr %i.bi, align 8, !tbaa !9
  store i16 0, ptr %i.bk, align 2, !tbaa !9
  %i.fk = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 2 uses
  store i32 %i.fk, ptr %i.ei, align 4, !tbaa !37
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fl = phi i32 [ %i.fk, %bb.ab ], [ %i.fg, %bb.aa ] ; 5 uses
  br i1 %i.bl, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fm = and i32 %i.fl, 520093696
  %i.fn = icmp eq i32 %i.fm, 234881024
  br i1 %i.fn, label %fori_conv.exit.2, label %.sink.split.i.2

bb.ae:                                            ; preds = %bb.ac
  %i.fo = lshr i32 %i.fl, 24
  %i.fp = and i32 %i.fo, 31
  %i.fq = add nsw i32 %i.fp, -15
  %i.fr = icmp ult i32 %i.fq, 5
  br i1 %i.fr, label %fori_conv.exit.2, label %.sink.split.i.2

.sink.split.i.2:                                  ; preds = %bb.ae, %bb.ad
  %i.fs = phi <2 x i16> [ <i16 12910, i16 23443>, %bb.ae ], [ <i16 467, i16 23310>, %bb.ad ]
  %i.ft = trunc i32 %i.fl to i16
  store i16 %i.ft, ptr %i.bi, align 8, !tbaa !9
  store <2 x i16> %i.fs, ptr %i.bk, align 2, !tbaa !9
  %i.fu = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %fori_conv.exit.2

fori_conv.exit.2:                                 ; preds = %.sink.split.i.2, %bb.ae, %bb.ad
  %.0.i101.2 = phi i32 [ %i.fl, %bb.ad ], [ %i.fl, %bb.ae ], [ %i.fu, %.sink.split.i.2 ] ; 2 uses
  store i32 %.0.i101.2, ptr %i.ei, align 4, !tbaa !37
  %i.fv = load i32, ptr %i.l, align 4, !tbaa !37
  %i.fw = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !37
  %i.fx = load i32, ptr %i.cv, align 4, !tbaa !37 ; 2 uses
  %i.fy = getelementptr i8, ptr %i.i, i64 20
  %.val = load i32, ptr %i.fy, align 4, !tbaa !9
  %i.fz = icmp sgt i32 %.val, -1
  %i.ga = zext i1 %i.fz to i32
  tail call fastcc void @rec_for_check(ptr noundef nonnull %0, i32 noundef %i.bg, i32 noundef %i.ga, i32 noundef %i.fx, i32 noundef %.0.i101.2, i32 noundef 1)
  %i.gb = trunc i32 %i.fx to i16
  br label %bb.af

bb.af:                                            ; preds = %fori_conv.exit.2, %bb.j
  %.199 = phi i16 [ %.098.in, %bb.j ], [ %i.gb, %fori_conv.exit.2 ]
  %.1 = phi i32 [ %.097, %bb.j ], [ %i.bg, %fori_conv.exit.2 ]
  %i.gc = load double, ptr %i.q, align 8, !tbaa !9 ; 4 uses
  %i.gd = load double, ptr %i.i, align 8, !tbaa !9 ; 2 uses
  %i.ge = load double, ptr %i.v, align 8          ; 4 uses
  %i.gf = fadd double %i.gd, %i.ge
  %.0.i102 = select i1 %.not, double %i.gd, double %i.gf ; 4 uses
  %i.gg = bitcast double %i.ge to i64
  %i.gh = icmp slt i64 %i.gg, 0
  br i1 %i.gh, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gi = fcmp ugt double %.0.i102, %i.gc
  br i1 %i.gi, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gj = tail call double @llvm.fmuladd.f64(double %i.ge, double 2.000000e+00, double %.0.i102)
  %i.gk = fcmp ogt double %i.gj, %i.gc
  br label %rec_for_iter.exit

bb.ai:                                            ; preds = %bb.af
  %i.gl = fcmp ugt double %i.gc, %.0.i102
  br i1 %i.gl, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.ge, double 2.000000e+00, double %.0.i102)
  %i.gn = fcmp olt double %i.gm, %i.gc
  br label %rec_for_iter.exit

bb.ak:                                            ; preds = %bb.ag, %bb.ai
  %.0103.ph = phi i32 [ 0, %bb.ai ], [ 768, %bb.ag ]
  %i.go = add nuw nsw i32 %i.c, 4
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !36
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.al

rec_for_iter.exit:                                ; preds = %bb.aj, %bb.ah
  %.sink125 = phi i1 [ %i.gn, %bb.aj ], [ %i.gk, %bb.ah ]
  %.0103 = phi i32 [ 256, %bb.aj ], [ 512, %bb.ah ]
  %i.gr = select i1 %.sink125, i32 1, i32 2
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %i.c, ptr %i.gs, align 4, !tbaa !36
  %i.gt = load i32, ptr %1, align 4, !tbaa !37
  %i.gu = lshr i32 %i.gt, 16
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr [4 x i8], ptr %1, i64 %i.gv
  %i.gx = getelementptr i8, ptr %i.gw, i64 -131068
  br label %bb.al

bb.al:                                            ; preds = %rec_for_iter.exit, %bb.ak
  %.sink126 = phi ptr [ %i.gx, %rec_for_iter.exit ], [ %i.gq, %bb.ak ]
  %i.gy = phi i1 [ false, %rec_for_iter.exit ], [ true, %bb.ak ]
  %.021.i108 = phi i32 [ %i.gr, %rec_for_iter.exit ], [ 0, %bb.ak ]
  %.0103106 = phi i32 [ %.0103, %rec_for_iter.exit ], [ %.0103.ph, %bb.ak ]
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sink126, ptr %i.gz, align 8, !tbaa !56
  tail call void @lj_snap_add(ptr noundef nonnull %0) #8
  %i.ha = or i32 %.0103106, %.1
  %i.hb = trunc i32 %i.ha to i16
  %i.hc = or i16 %i.hb, 128
  %i.hd = load i32, ptr %i.l, align 4, !tbaa !37
  %i.he = trunc i32 %i.hd to i16
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.hc, ptr %i.hg, align 4, !tbaa !9
  store i16 %i.he, ptr %i.hf, align 8, !tbaa !9
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %.199, ptr %i.hh, align 2, !tbaa !9
  %i.hi = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br i1 %i.gy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %i.c, ptr %i.hj, align 4, !tbaa !36
  %i.hk = load i32, ptr %1, align 4, !tbaa !37
  %i.hl = lshr i32 %i.hk, 16
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr [4 x i8], ptr %1, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hn, i64 -131068
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.hp = add nuw nsw i32 %i.c, 4
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !36
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sink = phi ptr [ %i.ho, %bb.am ], [ %i.hr, %bb.an ]
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sink, ptr %i.hs, align 8, !tbaa !56
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 1, ptr %i.ht, align 1, !tbaa !40
  ret i32 %.021.i108
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rec_loop_interp(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3016
  %i.b = load i32, ptr %i.a, align 8, !tbaa !57
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3020
  %i.e = load i32, ptr %i.d, align 4, !tbaa !58
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.k = load i32, ptr %i.j, align 4, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.m = load i32, ptr %i.l, align 8, !tbaa !32
  %i.n = sub i32 0, %i.m
  %i.o = icmp eq i32 %i.k, %i.n
  br i1 %i.o, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load i32, ptr %i.p, align 8, !tbaa !59
  %i.r = and i32 %i.q, 255
  %i.s = icmp eq i32 %i.r, 70
  br i1 %i.s, label %bb.z, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp eq i32 %2, 0
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 8) #9
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = load i16, ptr %i.u, align 8, !tbaa !30
  %i.w = zext i16 %i.v to i32
  tail call void @lj_record_stop(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %i.w)
  br label %bb.z

bb.i:                                             ; preds = %bb.d, %bb.c
  %.not29 = icmp eq i32 %2, 0
  br i1 %.not29, label %bb.z, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load i32, ptr %1, align 4, !tbaa !37
  %.mask = and i32 %i.x, -65536
  %.not30 = icmp eq i32 %.mask, 2147418112
  br i1 %.not30, label %innerloopleft.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1824 ; 4 uses
  br label %bb.p

bb.l:                                             ; preds = %bb.p
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.013.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !174
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = icmp eq ptr %1, %i.ac
  br i1 %i.ad, label %.split.loop.exit45, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.013.i ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !174
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = icmp eq ptr %1, %i.ah
  br i1 %i.ai, label %.split.loop.exit43, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.013.i ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !174
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = icmp eq ptr %1, %i.am
  br i1 %i.an, label %.split.loop.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = add nuw nsw i64 %.013.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ao, 64
  br i1 %exitcond.not.i.3, label %.loopexit, label %bb.p, !llvm.loop !172

bb.p:                                             ; preds = %bb.o, %bb.k
  %.013.i = phi i64 [ 0, %bb.k ], [ %i.ao, %bb.o ] ; 5 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.013.i ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !174
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = icmp eq ptr %1, %i.ar
  br i1 %i.as, label %.split.loop.exit47, label %bb.l

.split.loop.exit:                                 ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  br label %.split.loop.exit47

.split.loop.exit43:                               ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  br label %.split.loop.exit47

.split.loop.exit45:                               ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %.split.loop.exit47

.split.loop.exit47:                               ; preds = %bb.p, %.split.loop.exit45, %.split.loop.exit43, %.split.loop.exit
  %.lcssa = phi ptr [ %i.av, %.split.loop.exit45 ], [ %i.au, %.split.loop.exit43 ], [ %i.at, %.split.loop.exit ], [ %i.ap, %bb.p ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.lcssa, i64 10
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !175
  %i.ay = and i16 %i.ax, -2
  %switch.i = icmp eq i16 %i.ay, 8
  br i1 %switch.i, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %.split.loop.exit47
  %i.az = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !176
  %i.bb = icmp ugt i16 %i.ba, 143
  br i1 %i.bb, label %innerloopleft.exit, label %.loopexit

.loopexit:                                        ; preds = %bb.o, %.split.loop.exit47, %bb.q
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 9) #9
  unreachable

innerloopleft.exit:                               ; preds = %bb.q, %bb.j
  %.not32 = icmp eq i32 %2, 1
  br i1 %.not32, label %bb.t, label %bb.r

bb.r:                                             ; preds = %innerloopleft.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !100 ; 2 uses
  %.not33 = icmp eq i32 %i.bd, 0
  br i1 %.not33, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !82
  %i.bg = sub i32 %i.bf, %i.bd
  %i.bh = icmp ugt i32 %i.bg, 24
  br i1 %i.bh, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %innerloopleft.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !54 ; 2 uses
  %i.bk = add nsw i32 %i.bj, -1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !54
  %i.bl = icmp slt i32 %i.bj, 1
  br i1 %i.bl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 10) #9
  unreachable

end_hunk_2
begin_hunk_3_@rec_mm_concat_cp:bb.a
  %i.cz = and i64 %i.cy, 4294967295
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.da, i64 48, i1 false)
  store i32 %i.cn, ptr %i.by, align 4, !tbaa !37
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dc = getelementptr inbounds i8, ptr %i.b, i64 -624
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = or i64 %i.dd, -703687441776640
  store i64 %i.de, ptr %i.db, align 8, !tbaa !9
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !43
  %.phi.trans.insert106 = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre107 = load ptr, ptr %.phi.trans.insert106, align 8, !tbaa !46
  br label %bb.o

bb.n:                                             ; preds = %bb.e, %._crit_edge
  %i.df = add i32 %i.f, -1                        ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !36
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !43
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !46 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.i
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !9
  store i64 %i.dn, ptr %i.dj, align 8, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.pre-phi = phi i32 [ %i.cv, %bb.m ], [ %i.df, %bb.n ]
  %i.do = phi ptr [ %.pre107, %bb.m ], [ %i.dl, %bb.n ]
  %.180 = phi ptr [ %i.by, %bb.m ], [ %i.j, %bb.n ] ; 2 uses
  %i.dp = zext i32 %.pre-phi to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !9
  store i64 %i.dr, ptr %3, align 8, !tbaa !9
  %i.ds = getelementptr inbounds i8, ptr %.180, i64 -4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !37
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.dt, ptr %i.du, align 8, !tbaa !49
  %i.dv = load i32, ptr %.180, align 4, !tbaa !37
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !74
  call fastcc void @rec_mm_arith(ptr noundef nonnull %i.b, ptr noundef %3, i32 noundef 8)
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.o
  %.sink = phi i32 [ 0, %bb.o ], [ %i.cn, %bb.l ]
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %.sink, ptr %i.dx, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret ptr null
}

declare hidden void @lj_snap_shrink(ptr noundef) local_unnamed_addr #2

declare hidden i32 @lj_debug_line(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @rec_mm_callcomp(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, 256) %2) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 1
  %.not = icmp eq i32 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9
  %i.h = and i64 %i.g, 140737488355327
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !9
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -93
  %i.n = load i8, ptr %i.m, align 1, !tbaa !60    ; 2 uses
  %i.o = zext i8 %i.n to i32                      ; 4 uses
  %i.p = select i1 %.not, i64 ptrtoint (ptr @lj_cont_condt to i64), i64 ptrtoint (ptr @lj_cont_condf to i64)
  %i.q = tail call i32 @lj_ir_k64(ptr noundef nonnull %0, i32 noundef 28, i64 noundef %i.p) #8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42   ; 3 uses
  %i.t = zext i8 %i.n to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  store i32 %i.q, ptr %i.u, align 4, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 131072, ptr %i.v, align 4, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 4 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !31
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !36  ; 3 uses
  %i.ab = icmp ult i32 %i.aa, %i.o
  br i1 %i.ab, label %.lr.ph.preheader.i, label %rec_mm_prep.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %scevgep.i = getelementptr i8, ptr %i.s, i64 %i.ad
  %i.ae = xor i32 %i.aa, -1
  %i.af = add nsw i32 %i.ae, %i.o
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ai, i1 false), !tbaa !37
  br label %rec_mm_prep.exit

rec_mm_prep.exit:                                 ; preds = %bb.a, %.lr.ph.preheader.i
  %i.aj = add nuw nsw i32 %i.o, 2                 ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ak ; 3 uses
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ak ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !50
  store i32 %i.ar, ptr %i.al, align 4, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !75
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 %i.at, ptr %i.au, align 4, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !74
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !9
  store i64 %i.az, ptr %i.ap, align 8, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !9
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !9
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !9
  tail call fastcc void @rec_call_setup(ptr noundef nonnull %0, i32 noundef %i.aj, i64 noundef 2), !inline_history !77
  %i.bg = load i32, ptr %i.w, align 4, !tbaa !31
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.w, align 4, !tbaa !31
  %i.bi = add nuw nsw i32 %i.o, 4                 ; 2 uses
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !42
  %i.bk = zext nneg i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  store ptr %i.bl, ptr %i.r, align 8, !tbaa !42
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !35
  %i.bo = add i32 %i.bn, %i.bi                    ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !35
  %i.bp = load i32, ptr %i.z, align 4, !tbaa !36
  %i.bq = add i32 %i.bp, %i.bo
  %i.br = icmp ugt i32 %i.bq, 249
  br i1 %i.br, label %bb.b, label %lj_record_call.exit

bb.b:                                             ; preds = %rec_mm_prep.exit
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 3) #9, !inline_history !77
  unreachable

lj_record_call.exit:                              ; preds = %rec_mm_prep.exit
  ret void
}

declare hidden void @lj_cont_condf() #2

declare hidden void @lj_cont_condt() #2

declare hidden i32 @lj_ir_kint64(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden i32 @lj_ffrecord_select_mode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @lj_meta_for(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @lj_opt_narrow_forl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @rec_for_check(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %4 to i16                      ; 4 uses
  %i.b = and i32 %4, 32768
  %.not.not = icmp eq i32 %i.b, 0
  br i1 %.not.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %1, 19                       ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @lj_ir_kint(ptr noundef %0, i32 noundef 0) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i32 @lj_ir_knum_u64(ptr noundef %0, i64 noundef 0) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = phi i32 [ %i.d, %bb.c ], [ %i.e, %bb.d ]
  %.not.not50 = icmp eq i32 %2, 0
  %i.g = shl nuw nsw i32 %2, 8
  %i.h = or i32 %i.g, %1
  %i.i = trunc i32 %i.h to i16
  %i.j = or i16 %i.i, 128
  %i.k = trunc i32 %i.f to i16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 5 uses
  store i16 %i.j, ptr %i.m, align 4, !tbaa !9
  store i16 %i.a, ptr %i.l, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 5 uses
  store i16 %i.k, ptr %i.n, align 2, !tbaa !9
  %i.o = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 0 uses
  %i.p = icmp ne i32 %5, 0
  %or.cond = and i1 %i.c, %i.p
  br i1 %or.cond, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.q = and i32 %3, 32768
  %.not.not51 = icmp eq i32 %i.q, 0
  br i1 %.not.not51, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38
  %.mask = and i32 %3, 32767
  %i.t = zext nneg i32 %.mask to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 8, !tbaa !9    ; 4 uses
  br i1 %.not.not50, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.x = sub nuw nsw i32 2147483647, %i.v
  %i.y = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.x) #8
  %i.z = trunc i32 %i.y to i16
  store i16 659, ptr %i.m, align 4, !tbaa !9
  store i16 %i.a, ptr %i.l, align 8, !tbaa !9
  store i16 %i.z, ptr %i.n, align 2, !tbaa !9
  br label %.sink.split

bb.j:                                             ; preds = %bb.g
  %i.aa = icmp slt i32 %i.v, 0
  br i1 %i.aa, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ab = sub nsw i32 -2147483648, %i.v
  %i.ac = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.ab) #8
  %i.ad = trunc i32 %i.ac to i16
  store i16 403, ptr %i.m, align 4, !tbaa !9
  store i16 %i.a, ptr %i.l, align 8, !tbaa !9
  store i16 %i.ad, ptr %i.n, align 2, !tbaa !9
  br label %.sink.split

bb.l:                                             ; preds = %bb.f
  %i.ae = trunc i32 %3 to i16
  store i16 13715, ptr %i.m, align 4, !tbaa !9
  store i16 %i.a, ptr %i.l, align 8, !tbaa !9
  store i16 %i.ae, ptr %i.n, align 2, !tbaa !9
  %i.af = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.ag = trunc i32 %i.af to i16
  store i16 4627, ptr %i.m, align 4, !tbaa !9
  store i16 %i.ag, ptr %i.l, align 8, !tbaa !9
  store i16 0, ptr %i.n, align 2, !tbaa !9
  br label %.sink.split

bb.m:                                             ; preds = %bb.a
  %i.ah = icmp eq i32 %5, 0
  %i.ai = icmp ne i32 %1, 19
  %or.cond3.not57 = or i1 %i.ai, %i.ah
  %i.aj = and i32 %3, 32768
  %.not.not52 = icmp eq i32 %i.aj, 0
  %or.cond54 = or i1 %.not.not52, %or.cond3.not57
  br i1 %or.cond54, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = trunc i32 %3 to i16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !38
  %.mask53 = and i32 %4, 32767
  %i.an = zext nneg i32 %.mask53 to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !9
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %i.aq = select i1 %.not, i32 -2147483648, i32 2147483647
  %i.ar = sub nsw i32 %i.aq, %i.ap
  %i.as = select i1 %.not, i16 403, i16 659
  %i.at = tail call i32 @lj_ir_kint(ptr noundef %0, i32 noundef %i.ar) #8
  %i.au = trunc i32 %i.at to i16
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.as, ptr %i.aw, align 4, !tbaa !9
  store i16 %i.ak, ptr %i.av, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.au, ptr %i.ax, align 2, !tbaa !9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.i, %bb.k, %bb.l
  %i.ay = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.e, %bb.j, %bb.h, %bb.m
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nounwind uwtable
define internal fastcc void @check_call_unroll(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9
  %i.g = and i64 %i.f, 140737488355327
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.l = load i32, ptr %i.k, align 4, !tbaa !31   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 61
  %i.p = load i8, ptr %i.o, align 1, !tbaa !52
  %i.q = shl i8 %i.p, 6
  %sext = ashr i8 %i.q, 7
  %i.r = sext i8 %sext to i32
  %spec.select = add nsw i32 %i.l, %i.r           ; 2 uses
  %i.s = icmp sgt i32 %spec.select, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.t = getelementptr inbounds i8, ptr %i.d, i64 -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.047 = phi i32 [ %spec.select44, %bb.d ], [ 0, %.lr.ph.preheader ]
  %.13846 = phi i32 [ %i.av, %bb.d ], [ %spec.select, %.lr.ph.preheader ]
  %.03945 = phi ptr [ %i.am, %bb.d ], [ %i.t, %.lr.ph.preheader ] ; 3 uses
  %i.u = load i64, ptr %.03945, align 8, !tbaa !9 ; 4 uses
  %i.v = and i64 %i.u, 7
  %i.w = icmp eq i64 %i.v, 2
  %i.x = sext i1 %i.w to i32
  %i.y = and i64 %i.u, 3
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.aa = inttoptr i64 %i.u to ptr
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !37
  %i.ad = lshr i32 %i.ac, 8
  %i.ae = and i32 %i.ad, 255
  %i.af = add nuw nsw i32 %i.ae, 2
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %.03945, i64 %i.ah
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.aj = and i64 %i.u, -8
  %i.ak = sub i64 0, %i.aj
  %i.al = getelementptr inbounds i8, ptr %.03945, i64 %i.ak
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.am = phi ptr [ %i.ai, %bb.b ], [ %i.al, %bb.c ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !9
  %i.ap = and i64 %i.ao, 140737488355327
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !9
  %i.at = icmp eq i64 %i.as, %i.j
  %i.au = zext i1 %i.at to i32
  %spec.select44 = add nuw nsw i32 %.047, %i.au   ; 2 uses
  %spec.select43 = add nsw i32 %.13846, -1
  %i.av = add nsw i32 %spec.select43, %i.x        ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !205

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select44, %bb.d ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !56 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !70
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !53
  %i.be = add nsw i32 %i.bd, %.0.lcssa
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1684
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !37
  %i.bh = icmp sgt i32 %i.be, %i.bg
end_hunk_3
