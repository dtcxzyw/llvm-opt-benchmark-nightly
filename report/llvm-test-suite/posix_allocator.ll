inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Halide7Runtime8Internal13default_traceEPvPK18halide_trace_event:entry
  %cmp43.8 = icmp eq i8 %i.s, 0
  br i1 %cmp43.8, label %min.iters.checked, label %for.inc.8

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx39.9 = getelementptr i8, ptr %.pre606, i64 9
  %i.t = load i8, ptr %arrayidx39.9, align 1, !tbaa !8 ; 2 uses
  store i8 %i.t, ptr %i.1592.ph.sroa.gep31, align 1, !tbaa !8
  %cmp43.9 = icmp eq i8 %i.t, 0
  br i1 %cmp43.9, label %min.iters.checked, label %for.inc.9

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx39.10 = getelementptr i8, ptr %.pre606, i64 10
  %i.u = load i8, ptr %arrayidx39.10, align 1, !tbaa !8 ; 2 uses
  store i8 %i.u, ptr %i.1592.ph.sroa.gep33, align 4, !tbaa !8
  %cmp43.10 = icmp eq i8 %i.u, 0
  br i1 %cmp43.10, label %min.iters.checked, label %for.inc.10

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx39.11 = getelementptr i8, ptr %.pre606, i64 11
  %i.v = load i8, ptr %arrayidx39.11, align 1, !tbaa !8 ; 2 uses
  store i8 %i.v, ptr %i.1592.ph.sroa.gep35, align 1, !tbaa !8
  %cmp43.11 = icmp eq i8 %i.v, 0
  br i1 %cmp43.11, label %min.iters.checked, label %for.inc.11

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx39.12 = getelementptr i8, ptr %.pre606, i64 12
  %i.w = load i8, ptr %arrayidx39.12, align 1, !tbaa !8 ; 2 uses
  store i8 %i.w, ptr %i.1592.ph.sroa.gep37, align 2, !tbaa !8
  %cmp43.12 = icmp eq i8 %i.w, 0
  br i1 %cmp43.12, label %min.iters.checked, label %for.inc.12

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx39.13 = getelementptr i8, ptr %.pre606, i64 13
  %i.x = load i8, ptr %arrayidx39.13, align 1, !tbaa !8 ; 2 uses
  store i8 %i.x, ptr %i.1592.ph.sroa.gep39, align 1, !tbaa !8
  %cmp43.13 = icmp eq i8 %i.x, 0
  br i1 %cmp43.13, label %min.iters.checked, label %for.inc.13

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx39.14 = getelementptr i8, ptr %.pre606, i64 14
  %i.y = load i8, ptr %arrayidx39.14, align 1, !tbaa !8 ; 2 uses
  store i8 %i.y, ptr %i.1592.ph.sroa.gep41, align 4, !tbaa !8
  %cmp43.14 = icmp eq i8 %i.y, 0
  br i1 %cmp43.14, label %min.iters.checked, label %for.inc.14

for.inc.14:                                       ; preds = %for.inc.13
  %arrayidx39.15 = getelementptr i8, ptr %.pre606, i64 15
  %i.z = load i8, ptr %arrayidx39.15, align 1, !tbaa !8 ; 2 uses
  store i8 %i.z, ptr %i.1592.ph.sroa.gep43, align 1, !tbaa !8
  %cmp43.15 = icmp eq i8 %i.z, 0
  br i1 %cmp43.15, label %min.iters.checked, label %for.inc.15

for.inc.15:                                       ; preds = %for.inc.14
  %arrayidx39.16 = getelementptr i8, ptr %.pre606, i64 16
  %i.aa = load i8, ptr %arrayidx39.16, align 1, !tbaa !8 ; 2 uses
  store i8 %i.aa, ptr %i.1592.ph.sroa.gep45, align 2, !tbaa !8
  %cmp43.16 = icmp eq i8 %i.aa, 0
  br i1 %cmp43.16, label %min.iters.checked, label %for.inc.16

for.inc.16:                                       ; preds = %for.inc.15
  %arrayidx39.17 = getelementptr i8, ptr %.pre606, i64 17
  %i.ab = load i8, ptr %arrayidx39.17, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ab, ptr %i.1592.ph.sroa.gep18, align 1, !tbaa !8
  %cmp43.17 = icmp eq i8 %i.ab, 0
  br i1 %cmp43.17, label %min.iters.checked, label %for.inc.17

for.inc.17:                                       ; preds = %for.inc.16
  %arrayidx39.18 = getelementptr i8, ptr %.pre606, i64 18
  %i.ac = load i8, ptr %arrayidx39.18, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ac, ptr %i.1592.ph.sroa.gep26, align 4, !tbaa !8
  %cmp43.18 = icmp eq i8 %i.ac, 0
  br i1 %cmp43.18, label %min.iters.checked, label %for.inc.18

for.inc.18:                                       ; preds = %for.inc.17
  %arrayidx39.19 = getelementptr i8, ptr %.pre606, i64 19
  %i.ad = load i8, ptr %arrayidx39.19, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ad, ptr %i.1592.ph.sroa.gep34, align 1, !tbaa !8
  %cmp43.19 = icmp eq i8 %i.ad, 0
  br i1 %cmp43.19, label %min.iters.checked, label %for.inc.19

for.inc.19:                                       ; preds = %for.inc.18
  %arrayidx39.20 = getelementptr i8, ptr %.pre606, i64 20
  %i.ae = load i8, ptr %arrayidx39.20, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ae, ptr %i.1592.ph.sroa.gep42, align 2, !tbaa !8
  %cmp43.20 = icmp eq i8 %i.ae, 0
  br i1 %cmp43.20, label %min.iters.checked, label %for.inc.20

for.inc.20:                                       ; preds = %for.inc.19
  %arrayidx39.21 = getelementptr i8, ptr %.pre606, i64 21
  %i.af = load i8, ptr %arrayidx39.21, align 1, !tbaa !8 ; 2 uses
  store i8 %i.af, ptr %i.1592.ph.sroa.gep30, align 1, !tbaa !8
  %cmp43.21 = icmp eq i8 %i.af, 0
  br i1 %cmp43.21, label %min.iters.checked, label %for.inc.21

for.inc.21:                                       ; preds = %for.inc.20
  %arrayidx39.22 = getelementptr i8, ptr %.pre606, i64 22
  %i.ag = load i8, ptr %arrayidx39.22, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ag, ptr %i.1592.ph.sroa.gep46, align 4, !tbaa !8
  %cmp43.22 = icmp eq i8 %i.ag, 0
  br i1 %cmp43.22, label %min.iters.checked, label %for.inc.22

