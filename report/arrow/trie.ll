begin_hunk_0
  %i.f = load ptr, ptr %7, align 8, !tbaa !29     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZN5arrow6StatusD2Ev.exit
  store ptr %i.f, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.b

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !84
end_hunk_0
begin_hunk_1
  store ptr %i.u, ptr %0, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN5arrow6StatusD2Ev.exit40, label %.critedge22

_ZN5arrow6StatusD2Ev.exit40:                      ; preds = %_ZN5arrow6StatusD2Ev.exit36
  %i.w = load i16, ptr %i.o, align 8, !tbaa !86
  %i.x = add i16 %i.w, 1
  store i16 %i.x, ptr %i.o, align 8, !tbaa !86
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !88
  br label %.critedge22

.critedge22:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit36, %_ZN5arrow6StatusD2Ev.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.b

bb.b:                                             ; preds = %.critedge.thread, %.critedge22
  ret void
}

end_hunk_1
begin_hunk_2
  %i.f = load ptr, ptr %7, align 8, !tbaa !29, !noalias !91 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16, !noalias !91
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %i.f, ptr %0, align 8, !alias.scope !91
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !91
  br label %_ZN5arrow8internal11TrieBuilder15CreateChildNodeEPNS0_4Trie4NodeEhSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !84, !noalias !91
end_hunk_2
begin_hunk_3
  store ptr %i.u, ptr %0, align 8, !tbaa !29, !alias.scope !91
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16, !noalias !91
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN5arrow6StatusD2Ev.exit40.i, label %.critedge22.i

_ZN5arrow6StatusD2Ev.exit40.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit36.i
  %i.w = load i16, ptr %i.o, align 8, !tbaa !86, !noalias !91
  %i.x = add i16 %i.w, 1
  store i16 %i.x, ptr %i.o, align 8, !tbaa !86, !noalias !91
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !94
  br label %.critedge22.i

.critedge22.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit40.i, %_ZN5arrow6StatusD2Ev.exit36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16, !noalias !91
  br label %_ZN5arrow8internal11TrieBuilder15CreateChildNodeEPNS0_4Trie4NodeEhSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN5arrow8internal11TrieBuilder15CreateChildNodeEPNS0_4Trie4NodeEhSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.critedge.thread.i, %.critedge22.i
  ret void
}

end_hunk_3
begin_hunk_4
  %17 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit111, %bb.a
  %.055 = phi i64 [ %2, %bb.a ], [ %22, %_ZN5arrow6StatusD2Ev.exit111 ] ; 8 uses
  %.053 = phi i64 [ 0, %bb.a ], [ %i.cr, %_ZN5arrow6StatusD2Ev.exit111 ] ; 3 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %i.dd, %_ZN5arrow6StatusD2Ev.exit111 ] ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !11
end_hunk_4
begin_hunk_5
_ZN5arrow6StatusD2Ev.exit83:                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.z = load ptr, ptr %1, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ab = load i16, ptr %18, align 8, !tbaa !86   ; 2 uses
  %i.ac = add i16 %i.ab, 1
  store i16 %i.ac, ptr %18, align 8, !tbaa !86
  store i16 %i.ab, ptr %i.aa, align 2, !tbaa !24
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !103
  br label %.critedge79
end_hunk_5
begin_hunk_6
  br i1 %i.ba, label %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i, label %_ZN5arrow6StatusD2Ev.exit36.i.i

