inline.NumInlined: 701
inline.NumDeleted: 154
begin_hunk_0_@getgroups
; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @maxgroups() unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @_maxgroups, align 4, !tbaa !7 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @sysconf(i32 noundef 3) #26
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  %spec.store.select = select i1 %i.e, i32 65536, i32 %i.d ; 2 uses
  store i32 %spec.store.select, ptr @_maxgroups, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ %spec.store.select, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %i.f
}

; Function Attrs: nounwind
declare i32 @setgroups(i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: cold noreturn
declare void @rb_unexpected_type(i64 noundef, i32 noundef) local_unnamed_addr #24

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @times(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @make_clock_result(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr @id_nanosecond, align 8, !tbaa !47
  %i.b = tail call i64 @rb_id2sym(i64 noundef %i.a) #26
  %i.c = icmp eq i64 %3, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 1000000000, ptr %1, align 8, !tbaa !211
  %i.d = tail call fastcc i64 @timetick2integer(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef %2)
  br label %timetick2dblnum.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr @id_microsecond, align 8, !tbaa !47
  %i.f = tail call i64 @rb_id2sym(i64 noundef %i.e) #26
  %i.g = icmp eq i64 %3, %i.f
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 1000000, ptr %1, align 8, !tbaa !211
  %i.h = tail call fastcc i64 @timetick2integer(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef %2)
  br label %timetick2dblnum.exit

bb.e:                                             ; preds = %bb.c
  %i.i = load i64, ptr @id_millisecond, align 8, !tbaa !47
  %i.j = tail call i64 @rb_id2sym(i64 noundef %i.i) #26
  %i.k = icmp eq i64 %3, %i.j
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 1000, ptr %1, align 8, !tbaa !211
  %i.l = tail call fastcc i64 @timetick2integer(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef %2)
  br label %timetick2dblnum.exit

bb.g:                                             ; preds = %bb.e
  %i.m = load i64, ptr @id_second, align 8, !tbaa !47
  %i.n = tail call i64 @rb_id2sym(i64 noundef %i.m) #26
  %i.o = icmp eq i64 %3, %i.n
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = tail call fastcc i64 @timetick2integer(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %2)
  br label %timetick2dblnum.exit

bb.i:                                             ; preds = %bb.g
  %i.q = load i64, ptr @id_float_microsecond, align 8, !tbaa !47
  %i.r = tail call i64 @rb_id2sym(i64 noundef %i.q) #26
  %i.s = icmp eq i64 %3, %i.r
  br i1 %i.s, label %.preheader.i.i, label %bb.p

.preheader.i.i:                                   ; preds = %bb.i
  store i64 1000000, ptr %1, align 8, !tbaa !211
  %i.t = load i64, ptr %2, align 8, !tbaa !211    ; 4 uses
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %.lr.ph.i, label %.preheader.split.i.i

.preheader.split.i.i:                             ; preds = %.preheader.i.i
  %spec.select.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.t, i64 1000000)
  %spec.select18.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.t, i64 1000000)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader.split.i.i
  %.112.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.preheader.split.i.i ], [ %.1.i.i.i.i, %bb.j ]
  %.1.i.i.i.i = phi i64 [ %spec.select18.i.i.i.i, %.preheader.split.i.i ], [ %i.v, %bb.j ] ; 5 uses
  %i.v = srem i64 %.112.i.i.i.i, %.1.i.i.i.i      ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %gcd_timetick_int.exit.i.i.i, label %bb.j

gcd_timetick_int.exit.i.i.i:                      ; preds = %bb.j
  %.not.i.i.i = icmp eq i64 %.1.i.i.i.i, 1
  br i1 %.not.i.i.i, label %.lr.ph.i, label %bb.k