for.inc.22:                                       ; preds = %for.inc.21
  %arrayidx39.23 = getelementptr i8, ptr %.pre606, i64 23
  %i.ah = load i8, ptr %arrayidx39.23, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ah, ptr %i.1592.ph.sroa.gep38, align 1, !tbaa !8
  %cmp43.23 = icmp eq i8 %i.ah, 0
  br i1 %cmp43.23, label %min.iters.checked, label %for.inc.23

for.inc.23:                                       ; preds = %for.inc.22
  %arrayidx39.24 = getelementptr i8, ptr %.pre606, i64 24
  %i.ai = load i8, ptr %arrayidx39.24, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ai, ptr %i.1592.ph.sroa.gep22, align 2, !tbaa !8
  %cmp43.24 = icmp eq i8 %i.ai, 0
  br i1 %cmp43.24, label %min.iters.checked, label %for.inc.24

for.inc.24:                                       ; preds = %for.inc.23
  %arrayidx39.25 = getelementptr i8, ptr %.pre606, i64 25
  %i.aj = load i8, ptr %arrayidx39.25, align 1, !tbaa !8 ; 2 uses
  store i8 %i.aj, ptr %i.1592.ph.sroa.gep44, align 1, !tbaa !8
  %cmp43.25 = icmp eq i8 %i.aj, 0
  br i1 %cmp43.25, label %min.iters.checked, label %for.inc.25

for.inc.25:                                       ; preds = %for.inc.24
  %arrayidx39.26 = getelementptr i8, ptr %.pre606, i64 26
  %i.ak = load i8, ptr %arrayidx39.26, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ak, ptr %i.1592.ph.sroa.gep40, align 4, !tbaa !8
  %cmp43.26 = icmp eq i8 %i.ak, 0
  br i1 %cmp43.26, label %min.iters.checked, label %for.inc.26

for.inc.26:                                       ; preds = %for.inc.25
  %arrayidx39.27 = getelementptr i8, ptr %.pre606, i64 27
  %i.al = load i8, ptr %arrayidx39.27, align 1, !tbaa !8 ; 2 uses
  store i8 %i.al, ptr %i.1592.ph.sroa.gep36, align 1, !tbaa !8
  %cmp43.27 = icmp eq i8 %i.al, 0
  br i1 %cmp43.27, label %min.iters.checked, label %for.inc.27

for.inc.27:                                       ; preds = %for.inc.26
  %arrayidx39.28 = getelementptr i8, ptr %.pre606, i64 28
  %i.am = load i8, ptr %arrayidx39.28, align 1, !tbaa !8 ; 2 uses
  store i8 %i.am, ptr %i.1592.ph.sroa.gep32, align 2, !tbaa !8
  %cmp43.28 = icmp eq i8 %i.am, 0
  br i1 %cmp43.28, label %min.iters.checked, label %for.inc.28

for.inc.28:                                       ; preds = %for.inc.27
  %arrayidx39.29 = getelementptr i8, ptr %.pre606, i64 29
  %i.an = load i8, ptr %arrayidx39.29, align 1, !tbaa !8 ; 2 uses
  store i8 %i.an, ptr %i.1592.ph.sroa.gep28, align 1, !tbaa !8
  %cmp43.29 = icmp eq i8 %i.an, 0
  br i1 %cmp43.29, label %min.iters.checked, label %for.inc.29

for.inc.29:                                       ; preds = %for.inc.28
  %arrayidx39.30 = getelementptr i8, ptr %.pre606, i64 30
  %i.ao = load i8, ptr %arrayidx39.30, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ao, ptr %i.1592.ph.sroa.gep24, align 4, !tbaa !8
  %cmp43.30 = icmp eq i8 %i.ao, 0
  br i1 %cmp43.30, label %min.iters.checked, label %for.inc.30

for.inc.30:                                       ; preds = %for.inc.29
  %arrayidx39.31 = getelementptr i8, ptr %.pre606, i64 31
  %i.ap = load i8, ptr %arrayidx39.31, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ap, ptr %i.1592.ph.sroa.gep20, align 1, !tbaa !8
  %cmp43.31 = icmp eq i8 %i.ap, 0
  br i1 %cmp43.31, label %for.body48.preheader666, label %for.inc.31

for.inc.31:                                       ; preds = %for.inc.30
  %arrayidx39.32 = getelementptr i8, ptr %.pre606, i64 32
  %i.aq = load i8, ptr %arrayidx39.32, align 1, !tbaa !8 ; 2 uses
  store i8 %i.aq, ptr %i.1592.ph.sroa.gep16, align 2, !tbaa !8
  %cmp43.32 = icmp eq i8 %i.aq, 0
  %spec.select = select i1 %cmp43.32, i64 46, i64 47
  br label %for.body48.preheader666

for.cond54.preheader:                             ; preds = %for.body48.preheader666, %min.iters.checked
  %cmp55589 = icmp eq i32 %mul17, 0
  br i1 %cmp55589, label %for.cond64.preheader, label %for.body56.lr.ph

for.body56.lr.ph:                                 ; preds = %for.cond54.preheader
  %value = getelementptr inbounds nuw i8, ptr %e, i64 24
  %.pre607 = load ptr, ptr %value, align 1, !tbaa !83 ; 4 uses
  %min.iters.check617 = icmp ult i32 %mul17, 4
  br i1 %min.iters.check617, label %for.body56.preheader, label %min.iters.checked618

for.body56.preheader:                             ; preds = %middle.block615, %min.iters.checked618, %for.body56.lr.ph
  %i53.0590.ph = phi i64 [ 0, %for.body56.lr.ph ], [ %n.vec620, %middle.block615 ], [ 0, %min.iters.checked618 ]
  br label %for.body56

min.iters.checked618:                             ; preds = %for.body56.lr.ph
  %n.vec620 = and i64 %conv18, -4                 ; 3 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %buffer, i64 48
  %i.ar = getelementptr i8, ptr %buffer, i64 %conv18
  %scevgep624 = getelementptr i8, ptr %i.ar, i64 47
  %i.as = getelementptr i8, ptr %.pre607, i64 %conv18
  %scevgep625 = getelementptr i8, ptr %i.as, i64 -1
  %bound0 = icmp ule ptr %scevgep, %scevgep625
  %bound1 = icmp ule ptr %.pre607, %scevgep624
  %memcheck.conflict = and i1 %bound1, %bound0
  br i1 %memcheck.conflict, label %for.body56.preheader, label %vector.body614

