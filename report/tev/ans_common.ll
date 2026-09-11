Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ans_common?download=true
inline.NumInlined: 349
inline.NumDeleted: 202
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3jxl14InitAliasTableENSt3__16vectorIiNS0_9allocatorIiEEEEjmPNS_10AliasTable5EntryE:bb.a
  %index488 = phi i64 [ 0, %vector.ph485 ], [ %index.next493, %vector.body487 ] ; 2 uses
  %i.fb = mul i64 %index488, -4                   ; 2 uses
  %next.gep489 = getelementptr i8, ptr %i.ep, i64 %i.fb ; 2 uses
  %next.gep490 = getelementptr i8, ptr %i.dq, i64 %i.fb ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %next.gep490, i64 -16
  %i.fd = getelementptr inbounds i8, ptr %next.gep490, i64 -32
  %wide.load491 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !82, !noalias !99
  %wide.load492 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !82, !noalias !99
  %i.fe = getelementptr inbounds i8, ptr %next.gep489, i64 -16
  %i.ff = getelementptr inbounds i8, ptr %next.gep489, i64 -32
  store <4 x i32> %wide.load491, ptr %i.fe, align 4, !tbaa !82, !noalias !99
  store <4 x i32> %wide.load492, ptr %i.ff, align 4, !tbaa !82, !noalias !99
  %index.next493 = add nuw i64 %index488, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next493, %n.vec486
  br i1 %i.fg, label %middle.block494, label %vector.body487, !llvm.loop !30

middle.block494:                                  ; preds = %vector.body487
  %cmp.n495 = icmp eq i64 %i.ew, %n.vec486
  br i1 %cmp.n495, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader607

.lr.ph.i.i.i.i.i.i.i.i.i117.preheader607:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader, %middle.block494
  %.ph608 = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader ], [ %i.ez, %middle.block494 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i118.ph = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader ], [ %i.fa, %middle.block494 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i117

.lr.ph.i.i.i.i.i.i.i.i.i117:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader607, %.lr.ph.i.i.i.i.i.i.i.i.i117
  %i.fh = phi ptr [ %i.fk, %.lr.ph.i.i.i.i.i.i.i.i.i117 ], [ %.ph608, %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader607 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i118 = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i.i.i.i.i117 ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i118.ph, %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader607 ]
  %i.fi = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i118, i64 -4 ; 3 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !82, !noalias !99
  %i.fk = getelementptr inbounds i8, ptr %i.fh, i64 -4 ; 3 uses
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !82, !noalias !99
  %.not.i.i.i.i.i.i.i.i.i119 = icmp eq ptr %i.fi, %i.do
  br i1 %.not.i.i.i.i.i.i.i.i.i119, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i117, !llvm.loop !31

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117, %middle.block494, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i
  %storemerge.i.i120 = phi ptr [ %i.ep, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i ], [ %i.ez, %middle.block494 ], [ %i.fk, %.lr.ph.i.i.i.i.i.i.i.i.i117 ] ; 3 uses
  store ptr %storemerge.i.i120, ptr %5, align 8, !tbaa !84
  store ptr %i.eq, ptr %i.dc, align 8, !tbaa !84
  %.not.i4.i.i121 = icmp eq ptr %i.do, null
  br i1 %.not.i4.i.i121, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.ej) #12
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit: ; preds = %bb.s, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i, %bb.w
  %i.fl = phi ptr [ %i.do, %bb.s ], [ %storemerge.i.i120, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i ], [ %storemerge.i.i120, %bb.w ]
  %i.fm = phi ptr [ %i.dp, %bb.s ], [ %i.eq, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i ], [ %i.eq, %bb.w ]
  %.0.i122 = phi ptr [ %i.eb, %bb.s ], [ %i.er, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i ], [ %i.er, %bb.w ] ; 2 uses
  store ptr %.0.i122, ptr %i.db, align 8, !tbaa !100
  br label %bb.ae

bb.x:                                             ; preds = %bb.q
  %i.fn = icmp ult i32 %i.dw, %i.bq
  br i1 %i.fn, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.fo = trunc i64 %.095258 to i32               ; 2 uses
  %i.fp = icmp ult ptr %i.dt, %i.ds
  br i1 %i.fp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.fo, ptr %i.dt, align 4, !tbaa !82
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136

bb.aa:                                            ; preds = %bb.y
  %i.fr = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.fs = ptrtoint ptr %i.dr to i64               ; 4 uses
  %i.ft = sub i64 %i.fr, %i.fs                    ; 2 uses
  %i.fu = ashr exact i64 %i.ft, 2
  %i.fv = add nsw i64 %i.fu, 1                    ; 2 uses
  %i.fw = icmp ugt i64 %i.fv, 4611686018427387903
  br i1 %i.fw, label %bb.ab, label %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i123

bb.ab:                                            ; preds = %bb.aa
  call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #10
  unreachable

_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i123: ; preds = %bb.aa
  %i.fx = ptrtoint ptr %i.ds to i64
  %i.fy = sub i64 %i.fx, %i.fs                    ; 3 uses
  %.not.i.i.i124 = icmp ult i64 %i.fy, 9223372036854775804
  %i.fz = ashr exact i64 %i.fy, 1
  %.sroa.speculated.i.i.i125 = tail call i64 @llvm.umax.i64(i64 %i.fz, i64 %i.fv)
  %.0.i.i.i126 = select i1 %.not.i.i.i124, i64 %.sroa.speculated.i.i.i125, i64 4611686018427387903 ; 4 uses
  %i.ga = icmp ne i64 %.0.i.i.i126, 0
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = icmp ugt i64 %.0.i.i.i126, 4611686018427387903
  br i1 %i.gb, label %bb.ac, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i127

bb.ac:                                            ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i123
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #10
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i127: ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i123
  %i.gc = shl nuw i64 %.0.i.i.i126, 2
  %i.gd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #11 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.ft ; 6 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %.0.i.i.i126 ; 3 uses
  store i32 %i.fo, ptr %i.ge, align 4, !tbaa !82
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 4 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i128 = icmp eq ptr %i.dt, %i.dr
  br i1 %.not4.i.i.i.i.i.i.i.i.i128, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i132, label %.lr.ph.i.i.i.i.i.i.i.i.i129.preheader

