Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/restart?download=true
inline.NumInlined: 24
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"stabilizing\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"reached stabilization limit %ld after %ld conflicts\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"new stabilization limit %ld at conflicts interval %ld\00", align 1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal11stabilizingEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %i.b = load i32, ptr %i.a, align 8, !tbaa !167
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !155, !range !156, !noundef !157 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %i.g = load i32, ptr %i.f, align 8
  %.not6 = icmp ne i32 %i.g, 0
  %or.cond.not = select i1 %i.e, i1 %.not6, i1 false
  br i1 %or.cond.not, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3928 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !158
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2912 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !168
  %.not7 = icmp slt i64 %i.i, %i.k
  br i1 %.not7, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %1 = shl nuw nsw i8 %i.d, 5
  %2 = xor i8 %1, 125
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %0, i8 noundef signext %2, i32 noundef 0)
  %i.l = load i8, ptr %i.c, align 4, !tbaa !155, !range !156, !noundef !157
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7248
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !159  ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 3608
  %i.q = load i32, ptr %i.p, align 8, !tbaa !160  ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 6800
  %i.s = load i32, ptr %i.r, align 8, !tbaa !169
  %.not9 = icmp sgt i32 %i.s, %i.q
  br i1 %.not9, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 6768
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 3620
  %i.v = load i32, ptr %i.u, align 4, !tbaa !161
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.o)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

bb.h:                                             ; preds = %bb.f
  %i.x = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.o)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

_ZN7CaDiCaL8Internal4timeEv.exit:                 ; preds = %bb.g, %bb.h
  %i.y = phi double [ %i.w, %bb.g ], [ %i.x, %bb.h ]
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.o, ptr noundef nonnull align 8 dereferenceable(36) %i.t, double noundef %i.y)
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 7040
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !170
  %.not8 = icmp sgt i32 %i.aa, %i.q
  br i1 %.not8, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 7008
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 3620
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !161
  %.not.i17 = icmp eq i32 %i.ad, 0
  br i1 %.not.i17, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.o)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit18

bb.l:                                             ; preds = %bb.j
  %i.af = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.o)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit18

_ZN7CaDiCaL8Internal4timeEv.exit18:               ; preds = %bb.k, %bb.l
  %i.ag = phi double [ %i.ae, %bb.k ], [ %i.af, %bb.l ]
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.o, ptr noundef nonnull align 8 dereferenceable(36) %i.ab, double noundef %i.ag)
  br label %bb.m

bb.m:                                             ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit18, %bb.i, %_ZN7CaDiCaL8Internal4timeEv.exit, %bb.e
  %i.ah = load i8, ptr %i.c, align 4, !tbaa !155, !range !156, !noundef !157 ; 2 uses
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = xor i8 %i.ah, 1
  store i8 %i.aj, ptr %i.c, align 4, !tbaa !155
  br i1 %i.ai, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4536 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !171
  %i.am = add nsw i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !171
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 7248 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !159 ; 2 uses
  %.not10 = icmp eq ptr %i.ao, null
  br i1 %.not10, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4536
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !171
  %i.ar = load i64, ptr %i.j, align 8, !tbaa !168
  %i.as = load i64, ptr %i.h, align 8, !tbaa !158
  tail call void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.ao, ptr noundef nonnull @.str, i64 noundef %i.aq, ptr noundef nonnull @.str.1, i64 noundef %i.ar, i64 noundef %i.as)
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3740
  %i.au = load i32, ptr %i.at, align 4, !tbaa !172
  %i.av = sitofp i32 %i.au to double
  %i.aw = fmul nnan double %i.av, 1.000000e-02
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3064 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !173
  %i.az = sitofp i64 %i.ay to double
  %i.ba = fmul double %i.aw, %i.az
  %i.bb = fptosi double %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3748
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !174
  %i.be = sext i32 %i.bd to i64
  %spec.store.select = tail call i64 @llvm.smin.i64(i64 %i.bb, i64 %i.be) ; 2 uses
  store i64 %spec.store.select, ptr %i.ax, align 8
  %i.bf = load i64, ptr %i.h, align 8, !tbaa !158
  %storemerge.v = tail call i64 @llvm.smax.i64(i64 %spec.store.select, i64 1)
  %storemerge = add nsw i64 %storemerge.v, %i.bf
  store i64 %storemerge, ptr %i.j, align 8, !tbaa !168
  tail call void @_ZN7CaDiCaL8Internal13swap_averagesEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.bg = load ptr, ptr %i.an, align 8, !tbaa !159 ; 2 uses
  %.not12 = icmp eq ptr %i.bg, null
  br i1 %.not12, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4536
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !171
  %i.bj = load i64, ptr %i.j, align 8, !tbaa !168
  %i.bk = load i64, ptr %i.ax, align 8, !tbaa !173
  tail call void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.bg, ptr noundef nonnull @.str, i64 noundef %i.bi, ptr noundef nonnull @.str.2, i64 noundef %i.bj, i64 noundef %i.bk)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bl = load i8, ptr %i.c, align 4, !tbaa !155, !range !156, !noundef !157
  %3 = shl nuw nsw i8 %i.bl, 5
  %4 = xor i8 %3, 123
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %0, i8 noundef signext %4, i32 noundef 0)
  %i.bm = load i8, ptr %i.c, align 4, !tbaa !155, !range !156, !noundef !157
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = load ptr, ptr %i.an, align 8, !tbaa !159 ; 13 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 3608
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !160 ; 2 uses
  br i1 %i.bn, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 6800
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !169
  %.not14 = icmp sgt i32 %i.bs, %i.bq
  br i1 %.not14, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 6768
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 3620
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !161
  %.not.i19 = icmp eq i32 %i.bv, 0
  br i1 %.not.i19, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.bo)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit20

