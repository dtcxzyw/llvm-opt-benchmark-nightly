inline.NumInlined: 1127
inline.NumDeleted: 513
begin_hunk_0_@_ZN4node9inspector12_GLOBAL__N_111HttpHandler6OnDataEPSt6vectorIcSaIcEE:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.an
  %.sroa.029.036 = phi ptr [ %i.s, %.lr.ph ], [ %i.ej, %bb.an ] ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.029.036, i64 72 ; 3 uses
  %.val25 = load ptr, ptr %i.ab, align 8          ; 8 uses
  %i.ac = getelementptr i8, ptr %.sroa.029.036, i64 80
  %.val26 = load i64, ptr %i.ac, align 8          ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %.not.i.i.i = icmp eq i64 %.val26, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.thread.i.i, label %.preheader.i.i.preheader

._crit_edge.i.i.thread.i.i:                       ; preds = %bb.g
  store ptr %i.y, ptr %2, align 8, !alias.scope !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader
  %.not13.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not13.i.i.i, label %bb.h, label %.preheader.i.i.preheader, !llvm.loop !33

.preheader.i.i.preheader:                         ; preds = %bb.g, %.preheader.i.i
  %.1.i.i.i68 = phi i64 [ %i.ad, %.preheader.i.i ], [ %.val26, %bb.g ] ; 3 uses
  %i.ad = add i64 %.1.i.i.i68, -1                 ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val25, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noalias !30
  %i.ag = icmp eq i8 %i.af, 58
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.i.i.preheader, label %.preheader.i.i, !llvm.loop !33

bb.h:                                             ; preds = %.preheader.i.i
  store ptr %i.y, ptr %2, align 8, !alias.scope !30
  %i.ah = icmp ugt i64 %.val26, 15
  br i1 %i.ah, label %bb.i, label %._crit_edge.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp slt i64 %.val26, 0
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #23
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aj = add nuw i64 %.val26, 1                  ; 2 uses
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %._crit_edge.i.i.i.thread.i, !prof !5

bb.l:                                             ; preds = %bb.k
  call void @_ZSt17__throw_bad_allocv() #23
  unreachable

._crit_edge.i.i.i.thread.i:                       ; preds = %bb.k
  %i.al = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #24 ; 2 uses
  store ptr %i.al, ptr %2, align 8, !alias.scope !30
  store i64 %.val26, ptr %i.y, align 8, !alias.scope !30
  br label %bb.n

._crit_edge.i.i.i.i:                              ; preds = %bb.h
  %cond11.i.i = icmp eq i64 %.val26, 1
  br i1 %cond11.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = load i8, ptr %.val25, align 1, !noalias !30
  store i8 %i.am, ptr %i.y, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i, %._crit_edge.i.i.i.thread.i
  %i.an = phi ptr [ %i.al, %._crit_edge.i.i.i.thread.i ], [ %i.y, %._crit_edge.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr readonly align 1 %.val25, i64 %.val26, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.thread.i.i
  %i.ao = phi ptr [ %i.y, %._crit_edge.i.i.thread.i.i ], [ %i.an, %bb.n ], [ %i.y, %bb.m ]
  store i64 %.val26, ptr %i.z, align 8, !alias.scope !30
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.val26
  store i8 0, ptr %i.ap, align 1
  br label %_ZN4node9inspector12_GLOBAL__N_18TrimPortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.i.i.preheader
  %.not13.i12.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not13.i12.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit14.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.i.i.preheader, !llvm.loop !33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.i.i.preheader: ; preds = %.preheader.i.i.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.i.i
  %.1.i11.i.i69 = phi i64 [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.i.i ], [ %.val26, %.preheader.i.i.preheader ]
  %i.aq = add i64 %.1.i11.i.i69, -1               ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val25, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noalias !30
  %i.at = icmp eq i8 %i.as, 93
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit14.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.i.i, !llvm.loop !33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit14.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.i.i.preheader
  %i.au = icmp ugt i64 %i.ad, %i.aq
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit14.thread.i.i, label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit14.thread.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit14.i.i
  store ptr %i.y, ptr %2, align 8, !alias.scope !34
  %i.av = icmp ugt i64 %i.ad, 15
  br i1 %i.av, label %bb.o, label %._crit_edge.i.i.i.i.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit14.thread.i.i
  %i.aw = icmp slt i64 %i.ad, 0
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #23
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ax = icmp slt i64 %.1.i.i.i68, 0
  br i1 %i.ax, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !5

bb.r:                                             ; preds = %bb.q
  call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.q
  %i.ay = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.1.i.i.i68) #24 ; 2 uses
  store ptr %i.ay, ptr %2, align 8, !alias.scope !34
  store i64 %i.ad, ptr %i.y, align 8, !alias.scope !34
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit14.thread.i.i
  %i.az = phi ptr [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit14.thread.i.i ] ; 3 uses
  switch i64 %i.ad, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ba = load i8, ptr %.val25, align 1, !noalias !30
  store i8 %i.ba, ptr %i.az, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull readonly align 1 %.val25, i64 %i.ad, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i: ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i.i.i
  store i64 %i.ad, ptr %i.z, align 8, !alias.scope !34
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ad
  store i8 0, ptr %i.bb, align 1
  br label %_ZN4node9inspector12_GLOBAL__N_18TrimPortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit14.i.i
  store ptr %i.y, ptr %2, align 8, !alias.scope !30
  %i.bc = icmp ugt i64 %.val26, 15
  br i1 %i.bc, label %bb.v, label %._crit_edge.i.i15.i.i