.lr.ph.i.i.i.i.i.i.i.i.i129.preheader:            ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i127
  %i.gh = ptrtoaddr ptr %i.gd to i64
  %i.gi = add i64 %i.fr, -4
  %i.gj = sub i64 %i.gi, %i.fs                    ; 2 uses
  %i.gk = lshr i64 %i.gj, 2
  %i.gl = add nuw nsw i64 %i.gk, 1                ; 2 uses
  %min.iters.check501 = icmp ult i64 %i.gj, 28
  %i.gm = sub i64 %i.gh, %i.fs
  %diff.check499 = icmp ugt i64 %i.gm, -32
  %or.cond566 = or i1 %min.iters.check501, %diff.check499
  br i1 %or.cond566, label %.lr.ph.i.i.i.i.i.i.i.i.i129.preheader609, label %vector.ph502

vector.ph502:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i129.preheader
  %n.vec503 = and i64 %i.gl, 9223372036854775800  ; 3 uses
  %i.gn = mul i64 %n.vec503, -4                   ; 2 uses
  %i.go = getelementptr i8, ptr %i.ge, i64 %i.gn  ; 2 uses
  %i.gp = getelementptr i8, ptr %i.dt, i64 %i.gn
  br label %vector.body504

vector.body504:                                   ; preds = %vector.body504, %vector.ph502
  %index505 = phi i64 [ 0, %vector.ph502 ], [ %index.next510, %vector.body504 ] ; 2 uses
  %i.gq = mul i64 %index505, -4                   ; 2 uses
  %next.gep506 = getelementptr i8, ptr %i.ge, i64 %i.gq ; 2 uses
  %next.gep507 = getelementptr i8, ptr %i.dt, i64 %i.gq ; 2 uses
  %i.gr = getelementptr inbounds i8, ptr %next.gep507, i64 -16
  %i.gs = getelementptr inbounds i8, ptr %next.gep507, i64 -32
  %wide.load508 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !82, !noalias !101
  %wide.load509 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !82, !noalias !101
  %i.gt = getelementptr inbounds i8, ptr %next.gep506, i64 -16
  %i.gu = getelementptr inbounds i8, ptr %next.gep506, i64 -32
  store <4 x i32> %wide.load508, ptr %i.gt, align 4, !tbaa !82, !noalias !101
  store <4 x i32> %wide.load509, ptr %i.gu, align 4, !tbaa !82, !noalias !101
  %index.next510 = add nuw i64 %index505, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next510, %n.vec503
  br i1 %i.gv, label %middle.block511, label %vector.body504, !llvm.loop !40

middle.block511:                                  ; preds = %vector.body504
  %cmp.n512 = icmp eq i64 %i.gl, %n.vec503
  br i1 %cmp.n512, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i132, label %.lr.ph.i.i.i.i.i.i.i.i.i129.preheader609

.lr.ph.i.i.i.i.i.i.i.i.i129.preheader609:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i129.preheader, %middle.block511
  %.ph610 = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.i.i129.preheader ], [ %i.go, %middle.block511 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i130.ph = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.i.i129.preheader ], [ %i.gp, %middle.block511 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i129

.lr.ph.i.i.i.i.i.i.i.i.i129:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i129.preheader609, %.lr.ph.i.i.i.i.i.i.i.i.i129
  %i.gw = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i.i.i.i.i129 ], [ %.ph610, %.lr.ph.i.i.i.i.i.i.i.i.i129.preheader609 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i130 = phi ptr [ %i.gx, %.lr.ph.i.i.i.i.i.i.i.i.i129 ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i130.ph, %.lr.ph.i.i.i.i.i.i.i.i.i129.preheader609 ]
  %i.gx = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i130, i64 -4 ; 3 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !82, !noalias !101
  %i.gz = getelementptr inbounds i8, ptr %i.gw, i64 -4 ; 3 uses
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !82, !noalias !101
  %.not.i.i.i.i.i.i.i.i.i131 = icmp eq ptr %i.gx, %i.dr
  br i1 %.not.i.i.i.i.i.i.i.i.i131, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i132, label %.lr.ph.i.i.i.i.i.i.i.i.i129, !llvm.loop !41

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i132: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i129, %middle.block511, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i127
  %storemerge.i.i133 = phi ptr [ %i.ge, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i127 ], [ %i.go, %middle.block511 ], [ %i.gz, %.lr.ph.i.i.i.i.i.i.i.i.i129 ] ; 3 uses
  store ptr %storemerge.i.i133, ptr %4, align 8, !tbaa !84
  store ptr %i.gf, ptr %i.da, align 8, !tbaa !84
  %.not.i4.i.i134 = icmp eq ptr %i.dr, null
  br i1 %.not.i4.i.i134, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i132
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.fy) #12
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136

_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136: ; preds = %bb.z, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i132, %bb.ad
  %i.ha = phi ptr [ %i.dr, %bb.z ], [ %storemerge.i.i133, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i132 ], [ %storemerge.i.i133, %bb.ad ]
  %i.hb = phi ptr [ %i.ds, %bb.z ], [ %i.gf, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i132 ], [ %i.gf, %bb.ad ]
  %.0.i135 = phi ptr [ %i.fq, %bb.z ], [ %i.gg, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i132 ], [ %i.gg, %bb.ad ] ; 2 uses
  store ptr %.0.i135, ptr %i.cz, align 8, !tbaa !100
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136, %bb.x
  %i.hc = phi ptr [ %i.fl, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit ], [ %i.do, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136 ], [ %i.do, %bb.x ] ; 2 uses
  %i.hd = phi ptr [ %i.fm, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit ], [ %i.dp, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136 ], [ %i.dp, %bb.x ] ; 2 uses
  %i.he = phi ptr [ %.0.i122, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit ], [ %i.dq, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136 ], [ %i.dq, %bb.x ] ; 2 uses
  %i.hf = phi ptr [ %i.dr, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit ], [ %i.ha, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136 ], [ %i.dr, %bb.x ] ; 2 uses
  %i.hg = phi ptr [ %i.ds, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit ], [ %i.hb, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136 ], [ %i.ds, %bb.x ] ; 2 uses
  %i.hh = phi ptr [ %i.dt, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit ], [ %.0.i135, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136 ], [ %i.dt, %bb.x ] ; 2 uses
  %i.hi = add nuw i64 %.095258, 1                 ; 2 uses
  %i.hj = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.hk = load ptr, ptr %0, align 8, !tbaa !80    ; 2 uses
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = ashr exact i64 %i.hn, 2                 ; 2 uses
  %i.hp = icmp ult i64 %i.hi, %i.ho
  br i1 %i.hp, label %bb.q, label %._crit_edge260, !llvm.loop !42

