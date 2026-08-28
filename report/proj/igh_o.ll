Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/igh_o?download=true
inline.NumInlined: 12
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z6pj_newv
declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @pj_sinu(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL19pj_igh_o_destructorP8PJconstsi(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 13 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.sink.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !45   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.preheader.1, label %bb.c

bb.c:                                             ; preds = %.preheader.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull %i.e, i32 noundef %1) ; 0 uses
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 3 uses
  %.not.1 = icmp eq ptr %i.j, null
  br i1 %.not.1, label %.preheader.2, label %bb.d

bb.d:                                             ; preds = %.preheader.1
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull %i.j, i32 noundef %1) ; 0 uses
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.d, %.preheader.1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45   ; 3 uses
  %.not.2 = icmp eq ptr %i.o, null
  br i1 %.not.2, label %.preheader.3, label %bb.e

bb.e:                                             ; preds = %.preheader.2
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull %i.o, i32 noundef %1) ; 0 uses
  br label %.preheader.3

.preheader.3:                                     ; preds = %bb.e, %.preheader.2
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45   ; 3 uses
  %.not.3 = icmp eq ptr %i.t, null
  br i1 %.not.3, label %.preheader.4, label %bb.f

bb.f:                                             ; preds = %.preheader.3
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 152
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !55
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull %i.t, i32 noundef %1) ; 0 uses
  br label %.preheader.4

.preheader.4:                                     ; preds = %bb.f, %.preheader.3
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45   ; 3 uses
  %.not.4 = icmp eq ptr %i.y, null
  br i1 %.not.4, label %.preheader.5, label %bb.g

bb.g:                                             ; preds = %.preheader.4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull %i.y, i32 noundef %1) ; 0 uses
  br label %.preheader.5

.preheader.5:                                     ; preds = %bb.g, %.preheader.4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45 ; 3 uses
  %.not.5 = icmp eq ptr %i.ad, null
  br i1 %.not.5, label %.preheader.6, label %bb.h

bb.h:                                             ; preds = %.preheader.5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !55
  %i.ag = tail call noundef ptr %i.af(ptr noundef nonnull %i.ad, i32 noundef %1) ; 0 uses
  br label %.preheader.6

.preheader.6:                                     ; preds = %bb.h, %.preheader.5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !45 ; 3 uses
  %.not.6 = icmp eq ptr %i.ai, null
  br i1 %.not.6, label %.preheader.7, label %bb.i

bb.i:                                             ; preds = %.preheader.6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 152
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !55
  %i.al = tail call noundef ptr %i.ak(ptr noundef nonnull %i.ai, i32 noundef %1) ; 0 uses
  br label %.preheader.7

.preheader.7:                                     ; preds = %bb.i, %.preheader.6
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !45 ; 3 uses
  %.not.7 = icmp eq ptr %i.an, null
  br i1 %.not.7, label %.preheader.8, label %bb.j

bb.j:                                             ; preds = %.preheader.7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 152
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !55
  %i.aq = tail call noundef ptr %i.ap(ptr noundef nonnull %i.an, i32 noundef %1) ; 0 uses
  br label %.preheader.8

.preheader.8:                                     ; preds = %bb.j, %.preheader.7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45 ; 3 uses
  %.not.8 = icmp eq ptr %i.as, null
  br i1 %.not.8, label %.preheader.9, label %bb.k

bb.k:                                             ; preds = %.preheader.8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 152
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !55
  %i.av = tail call noundef ptr %i.au(ptr noundef nonnull %i.as, i32 noundef %1) ; 0 uses
  br label %.preheader.9

.preheader.9:                                     ; preds = %bb.k, %.preheader.8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !45 ; 3 uses
  %.not.9 = icmp eq ptr %i.ax, null
  br i1 %.not.9, label %.preheader.10, label %bb.l

bb.l:                                             ; preds = %.preheader.9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 152
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !55
  %i.ba = tail call noundef ptr %i.az(ptr noundef nonnull %i.ax, i32 noundef %1) ; 0 uses
  br label %.preheader.10

.preheader.10:                                    ; preds = %bb.l, %.preheader.9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !45 ; 3 uses
  %.not.10 = icmp eq ptr %i.bc, null
  br i1 %.not.10, label %.preheader.11, label %bb.m

bb.m:                                             ; preds = %.preheader.10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 152
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !55
  %i.bf = tail call noundef ptr %i.be(ptr noundef nonnull %i.bc, i32 noundef %1) ; 0 uses
  br label %.preheader.11