bb.k:                                             ; preds = %gcd_timetick_int.exit.i.i.i
  %i.x = sdiv i64 1000000, %.1.i.i.i.i
  store i64 %i.x, ptr %1, align 8, !tbaa !211
  %i.y = load i64, ptr %2, align 8, !tbaa !211
  %i.z = sdiv i64 %i.y, %.1.i.i.i.i               ; 2 uses
  store i64 %i.z, ptr %2, align 8, !tbaa !211
  %.pre = load i64, ptr %1, align 8, !tbaa !211
  %i.aa = sitofp i64 %.pre to double
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %gcd_timetick_int.exit.i.i.i, %.preheader.i.i
  %i.ab = phi i64 [ %i.z, %bb.k ], [ %i.t, %gcd_timetick_int.exit.i.i.i ], [ 1, %.preheader.i.i ]
  %i.ac = phi double [ %i.aa, %bb.k ], [ 1.000000e+06, %gcd_timetick_int.exit.i.i.i ], [ 1.000000e+06, %.preheader.i.i ]
  %i.ad = load i64, ptr %0, align 8, !tbaa !207
  %i.ae = sitofp i64 %i.ad to double
  %i.af = getelementptr i8, ptr %0, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !210
  %i.ah = sitofp i32 %i.ag to double
  %i.ai = tail call nnan double @llvm.fmuladd.f64(double %i.ae, double 1.000000e+09, double %i.ah)
  %i.aj = fmul double %i.ai, %i.ac
  %i.ak = sitofp i64 %i.ab to double
  %i.al = fdiv double %i.aj, %i.ak                ; 2 uses
  %i.am = bitcast double %i.al to i64             ; 5 uses
  %cond.i.i = icmp eq i64 %i.am, 3458764513820540928
  br i1 %cond.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.an = lshr i64 %i.am, 60
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = and i32 %i.ao, 7
  %i.aq = add nsw i32 %i.ap, -5
  %i.ar = icmp ult i32 %i.aq, -2
  br i1 %i.ar, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.am, i64 range(i64 3458764513820540929, 3458764513820540928) %i.am, i64 3)
  %i.at = and i64 %i.as, -4
  %i.au = or disjoint i64 %i.at, 2
  br label %timetick2dblnum.exit

bb.n:                                             ; preds = %bb.l
  %i.av = icmp eq i64 %i.am, 0
  br i1 %i.av, label %timetick2dblnum.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %i.aw = tail call i64 @rb_float_new_in_heap(double noundef %i.al) #26
  br label %timetick2dblnum.exit

bb.p:                                             ; preds = %bb.i
  %i.ax = load i64, ptr @id_float_millisecond, align 8, !tbaa !47
  %i.ay = tail call i64 @rb_id2sym(i64 noundef %i.ax) #26
  %i.az = icmp eq i64 %3, %i.ay
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i64 1000, ptr %1, align 8, !tbaa !211
  %i.ba = tail call fastcc i64 @timetick2dblnum(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef %2)
  br label %timetick2dblnum.exit

bb.r:                                             ; preds = %bb.p
  %i.bb = icmp eq i64 %3, 4
  br i1 %i.bb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = load i64, ptr @id_float_second, align 8, !tbaa !47
  %i.bd = tail call i64 @rb_id2sym(i64 noundef %i.bc) #26
  %i.be = icmp eq i64 %3, %i.bd
  br i1 %i.be, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bf = tail call fastcc i64 @timetick2dblnum(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %2)
  br label %timetick2dblnum.exit

bb.u:                                             ; preds = %bb.s
  %i.bg = load i64, ptr @rb_eArgError, align 8, !tbaa !47
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bg, ptr noundef nonnull @.str.257, i64 noundef %3) #28
  unreachable