.preheader217:                                    ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit, %._crit_edge260
  %i.hq = phi ptr [ %i.dh, %._crit_edge260 ], [ %i.jp, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit ] ; 2 uses
  %i.hr = phi ptr [ %i.di, %._crit_edge260 ], [ %.0.i149, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit ]
  %i.hs = phi ptr [ %i.dg, %._crit_edge260 ], [ %i.jo, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit ] ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.hu = icmp eq ptr %i.df, %i.de
  %.pre300 = load ptr, ptr %6, align 8            ; 5 uses
  br i1 %i.hu, label %.preheader, label %.lr.ph265

.lr.ph265:                                        ; preds = %.preheader217
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.al

bb.af:                                            ; preds = %.lr.ph264, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit
  %i.hy = phi ptr [ %i.dg, %.lr.ph264 ], [ %i.jo, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit ] ; 6 uses
  %i.hz = phi ptr [ %i.dh, %.lr.ph264 ], [ %i.jp, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit ] ; 3 uses
  %i.ia = phi ptr [ %i.di, %.lr.ph264 ], [ %.0.i149, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit ] ; 8 uses
  %i.ib = phi i64 [ %i.dj, %.lr.ph264 ], [ %i.jr, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit ]
  %storemerge262 = phi i32 [ %i.dl, %.lr.ph264 ], [ %i.jq, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.ib
  store i32 0, ptr %i.ic, align 4, !tbaa !82
  %i.id = icmp ult ptr %i.ia, %i.hz
  br i1 %i.id, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 %storemerge262, ptr %i.ia, align 4, !tbaa !82
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit

bb.ah:                                            ; preds = %bb.af
  %i.if = ptrtoint ptr %i.ia to i64               ; 2 uses
  %i.ig = ptrtoint ptr %i.hy to i64               ; 4 uses
  %i.ih = sub i64 %i.if, %i.ig                    ; 2 uses
  %i.ii = ashr exact i64 %i.ih, 2
  %i.ij = add nsw i64 %i.ii, 1                    ; 2 uses
  %i.ik = icmp ugt i64 %i.ij, 4611686018427387903
  br i1 %i.ik, label %bb.ai, label %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i137

bb.ai:                                            ; preds = %bb.ah
  call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #10
  unreachable

_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i137: ; preds = %bb.ah
  %i.il = ptrtoint ptr %i.hz to i64
  %i.im = sub i64 %i.il, %i.ig                    ; 3 uses
  %.not.i.i.i138 = icmp ult i64 %i.im, 9223372036854775804
  %i.in = ashr exact i64 %i.im, 1
  %.sroa.speculated.i.i.i139 = tail call i64 @llvm.umax.i64(i64 %i.in, i64 %i.ij)
  %.0.i.i.i140 = select i1 %.not.i.i.i138, i64 %.sroa.speculated.i.i.i139, i64 4611686018427387903 ; 4 uses
  %i.io = icmp ne i64 %.0.i.i.i140, 0
  tail call void @llvm.assume(i1 %i.io)
  %i.ip = icmp ugt i64 %.0.i.i.i140, 4611686018427387903
  br i1 %i.ip, label %bb.aj, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i141

bb.aj:                                            ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i137
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #10
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i141: ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i137
  %i.iq = shl nuw i64 %.0.i.i.i140, 2
  %i.ir = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iq) #11 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.ih ; 6 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %.0.i.i.i140 ; 3 uses
  store i32 %storemerge262, ptr %i.is, align 4, !tbaa !82
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 4 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i142 = icmp eq ptr %i.ia, %i.hy
  br i1 %.not4.i.i.i.i.i.i.i.i.i142, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i146, label %.lr.ph.i.i.i.i.i.i.i.i.i143.preheader

.lr.ph.i.i.i.i.i.i.i.i.i143.preheader:            ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i141
  %i.iv = ptrtoaddr ptr %i.ir to i64
  %i.iw = add i64 %i.if, -4
  %i.ix = sub i64 %i.iw, %i.ig                    ; 2 uses
  %i.iy = lshr i64 %i.ix, 2
  %i.iz = add nuw nsw i64 %i.iy, 1                ; 2 uses
  %min.iters.check518 = icmp ult i64 %i.ix, 28
  %i.ja = sub i64 %i.iv, %i.ig
  %diff.check516 = icmp ugt i64 %i.ja, -32
  %or.cond567 = or i1 %min.iters.check518, %diff.check516
  br i1 %or.cond567, label %.lr.ph.i.i.i.i.i.i.i.i.i143.preheader602, label %vector.ph519

vector.ph519:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i143.preheader
  %n.vec520 = and i64 %i.iz, 9223372036854775800  ; 3 uses
  %i.jb = mul i64 %n.vec520, -4                   ; 2 uses
  %i.jc = getelementptr i8, ptr %i.is, i64 %i.jb  ; 2 uses
  %i.jd = getelementptr i8, ptr %i.ia, i64 %i.jb
  br label %vector.body521

vector.body521:                                   ; preds = %vector.body521, %vector.ph519
  %index522 = phi i64 [ 0, %vector.ph519 ], [ %index.next527, %vector.body521 ] ; 2 uses
  %i.je = mul i64 %index522, -4                   ; 2 uses
  %next.gep523 = getelementptr i8, ptr %i.is, i64 %i.je ; 2 uses
  %next.gep524 = getelementptr i8, ptr %i.ia, i64 %i.je ; 2 uses
  %i.jf = getelementptr inbounds i8, ptr %next.gep524, i64 -16
  %i.jg = getelementptr inbounds i8, ptr %next.gep524, i64 -32
  %wide.load525 = load <4 x i32>, ptr %i.jf, align 4, !tbaa !82, !noalias !102
  %wide.load526 = load <4 x i32>, ptr %i.jg, align 4, !tbaa !82, !noalias !102
  %i.jh = getelementptr inbounds i8, ptr %next.gep523, i64 -16
  %i.ji = getelementptr inbounds i8, ptr %next.gep523, i64 -32
  store <4 x i32> %wide.load525, ptr %i.jh, align 4, !tbaa !82, !noalias !102
  store <4 x i32> %wide.load526, ptr %i.ji, align 4, !tbaa !82, !noalias !102
  %index.next527 = add nuw i64 %index522, 8       ; 2 uses
  %i.jj = icmp eq i64 %index.next527, %n.vec520
  br i1 %i.jj, label %middle.block528, label %vector.body521, !llvm.loop !51