bb.w:                                             ; preds = %bb.u
  %i.bx = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.bo)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit20

_ZN7CaDiCaL8Internal4timeEv.exit20:               ; preds = %bb.v, %bb.w
  %i.by = phi double [ %i.bw, %bb.v ], [ %i.bx, %bb.w ]
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.bo, ptr noundef nonnull align 8 dereferenceable(36) %i.bt, double noundef %i.by)
  br label %bb.ab

bb.x:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 7040
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !170
  %.not13 = icmp sgt i32 %i.ca, %i.bq
  br i1 %.not13, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 7008
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 3620
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !161
  %.not.i21 = icmp eq i32 %i.cd, 0
  br i1 %.not.i21, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.bo)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit22

bb.aa:                                            ; preds = %bb.y
  %i.cf = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.bo)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit22

_ZN7CaDiCaL8Internal4timeEv.exit22:               ; preds = %bb.z, %bb.aa
  %i.cg = phi double [ %i.ce, %bb.z ], [ %i.cf, %bb.aa ]
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.bo, ptr noundef nonnull align 8 dereferenceable(36) %i.cb, double noundef %i.cg)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.t, %_ZN7CaDiCaL8Internal4timeEv.exit20, %bb.x, %_ZN7CaDiCaL8Internal4timeEv.exit22, %bb.c
  %i.ch = load i8, ptr %i.c, align 4, !tbaa !155, !range !156, !noundef !157
  %i.ci = trunc nuw i8 %i.ch to i1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.b, %bb.a, %bb.ab
  %.0 = phi i1 [ false, %bb.a ], [ %i.ci, %bb.ab ], [ true, %bb.b ]
  ret i1 %.0
}

declare void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288), i8 noundef signext, i32 noundef) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8Internal13swap_averagesEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal10restartingEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %i.b = load i32, ptr %i.a, align 8, !tbaa !175
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN7CaDiCaL9ReluctantcvbEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.d = load i32, ptr %i.c, align 4, !tbaa !162
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !163
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !164
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2
  %i.n = add nsw i64 %i.m, 2
  %i.o = icmp ugt i64 %i.n, %i.e
  br i1 %i.o, label %_ZN7CaDiCaL9ReluctantcvbEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal11stabilizingEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !176, !range !156, !noundef !157
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %_ZN7CaDiCaL9ReluctantcvbEv.exit

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.q, align 8, !tbaa !176
  br label %_ZN7CaDiCaL9ReluctantcvbEv.exit

bb.f:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3928
  %i.u = load i64, ptr %i.t, align 8, !tbaa !158
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2904
  %i.w = load i64, ptr %i.v, align 8, !tbaa !165
  %.not6 = icmp sgt i64 %i.u, %i.w
  br i1 %.not6, label %bb.g, label %_ZN7CaDiCaL9ReluctantcvbEv.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.y = load double, ptr %i.x, align 8, !tbaa !177
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3680
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !178
  %i.ab = sitofp i32 %i.aa to double
  %i.ac = fadd nnan double %i.ab, 1.000000e+02
  %i.ad = fdiv nnan double %i.ac, 1.000000e+02
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2280
  %i.af = load double, ptr %i.ae, align 8, !tbaa !177
  %i.ag = fmul double %i.af, %i.ad
  %i.ah = fcmp ole double %i.ag, %i.y
  br label %_ZN7CaDiCaL9ReluctantcvbEv.exit

_ZN7CaDiCaL9ReluctantcvbEv.exit:                  ; preds = %bb.e, %bb.d, %bb.f, %bb.b, %bb.a, %bb.g
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.f ], [ false, %bb.b ], [ %i.ah, %bb.g ], [ false, %bb.d ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7CaDiCaL8Internal11reuse_trailEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !163
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !164
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2184 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !179
  %i.k = getelementptr [16 x i8], ptr %i.j, i64 %i.h
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !182
  %.not = icmp eq i32 %i.m, 0
  %i.n = zext i1 %.not to i64
  %i.o = add nsw i64 %i.h, %i.n                   ; 3 uses
  %i.p = trunc i64 %i.o to i32                    ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3684
  %i.r = load i32, ptr %i.q, align 4, !tbaa !183
  %.not29 = icmp eq i32 %i.r, 0
  br i1 %.not29, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = tail call noundef i32 @_ZN7CaDiCaL8Internal22next_decision_variableEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3700
  %i.u = load i32, ptr %i.t, align 4, !tbaa !184
  %.not.i = icmp ne i32 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load i8, ptr %i.v, align 4, !range !156
  %i.x = trunc nuw i8 %i.w to i1                  ; 2 uses
  %i.y = select i1 %.not.i, i1 %i.x, i1 false
  br i1 %i.y, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !162 ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, %i.p
  br i1 %i.ab, label %.lr.ph42, label %.thread

.lr.ph42:                                         ; preds = %.preheader
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !179
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ae = zext i32 %i.s to i64
  %sext59 = shl i64 %i.o, 32
  %i.af = ashr exact i64 %sext59, 32
  %wide.trip.count52 = sext i32 %i.aa to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph42, %bb.e
  %indvars.iv49 = phi i64 [ %i.af, %.lr.ph42 ], [ %indvars.iv.next50, %bb.e ] ; 2 uses
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, 1 ; 3 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %indvars.iv.next50
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !182 ; 2 uses
end_hunk_0