timetick2dblnum.exit:                             ; preds = %bb.o, %bb.n, %bb.m, %bb.t, %bb.q, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.h, %bb.d ], [ %i.l, %bb.f ], [ %i.p, %bb.h ], [ %i.bf, %bb.t ], [ %i.ba, %bb.q ], [ %i.au, %bb.m ], [ %i.aw, %bb.o ], [ -9223372036854775806, %bb.n ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @timetick2integer(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #1 {
bb.a:
  %4 = trunc nuw i32 %2 to i1                     ; 3 uses
  br i1 %4, label %.lr.ph.i, label %reduce_factors.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !211    ; 4 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %reduce_factors.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.c = load i64, ptr %3, align 8, !tbaa !211    ; 3 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %reduce_factors.exit, label %.preheader.split.i

.preheader.split.i:                               ; preds = %.preheader.i
  %spec.select.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.a, i64 %i.c)
  %spec.select18.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.a, i64 %i.c)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.split.i
  %.112.i.i.i = phi i64 [ %spec.select.i.i.i, %.preheader.split.i ], [ %.1.i.i.i, %bb.b ]
  %.1.i.i.i = phi i64 [ %spec.select18.i.i.i, %.preheader.split.i ], [ %i.e, %bb.b ] ; 5 uses
  %i.e = srem i64 %.112.i.i.i, %.1.i.i.i          ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %gcd_timetick_int.exit.i.i, label %bb.b

gcd_timetick_int.exit.i.i:                        ; preds = %bb.b
  %.not.i.i = icmp eq i64 %.1.i.i.i, 1
  br i1 %.not.i.i, label %reduce_factors.exit, label %bb.c

bb.c:                                             ; preds = %gcd_timetick_int.exit.i.i
  %i.g = sdiv i64 %i.a, %.1.i.i.i
  store i64 %i.g, ptr %1, align 8, !tbaa !211
  %i.h = load i64, ptr %3, align 8, !tbaa !211
  %i.i = sdiv i64 %i.h, %.1.i.i.i
  store i64 %i.i, ptr %3, align 8, !tbaa !211
  br label %reduce_factors.exit

reduce_factors.exit:                              ; preds = %bb.a, %.lr.ph.i, %.preheader.i, %gcd_timetick_int.exit.i.i, %bb.c
  %i.j = load i64, ptr %0, align 8, !tbaa !207    ; 7 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %reduce_factors.exit
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !210
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = sub i64 9223372036854775807, %i.n
  %i.p = sdiv i64 %i.o, 1000000000
  %i.q = icmp slt i64 %i.p, %i.j
  br i1 %i.q, label %rb_ll2num_inline.exit, label %.peel.begin

bb.e:                                             ; preds = %reduce_factors.exit
  %i.r = icmp slt i64 %i.j, -9223372036
  br i1 %i.r, label %rb_ll2num_inline.exit, label %..peel.begin_crit_edge

..peel.begin_crit_edge:                           ; preds = %bb.e
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !210
  %.pre85 = sext i32 %.pre to i64
  br label %.peel.begin

.peel.begin:                                      ; preds = %..peel.begin_crit_edge, %bb.d
  %.pre-phi = phi i64 [ %.pre85, %..peel.begin_crit_edge ], [ %i.n, %bb.d ]
  %i.s = mul nsw i64 %i.j, 1000000000
  %i.t = add i64 %i.s, %.pre-phi                  ; 3 uses
  br i1 %4, label %bb.f, label %.preheader78

bb.f:                                             ; preds = %.peel.begin
  %i.u = load i64, ptr %1, align 8, !tbaa !211    ; 2 uses
  %i.v = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.u, i64 %i.t)
  %i.w = extractvalue { i64, i1 } %i.v, 1
  %i.x = mul i64 %i.u, %i.t
  br i1 %i.w, label %rb_ll2num_inline.exit.thread90, label %.preheader78

.preheader78:                                     ; preds = %bb.f, %.peel.begin
  %.060.lcssa = phi i64 [ %i.t, %.peel.begin ], [ %i.x, %bb.f ] ; 3 uses
  %i.y = icmp slt i64 %.060.lcssa, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader78
  %i.z = xor i64 %.060.lcssa, -1
  %i.aa = load i64, ptr %3, align 8, !tbaa !211
  %i.ab = sdiv i64 %i.z, %i.aa
  %i.ac = xor i64 %i.ab, -1
  br label %bb.i