middle.block528:                                  ; preds = %vector.body521
  %cmp.n529 = icmp eq i64 %i.iz, %n.vec520
  br i1 %cmp.n529, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i146, label %.lr.ph.i.i.i.i.i.i.i.i.i143.preheader602

.lr.ph.i.i.i.i.i.i.i.i.i143.preheader602:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i143.preheader, %middle.block528
  %.ph603 = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i.i.i.i.i143.preheader ], [ %i.jc, %middle.block528 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i144.ph = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i.i.i.i.i143.preheader ], [ %i.jd, %middle.block528 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i143

.lr.ph.i.i.i.i.i.i.i.i.i143:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i143.preheader602, %.lr.ph.i.i.i.i.i.i.i.i.i143
  %i.jk = phi ptr [ %i.jn, %.lr.ph.i.i.i.i.i.i.i.i.i143 ], [ %.ph603, %.lr.ph.i.i.i.i.i.i.i.i.i143.preheader602 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i144 = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i.i.i.i.i143 ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i144.ph, %.lr.ph.i.i.i.i.i.i.i.i.i143.preheader602 ]
  %i.jl = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i144, i64 -4 ; 3 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !82, !noalias !102
  %i.jn = getelementptr inbounds i8, ptr %i.jk, i64 -4 ; 3 uses
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !82, !noalias !102
  %.not.i.i.i.i.i.i.i.i.i145 = icmp eq ptr %i.jl, %i.hy
  br i1 %.not.i.i.i.i.i.i.i.i.i145, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i146, label %.lr.ph.i.i.i.i.i.i.i.i.i143, !llvm.loop !52

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i146: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i143, %middle.block528, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i141
  %storemerge.i.i147 = phi ptr [ %i.is, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i141 ], [ %i.jc, %middle.block528 ], [ %i.jn, %.lr.ph.i.i.i.i.i.i.i.i.i143 ] ; 3 uses
  store ptr %storemerge.i.i147, ptr %4, align 8, !tbaa !84
  store ptr %i.it, ptr %i.dn, align 8, !tbaa !84
  %.not.i4.i.i148 = icmp eq ptr %i.hy, null
  br i1 %.not.i4.i.i148, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i146
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef %i.im) #12
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit: ; preds = %bb.ag, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i146, %bb.ak
  %i.jo = phi ptr [ %i.hy, %bb.ag ], [ %storemerge.i.i147, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i146 ], [ %storemerge.i.i147, %bb.ak ] ; 2 uses
  %i.jp = phi ptr [ %i.hz, %bb.ag ], [ %i.it, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i146 ], [ %i.it, %bb.ak ] ; 2 uses
  %.0.i149 = phi ptr [ %i.ie, %bb.ag ], [ %i.iu, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i146 ], [ %i.iu, %bb.ak ] ; 3 uses
  store ptr %.0.i149, ptr %i.dm, align 8, !tbaa !100
  %i.jq = add i32 %storemerge262, 1               ; 2 uses
  %i.jr = zext i32 %i.jq to i64                   ; 2 uses
  %i.js = icmp ult i64 %i.jr, %i.d
  br i1 %i.js, label %bb.af, label %.preheader217, !llvm.loop !53

.preheader.loopexit:                              ; preds = %bb.ba
  %.pre299 = load ptr, ptr %6, align 8, !tbaa !98
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader217
  %i.jt = phi ptr [ %11, %.preheader.loopexit ], [ %i.hq, %.preheader217 ]
  %i.ju = phi ptr [ %14, %.preheader.loopexit ], [ %i.hs, %.preheader217 ]
  %i.jv = phi ptr [ %12, %.preheader.loopexit ], [ %i.dd, %.preheader217 ]
  %i.jw = phi ptr [ %10, %.preheader.loopexit ], [ %i.df, %.preheader217 ]
  %i.jx = phi ptr [ %.pre299, %.preheader.loopexit ], [ %.pre300, %.preheader217 ] ; 2 uses
  %i.jy = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.jz = load ptr, ptr %0, align 8, !tbaa !80    ; 3 uses
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %i.kd = ashr exact i64 %i.kc, 2                 ; 2 uses
  br label %bb.bb

bb.al:                                            ; preds = %.lr.ph265, %bb.ba
  %i.ke = phi ptr [ %i.df, %.lr.ph265 ], [ %10, %bb.ba ] ; 10 uses
  %i.kf = phi ptr [ %i.hq, %.lr.ph265 ], [ %11, %bb.ba ] ; 7 uses
  %i.kg = phi ptr [ %i.dd, %.lr.ph265 ], [ %12, %bb.ba ] ; 7 uses
  %i.kh = phi ptr [ %i.hr, %.lr.ph265 ], [ %13, %bb.ba ] ; 4 uses
  %i.ki = phi ptr [ %i.hs, %.lr.ph265 ], [ %14, %bb.ba ] ; 11 uses
  %i.kj = phi ptr [ %i.de, %.lr.ph265 ], [ %9, %bb.ba ] ; 3 uses
  %i.kk = getelementptr inbounds i8, ptr %i.kj, i64 -4 ; 11 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !82 ; 6 uses
  store ptr %i.kk, ptr %i.ht, align 8, !tbaa !100
  %i.km = icmp eq ptr %i.ki, %i.kh
  br i1 %i.km, label %.thread215, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kn = getelementptr inbounds i8, ptr %i.kh, i64 -4 ; 11 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !82
  store ptr %i.kn, ptr %i.hv, align 8, !tbaa !100
  %i.kp = zext i32 %i.ko to i64                   ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.pre300, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !82
  %.neg = sub i32 %i.kr, %i.bq
  %i.ks = zext i32 %i.kl to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.pre300, i64 %i.ks ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !82
  %i.kv = add i32 %.neg, %i.ku                    ; 4 uses
  store i32 %i.kv, ptr %i.kt, align 4, !tbaa !82
  %i.kw = trunc i32 %i.kl to i8
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.kp ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 1
  store i8 %i.kw, ptr %i.ky, align 1, !tbaa !90
  %i.kz = trunc i32 %i.kv to i16
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  store i16 %i.kz, ptr %i.la, align 1, !tbaa !92
  %i.lb = icmp ult i32 %i.kv, %i.bq
  br i1 %i.lb, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.lc = icmp ult ptr %i.kn, %i.kf
  br i1 %i.lc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 %i.kl, ptr %i.kn, align 4, !tbaa !82
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163