vector.body614:                                   ; preds = %min.iters.checked618, %vector.body614
  %index627 = phi i64 [ %index.next628, %vector.body614 ], [ 0, %min.iters.checked618 ] ; 3 uses
  %index.next628 = add nuw i64 %index627, 4       ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.pre607, i64 %index627
  %wide.load664 = load i32, ptr %i.at, align 1, !tbaa !8, !alias.scope !84
  %i.au = getelementptr i8, ptr %buffer, i64 %index627
  %i.av = getelementptr i8, ptr %i.au, i64 48
  store i32 %wide.load664, ptr %i.av, align 4, !tbaa !8, !alias.scope !87, !noalias !84
  %i.aw = icmp eq i64 %index.next628, %n.vec620
  br i1 %i.aw, label %middle.block615, label %vector.body614, !llvm.loop !89

middle.block615:                                  ; preds = %vector.body614
  %cmp.n630 = icmp eq i64 %n.vec620, %conv18
  br i1 %cmp.n630, label %for.cond64.preheader, label %for.body56.preheader

for.cond64.preheader:                             ; preds = %for.body56, %middle.block615, %for.cond54.preheader
  %cmp65587 = icmp eq i8 %cond11, 0
  br i1 %cmp65587, label %while.cond.i.preheader, label %for.body67.lr.ph

while.cond.i.preheader:                           ; preds = %vector.body633, %for.body67, %for.cond64.preheader
  br label %while.cond.i

for.body67.lr.ph:                                 ; preds = %for.cond64.preheader
  %coordinates = getelementptr inbounds nuw i8, ptr %e, i64 36
  %.pre608 = load ptr, ptr %coordinates, align 1, !tbaa !92 ; 4 uses
  %scevgep643 = getelementptr i8, ptr %buffer, i64 %add ; 3 uses
  %i.ax = getelementptr i8, ptr %buffer, i64 %mul20
  %i.ay = getelementptr i8, ptr %i.ax, i64 %conv18
  %scevgep645 = getelementptr i8, ptr %i.ay, i64 47
  %i.az = getelementptr i8, ptr %.pre608, i64 %mul20
  %scevgep646 = getelementptr i8, ptr %i.az, i64 -1
  %bound0647 = icmp ule ptr %scevgep643, %scevgep646
  %bound1648 = icmp ule ptr %.pre608, %scevgep645
  %memcheck.conflict650 = and i1 %bound1648, %bound0647
  br i1 %memcheck.conflict650, label %for.body67, label %vector.body633

vector.body633:                                   ; preds = %for.body67.lr.ph, %vector.body633
  %index653 = phi i64 [ %index.next654, %vector.body633 ], [ 0, %for.body67.lr.ph ] ; 3 uses
  %index.next654 = add nuw nsw i64 %index653, 4   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre608, i64 %index653
  %wide.load659665 = load i32, ptr %i.ba, align 1, !tbaa !8, !alias.scope !93
  %gep = getelementptr i8, ptr %scevgep643, i64 %index653
  store i32 %wide.load659665, ptr %gep, align 1, !tbaa !8, !alias.scope !96, !noalias !93
  %i.bb = icmp eq i64 %index.next654, %mul20
  br i1 %i.bb, label %while.cond.i.preheader, label %vector.body633, !llvm.loop !98

for.body56:                                       ; preds = %for.body56.preheader, %for.body56
  %i53.0590 = phi i64 [ %inc61, %for.body56 ], [ %i53.0590.ph, %for.body56.preheader ] ; 3 uses
  %arrayidx57 = getelementptr inbounds i8, ptr %.pre607, i64 %i53.0590
  %i.bc = load i8, ptr %arrayidx57, align 1, !tbaa !8
  %i.bd = getelementptr i8, ptr %buffer, i64 %i53.0590
  %arrayidx59 = getelementptr i8, ptr %i.bd, i64 48
  store i8 %i.bc, ptr %arrayidx59, align 1, !tbaa !8
  %inc61 = add nuw i64 %i53.0590, 1               ; 2 uses
  %cmp55 = icmp ult i64 %inc61, %conv18
  br i1 %cmp55, label %for.body56, label %for.cond64.preheader, !llvm.loop !99

while.cond.i:                                     ; preds = %while.cond.i.preheader, %while.cond.i
  %i.be = atomicrmw xchg ptr @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE, i32 1 seq_cst, align 4
  %tobool.i = icmp eq i32 %i.be, 0
  br i1 %tobool.i, label %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit, label %while.cond.i

_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit: ; preds = %while.cond.i
  %call76 = call i64 @write(i32 %call, ptr nonnull %buffer, i64 %add21) #16
  %cmp77 = icmp eq i64 %call76, %add21
  br i1 %cmp77, label %if.end79, label %if.then78

for.body67:                                       ; preds = %for.body67.lr.ph, %for.body67
  %i63.0588 = phi i64 [ %inc73, %for.body67 ], [ 0, %for.body67.lr.ph ] ; 3 uses
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %.pre608, i64 %i63.0588
  %i.bf = load i8, ptr %arrayidx68, align 1, !tbaa !8
  %gep5 = getelementptr i8, ptr %scevgep643, i64 %i63.0588
  store i8 %i.bf, ptr %gep5, align 1, !tbaa !8
  %inc73 = add nuw nsw i64 %i63.0588, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %inc73, %mul20
  br i1 %exitcond.not, label %while.cond.i.preheader, label %for.body67, !llvm.loop !100

if.then78:                                        ; preds = %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit
  call void @halide_print(ptr %user_context, ptr nonnull @.str.1.36) #16
  call void @abort() #16
  unreachable

if.end79:                                         ; preds = %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit
  store atomic i32 0, ptr @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE release, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %buffer)
  br label %if.end298

if.else:                                          ; preds = %entry
  %call.i424 = tail call ptr @halide_malloc(ptr %user_context, i64 1024) #16 ; 4 uses
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %call.i424, i64 1023 ; 40 uses
  store i8 0, ptr %add.ptr.i, align 1, !tbaa !8
  %bits82 = getelementptr inbounds nuw i8, ptr %e, i64 17
  %i.bg = load i8, ptr %bits82, align 1, !tbaa !77
  %conv83 = zext i8 %i.bg to i32
  br label %while.cond80