bb.h:                                             ; preds = %.preheader78
  %i.ad = load i64, ptr %3, align 8, !tbaa !211
  %i.ae = sdiv i64 %.060.lcssa, %i.ad
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.262.lcssa = phi i64 [ %i.ac, %bb.g ], [ %i.ae, %bb.h ] ; 3 uses
  %i.af = add i64 %.262.lcssa, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.af, -1
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = shl nsw i64 %.262.lcssa, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %rb_ll2num_inline.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ai = tail call i64 @rb_ll2inum(i64 noundef %.262.lcssa) #26
  br label %rb_ll2num_inline.exit.thread

rb_ll2num_inline.exit:                            ; preds = %bb.d, %bb.e
  %i.aj = add i64 %i.j, 4611686018427387904
  %or.cond.i66 = icmp sgt i64 %i.aj, -1
  br i1 %or.cond.i66, label %rb_ll2num_inline.exit.thread90, label %bb.l

rb_ll2num_inline.exit.thread90:                   ; preds = %bb.f, %rb_ll2num_inline.exit
  %i.ak = shl nsw i64 %i.j, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %rb_ll2num_inline.exit68

bb.l:                                             ; preds = %rb_ll2num_inline.exit
  %i.am = tail call i64 @rb_ll2inum(i64 noundef %i.j) #26
  br label %rb_ll2num_inline.exit68

rb_ll2num_inline.exit68:                          ; preds = %rb_ll2num_inline.exit.thread90, %bb.l
  %.0.i67 = phi i64 [ %i.al, %rb_ll2num_inline.exit.thread90 ], [ %i.am, %bb.l ]
  %i.an = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.0.i67, i64 noundef 42, i32 noundef 1, i64 noundef 2000000001) #26
  %i.ao = getelementptr i8, ptr %0, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !210
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 1
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.an, i64 noundef 43, i32 noundef 1, i64 noundef %i.as) #26 ; 3 uses
  br i1 %4, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %rb_ll2num_inline.exit68
  %i.au = load i64, ptr %1, align 8, !tbaa !211   ; 4 uses
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %.preheader, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.aw = add i64 %i.au, 4611686018427387904
  %or.cond.i69 = icmp sgt i64 %i.aw, -1
  br i1 %or.cond.i69, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.split
  %i.ax = shl nsw i64 %i.au, 1
  %i.ay = or disjoint i64 %i.ax, 1
  br label %rb_ll2num_inline.exit71

bb.n:                                             ; preds = %.lr.ph.split
  %i.az = tail call i64 @rb_ll2inum(i64 noundef %i.au) #26
  br label %rb_ll2num_inline.exit71

rb_ll2num_inline.exit71:                          ; preds = %bb.m, %bb.n
  %.0.i70 = phi i64 [ %i.ay, %bb.m ], [ %i.az, %bb.n ]
  %i.ba = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.at, i64 noundef 42, i32 noundef 1, i64 noundef %.0.i70) #26
  br label %.preheader

.preheader:                                       ; preds = %rb_ll2num_inline.exit71, %rb_ll2num_inline.exit68, %.lr.ph
  %.055.lcssa = phi i64 [ %i.at, %rb_ll2num_inline.exit68 ], [ %i.at, %.lr.ph ], [ %i.ba, %rb_ll2num_inline.exit71 ]
  %i.bb = load i64, ptr %3, align 8, !tbaa !211   ; 3 uses
  %i.bc = add i64 %i.bb, 4611686018427387904
  %or.cond.i72 = icmp sgt i64 %i.bc, -1
  br i1 %or.cond.i72, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.preheader
  %i.bd = shl nsw i64 %i.bb, 1
  %i.be = or disjoint i64 %i.bd, 1
  br label %rb_ll2num_inline.exit74