bb.ap:                                            ; preds = %bb.an
  %i.ld = ptrtoint ptr %i.kn to i64
  %i.le = ptrtoint ptr %i.ki to i64               ; 4 uses
  %i.lf = sub i64 %i.ld, %i.le                    ; 2 uses
  %i.lg = ashr exact i64 %i.lf, 2
  %i.lh = add nsw i64 %i.lg, 1                    ; 2 uses
  %i.li = icmp ugt i64 %i.lh, 4611686018427387903
  br i1 %i.li, label %bb.aq, label %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i150

bb.aq:                                            ; preds = %bb.ap
  call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #10
  unreachable

_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i150: ; preds = %bb.ap
  %i.lj = ptrtoint ptr %i.kf to i64
  %i.lk = sub i64 %i.lj, %i.le                    ; 3 uses
  %.not.i.i.i151 = icmp ult i64 %i.lk, 9223372036854775804
  %i.ll = ashr exact i64 %i.lk, 1
  %.sroa.speculated.i.i.i152 = tail call i64 @llvm.umax.i64(i64 %i.ll, i64 %i.lh)
  %.0.i.i.i153 = select i1 %.not.i.i.i151, i64 %.sroa.speculated.i.i.i152, i64 4611686018427387903 ; 4 uses
  %i.lm = icmp ne i64 %.0.i.i.i153, 0
  tail call void @llvm.assume(i1 %i.lm)
  %i.ln = icmp ugt i64 %.0.i.i.i153, 4611686018427387903
  br i1 %i.ln, label %bb.ar, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i154

bb.ar:                                            ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i150
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #10
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i154: ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i150
  %i.lo = shl nuw i64 %.0.i.i.i153, 2
  %i.lp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lo) #11 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lf ; 6 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %.0.i.i.i153 ; 3 uses
  store i32 %i.kl, ptr %i.lq, align 4, !tbaa !82
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 4 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i155 = icmp eq ptr %i.kn, %i.ki
  br i1 %.not4.i.i.i.i.i.i.i.i.i155, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i159, label %.lr.ph.i.i.i.i.i.i.i.i.i156.preheader

.lr.ph.i.i.i.i.i.i.i.i.i156.preheader:            ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i154
  %i.lt = ptrtoaddr ptr %i.lp to i64
  %i.lu = ptrtoaddr ptr %i.kh to i64
  %i.lv = add i64 %i.lu, -8
  %i.lw = sub i64 %i.lv, %i.le                    ; 2 uses
  %i.lx = lshr i64 %i.lw, 2
  %i.ly = add nuw nsw i64 %i.lx, 1                ; 2 uses
  %min.iters.check535 = icmp ult i64 %i.lw, 28
  %i.lz = sub i64 %i.lt, %i.le
  %diff.check533 = icmp ugt i64 %i.lz, -32
  %or.cond568 = or i1 %min.iters.check535, %diff.check533
  br i1 %or.cond568, label %.lr.ph.i.i.i.i.i.i.i.i.i156.preheader570, label %vector.ph536

vector.ph536:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i156.preheader
  %n.vec537 = and i64 %i.ly, 9223372036854775800  ; 3 uses
  %i.ma = mul i64 %n.vec537, -4                   ; 2 uses
  %i.mb = getelementptr i8, ptr %i.lq, i64 %i.ma  ; 2 uses
  %i.mc = getelementptr i8, ptr %i.kn, i64 %i.ma
  br label %vector.body538

vector.body538:                                   ; preds = %vector.body538, %vector.ph536
  %index539 = phi i64 [ 0, %vector.ph536 ], [ %index.next544, %vector.body538 ] ; 2 uses
  %i.md = mul i64 %index539, -4                   ; 2 uses
  %next.gep540 = getelementptr i8, ptr %i.lq, i64 %i.md ; 2 uses
  %next.gep541 = getelementptr i8, ptr %i.kn, i64 %i.md ; 2 uses
  %i.me = getelementptr inbounds i8, ptr %next.gep541, i64 -16
  %i.mf = getelementptr inbounds i8, ptr %next.gep541, i64 -32
  %wide.load542 = load <4 x i32>, ptr %i.me, align 4, !tbaa !82, !noalias !103
  %wide.load543 = load <4 x i32>, ptr %i.mf, align 4, !tbaa !82, !noalias !103
  %i.mg = getelementptr inbounds i8, ptr %next.gep540, i64 -16
  %i.mh = getelementptr inbounds i8, ptr %next.gep540, i64 -32
  store <4 x i32> %wide.load542, ptr %i.mg, align 4, !tbaa !82, !noalias !103
  store <4 x i32> %wide.load543, ptr %i.mh, align 4, !tbaa !82, !noalias !103
  %index.next544 = add nuw i64 %index539, 8       ; 2 uses
  %i.mi = icmp eq i64 %index.next544, %n.vec537
  br i1 %i.mi, label %middle.block545, label %vector.body538, !llvm.loop !62

middle.block545:                                  ; preds = %vector.body538
  %cmp.n546 = icmp eq i64 %i.ly, %n.vec537
  br i1 %cmp.n546, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i159, label %.lr.ph.i.i.i.i.i.i.i.i.i156.preheader570