bb.v:                                             ; preds = %bb.u
  %i.bd = icmp slt i64 %.val26, 0
  br i1 %i.bd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #23
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.be = add nuw i64 %.val26, 1                  ; 2 uses
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %bb.y, label %._crit_edge.i.i15.i.thread.i, !prof !5

bb.y:                                             ; preds = %bb.x
  call void @_ZSt17__throw_bad_allocv() #23
  unreachable

._crit_edge.i.i15.i.thread.i:                     ; preds = %bb.x
  %i.bg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #24 ; 2 uses
  store ptr %i.bg, ptr %2, align 8, !alias.scope !30
  store i64 %.val26, ptr %i.y, align 8, !alias.scope !30
  br label %bb.aa

._crit_edge.i.i15.i.i:                            ; preds = %bb.u
  %cond.i.i = icmp eq i64 %.val26, 1
  br i1 %cond.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i15.i.i
  %i.bh = load i8, ptr %.val25, align 1, !noalias !30
  store i8 %i.bh, ptr %i.y, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit17.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i15.i.i, %._crit_edge.i.i15.i.thread.i
  %i.bi = phi ptr [ %i.bg, %._crit_edge.i.i15.i.thread.i ], [ %i.y, %._crit_edge.i.i15.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull readonly align 1 %.val25, i64 %.val26, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit17.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit17.i.i: ; preds = %bb.aa, %bb.z
  %i.bj = phi ptr [ %i.bi, %bb.aa ], [ %i.y, %bb.z ]
  store i64 %.val26, ptr %i.z, align 8, !alias.scope !30
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.val26
  store i8 0, ptr %i.bk, align 1
  br label %_ZN4node9inspector12_GLOBAL__N_18TrimPortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN4node9inspector12_GLOBAL__N_18TrimPortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit17.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.bl = load i64, ptr %i.z, align 8             ; 8 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_ZN4node17StringEqualNoCaseEPKcS1_.exit.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %_ZN4node9inspector12_GLOBAL__N_18TrimPortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %.val2.i = load ptr, ptr %2, align 8            ; 6 uses
  %i.bn = call ptr @memchr(ptr noundef %.val2.i, i32 noundef 0, i64 noundef %i.bl) #22
  %.not.i.i27 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i.i, label %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.bo = icmp ugt i64 %i.bl, 3
  br i1 %i.bo, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.thread.i.i

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i.i
  %i.bp = load i8, ptr %.val2.i, align 1
  %i.bq = icmp eq i8 %i.bp, 91
  br i1 %i.bq, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.thread.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.br = getelementptr i8, ptr %.val2.i, i64 %i.bl
  %i.bs = getelementptr i8, ptr %i.br, i64 -1
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = icmp eq i8 %i.bt, 93
  br i1 %i.bu, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.thread.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.bv = icmp ugt i64 %i.bl, 47
  br i1 %i.bv, label %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit20.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit20.i.i: ; preds = %bb.ad
  %i.bw = call ptr @memchr(ptr noundef nonnull %.val2.i, i32 noundef 37, i64 noundef %i.bl) #22
  %.not135.i.i = icmp eq ptr %i.bw, null
  br i1 %.not135.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPcET0_T_SD_SC_.exit.i.i, label %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPcET0_T_SD_SC_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit20.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %gepdiff.i.i = add nsw i64 %i.bl, -2
  %i.bx = getelementptr inbounds nuw i8, ptr %.val2.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.bx, i64 %gepdiff.i.i, i1 false)
  %i.by = getelementptr i8, ptr %i.a, i64 %i.bl
  %i.bz = getelementptr i8, ptr %i.by, i64 -2
  store i8 0, ptr %i.bz, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ca = call i32 @uv_inet_pton(i32 noundef 10, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22
  %.not14.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not14.i.i, label %.lr.ph.i.i.i.i, label %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread4.i

_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread4.i: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPcET0_T_SD_SC_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPcET0_T_SD_SC_.exit.i.i, %.lr.ph.i.i.i.i
  %.052.i.idx.i.i.i = phi i64 [ %.052.i.add.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPcET0_T_SD_SC_.exit.i.i ] ; 2 uses
  %.052.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.052.i.idx.i.i.i
  %.val.i.i.i.i = load i8, ptr %.052.i.ptr.i.i.i, align 1
  %i.cb = icmp eq i8 %.val.i.i.i.i, 0             ; 2 uses
  %.052.i.add.i.i.i = add nuw nsw i64 %.052.i.idx.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %.052.i.add.i.i.i, 16
  %or.cond.not.i.i.i = select i1 %i.cb, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %.lr.ph.i.i.i.i, label %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, !llvm.loop !37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.thread.i.i: ; preds = %bb.ac, %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.cc = call i32 @uv_inet_pton(i32 noundef 2, ptr noundef %.val2.i, ptr noundef nonnull %i.c) #22
  %.not12.i.i = icmp eq i32 %i.cc, 0
  %i.cd = load i8, ptr %i.c, align 1
  %i.ce = icmp ne i8 %i.cd, 0
  %.1.i.i = select i1 %.not12.i.i, i1 %i.ce, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br i1 %.1.i.i, label %_ZN4node17StringEqualNoCaseEPKcS1_.exit.i, label %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i

_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br i1 %i.cb, label %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i, label %_ZN4node17StringEqualNoCaseEPKcS1_.exit.i

_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i: ; preds = %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.thread.i.i, %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit20.i.i, %bb.ad, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.cf = load ptr, ptr %2, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ah, %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i
  %.04.i.i = phi ptr [ %i.cf, %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i ], [ %i.dg, %bb.ah ] ; 3 uses
  %.0.i5.i = phi ptr [ @.str.15, %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i ], [ %i.df, %bb.ah ] ; 2 uses
  %i.cg = load i8, ptr %.04.i.i, align 1
  %i.ch = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() #22
  %i.ci = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #22
  %i.cj = load ptr, ptr %i.ch, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ci
  %i.cn = load ptr, ptr %i.cm, align 8            ; 3 uses
  %.not.not.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.not.i.i.i.i.i, label %bb.af, label %_ZN4node7ToLowerEc.exit.i.i

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZN4node7ToLowerEc.exit.i.i:                      ; preds = %bb.ae
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call noundef signext i8 %i.cq(ptr noundef nonnull align 8 dereferenceable(570) %i.cn, i8 noundef signext %i.cg) #22, !inline_history !38
  %i.cs = load i8, ptr %.0.i5.i, align 1
  %i.ct = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() #22
  %i.cu = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #22
  %i.cv = load ptr, ptr %i.ct, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cu
  %i.cz = load ptr, ptr %i.cy, align 8            ; 3 uses
  %.not.not.i.i.i6.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.not.i.i.i6.i.i, label %bb.ag, label %_ZN4node7ToLowerEc.exit7.i.i

bb.ag:                                            ; preds = %_ZN4node7ToLowerEc.exit.i.i
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZN4node7ToLowerEc.exit7.i.i:                     ; preds = %_ZN4node7ToLowerEc.exit.i.i
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call noundef signext i8 %i.dc(ptr noundef nonnull align 8 dereferenceable(570) %i.cz, i8 noundef signext %i.cs) #22, !inline_history !38
  %i.de = icmp eq i8 %i.cr, %i.dd                 ; 3 uses
  br i1 %i.de, label %bb.ah, label %_ZN4node17StringEqualNoCaseEPKcS1_.exit.i

bb.ah:                                            ; preds = %_ZN4node7ToLowerEc.exit7.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i5.i, i64 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 1
  %i.dh = load i8, ptr %.04.i.i, align 1
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %_ZN4node17StringEqualNoCaseEPKcS1_.exit.i, label %bb.ae, !llvm.loop !39

_ZN4node17StringEqualNoCaseEPKcS1_.exit.i:        ; preds = %bb.ah, %_ZN4node7ToLowerEc.exit7.i.i, %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.thread.i.i, %_ZN4node9inspector12_GLOBAL__N_18TrimPortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.dj = phi i1 [ true, %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ true, %_ZN4node9inspector12_GLOBAL__N_18TrimPortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.thread.i.i ], [ %i.de, %_ZN4node7ToLowerEc.exit7.i.i ], [ %i.de, %bb.ah ]
  %i.dk = load ptr, ptr %2, align 8               ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.y
  br i1 %i.dl, label %_ZNK4node9inspector12_GLOBAL__N_111HttpHandler13IsAllowedHostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4node17StringEqualNoCaseEPKcS1_.exit.i
  %i.dm = load i64, ptr %i.y, align 8
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #25
  br label %_ZNK4node9inspector12_GLOBAL__N_111HttpHandler13IsAllowedHostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK4node9inspector12_GLOBAL__N_111HttpHandler13IsAllowedHostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN4node17StringEqualNoCaseEPKcS1_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %i.dj, label %bb.ai, label %.critedge.sink.split

bb.ai:                                            ; preds = %_ZNK4node9inspector12_GLOBAL__N_111HttpHandler13IsAllowedHostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.029.036, i64 33
  %i.dp = load i8, ptr %i.do, align 1, !range !14, !noundef !15
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.aj, label %.critedge.sink.split

bb.aj:                                            ; preds = %bb.ai
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.029.036, i64 32
  %i.ds = load i8, ptr %i.dr, align 8, !range !14, !noundef !15
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.du = load ptr, ptr %i.aa, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 248
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.029.036) #22
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.029.036, i64 48
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %.critedge.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.029.036, i64 40
  %i.ed = load ptr, ptr %i.aa, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 248
  %i.ef = load ptr, ptr %i.ee, align 8            ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.029.036, ptr noundef nonnull align 8 dereferenceable(32) %i.ec) #22
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.am
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.029.036, i64 104 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.u
  br i1 %i.ek, label %.lr.ph.i.i.i.preheader, label %bb.g

.critedge.sink.split:                             ; preds = %bb.al, %_ZNK4node9inspector12_GLOBAL__N_111HttpHandler13IsAllowedHostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.ai
  %i.el = load ptr, ptr %0, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(464) %0) #22
  br label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.an, %.critedge.sink.split
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt8_DestroyIN4node9inspector12_GLOBAL__N_19HttpEventEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ff, %_ZSt8_DestroyIN4node9inspector12_GLOBAL__N_19HttpEventEEvPT_.exit.i.i.i ], [ %i.s, %.lr.ph.i.i.i.preheader ] ; 7 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.ep = load ptr, ptr %i.eo, align 8            ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.es = load i64, ptr %i.eq, align 8
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8            ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.ey = load i64, ptr %i.ew, align 8
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.fa = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
end_hunk_0