bb.p:                                             ; preds = %.preheader
  %i.bf = tail call i64 @rb_ll2inum(i64 noundef %i.bb) #26
  br label %rb_ll2num_inline.exit74

rb_ll2num_inline.exit74:                          ; preds = %bb.o, %bb.p
  %.0.i73 = phi i64 [ %i.be, %bb.o ], [ %i.bf, %bb.p ]
  %i.bg = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.055.lcssa, i64 noundef 47, i32 noundef 1, i64 noundef %.0.i73) #26
  br label %rb_ll2num_inline.exit.thread

rb_ll2num_inline.exit.thread:                     ; preds = %rb_ll2num_inline.exit74, %bb.k, %bb.j
  %.1 = phi i64 [ %i.ah, %bb.j ], [ %i.ai, %bb.k ], [ %i.bg, %rb_ll2num_inline.exit74 ]
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @timetick2dblnum(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #1 {
bb.a:
  %4 = trunc nuw i32 %2 to i1
  br i1 %4, label %.lr.ph.i, label %reduce_factors.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !211    ; 4 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %.lr.ph, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.c = load i64, ptr %3, align 8, !tbaa !211    ; 3 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %.lr.ph, label %.preheader.split.i

.preheader.split.i:                               ; preds = %.preheader.i
  %spec.select.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.a, i64 %i.c)
  %spec.select18.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.a, i64 %i.c)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.split.i
  %.112.i.i.i = phi i64 [ %spec.select.i.i.i, %.preheader.split.i ], [ %.1.i.i.i, %bb.b ]
  %.1.i.i.i = phi i64 [ %spec.select18.i.i.i, %.preheader.split.i ], [ %i.e, %bb.b ] ; 5 uses
  %i.e = srem i64 %.112.i.i.i, %.1.i.i.i          ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %gcd_timetick_int.exit.i.i, label %bb.b

gcd_timetick_int.exit.i.i:                        ; preds = %bb.b
  %.not.i.i = icmp eq i64 %.1.i.i.i, 1
  br i1 %.not.i.i, label %.lr.ph, label %bb.c

bb.c:                                             ; preds = %gcd_timetick_int.exit.i.i
  %i.g = sdiv i64 %i.a, %.1.i.i.i
  store i64 %i.g, ptr %1, align 8, !tbaa !211
  %i.h = load i64, ptr %3, align 8, !tbaa !211
  %i.i = sdiv i64 %i.h, %.1.i.i.i
  store i64 %i.i, ptr %3, align 8, !tbaa !211
  br label %.lr.ph

reduce_factors.exit:                              ; preds = %bb.a
  %i.j = load i64, ptr %0, align 8, !tbaa !207
  %i.k = sitofp i64 %i.j to double
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !210
  %i.n = sitofp i32 %i.m to double
  %i.o = tail call double @llvm.fmuladd.f64(double %i.k, double 1.000000e+09, double %i.n)
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.i, %.preheader.i, %gcd_timetick_int.exit.i.i, %bb.c
  %i.p = load i64, ptr %0, align 8, !tbaa !207
  %i.q = sitofp i64 %i.p to double
  %i.r = getelementptr i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !210
  %i.t = sitofp i32 %i.s to double
  %i.u = tail call nnan double @llvm.fmuladd.f64(double %i.q, double 1.000000e+09, double %i.t)
  %i.v = load i64, ptr %1, align 8, !tbaa !211
  %i.w = sitofp i64 %i.v to double
  %i.x = fmul double %i.u, %i.w
  br label %.preheader