.lr.ph.i.i.i.i.i.i.i.i.i156.preheader570:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i156.preheader, %middle.block545
  %.ph = phi ptr [ %i.lq, %.lr.ph.i.i.i.i.i.i.i.i.i156.preheader ], [ %i.mb, %middle.block545 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i157.ph = phi ptr [ %i.kn, %.lr.ph.i.i.i.i.i.i.i.i.i156.preheader ], [ %i.mc, %middle.block545 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i156

.lr.ph.i.i.i.i.i.i.i.i.i156:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i156.preheader570, %.lr.ph.i.i.i.i.i.i.i.i.i156
  %i.mj = phi ptr [ %i.mm, %.lr.ph.i.i.i.i.i.i.i.i.i156 ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i156.preheader570 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i157 = phi ptr [ %i.mk, %.lr.ph.i.i.i.i.i.i.i.i.i156 ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i157.ph, %.lr.ph.i.i.i.i.i.i.i.i.i156.preheader570 ]
  %i.mk = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i157, i64 -4 ; 3 uses
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !82, !noalias !103
  %i.mm = getelementptr inbounds i8, ptr %i.mj, i64 -4 ; 3 uses
  store i32 %i.ml, ptr %i.mm, align 4, !tbaa !82, !noalias !103
  %.not.i.i.i.i.i.i.i.i.i158 = icmp eq ptr %i.mk, %i.ki
  br i1 %.not.i.i.i.i.i.i.i.i.i158, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i159, label %.lr.ph.i.i.i.i.i.i.i.i.i156, !llvm.loop !63

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i159: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i156, %middle.block545, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i154
  %storemerge.i.i160 = phi ptr [ %i.lq, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i154 ], [ %i.mb, %middle.block545 ], [ %i.mm, %.lr.ph.i.i.i.i.i.i.i.i.i156 ] ; 3 uses
  store ptr %storemerge.i.i160, ptr %4, align 8, !tbaa !84
  store ptr %i.lr, ptr %i.hx, align 8, !tbaa !84
  %.not.i4.i.i161 = icmp eq ptr %i.ki, null
  br i1 %.not.i4.i.i161, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163, label %bb.as

bb.as:                                            ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i159
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ki, i64 noundef %i.lk) #12
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163

_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163: ; preds = %bb.ao, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i159, %bb.as
  %i.mn = phi ptr [ %i.kf, %bb.ao ], [ %i.lr, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i159 ], [ %i.lr, %bb.as ]
  %i.mo = phi ptr [ %i.ki, %bb.ao ], [ %storemerge.i.i160, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i159 ], [ %storemerge.i.i160, %bb.as ]
  %.0.i162 = phi ptr [ %i.kh, %bb.ao ], [ %i.ls, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i159 ], [ %i.ls, %bb.as ] ; 2 uses
  store ptr %.0.i162, ptr %i.hv, align 8, !tbaa !100
  br label %bb.ba

bb.at:                                            ; preds = %bb.am
  %i.mp = icmp ugt i32 %i.kv, %i.bq
  br i1 %i.mp, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.mq = icmp ult ptr %i.kk, %i.kg
  br i1 %i.mq, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 %i.kl, ptr %i.kk, align 4, !tbaa !82
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177

bb.aw:                                            ; preds = %bb.au
  %i.mr = ptrtoint ptr %i.kk to i64
  %i.ms = ptrtoint ptr %i.ke to i64               ; 4 uses
  %i.mt = sub i64 %i.mr, %i.ms                    ; 2 uses
  %i.mu = ashr exact i64 %i.mt, 2
  %i.mv = add nsw i64 %i.mu, 1                    ; 2 uses
  %i.mw = icmp ugt i64 %i.mv, 4611686018427387903
  br i1 %i.mw, label %bb.ax, label %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i164

bb.ax:                                            ; preds = %bb.aw
  call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #10
  unreachable

_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i164: ; preds = %bb.aw
  %i.mx = ptrtoint ptr %i.kg to i64
  %i.my = sub i64 %i.mx, %i.ms                    ; 3 uses
  %.not.i.i.i165 = icmp ult i64 %i.my, 9223372036854775804
  %i.mz = ashr exact i64 %i.my, 1
  %.sroa.speculated.i.i.i166 = tail call i64 @llvm.umax.i64(i64 %i.mz, i64 %i.mv)
  %.0.i.i.i167 = select i1 %.not.i.i.i165, i64 %.sroa.speculated.i.i.i166, i64 4611686018427387903 ; 4 uses
  %i.na = icmp ne i64 %.0.i.i.i167, 0
  tail call void @llvm.assume(i1 %i.na)
  %i.nb = icmp ugt i64 %.0.i.i.i167, 4611686018427387903
  br i1 %i.nb, label %bb.ay, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i168

bb.ay:                                            ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i164
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #10
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i168: ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i164
  %i.nc = shl nuw i64 %.0.i.i.i167, 2
  %i.nd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nc) #11 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.mt ; 6 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %.0.i.i.i167 ; 3 uses
  store i32 %i.kl, ptr %i.ne, align 4, !tbaa !82
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 4 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i169 = icmp eq ptr %i.kk, %i.ke
  br i1 %.not4.i.i.i.i.i.i.i.i.i169, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173, label %.lr.ph.i.i.i.i.i.i.i.i.i170.preheader

.lr.ph.i.i.i.i.i.i.i.i.i170.preheader:            ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i168
  %i.nh = ptrtoaddr ptr %i.nd to i64
  %i.ni = ptrtoaddr ptr %i.kj to i64
  %i.nj = add i64 %i.ni, -8
  %i.nk = sub i64 %i.nj, %i.ms                    ; 2 uses
  %i.nl = lshr i64 %i.nk, 2
  %i.nm = add nuw nsw i64 %i.nl, 1                ; 2 uses
  %min.iters.check552 = icmp ult i64 %i.nk, 28
  %i.nn = sub i64 %i.nh, %i.ms
  %diff.check550 = icmp ugt i64 %i.nn, -32
  %or.cond569 = or i1 %min.iters.check552, %diff.check550
  br i1 %or.cond569, label %.lr.ph.i.i.i.i.i.i.i.i.i170.preheader571, label %vector.ph553

vector.ph553:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i170.preheader
  %n.vec554 = and i64 %i.nm, 9223372036854775800  ; 3 uses
  %i.no = mul i64 %n.vec554, -4                   ; 2 uses
  %i.np = getelementptr i8, ptr %i.ne, i64 %i.no  ; 2 uses
  %i.nq = getelementptr i8, ptr %i.kk, i64 %i.no
  br label %vector.body555

vector.body555:                                   ; preds = %vector.body555, %vector.ph553
  %index556 = phi i64 [ 0, %vector.ph553 ], [ %index.next561, %vector.body555 ] ; 2 uses
  %i.nr = mul i64 %index556, -4                   ; 2 uses
  %next.gep557 = getelementptr i8, ptr %i.ne, i64 %i.nr ; 2 uses
  %next.gep558 = getelementptr i8, ptr %i.kk, i64 %i.nr ; 2 uses
  %i.ns = getelementptr inbounds i8, ptr %next.gep558, i64 -16
  %i.nt = getelementptr inbounds i8, ptr %next.gep558, i64 -32
  %wide.load559 = load <4 x i32>, ptr %i.ns, align 4, !tbaa !82, !noalias !104
  %wide.load560 = load <4 x i32>, ptr %i.nt, align 4, !tbaa !82, !noalias !104
  %i.nu = getelementptr inbounds i8, ptr %next.gep557, i64 -16
  %i.nv = getelementptr inbounds i8, ptr %next.gep557, i64 -32
  store <4 x i32> %wide.load559, ptr %i.nu, align 4, !tbaa !82, !noalias !104
  store <4 x i32> %wide.load560, ptr %i.nv, align 4, !tbaa !82, !noalias !104
  %index.next561 = add nuw i64 %index556, 8       ; 2 uses
  %i.nw = icmp eq i64 %index.next561, %n.vec554
  br i1 %i.nw, label %middle.block562, label %vector.body555, !llvm.loop !72

middle.block562:                                  ; preds = %vector.body555
  %cmp.n563 = icmp eq i64 %i.nm, %n.vec554
  br i1 %cmp.n563, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173, label %.lr.ph.i.i.i.i.i.i.i.i.i170.preheader571

.lr.ph.i.i.i.i.i.i.i.i.i170.preheader571:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i170.preheader, %middle.block562
  %.ph572 = phi ptr [ %i.ne, %.lr.ph.i.i.i.i.i.i.i.i.i170.preheader ], [ %i.np, %middle.block562 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i171.ph = phi ptr [ %i.kk, %.lr.ph.i.i.i.i.i.i.i.i.i170.preheader ], [ %i.nq, %middle.block562 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i170

.lr.ph.i.i.i.i.i.i.i.i.i170:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i170.preheader571, %.lr.ph.i.i.i.i.i.i.i.i.i170
  %i.nx = phi ptr [ %i.oa, %.lr.ph.i.i.i.i.i.i.i.i.i170 ], [ %.ph572, %.lr.ph.i.i.i.i.i.i.i.i.i170.preheader571 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i171 = phi ptr [ %i.ny, %.lr.ph.i.i.i.i.i.i.i.i.i170 ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i171.ph, %.lr.ph.i.i.i.i.i.i.i.i.i170.preheader571 ]
  %i.ny = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i171, i64 -4 ; 3 uses
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !82, !noalias !104
  %i.oa = getelementptr inbounds i8, ptr %i.nx, i64 -4 ; 3 uses
  store i32 %i.nz, ptr %i.oa, align 4, !tbaa !82, !noalias !104
  %.not.i.i.i.i.i.i.i.i.i172 = icmp eq ptr %i.ny, %i.ke
  br i1 %.not.i.i.i.i.i.i.i.i.i172, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173, label %.lr.ph.i.i.i.i.i.i.i.i.i170, !llvm.loop !73

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i170, %middle.block562, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i168
  %storemerge.i.i174 = phi ptr [ %i.ne, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i168 ], [ %i.np, %middle.block562 ], [ %i.oa, %.lr.ph.i.i.i.i.i.i.i.i.i170 ] ; 3 uses
  store ptr %storemerge.i.i174, ptr %5, align 8, !tbaa !84
  store ptr %i.nf, ptr %i.hw, align 8, !tbaa !84
  %.not.i4.i.i175 = icmp eq ptr %i.ke, null
  br i1 %.not.i4.i.i175, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177, label %bb.az

bb.az:                                            ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.my) #12
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177

_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177: ; preds = %bb.av, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173, %bb.az
  %7 = phi ptr [ %i.ke, %bb.av ], [ %storemerge.i.i174, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173 ], [ %storemerge.i.i174, %bb.az ]
  %8 = phi ptr [ %i.kg, %bb.av ], [ %i.nf, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173 ], [ %i.nf, %bb.az ]
  %.0.i176 = phi ptr [ %i.kj, %bb.av ], [ %i.ng, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173 ], [ %i.ng, %bb.az ] ; 2 uses
  store ptr %.0.i176, ptr %i.ht, align 8, !tbaa !100
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177, %bb.at
  %9 = phi ptr [ %i.kk, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163 ], [ %.0.i176, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177 ], [ %i.kk, %bb.at ] ; 2 uses
  %10 = phi ptr [ %i.ke, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163 ], [ %7, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177 ], [ %i.ke, %bb.at ] ; 3 uses
  %11 = phi ptr [ %i.mn, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163 ], [ %i.kf, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177 ], [ %i.kf, %bb.at ] ; 2 uses
  %12 = phi ptr [ %i.kg, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163 ], [ %8, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177 ], [ %i.kg, %bb.at ] ; 2 uses
  %13 = phi ptr [ %.0.i162, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163 ], [ %i.kn, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177 ], [ %i.kn, %bb.at ]
  %14 = phi ptr [ %i.mo, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163 ], [ %i.ki, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177 ], [ %i.ki, %bb.at ] ; 2 uses
  %i.ob = icmp eq ptr %10, %9
  br i1 %i.ob, label %.preheader.loopexit, label %bb.al

bb.bb:                                            ; preds = %.preheader, %bb.bi
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.bi ] ; 8 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !82 ; 3 uses
  %i.oe = icmp eq i32 %i.od, %i.bq
  br i1 %i.oe, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.of = trunc i64 %indvars.iv to i8
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 1
  store i8 %i.of, ptr %i.oh, align 1, !tbaa !90
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  store i16 0, ptr %i.oi, align 1, !tbaa !92
  store i8 0, ptr %i.og, align 1, !tbaa !91
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 4 ; 2 uses
  %i.ol = load i16, ptr %i.ok, align 1, !tbaa !92
  %i.om = trunc i32 %i.od to i16
  %i.on = sub i16 %i.ol, %i.om
  store i16 %i.on, ptr %i.ok, align 1, !tbaa !92
  %i.oo = trunc i32 %i.od to i8
  store i8 %i.oo, ptr %i.oj, align 1, !tbaa !91
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.op = icmp ugt i64 %i.kd, %indvars.iv
  br i1 %i.op, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %indvars.iv
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !82
  %i.os = zext i32 %i.or to i64
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.ot = phi i64 [ %i.os, %bb.bf ], [ 0, %bb.be ] ; 3 uses
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 1
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !90
  %i.ox = zext i8 %i.ow to i64                    ; 2 uses
  %i.oy = icmp ugt i64 %i.kd, %i.ox
  br i1 %i.oy, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.ox
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !82
  %i.pb = zext i32 %i.pa to i64
  %i.pc = xor i64 %i.ot, %i.pb
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.pd = phi i64 [ %i.pc, %bb.bh ], [ %i.ot, %bb.bg ]
  %i.pe = trunc i64 %i.ot to i16
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ou, i64 2
  store i16 %i.pe, ptr %i.pf, align 1, !tbaa !93
  %i.pg = trunc i64 %i.pd to i16
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ou, i64 6
  store i16 %i.pg, ptr %i.ph, align 1, !tbaa !94
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.pi = and i64 %indvars.iv.next, 4294967295
  %i.pj = icmp ult i64 %i.pi, %i.d
  br i1 %i.pj, label %bb.bb, label %.thread215.thread, !llvm.loop !74

.thread215:                                       ; preds = %bb.al
  %.not.i.i = icmp eq ptr %.pre300, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit, label %.thread215.thread

.thread215.thread:                                ; preds = %bb.bi, %.thread215
  %.sroa.0205.5378 = phi i32 [ 1, %.thread215 ], [ 0, %bb.bi ]
  %i.pk = phi ptr [ %.pre300, %.thread215 ], [ %i.jx, %bb.bi ] ; 2 uses
  %i.pl = phi ptr [ %i.ke, %.thread215 ], [ %i.jw, %bb.bi ]
  %i.pm = phi ptr [ %i.kg, %.thread215 ], [ %i.jv, %bb.bi ]
  %i.pn = phi ptr [ %i.ki, %.thread215 ], [ %i.ju, %bb.bi ]
  %i.po = phi ptr [ %i.kf, %.thread215 ], [ %i.jt, %bb.bi ]
  %i.pp = ptrtoint ptr %i.cw to i64
  %i.pq = ptrtoint ptr %i.pk to i64
  %i.pr = sub i64 %i.pp, %i.pq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.pk, i64 noundef %i.pr) #12
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit: ; preds = %.thread215, %.thread215.thread
  %.sroa.0205.5379 = phi i32 [ 1, %.thread215 ], [ %.sroa.0205.5378, %.thread215.thread ]
  %i.ps = phi ptr [ %i.ke, %.thread215 ], [ %i.pl, %.thread215.thread ] ; 3 uses
  %i.pt = phi ptr [ %i.kg, %.thread215 ], [ %i.pm, %.thread215.thread ]
  %i.pu = phi ptr [ %i.ki, %.thread215 ], [ %i.pn, %.thread215.thread ] ; 3 uses
  %i.pv = phi ptr [ %i.kf, %.thread215 ], [ %i.po, %.thread215.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.not.i.i178 = icmp eq ptr %i.ps, null
  br i1 %.not.i.i178, label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit179, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit
  %i.pw = ptrtoint ptr %i.pt to i64
  %i.px = ptrtoint ptr %i.ps to i64
  %i.py = sub i64 %i.pw, %i.px
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ps, i64 noundef %i.py) #12
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit179

_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit179: ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.not.i.i180 = icmp eq ptr %i.pu, null
  br i1 %.not.i.i180, label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit181, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit179
  %i.pz = ptrtoint ptr %i.pv to i64
  %i.qa = ptrtoint ptr %i.pu to i64
  %i.qb = sub i64 %i.pz, %i.qa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.pu, i64 noundef %i.qb) #12
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit181