while.cond80:                                     ; preds = %while.cond80, %if.else
  %print_bits.0 = phi i32 [ 8, %if.else ], [ %shl86, %while.cond80 ] ; 10 uses
  %cmp84 = icmp slt i32 %print_bits.0, %conv83
  %shl86 = shl i32 %print_bits.0, 1
  br i1 %cmp84, label %while.cond80, label %while.end87

while.end87:                                      ; preds = %while.cond80
  %cmp88 = icmp samesign ult i32 %print_bits.0, 65
  br i1 %cmp88, label %if.end90, label %if.then89

if.then89:                                        ; preds = %while.end87
  tail call void @halide_print(ptr %user_context, ptr nonnull @.str.2.37) #16
  tail call void @abort() #16
  unreachable

if.end90:                                         ; preds = %while.end87
  %event91 = getelementptr inbounds nuw i8, ptr %e, i64 8
  %i.bh = load i32, ptr %event91, align 1, !tbaa !79 ; 2 uses
  %cmp92 = icmp slt i32 %i.bh, 2
  %idxprom = zext i32 %i.bh to i64
  %arrayidx94 = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6Halide7Runtime8Internal13default_traceEPvPK18halide_trace_eventE11event_types, i64 %idxprom
  %i.bi = load ptr, ptr %arrayidx94, align 8, !tbaa !4
  %call.i429 = tail call ptr @halide_string_to_string(ptr nonnull %call.i424, ptr nonnull %add.ptr.i, ptr %i.bi) #16
  %call.i432 = tail call ptr @halide_string_to_string(ptr %call.i429, ptr nonnull %add.ptr.i, ptr nonnull @.str.13.38) #16
  %i.bj = load ptr, ptr %e, align 1, !tbaa !82
  %call.i435 = tail call ptr @halide_string_to_string(ptr %call.i432, ptr nonnull %add.ptr.i, ptr %i.bj) #16
  %call.i438 = tail call ptr @halide_string_to_string(ptr %call.i435, ptr nonnull %add.ptr.i, ptr nonnull @.str.25.130) #16
  %value_index100 = getelementptr inbounds nuw i8, ptr %e, i64 20
  %i.bk = load i32, ptr %value_index100, align 1, !tbaa !81
  %conv.i = sext i32 %i.bk to i64
  %call.i441 = tail call ptr @halide_int64_to_string(ptr %call.i438, ptr nonnull %add.ptr.i, i64 %conv.i, i32 1) #16
  %call.i444 = tail call ptr @halide_string_to_string(ptr %call.i441, ptr nonnull %add.ptr.i, ptr nonnull @.str.15.40) #16 ; 2 uses
  %lanes104 = getelementptr inbounds nuw i8, ptr %e, i64 18 ; 7 uses
  %i.bl = load i16, ptr %lanes104, align 1, !tbaa !71
  %cmp106 = icmp ugt i16 %i.bl, 1
  br i1 %cmp106, label %if.then107, label %for.cond111.preheader

if.then107:                                       ; preds = %if.end90
  %call.i447 = tail call ptr @halide_string_to_string(ptr %call.i444, ptr nonnull %add.ptr.i, ptr nonnull @.str.16.41) #16
  br label %for.cond111.preheader

for.cond111.preheader:                            ; preds = %if.then107, %if.end90
  %ss.sroa.5.0.ph = phi ptr [ %call.i444, %if.end90 ], [ %call.i447, %if.then107 ] ; 2 uses
  %dimensions112 = getelementptr inbounds nuw i8, ptr %e, i64 32 ; 3 uses
  %i.bm = load i32, ptr %dimensions112, align 1, !tbaa !76
  %cmp113599 = icmp sgt i32 %i.bm, 0
  br i1 %cmp113599, label %if.end131.peel, label %for.cond.cleanup114

if.end131.peel:                                   ; preds = %for.cond111.preheader
  %coordinates133 = getelementptr inbounds nuw i8, ptr %e, i64 36 ; 2 uses
  %.pre = load ptr, ptr %coordinates133, align 1, !tbaa !92
  %.pre47 = load i32, ptr %.pre, align 4, !tbaa !69
  %conv.i456.peel = sext i32 %.pre47 to i64
  %call.i457.peel = tail call ptr @halide_int64_to_string(ptr %ss.sroa.5.0.ph, ptr nonnull %add.ptr.i, i64 %conv.i456.peel, i32 1) #16 ; 2 uses
  %i.bn = load i32, ptr %dimensions112, align 1, !tbaa !76
  %cmp113.peel = icmp sgt i32 %i.bn, 1
  br i1 %cmp113.peel, label %if.then117, label %for.cond.cleanup114

for.cond.cleanup114:                              ; preds = %if.end131, %if.end131.peel, %for.cond111.preheader
  %ss.sroa.5.0.lcssa = phi ptr [ %ss.sroa.5.0.ph, %for.cond111.preheader ], [ %call.i457.peel, %if.end131.peel ], [ %call.i457, %if.end131 ]
  %i.bo = load i16, ptr %lanes104, align 1, !tbaa !71
  %cmp142 = icmp ugt i16 %i.bo, 1
  %.str.19.44..str.20.45 = select i1 %cmp142, ptr @.str.19.44, ptr @.str.8.113
  %call.i463 = tail call ptr @halide_string_to_string(ptr %ss.sroa.5.0.lcssa, ptr nonnull %add.ptr.i, ptr nonnull %.str.19.44..str.20.45) #16 ; 2 uses
  br i1 %cmp92, label %if.then148, label %if.end294

if.then117:                                       ; preds = %if.end131.peel, %if.end131
  %indvars.iv604 = phi i64 [ %indvars.iv.next605, %if.end131 ], [ 1, %if.end131.peel ] ; 3 uses
  %ss.sroa.5.0600 = phi ptr [ %call.i457, %if.end131 ], [ %call.i457.peel, %if.end131.peel ]
  %i.bp = load i16, ptr %lanes104, align 1, !tbaa !71 ; 2 uses
  %cmp121 = icmp ugt i16 %i.bp, 1
  br i1 %cmp121, label %land.lhs.true, label %if.else128

land.lhs.true:                                    ; preds = %if.then117
  %conv120 = zext i16 %i.bp to i32
  %i.bq = trunc nuw nsw i64 %indvars.iv604 to i32
  %rem2 = urem i32 %i.bq, %conv120
  %cmp125 = icmp eq i32 %rem2, 0
  br i1 %cmp125, label %if.end131, label %if.else128