.preheader.11:                                    ; preds = %bb.m, %.preheader.10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !45 ; 3 uses
  %.not.11 = icmp eq ptr %i.bh, null
  br i1 %.not.11, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %.preheader.11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 152
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !55
  %i.bk = tail call noundef ptr %i.bj(ptr noundef nonnull %i.bh, i32 noundef %1) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %.preheader.11, %bb.n, %bb.b
  %i.bl = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.a
  %.016 = phi ptr [ null, %bb.a ], [ %i.bl, %.sink.split ]
  ret ptr %.016
}

declare ptr @pj_moll(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL15igh_o_s_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load double, ptr %i.c, align 8, !tbaa !50
  %i.e = fadd double %i.d, f0x3FF6A09E667F3BCD    ; 2 uses
  %i.f = fadd double %i.e, 1.000000e-10
  %i.g = fcmp ogt double %1, %i.f
  %i.h = fsub double 1.000000e-10, %i.e
  %i.i = fcmp olt double %1, %i.h
  %or.cond93 = or i1 %i.g, %i.i
  br i1 %or.cond93, label %.thread121, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fcmp ult double %1, f0x3FE6C069E29BDA5B
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = fcmp ugt double %0, f0xBFF921FB54442D18
  br i1 %i.k, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.l = fcmp ult double %0, f0x3FF0C152382D7365
  %spec.select = select i1 %i.l, i32 2, i32 3
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.m = fcmp ult double %1, 0.000000e+00
  br i1 %i.m, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = fcmp ugt double %0, f0xBFF921FB54442D18
  br i1 %i.n, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.o = fcmp ult double %0, f0x3FF0C152382D7365
  %spec.select159 = select i1 %i.o, i32 5, i32 6
  br label %bb.m

bb.h:                                             ; preds = %bb.e
  %i.p = fcmp ult double %1, f0xBFE6C069E29BDA5B
  %i.q = fcmp ugt double %0, f0xBFF0C152382D7365  ; 2 uses
  br i1 %i.p, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.q, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.r = fcmp ult double %0, f0x3FF921FB54442D18
  %spec.select160 = select i1 %i.r, i32 8, i32 9
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  br i1 %i.q, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = fcmp ult double %0, f0x3FF921FB54442D18
  %spec.select161 = select i1 %i.s, i32 11, i32 12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.g, %bb.d, %bb.c, %bb.f, %bb.i, %bb.k
  %.087 = phi i32 [ 10, %bb.k ], [ %spec.select160, %bb.j ], [ %spec.select, %bb.d ], [ 1, %bb.c ], [ %spec.select161, %bb.l ], [ %spec.select159, %bb.g ], [ 4, %bb.f ], [ 7, %bb.i ] ; 2 uses
  %i.t = zext nneg i32 %.087 to i64
  %i.u = getelementptr [8 x i8], ptr %i.b, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -8       ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !45   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 456
  %i.y = load double, ptr %i.x, align 8, !tbaa !53
  %i.z = fsub double %0, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 464
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !52
  %i.ac = fsub double %1, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.af = tail call { double, double } %i.ae(double %i.z, double %i.ac, ptr noundef %i.w) ; 2 uses
  %i.ag = extractvalue { double, double } %i.af, 0
  %i.ah = extractvalue { double, double } %i.af, 1 ; 10 uses
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 440
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !48
  %i.al = fadd double %i.ag, %i.ak                ; 34 uses
  switch i32 %.087, label %default.unreachable130 [
    i32 1, label %bb.n
    i32 2, label %.split150
    i32 3, label %bb.p
    i32 4, label %.split146
    i32 5, label %.split144
    i32 6, label %.split142
    i32 7, label %.split140
    i32 8, label %.split138
    i32 9, label %.split136
    i32 10, label %.split134
    i32 11, label %bb.r
    i32 12, label %.split
  ]

bb.n:                                             ; preds = %bb.m
  %i.am = fcmp oge double %i.al, f0xC00921FB54479CB4
  %i.an = fcmp ole double %i.al, f0xBFF921FB543D4DE0
  %or.cond = and i1 %i.am, %i.an
  br i1 %or.cond, label %.thread121, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = fcmp oge double %i.al, f0x400657184AE3D4EB
  %i.ap = fcmp ole double %i.al, f0x400921FB54479CB4
  %or.cond5 = and i1 %i.ao, %i.ap
  br i1 %or.cond5, label %.critedge, label %.thread121

.split150:                                        ; preds = %bb.m
  %i.aq = fcmp oge double %i.al, f0xBFF921FB544B0C50
  %i.ar = fcmp ole double %i.al, f0x3FF0C1523834529D
  %i.as = and i1 %i.aq, %i.ar
  %.0.fr151 = freeze i1 %i.as
  br i1 %.0.fr151, label %bb.t, label %.thread121

bb.p:                                             ; preds = %bb.m
  %i.at = fcmp oge double %i.al, f0x3FF0C1523826942D
  %i.au = fcmp ole double %i.al, f0x400921FB54479CB4
  %or.cond8 = and i1 %i.at, %i.au
  br i1 %or.cond8, label %.thread121, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = fcmp oge double %i.al, f0xC00921FB54479CB4
  %i.aw = fcmp ole double %i.al, f0xC00657184AE3D4EB
  %or.cond11 = and i1 %i.av, %i.aw
  br i1 %or.cond11, label %.split132, label %.thread121

.split132:                                        ; preds = %bb.q
  %i.ax = fcmp oge double %i.ah, f0x3FEBECDE5D935739
  %i.ay = fcmp ole double %i.ah, f0x3FF921FB544B0C50
  %i.az = and i1 %i.ax, %i.ay
  %.0.fr133 = freeze i1 %i.az
  br i1 %.0.fr133, label %bb.t, label %.thread121

.split146:                                        ; preds = %bb.m
  %i.ba = fcmp oge double %i.al, f0xC00921FB54479CB4
  %i.bb = fcmp ole double %i.al, f0xBFF921FB543D4DE0
  %i.bc = and i1 %i.ba, %i.bb
  %.0.fr147 = freeze i1 %i.bc
  br i1 %.0.fr147, label %bb.t, label %.thread121

.split144:                                        ; preds = %bb.m
  %i.bd = fcmp oge double %i.al, f0xBFF921FB544B0C50
  %i.be = fcmp ole double %i.al, f0x3FF0C1523834529D
  %i.bf = and i1 %i.bd, %i.be
  %.0.fr145 = freeze i1 %i.bf
  br i1 %.0.fr145, label %bb.t, label %.thread121

.split142:                                        ; preds = %bb.m
  %i.bg = fcmp oge double %i.al, f0x3FF0C1523826942D
  %i.bh = fcmp ole double %i.al, f0x400921FB54479CB4
  %i.bi = and i1 %i.bg, %i.bh
  %.0.fr143 = freeze i1 %i.bi
  br i1 %.0.fr143, label %bb.t, label %.thread121

.split140:                                        ; preds = %bb.m
  %i.bj = fcmp oge double %i.al, f0xC00921FB54479CB4
  %i.bk = fcmp ole double %i.al, f0xBFF0C1523826942D
  %i.bl = and i1 %i.bj, %i.bk
  %.0.fr141 = freeze i1 %i.bl
  br i1 %.0.fr141, label %bb.t, label %.thread121

.split138:                                        ; preds = %bb.m
  %i.bm = fcmp oge double %i.al, f0xBFF0C1523834529D
  %i.bn = fcmp ole double %i.al, f0x3FF921FB544B0C50
  %i.bo = and i1 %i.bm, %i.bn
  %.0.fr139 = freeze i1 %i.bo
  br i1 %.0.fr139, label %bb.t, label %.thread121

.split136:                                        ; preds = %bb.m
  %i.bp = fcmp oge double %i.al, f0x3FF921FB543D4DE0
  %i.bq = fcmp ole double %i.al, f0x400921FB54479CB4
  %i.br = and i1 %i.bp, %i.bq
  %.0.fr137 = freeze i1 %i.br
  br i1 %.0.fr137, label %bb.t, label %.thread121

.split134:                                        ; preds = %bb.m
  %i.bs = fcmp oge double %i.al, f0xC00921FB54479CB4
  %i.bt = fcmp ole double %i.al, f0xBFF0C1523826942D
  %i.bu = and i1 %i.bs, %i.bt
  %.0.fr135 = freeze i1 %i.bu
  br i1 %.0.fr135, label %bb.t, label %.thread121

bb.r:                                             ; preds = %bb.m
  %i.bv = fcmp oge double %i.al, f0xBFF0C1523834529D
  %i.bw = fcmp ole double %i.al, f0x3FF921FB544B0C50
  %or.cond14 = and i1 %i.bv, %i.bw
  br i1 %or.cond14, label %.thread121, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = fcmp oge double %i.al, f0x3FF921FB543D4DE0
  %i.by = fcmp ole double %i.al, f0x3FFBECDE5DA7F4E1
  %or.cond17 = and i1 %i.bx, %i.by
  br i1 %or.cond17, label %.split148, label %.thread121

.split148:                                        ; preds = %bb.s
  %i.bz = fcmp oge double %i.ah, f0xBFF921FB544B0C50
  %i.ca = fcmp ole double %i.ah, f0xBFE657184AD98617
  %i.cb = and i1 %i.bz, %i.ca
  %.0.fr149 = freeze i1 %i.cb
  br i1 %.0.fr149, label %bb.t, label %.thread121

.split:                                           ; preds = %bb.m
  %i.cc = fcmp oge double %i.al, f0x3FF921FB543D4DE0
  %i.cd = fcmp ole double %i.al, f0x400921FB54479CB4
  %i.ce = and i1 %i.cc, %i.cd
  %.0.fr131 = freeze i1 %i.ce
  br i1 %.0.fr131, label %bb.t, label %.thread121

default.unreachable130:                           ; preds = %bb.m
  unreachable

.critedge:                                        ; preds = %bb.o
  %i.cf = fcmp oge double %i.ah, f0x3FEBECDE5D935739
  %i.cg = fcmp ole double %i.ah, f0x3FF921FB544B0C50
  %i.ch = and i1 %i.cf, %i.cg
  %.0.fr = freeze i1 %i.ch
  br i1 %.0.fr, label %bb.t, label %.thread121

bb.t:                                             ; preds = %.split150, %.split148, %.split146, %.split144, %.split142, %.split140, %.split138, %.split136, %.split134, %.split132, %.split, %.critedge
  br label %.thread121

.thread121:                                       ; preds = %.split150, %.split148, %.split146, %.split144, %.split142, %.split140, %.split138, %.split136, %.split134, %.split132, %.split, %bb.t, %.critedge, %bb.a, %bb.q, %bb.o, %bb.s, %bb.r, %bb.n, %bb.p
  %i.ci = phi double [ %i.al, %bb.n ], [ %i.al, %bb.t ], [ %i.al, %bb.r ], [ %i.al, %bb.p ], [ +inf, %.critedge ], [ +inf, %bb.a ], [ +inf, %bb.q ], [ +inf, %bb.o ], [ +inf, %bb.s ], [ +inf, %.split ], [ +inf, %.split132 ], [ +inf, %.split134 ], [ +inf, %.split136 ], [ +inf, %.split138 ], [ +inf, %.split140 ], [ +inf, %.split142 ], [ +inf, %.split144 ], [ +inf, %.split146 ], [ +inf, %.split148 ], [ +inf, %.split150 ]
  %i.cj = phi double [ %i.ah, %bb.n ], [ %i.ah, %bb.t ], [ %i.ah, %bb.r ], [ %i.ah, %bb.p ], [ +inf, %.critedge ], [ +inf, %bb.a ], [ +inf, %bb.q ], [ +inf, %bb.o ], [ +inf, %bb.s ], [ +inf, %.split ], [ +inf, %.split132 ], [ +inf, %.split134 ], [ +inf, %.split136 ], [ +inf, %.split138 ], [ +inf, %.split140 ], [ +inf, %.split142 ], [ +inf, %.split144 ], [ +inf, %.split146 ], [ +inf, %.split148 ], [ +inf, %.split150 ]
  %.fca.0.insert = insertvalue { double, double } poison, double %i.ci, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.cj, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL15igh_o_s_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = fcmp ult double %1, f0x3FE6C069E29BDA5B
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp ugt double %0, f0xBFF921FB54442D18
  br i1 %i.d, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp ult double %0, f0x3FF0C152382D7365
  %. = select i1 %i.e, i64 1, i64 2
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.f = fcmp ult double %1, 0.000000e+00
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = fcmp ugt double %0, f0xBFF921FB54442D18
  br i1 %i.g, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.h = fcmp ult double %0, f0x3FF0C152382D7365
  %.26 = select i1 %i.h, i64 4, i64 5
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.i = fcmp ult double %1, f0xBFE6C069E29BDA5B
end_hunk_0