_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit181: ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit179, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.thread211

.epil.preheader:                                  ; preds = %.preheader219
  %lcmp.mod630 = icmp eq i32 %i.b, 0
  tail call void @llvm.assume(i1 %lcmp.mod630)
  %i.qc = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.bz, ptr %i.qc, align 1, !tbaa !90
  store i8 0, ptr %3, align 1, !tbaa !91
  %i.qd = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 0, ptr %i.qd, align 1, !tbaa !92
  %i.qe = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 0, ptr %i.qe, align 1, !tbaa !93
  %i.qf = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i16 4096, ptr %i.qf, align 1, !tbaa !94
  br label %.thread211

.thread211:                                       ; preds = %bb.i, %.epil.preheader, %bb.n, %bb.h, %bb.m, %._crit_edge254, %.critedge, %bb.a, %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit181
  %.sroa.0205.6 = phi i32 [ 1, %.critedge ], [ 1, %bb.a ], [ 0, %.epil.preheader ], [ %.sroa.0205.5379, %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit181 ], [ 1, %bb.m ], [ 1, %._crit_edge254 ], [ 1, %bb.h ], [ 0, %bb.n ], [ 1, %bb.i ]
  ret i32 %.sroa.0205.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.8) #10
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  tail call void (ptr, ...) @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef nonnull @.str.9, ptr noundef %0) #14
  unreachable
}