_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i:              ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %19 = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 5
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZN5arrow6StatusD2Ev.exit.i.i

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i
end_hunk_6
begin_hunk_7
  %.sroa.041.052.i.i = phi i64 [ %i.ay, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i ], [ %i.bk, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16, !noalias !115
  store i16 -1, ptr %9, align 2, !tbaa !24, !noalias !115
  store i16 -1, ptr %19, align 2, !tbaa !27, !noalias !115
  store i8 11, ptr %i.bb, align 2, !tbaa !35, !noalias !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.bc, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6.053.i.i, i64 11, i1 false), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16, !noalias !115
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.01355.i.i, i8 noundef zeroext %.01454.i.i, ptr noundef nonnull align 2 dereferenceable(16) %9), !noalias !115
  %i.be = load ptr, ptr %10, align 8, !tbaa !29, !noalias !115 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16, !noalias !115
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i, label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  store ptr %i.be, ptr %0, align 8, !alias.scope !115
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16, !noalias !115
  br label %.critedge79

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !84, !noalias !115
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.6.053.i.i, i64 11
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !45, !noalias !115 ; 2 uses
end_hunk_7
begin_hunk_8
  %.014.lcssa.i.i = phi i8 [ %i.av, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.bj, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i ]
  %.013.lcssa.i.i = phi ptr [ %i.au, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.bh, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16, !noalias !115
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.bn = load i16, ptr %20, align 8, !tbaa !86, !noalias !115
  store i16 %i.bn, ptr %11, align 2, !tbaa !24, !noalias !115
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i16 -1, ptr %i.bo, align 2, !tbaa !27, !noalias !115
end_hunk_8
begin_hunk_9
  store ptr %i.bs, ptr %0, align 8, !tbaa !29, !alias.scope !115
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16, !noalias !115
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZN5arrow6StatusD2Ev.exit40.i.i, label %.critedge22.i.i

_ZN5arrow6StatusD2Ev.exit40.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit36.i.i
  %i.bu = load i16, ptr %20, align 8, !tbaa !86, !noalias !115
  %i.bv = add i16 %i.bu, 1
  store i16 %i.bv, ptr %20, align 8, !tbaa !86, !noalias !115
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !116
  br label %.critedge22.i.i

.critedge22.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit40.i.i, %_ZN5arrow6StatusD2Ev.exit36.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16, !noalias !115
  br label %.critedge79

bb.h:                                             ; preds = %bb.d
end_hunk_9
begin_hunk_10
  br label %.critedge79

bb.m:                                             ; preds = %bb.i
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cc = load i16, ptr %21, align 8, !tbaa !86   ; 2 uses
  %i.cd = add i16 %i.cc, 1
  store i16 %i.cd, ptr %21, align 8, !tbaa !86
  store i16 %i.cc, ptr %i.e, align 2, !tbaa !24
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !123
  br label %.critedge79
end_hunk_10
begin_hunk_11
  %i.cr = add nsw i64 %.154.lcssa, 1              ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 %.154.lcssa
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !45  ; 3 uses
  %i.cu = load i16, ptr %i.ce, align 2, !tbaa !27
  %i.cv = sext i16 %i.cu to i32
  %i.cw = shl nsw i32 %i.cv, 8
end_hunk_11
begin_hunk_12
  %i.da = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !28 ; 2 uses
  %.not130 = icmp eq i16 %i.dc, -1
  %i.dd = sext i16 %i.dc to i64
  %22 = add nsw i64 %.156.lcssa, -1
  br i1 %.not130, label %bb.p, label %.critedge, !llvm.loop !129

bb.p:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit111
  %i.de = icmp ugt i64 %i.cr, %2
end_hunk_12
begin_hunk_13
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 %i.cr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.dh = icmp ugt i64 %i.df, 11
  br i1 %i.dh, label %_ZN5arrow6StatusD2Ev.exit.lr.ph.i, label %_ZN5arrow6StatusD2Ev.exit36.i

_ZN5arrow6StatusD2Ev.exit.lr.ph.i:                ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114
  %23 = getelementptr inbounds nuw i8, ptr %5, i64 2
  %24 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 5
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZN5arrow6StatusD2Ev.exit.i115

_ZN5arrow6StatusD2Ev.exit.i115:                   ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i
  %.01355.i = phi ptr [ %i.e, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i ], [ %i.dl, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  %.01454.i = phi i8 [ %i.ct, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i ], [ %i.dn, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  %.sroa.6.053.i = phi ptr [ %i.dg, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i ], [ %i.dp, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ] ; 3 uses
  %.sroa.041.052.i = phi i64 [ %i.df, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i ], [ %i.do, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !130
  store i16 -1, ptr %5, align 2, !tbaa !24, !noalias !130
  store i16 -1, ptr %23, align 2, !tbaa !27, !noalias !130
  store i8 11, ptr %24, align 2, !tbaa !35, !noalias !130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %25, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6.053.i, i64 11, i1 false), !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16, !noalias !130
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %.01355.i, i8 noundef zeroext %.01454.i, ptr noundef nonnull align 2 dereferenceable(16) %5), !noalias !130
  %i.di = load ptr, ptr %6, align 8, !tbaa !29, !noalias !130 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !130
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %_ZN5arrow6StatusD2Ev.exit.i115
  store ptr %i.di, ptr %0, align 8, !alias.scope !130
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !130
  br label %.critedge79

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i115
  %i.dk = load ptr, ptr %26, align 8, !tbaa !84, !noalias !130
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -16 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.6.053.i, i64 11
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !45, !noalias !130 ; 2 uses
end_hunk_13
begin_hunk_14
  %.014.lcssa.i = phi i8 [ %i.ct, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114 ], [ %i.dn, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  %.013.lcssa.i = phi ptr [ %i.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114 ], [ %i.dl, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16, !noalias !130
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.dr = load i16, ptr %27, align 8, !tbaa !86, !noalias !130
  store i16 %i.dr, ptr %7, align 2, !tbaa !24, !noalias !130
  %28 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 -1, ptr %28, align 2, !tbaa !27, !noalias !130
  %29 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ds = trunc nuw nsw i64 %.sroa.041.0.lcssa.i to i8
  store i8 %i.ds, ptr %29, align 2, !tbaa !35, !noalias !130
  %30 = getelementptr inbounds nuw i8, ptr %7, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %30, ptr align 1 %.sroa.6.0.lcssa.i, i64 %.sroa.041.0.lcssa.i, i1 false), !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16, !noalias !130
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %.013.lcssa.i, i8 noundef zeroext %.014.lcssa.i, ptr noundef nonnull align 2 dereferenceable(16) %7), !noalias !130
  %i.dt = load ptr, ptr %8, align 8, !tbaa !29, !noalias !130 ; 2 uses
  store ptr %i.dt, ptr %0, align 8, !tbaa !29, !alias.scope !130
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16, !noalias !130
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %_ZN5arrow6StatusD2Ev.exit40.i, label %.critedge22.i

_ZN5arrow6StatusD2Ev.exit40.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit36.i
  %i.dv = load i16, ptr %27, align 8, !tbaa !86, !noalias !130
  %i.dw = add i16 %i.dv, 1
  store i16 %i.dw, ptr %27, align 8, !tbaa !86, !noalias !130
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !133
  br label %.critedge22.i

.critedge22.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit40.i, %_ZN5arrow6StatusD2Ev.exit36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16, !noalias !130
  br label %.critedge79

.critedge79:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit107, %.critedge.thread.i.i, %.critedge22.i.i, %_ZN5arrow6StatusD2Ev.exit83, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit101, %bb.k, %bb.l, %bb.m, %.critedge.thread.i, %.critedge22.i
  ret void
}

end_hunk_14