if.else128:                                       ; preds = %land.lhs.true, %if.then117
  br label %if.end131

if.end131:                                        ; preds = %land.lhs.true, %if.else128
  %.str.18.43.sink = phi ptr [ @.str.18.43, %if.else128 ], [ @.str.17.42, %land.lhs.true ]
  %call.i453 = tail call ptr @halide_string_to_string(ptr %ss.sroa.5.0600, ptr nonnull %add.ptr.i, ptr nonnull %.str.18.43.sink) #16
  %i.br = load ptr, ptr %coordinates133, align 1, !tbaa !92
  %arrayidx134 = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv604
  %i.bs = load i32, ptr %arrayidx134, align 4, !tbaa !69
  %conv.i456 = sext i32 %i.bs to i64
  %call.i457 = tail call ptr @halide_int64_to_string(ptr %call.i453, ptr nonnull %add.ptr.i, i64 %conv.i456, i32 1) #16 ; 2 uses
  %indvars.iv.next605 = add nuw nsw i64 %indvars.iv604, 1 ; 2 uses
  %i.bt = load i32, ptr %dimensions112, align 1, !tbaa !76
  %i.bu = sext i32 %i.bt to i64
  %cmp113 = icmp slt i64 %indvars.iv.next605, %i.bu
  br i1 %cmp113, label %if.then117, label %for.cond.cleanup114, !llvm.loop !101

if.then148:                                       ; preds = %for.cond.cleanup114
  %i.bv = load i16, ptr %lanes104, align 1, !tbaa !71
  %cmp152 = icmp ugt i16 %i.bv, 1
  %.str.21.46..str.22.47 = select i1 %cmp152, ptr @.str.21.46, ptr @.str.22.47
  %call.i469 = tail call ptr @halide_string_to_string(ptr %call.i463, ptr nonnull %add.ptr.i, ptr nonnull %.str.21.46..str.22.47) #16 ; 14 uses
  %i.bw = load i16, ptr %lanes104, align 1, !tbaa !71
  %cmp163595 = icmp eq i16 %i.bw, 0
  br i1 %cmp163595, label %if.end294, label %if.end169.peel

if.end169.peel:                                   ; preds = %if.then148
end_hunk_0
begin_hunk_1_@halide_memoization_cache_release:entry
  tail call void @abort() #16
  unreachable

if.end:                                           ; preds = %if.else
  %dec = add i32 %i.b, -1
  store i32 %dec, ptr %in_use_count, align 4, !tbaa !127
  tail call void @halide_mutex_unlock(ptr nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #16
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: norecurse nounwind
define weak ptr @halide_string_to_string(ptr %dst, ptr %end, ptr %arg) local_unnamed_addr #3 {
entry:
  %cmp = icmp ult ptr %dst, %end
  br i1 %cmp, label %if.end3, label %return

if.then2:                                         ; preds = %if.end6
  store i8 0, ptr %dst.addr.019, align 1, !tbaa !8
  br label %return

if.end3:                                          ; preds = %entry, %if.end6
  %arg.addr.020 = phi ptr [ %incdec.ptr7, %if.end6 ], [ %arg, %entry ] ; 2 uses
  %dst.addr.019 = phi ptr [ %incdec.ptr, %if.end6 ], [ %dst, %entry ] ; 4 uses
  %i.a = load i8, ptr %arg.addr.020, align 1, !tbaa !8 ; 2 uses
  store i8 %i.a, ptr %dst.addr.019, align 1, !tbaa !8
  %cmp4 = icmp eq i8 %i.a, 0
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.end3
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %dst.addr.019, i64 1 ; 2 uses
  %incdec.ptr7 = getelementptr inbounds nuw i8, ptr %arg.addr.020, i64 1
  %cmp1 = icmp eq ptr %incdec.ptr, %end
  br i1 %cmp1, label %if.then2, label %if.end3

return:                                           ; preds = %if.end3, %if.then2, %entry
  %retval.0 = phi ptr [ %end, %if.then2 ], [ %dst, %entry ], [ %dst.addr.019, %if.end3 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind
define weak ptr @halide_uint64_to_string(ptr %dst, ptr %end, i64 %arg, i32 %min_digits) local_unnamed_addr #0 {
entry:
  %buf = alloca [32 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %buf)
  %arrayidx = getelementptr inbounds nuw i8, ptr %buf, i64 31
  store i8 0, ptr %arrayidx, align 1, !tbaa !8
  %add.ptr = getelementptr inbounds nuw i8, ptr %buf, i64 30 ; 2 uses
  %cmp13 = icmp sgt i32 %min_digits, 0
  %tobool14 = icmp ne i64 %arg, 0
  %i.a = or i1 %tobool14, %cmp13
  br i1 %i.a, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %digits.0.lcssa = phi ptr [ %add.ptr, %entry ], [ %incdec.ptr, %for.body ]
  %incdec.ptr1 = getelementptr inbounds nuw i8, ptr %digits.0.lcssa, i64 1
  %call = call ptr @halide_string_to_string(ptr %dst, ptr %end, ptr nonnull %incdec.ptr1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %buf)
  ret ptr %call

for.body:                                         ; preds = %entry, %for.body
  %arg.addr.017 = phi i64 [ %div, %for.body ], [ %arg, %entry ] ; 3 uses
  %digits.016 = phi ptr [ %incdec.ptr, %for.body ], [ %add.ptr, %entry ] ; 2 uses
  %i.015 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %div = udiv i64 %arg.addr.017, 10               ; 2 uses
  %i.b = mul i64 %div, 246
  %sub = add i64 %arg.addr.017, 48
  %add = add i64 %sub, %i.b
  %conv = trunc i64 %add to i8
  store i8 %conv, ptr %digits.016, align 1, !tbaa !8
  %incdec.ptr = getelementptr inbounds i8, ptr %digits.016, i64 -1 ; 2 uses
  %inc = add nuw nsw i32 %i.015, 1                ; 2 uses
  %cmp = icmp slt i32 %inc, %min_digits
  %i.c = icmp ugt i64 %arg.addr.017, 9
  %i.d = or i1 %i.c, %cmp
  br i1 %i.d, label %for.body, label %for.cond.cleanup
}

; Function Attrs: nounwind
define weak ptr @halide_int64_to_string(ptr %dst, ptr %end, i64 %arg, i32 %min_digits) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i64 %arg, -1
  %cmp1 = icmp ugt ptr %dst, %end
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %dst, i64 1
  store i8 45, ptr %dst, align 1, !tbaa !8
  %sub = sub nsw i64 0, %arg
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arg.addr.0 = phi i64 [ %sub, %if.then ], [ %arg, %entry ]
  %dst.addr.0 = phi ptr [ %incdec.ptr, %if.then ], [ %dst, %entry ]
  %call = tail call ptr @halide_uint64_to_string(ptr %dst.addr.0, ptr %end, i64 %arg.addr.0, i32 %min_digits) #17
  ret ptr %call
}