; Function Attrs: noreturn
declare void @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() local_unnamed_addr #3 comdat {
bb.a:
  tail call void (ptr, ...) @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef nonnull @.str.10) #14
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.8) #10
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #3 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #4 = { noreturn "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { noreturn "no-builtin-fread" "no-builtin-fwrite" }
attributes #11 = { builtin nounwind allocsize(0) "no-builtin-fread" "no-builtin-fwrite" }
attributes #12 = { builtin nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind "no-builtin-fread" "no-builtin-fwrite" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !83}
!10 = distinct !{!10, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPiEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!11 = distinct !{!11, !10, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPiEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!12 = distinct !{!12, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPiEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!13 = distinct !{!13, !12, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPiEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!14 = distinct !{!14, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPiEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!15 = distinct !{!15, !14, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPiEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!16 = distinct !{!16, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPiEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!17 = distinct !{!17, !16, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPiEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!18 = distinct !{!18, !83, !86, !87}
!19 = distinct !{!19, !83, !86}
!20 = distinct !{!20, !83}
!21 = distinct !{!21, !83}
!22 = distinct !{!22, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!23 = distinct !{!23, !22, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!24 = distinct !{!24, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!25 = distinct !{!25, !24, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!26 = distinct !{!26, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!27 = distinct !{!27, !26, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!28 = distinct !{!28, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!29 = distinct !{!29, !28, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!30 = distinct !{!30, !83, !86, !87}
!31 = distinct !{!31, !83, !86}
!32 = distinct !{!32, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!33 = distinct !{!33, !32, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!34 = distinct !{!34, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!35 = distinct !{!35, !34, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!36 = distinct !{!36, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!37 = distinct !{!37, !36, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!38 = distinct !{!38, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!39 = distinct !{!39, !38, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!40 = distinct !{!40, !83, !86, !87}
!41 = distinct !{!41, !83, !86}
!42 = distinct !{!42, !83}
!43 = distinct !{!43, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!44 = distinct !{!44, !43, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!45 = distinct !{!45, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!46 = distinct !{!46, !45, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!47 = distinct !{!47, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!48 = distinct !{!48, !47, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!49 = distinct !{!49, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!50 = distinct !{!50, !49, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!51 = distinct !{!51, !83, !86, !87}
!52 = distinct !{!52, !83, !86}
!53 = distinct !{!53, !83}
!54 = distinct !{!54, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!55 = distinct !{!55, !54, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!56 = distinct !{!56, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!57 = distinct !{!57, !56, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!58 = distinct !{!58, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!59 = distinct !{!59, !58, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
end_hunk_0