.preheader:                                       ; preds = %reduce_factors.exit, %.lr.ph
  %.018.lcssa = phi double [ %i.x, %.lr.ph ], [ %i.o, %reduce_factors.exit ]
  %i.y = load i64, ptr %3, align 8, !tbaa !211
  %i.z = sitofp i64 %i.y to double
  %i.aa = fdiv double %.018.lcssa, %i.z           ; 2 uses
  %i.ab = bitcast double %i.aa to i64             ; 5 uses
  %cond.i = icmp eq i64 %i.ab, 3458764513820540928
  br i1 %cond.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.ac = lshr i64 %i.ab, 60
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 7
  %i.af = add nsw i32 %i.ae, -5
  %i.ag = icmp ult i32 %i.af, -2
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.ab, i64 range(i64 3458764513820540929, 3458764513820540928) %i.ab, i64 3)
  %i.ai = and i64 %i.ah, -4
  %i.aj = or disjoint i64 %i.ai, 2
  br label %rb_float_new_inline.exit

bb.f:                                             ; preds = %bb.d
  %i.ak = icmp eq i64 %i.ab, 0
  br i1 %i.ak, label %rb_float_new_inline.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader
  %i.al = tail call i64 @rb_float_new_in_heap(double noundef %i.aa) #26
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.aj, %bb.e ], [ %i.al, %bb.g ], [ -9223372036854775806, %bb.f ]
  ret i64 %.0.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #23

declare i64 @rb_ll2inum(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #23

; Function Attrs: nounwind
declare i32 @clock_getres(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i32 @rb_seteuid_core(i32 noundef returned %0) unnamed_addr #1 {
bb.a:
  %.b.i = load i1, ptr @under_uid_switch, align 4
  br i1 %.b.i, label %bb.b, label %check_uid_switch.exit

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !47
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.229) #28
  unreachable

check_uid_switch.exit:                            ; preds = %bb.a
  %i.b = tail call i32 @getuid() #26
  %.not = icmp eq i32 %i.b, %0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %check_uid_switch.exit
  %i.c = tail call i32 @setresuid(i32 noundef -1, i32 noundef %0, i32 noundef %0) #26
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @rb_errno_ptr() #26
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  tail call void @rb_syserr_fail(i32 noundef %i.f, ptr noundef null) #28
  unreachable

bb.e:                                             ; preds = %bb.c
  store i32 %0, ptr @SAVED_USER_ID, align 4, !tbaa !7
  br label %bb.h

bb.f:                                             ; preds = %check_uid_switch.exit
  %i.g = tail call i32 @setresuid(i32 noundef -1, i32 noundef %0, i32 noundef -1) #26
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = tail call ptr @rb_errno_ptr() #26
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  tail call void @rb_syserr_fail(i32 noundef %i.j, ptr noundef null) #28
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  ret i32 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i32 @rb_setegid_core(i32 noundef returned %0) unnamed_addr #1 {
bb.a:
  %.b.i = load i1, ptr @under_gid_switch, align 4
  br i1 %.b.i, label %bb.b, label %check_gid_switch.exit

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !47
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.230) #28
  unreachable

check_gid_switch.exit:                            ; preds = %bb.a
  %i.b = tail call i32 @getgid() #26
  %.not = icmp eq i32 %i.b, %0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %check_gid_switch.exit
  %i.c = tail call i32 @setresgid(i32 noundef -1, i32 noundef %0, i32 noundef %0) #26
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @rb_errno_ptr() #26
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  tail call void @rb_syserr_fail(i32 noundef %i.f, ptr noundef null) #28
  unreachable

bb.e:                                             ; preds = %bb.c
  store i32 %0, ptr @SAVED_GROUP_ID, align 4, !tbaa !7
  br label %bb.h

bb.f:                                             ; preds = %check_gid_switch.exit
  %i.g = tail call i32 @setresgid(i32 noundef -1, i32 noundef %0, i32 noundef -1) #26
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = tail call ptr @rb_errno_ptr() #26
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  tail call void @rb_syserr_fail(i32 noundef %i.j, ptr noundef null) #28
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  ret i32 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 8589934592) i64 @p_uid_sw_ensure(i64 noundef %0) #1 {
bb.a:
  %i.a = trunc i64 %0 to i32
  store i1 false, ptr @under_uid_switch, align 4
end_hunk_0