; Function Attrs: nounwind
define weak ptr @halide_double_to_string(ptr %dst, ptr %end, double %arg, i32 %scientific) local_unnamed_addr #0 {
entry:
  %arg.addr = alloca double, align 8              ; 3 uses
  %bits = alloca i64, align 8                     ; 5 uses
  %buf = alloca [512 x i8], align 1               ; 7 uses
  store double %arg, ptr %arg.addr, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %bits)
  store i64 0, ptr %bits, align 8, !tbaa !60
  %call = call ptr @memcpy(ptr nonnull %bits, ptr nonnull %arg.addr, i64 8) #16 ; 0 uses
  %i.a = load i64, ptr %bits, align 8, !tbaa !60  ; 5 uses
  %and = and i64 %i.a, 4503599627370495           ; 3 uses
  %shr = lshr i64 %i.a, 52
  %shr.tr = trunc nuw nsw i64 %shr to i32
  %conv = and i32 %shr.tr, 2047                   ; 6 uses
  %cmp = icmp eq i32 %conv, 2047
  br i1 %cmp, label %if.then, label %if.else15

if.then:                                          ; preds = %entry
  %tobool = icmp eq i64 %and, 0
  %tobool5.not = icmp sgt i64 %i.a, -1            ; 2 uses
  br i1 %tobool, label %if.else9, label %if.then4

if.then4:                                         ; preds = %if.then
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  %call7 = call ptr @halide_string_to_string(ptr %dst, ptr %end, ptr nonnull @.str.80) #17
  br label %cleanup148

if.else:                                          ; preds = %if.then4
  %call8 = call ptr @halide_string_to_string(ptr %dst, ptr %end, ptr nonnull @.str.1.81) #17
  br label %cleanup148

if.else9:                                         ; preds = %if.then
  br i1 %tobool5.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.else9
  %call12 = call ptr @halide_string_to_string(ptr %dst, ptr %end, ptr nonnull @.str.2.82) #17
  br label %cleanup148

if.else13:                                        ; preds = %if.else9
  %call14 = call ptr @halide_string_to_string(ptr %dst, ptr %end, ptr nonnull @.str.3.83) #17
  br label %cleanup148

if.else15:                                        ; preds = %entry
  %cmp16 = icmp eq i32 %conv, 0                   ; 2 uses
  %cmp17 = icmp eq i64 %and, 0
  %or.cond = and i1 %cmp17, %cmp16
  br i1 %or.cond, label %if.then18, label %if.end32

if.then18:                                        ; preds = %if.else15
  %tobool19 = icmp eq i32 %scientific, 0
  %tobool21.not = icmp sgt i64 %i.a, -1           ; 2 uses
  br i1 %tobool19, label %if.else26, label %if.then20

if.then20:                                        ; preds = %if.then18
  br i1 %tobool21.not, label %if.else24, label %if.then22

if.then22:                                        ; preds = %if.then20
  %call23 = call ptr @halide_string_to_string(ptr %dst, ptr %end, ptr nonnull @.str.4.84) #17
  br label %cleanup148

if.else24:                                        ; preds = %if.then20
  %call25 = call ptr @halide_string_to_string(ptr %dst, ptr %end, ptr nonnull @.str.5.85) #17
  br label %cleanup148

if.else26:                                        ; preds = %if.then18
  br i1 %tobool21.not, label %if.else30, label %if.then28

if.then28:                                        ; preds = %if.else26
  %call29 = call ptr @halide_string_to_string(ptr %dst, ptr %end, ptr nonnull @.str.6.86) #17
  br label %cleanup148

if.else30:                                        ; preds = %if.else26
  %call31 = call ptr @halide_string_to_string(ptr %dst, ptr %end, ptr nonnull @.str.7.87) #17
  br label %cleanup148

if.end32:                                         ; preds = %if.else15
  %tobool33 = icmp sgt i64 %i.a, -1
  br i1 %tobool33, label %if.end37, label %if.then34

if.then34:                                        ; preds = %if.end32
  %call35 = call ptr @halide_string_to_string(ptr %dst, ptr %end, ptr nonnull @.str.8.88) #17
  %sub36 = fneg double %arg                       ; 2 uses
  store double %sub36, ptr %arg.addr, align 8, !tbaa !103
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end32
  %arg1 = phi double [ %sub36, %if.then34 ], [ %arg, %if.end32 ] ; 3 uses
  %dst.addr.0 = phi ptr [ %call35, %if.then34 ], [ %dst, %if.end32 ] ; 3 uses
  %tobool38 = icmp eq i32 %scientific, 0
  br i1 %tobool38, label %if.else62, label %while.condthread-pre-split

while.condthread-pre-split:                       ; preds = %if.end37
  %cmp40261 = fcmp olt double %arg1, 1.000000e+00
  br i1 %cmp40261, label %while.body, label %while.cond41thread-pre-split

while.body:                                       ; preds = %while.condthread-pre-split, %while.body
  %i.b = phi double [ %mul, %while.body ], [ %arg1, %while.condthread-pre-split ]
  %mul = fmul double %i.b, 1.000000e+01           ; 3 uses
  %cmp40 = fcmp olt double %mul, 1.000000e+00
  br i1 %cmp40, label %while.body, label %while.cond41thread-pre-split

while.cond41thread-pre-split:                     ; preds = %while.body, %while.condthread-pre-split
  %.pr246 = phi double [ %arg1, %while.condthread-pre-split ], [ %mul, %while.body ] ; 3 uses
  %exponent_base_10.0.lcssa = phi i32 [ 0, %while.condthread-pre-split ], [ -1, %while.body ] ; 2 uses
  %cmp42257 = fcmp ult double %.pr246, 1.000000e+01
  br i1 %cmp42257, label %while.end44, label %while.body43

while.body43:                                     ; preds = %while.cond41thread-pre-split, %while.body43
  %exponent_base_10.1258 = phi i32 [ %inc, %while.body43 ], [ %exponent_base_10.0.lcssa, %while.cond41thread-pre-split ]
  %i.c = phi double [ %div, %while.body43 ], [ %.pr246, %while.cond41thread-pre-split ]
  %div = fdiv double %i.c, 1.000000e+01           ; 3 uses
  %inc = add nsw i32 %exponent_base_10.1258, 1    ; 2 uses
  %cmp42 = fcmp ult double %div, 1.000000e+01
  br i1 %cmp42, label %while.end44, label %while.body43

while.end44:                                      ; preds = %while.body43, %while.cond41thread-pre-split
  %exponent_base_10.1.lcssa = phi i32 [ %exponent_base_10.0.lcssa, %while.cond41thread-pre-split ], [ %inc, %while.body43 ] ; 3 uses
  %.lcssa = phi double [ %.pr246, %while.cond41thread-pre-split ], [ %div, %while.body43 ]
  %mul45 = fmul double %.lcssa, 1.000000e+06
  %add = fadd double %mul45, 5.000000e-01
  %conv46 = fptoui double %add to i64             ; 2 uses
  %div47 = udiv i64 %conv46, 1000000              ; 2 uses
  %i.d = mul i64 %div47, -1000000
  %sub49 = add i64 %i.d, %conv46
  %call50 = call ptr @halide_int64_to_string(ptr %dst.addr.0, ptr %end, i64 %div47, i32 1) #17
  %call51 = call ptr @halide_string_to_string(ptr %call50, ptr %end, ptr nonnull @.str.25.130) #17
  %call52 = call ptr @halide_int64_to_string(ptr %call51, ptr %end, i64 %sub49, i32 6) #17 ; 2 uses
  %cmp53 = icmp sgt i32 %exponent_base_10.1.lcssa, -1
  br i1 %cmp53, label %if.then54, label %if.else56

if.then54:                                        ; preds = %while.end44
  %call55 = call ptr @halide_string_to_string(ptr %call52, ptr %end, ptr nonnull @.str.10.90) #17
  br label %if.end59

if.else56:                                        ; preds = %while.end44
  %call57 = call ptr @halide_string_to_string(ptr %call52, ptr %end, ptr nonnull @.str.11.91) #17
  %sub58 = sub nsw i32 0, %exponent_base_10.1.lcssa
  br label %if.end59

if.end59:                                         ; preds = %if.else56, %if.then54
  %exponent_base_10.2 = phi i32 [ %exponent_base_10.1.lcssa, %if.then54 ], [ %sub58, %if.else56 ]
  %dst.addr.1 = phi ptr [ %call55, %if.then54 ], [ %call57, %if.else56 ]
  %conv60 = zext nneg i32 %exponent_base_10.2 to i64
  %call61 = call ptr @halide_int64_to_string(ptr %dst.addr.1, ptr %end, i64 %conv60, i32 2) #17
  br label %cleanup148

if.else62:                                        ; preds = %if.end37
  br i1 %cmp16, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.else62
  %call65 = call ptr @halide_double_to_string(ptr %dst.addr.0, ptr %end, double 0.000000e+00, i32 0) #17
  br label %cleanup148

if.end66:                                         ; preds = %if.else62
  %add68 = or disjoint i64 %and, 4503599627370496 ; 3 uses
  %sub70 = add nsw i32 %conv, -1075               ; 3 uses
  %cmp71 = icmp samesign ult i32 %conv, 1075
  br i1 %cmp71, label %if.end105.thread, label %if.end105

if.end105.thread:                                 ; preds = %if.end66
  %cmp73 = icmp samesign ult i32 %conv, 1023      ; 2 uses
  %sub77 = sub nuw nsw i32 1075, %conv
  %sh_prom = zext nneg i32 %sub77 to i64          ; 2 uses
  %shr78 = lshr i64 %add68, %sh_prom              ; 2 uses
  %shl81 = shl i64 %shr78, %sh_prom
  %integer_part.0 = select i1 %cmp73, i64 0, i64 %shr78
  %sub82 = select i1 %cmp73, i64 0, i64 %shl81
  %f.0.in = sub i64 %add68, %sub82
  %f.0 = uitofp i64 %f.0.in to double
  %conv85244 = zext i32 %sub70 to i64
  %shl86 = shl i64 %conv85244, 52
  %add88 = add nsw i64 %shl86, 4696837146684686336
  %i.e = bitcast i64 %add88 to double
  %mul90 = fmul double %i.e, %f.0
  %add91 = fadd double %mul90, 5.000000e-01       ; 2 uses
  %conv92 = fptoui double %add91 to i64           ; 3 uses
  %conv93 = uitofp i64 %conv92 to double
  %notlhs = fcmp oeq double %add91, %conv93
  %notrhs = trunc i64 %conv92 to i1
  %not.or.cond245 = and i1 %notlhs, %notrhs
  %dec99 = sext i1 %not.or.cond245 to i64
  %fractional_part.0 = add i64 %dec99, %conv92    ; 2 uses
  %cmp101 = icmp eq i64 %fractional_part.0, 1000000 ; 2 uses
  %inc103 = zext i1 %cmp101 to i64
  %inc103.integer_part.0 = add nuw nsw i64 %integer_part.0, %inc103
  %.fractional_part.0 = select i1 %cmp101, i64 0, i64 %fractional_part.0
  call void @llvm.lifetime.start.p0(ptr nonnull %buf)
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %buf, i64 512
  %add.ptr1066 = getelementptr inbounds nuw i8, ptr %buf, i64 480 ; 2 uses
  %call1097 = call ptr @halide_int64_to_string(ptr nonnull %add.ptr1066, ptr nonnull %add.ptr5, i64 %inc103.integer_part.0, i32 1) #17 ; 0 uses
  br label %for.cond.cleanup

if.end105:                                        ; preds = %if.end66
  call void @llvm.lifetime.start.p0(ptr nonnull %buf)
  %add.ptr = getelementptr inbounds nuw i8, ptr %buf, i64 512
  %add.ptr106 = getelementptr inbounds nuw i8, ptr %buf, i64 480 ; 3 uses
  %call109 = call ptr @halide_int64_to_string(ptr nonnull %add.ptr106, ptr nonnull %add.ptr, i64 %add68, i32 1) #17 ; 2 uses
  %cmp110252.not = icmp eq i32 %sub70, 0
  br i1 %cmp110252.not, label %for.cond.cleanup, label %for.cond112.preheader

for.cond112.preheader:                            ; preds = %if.end105, %if.end138
  %i.0255 = phi i32 [ %inc140, %if.end138 ], [ 0, %if.end105 ]
  %int_part_ptr.0253 = phi ptr [ %int_part_ptr.1, %if.end138 ], [ %add.ptr106, %if.end105 ] ; 5 uses
  %cmp114249 = icmp eq ptr %call109, %int_part_ptr.0253
  br i1 %cmp114249, label %if.end138, label %for.body116

for.cond.cleanup:                                 ; preds = %if.end138, %if.end105.thread, %if.end105
  %fractional_part.29 = phi i64 [ 0, %if.end105 ], [ %.fractional_part.0, %if.end105.thread ], [ 0, %if.end138 ]
  %int_part_ptr.0.lcssa = phi ptr [ %add.ptr106, %if.end105 ], [ %add.ptr1066, %if.end105.thread ], [ %int_part_ptr.1, %if.end138 ]
  %call142 = call ptr @halide_string_to_string(ptr %dst.addr.0, ptr %end, ptr %int_part_ptr.0.lcssa) #17
  %call143 = call ptr @halide_string_to_string(ptr %call142, ptr %end, ptr nonnull @.str.25.130) #17
  %call144 = call ptr @halide_int64_to_string(ptr %call143, ptr %end, i64 %fractional_part.29, i32 6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %buf)
  br label %cleanup148

for.cond.cleanup115:                              ; preds = %for.body116
  br i1 %cmp125, label %if.then136, label %if.end138

for.body116:                                      ; preds = %for.cond112.preheader, %for.body116
  %p.0251.pn = phi ptr [ %p.0251, %for.body116 ], [ %call109, %for.cond112.preheader ]
  %carry.0250 = phi i32 [ %carry.1, %for.body116 ], [ 0, %for.cond112.preheader ]
  %p.0251 = getelementptr inbounds i8, ptr %p.0251.pn, i64 -1 ; 4 uses
  %i.f = load i8, ptr %p.0251, align 1, !tbaa !8
  %sub118 = add i8 %i.f, -48
  %conv120 = sext i8 %sub118 to i32
  %mul121 = shl nsw i32 %conv120, 1
  %add122 = or disjoint i32 %mul121, %carry.0250  ; 2 uses
  %i.g = trunc i32 %add122 to i8
  %cmp125 = icmp sgt i8 %i.g, 9                   ; 3 uses
  %carry.1 = zext i1 %cmp125 to i32
  %i.h = select i1 %cmp125, i32 38, i32 48
  %add133 = add nsw i32 %i.h, %add122
  %conv134 = trunc i32 %add133 to i8
  store i8 %conv134, ptr %p.0251, align 1, !tbaa !8
  %cmp114 = icmp eq ptr %p.0251, %int_part_ptr.0253
  br i1 %cmp114, label %for.cond.cleanup115, label %for.body116

if.then136:                                       ; preds = %for.cond.cleanup115
  %incdec.ptr137 = getelementptr inbounds i8, ptr %int_part_ptr.0253, i64 -1 ; 2 uses
  store i8 49, ptr %incdec.ptr137, align 1, !tbaa !8
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %for.cond.cleanup115, %for.cond112.preheader
  %int_part_ptr.1 = phi ptr [ %incdec.ptr137, %if.then136 ], [ %int_part_ptr.0253, %for.cond.cleanup115 ], [ %int_part_ptr.0253, %for.cond112.preheader ] ; 2 uses
  %inc140 = add nuw nsw i32 %i.0255, 1            ; 2 uses
  %exitcond = icmp eq i32 %inc140, %sub70
  br i1 %exitcond, label %for.cond.cleanup, label %for.cond112.preheader

cleanup148:                                       ; preds = %for.cond.cleanup, %if.then64, %if.end59, %if.else30, %if.then28, %if.else24, %if.then22, %if.else13, %if.then11, %if.else, %if.then6
  %retval.1 = phi ptr [ %call7, %if.then6 ], [ %call8, %if.else ], [ %call12, %if.then11 ], [ %call14, %if.else13 ], [ %call23, %if.then22 ], [ %call25, %if.else24 ], [ %call29, %if.then28 ], [ %call31, %if.else30 ], [ %call65, %if.then64 ], [ %call61, %if.end59 ], [ %call144, %for.cond.cleanup ]
  call void @llvm.lifetime.end.p0(ptr nonnull %bits)
  ret ptr %retval.1
}

; Function Attrs: nounwind
define weak ptr @halide_pointer_to_string(ptr %dst, ptr %end, ptr %arg) local_unnamed_addr #0 {
entry:
  %buf = alloca [20 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %buf)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %buf, i8 0, i64 20, i1 false)
  %add.ptr = getelementptr inbounds nuw i8, ptr %buf, i64 18
  %i.a = ptrtoint ptr %arg to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.018 = phi i32 [ 0, %entry ], [ %inc, %for.body ] ; 2 uses
  %bits.017 = phi i64 [ %i.a, %entry ], [ %shr, %for.body ] ; 2 uses
  %buf_ptr.016 = phi ptr [ %add.ptr, %entry ], [ %incdec.ptr, %for.body ] ; 3 uses
  %and = and i64 %bits.017, 15
  %arrayidx = getelementptr inbounds nuw i8, ptr @.str.12.94, i64 %and
  %i.b = load i8, ptr %arrayidx, align 1, !tbaa !8
  %incdec.ptr = getelementptr inbounds i8, ptr %buf_ptr.016, i64 -1 ; 2 uses
  store i8 %i.b, ptr %buf_ptr.016, align 1, !tbaa !8
  %shr = lshr i64 %bits.017, 4                    ; 2 uses
  %tobool = icmp ne i64 %shr, 0
  %inc = add nuw nsw i32 %i.018, 1
  %cmp = icmp samesign ult i32 %i.018, 15
  %or.cond = and i1 %cmp, %tobool
  br i1 %or.cond, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.body
  %incdec.ptr1 = getelementptr inbounds i8, ptr %buf_ptr.016, i64 -2 ; 2 uses
  store i8 120, ptr %incdec.ptr, align 1, !tbaa !8
  store i8 48, ptr %incdec.ptr1, align 1, !tbaa !8
  %call = call ptr @halide_string_to_string(ptr %dst, ptr %end, ptr nonnull %incdec.ptr1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %buf)
  ret ptr %call
}

; Function Attrs: norecurse nounwind
define weak i64 @halide_get_device_handle(i64 %dev_field) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq i64 %dev_field, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %i.a = inttoptr i64 %dev_field to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !133
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i64 [ %i.b, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}
end_hunk_1
