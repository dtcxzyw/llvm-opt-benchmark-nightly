inline.NumInlined: 1128
inline.NumDeleted: 514
begin_hunk_0_@_ZN4node9inspector12_GLOBAL__N_111HttpHandler6OnDataEPSt6vectorIcSaIcEE:bb.a
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
  %.val2.i = load ptr, ptr %2, align 8            ; 7 uses
  %i.bn = call ptr @memchr(ptr noundef %.val2.i, i32 noundef 0, i64 noundef %i.bl) #22 ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.bn, null
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %.val2.i to i64            ; 2 uses
  %i.bq = sub i64 %i.bo, %i.bp
  %.not.i.i27 = icmp eq i64 %i.bq, -1
  %or.cond.i.i = or i1 %.not.i.i4.i, %.not.i.i27
  br i1 %or.cond.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i.i, label %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.br = icmp ugt i64 %i.bl, 3
  br i1 %i.br, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.thread.i.i

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i.i
  %i.bs = load i8, ptr %.val2.i, align 1
  %i.bt = icmp eq i8 %i.bs, 91
  br i1 %i.bt, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.thread.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.bu = getelementptr i8, ptr %.val2.i, i64 %i.bl
  %i.bv = getelementptr i8, ptr %i.bu, i64 -1
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = icmp eq i8 %i.bw, 93
  br i1 %i.bx, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.thread.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.by = icmp ugt i64 %i.bl, 47
  br i1 %i.by, label %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit20.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit20.i.i: ; preds = %bb.ad
  %i.bz = call ptr @memchr(ptr noundef nonnull %.val2.i, i32 noundef 37, i64 noundef %i.bl) #22 ; 2 uses
  %.not.i18.i.i = icmp eq ptr %i.bz, null
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.bp
  %.not135.i.i = icmp eq i64 %i.cb, -1
  %.not13.i.i = or i1 %.not.i18.i.i, %.not135.i.i
  br i1 %.not13.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPcET0_T_SD_SC_.exit.i.i, label %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPcET0_T_SD_SC_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit20.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %gepdiff.i.i = add nsw i64 %i.bl, -2
  %i.cc = getelementptr inbounds nuw i8, ptr %.val2.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.cc, i64 %gepdiff.i.i, i1 false)
  %i.cd = getelementptr i8, ptr %i.a, i64 %i.bl
  %i.ce = getelementptr i8, ptr %i.cd, i64 -2
  store i8 0, ptr %i.ce, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.cf = call i32 @uv_inet_pton(i32 noundef 10, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22
  %.not14.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not14.i.i, label %.lr.ph.i.i.i.i, label %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread4.i

_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread4.i: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPcET0_T_SD_SC_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPcET0_T_SD_SC_.exit.i.i, %.lr.ph.i.i.i.i
  %.052.i.idx.i.i.i = phi i64 [ %.052.i.add.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPcET0_T_SD_SC_.exit.i.i ] ; 2 uses
  %.052.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.052.i.idx.i.i.i
  %.val.i.i.i.i = load i8, ptr %.052.i.ptr.i.i.i, align 1
  %i.cg = icmp eq i8 %.val.i.i.i.i, 0             ; 2 uses
  %.052.i.add.i.i.i = add nuw nsw i64 %.052.i.idx.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %.052.i.add.i.i.i, 16
  %or.cond.not.i.i.i = select i1 %i.cg, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %.lr.ph.i.i.i.i, label %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, !llvm.loop !37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.thread.i.i: ; preds = %bb.ac, %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.ch = call i32 @uv_inet_pton(i32 noundef 2, ptr noundef %.val2.i, ptr noundef nonnull %i.c) #22
  %.not12.i.i = icmp eq i32 %i.ch, 0
  %i.ci = load i8, ptr %i.c, align 1
  %i.cj = icmp ne i8 %i.ci, 0
  %.1.i.i = select i1 %.not12.i.i, i1 %i.cj, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br i1 %.1.i.i, label %_ZN4node17StringEqualNoCaseEPKcS1_.exit.i, label %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i

_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br i1 %i.cg, label %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i, label %_ZN4node17StringEqualNoCaseEPKcS1_.exit.i

_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i: ; preds = %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.thread.i.i, %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit20.i.i, %bb.ad, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.ck = load ptr, ptr %2, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ah, %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i
  %.04.i.i = phi ptr [ %i.ck, %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i ], [ %i.dl, %bb.ah ] ; 3 uses
  %.0.i5.i = phi ptr [ @.str.15, %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i ], [ %i.dk, %bb.ah ] ; 2 uses
  %i.cl = load i8, ptr %.04.i.i, align 1
  %i.cm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() #22
  %i.cn = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #22
  %i.co = load ptr, ptr %i.cm, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cn
  %i.cs = load ptr, ptr %i.cr, align 8            ; 3 uses
  %.not.not.i.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.not.i.i.i.i.i, label %bb.af, label %_ZN4node7ToLowerEc.exit.i.i

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZN4node7ToLowerEc.exit.i.i:                      ; preds = %bb.ae
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef signext i8 %i.cv(ptr noundef nonnull align 8 dereferenceable(570) %i.cs, i8 noundef signext %i.cl) #22, !inline_history !38
  %i.cx = load i8, ptr %.0.i5.i, align 1
  %i.cy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() #22
  %i.cz = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #22
  %i.da = load ptr, ptr %i.cy, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.cz
  %i.de = load ptr, ptr %i.dd, align 8            ; 3 uses
  %.not.not.i.i.i6.i.i = icmp eq ptr %i.de, null
  br i1 %.not.not.i.i.i6.i.i, label %bb.ag, label %_ZN4node7ToLowerEc.exit7.i.i

bb.ag:                                            ; preds = %_ZN4node7ToLowerEc.exit.i.i
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZN4node7ToLowerEc.exit7.i.i:                     ; preds = %_ZN4node7ToLowerEc.exit.i.i
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = call noundef signext i8 %i.dh(ptr noundef nonnull align 8 dereferenceable(570) %i.de, i8 noundef signext %i.cx) #22, !inline_history !38
  %i.dj = icmp eq i8 %i.cw, %i.di                 ; 3 uses
  br i1 %i.dj, label %bb.ah, label %_ZN4node17StringEqualNoCaseEPKcS1_.exit.i

bb.ah:                                            ; preds = %_ZN4node7ToLowerEc.exit7.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i5.i, i64 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 1
  %i.dm = load i8, ptr %.04.i.i, align 1
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %_ZN4node17StringEqualNoCaseEPKcS1_.exit.i, label %bb.ae, !llvm.loop !39

_ZN4node17StringEqualNoCaseEPKcS1_.exit.i:        ; preds = %bb.ah, %_ZN4node7ToLowerEc.exit7.i.i, %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.thread.i.i, %_ZN4node9inspector12_GLOBAL__N_18TrimPortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.do = phi i1 [ true, %_ZN4node9inspector12_GLOBAL__N_111IsIPAddressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ true, %_ZN4node9inspector12_GLOBAL__N_18TrimPortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.thread.i.i ], [ %i.dj, %_ZN4node7ToLowerEc.exit7.i.i ], [ %i.dj, %bb.ah ]
  %i.dp = load ptr, ptr %2, align 8               ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.y
  br i1 %i.dq, label %_ZNK4node9inspector12_GLOBAL__N_111HttpHandler13IsAllowedHostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4node17StringEqualNoCaseEPKcS1_.exit.i
  %i.dr = load i64, ptr %i.y, align 8
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #25
  br label %_ZNK4node9inspector12_GLOBAL__N_111HttpHandler13IsAllowedHostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK4node9inspector12_GLOBAL__N_111HttpHandler13IsAllowedHostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN4node17StringEqualNoCaseEPKcS1_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %i.do, label %bb.ai, label %.critedge.sink.split

bb.ai:                                            ; preds = %_ZNK4node9inspector12_GLOBAL__N_111HttpHandler13IsAllowedHostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.029.036, i64 33
  %i.du = load i8, ptr %i.dt, align 1, !range !14, !noundef !15
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.aj, label %.critedge.sink.split

bb.aj:                                            ; preds = %bb.ai
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.029.036, i64 32
  %i.dx = load i8, ptr %i.dw, align 8, !range !14, !noundef !15
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dz = load ptr, ptr %i.aa, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 248
  %i.eb = load ptr, ptr %i.ea, align 8            ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.029.036) #22
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.029.036, i64 48
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %.critedge.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.029.036, i64 40
  %i.ei = load ptr, ptr %i.aa, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 248
  %i.ek = load ptr, ptr %i.ej, align 8            ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.029.036, ptr noundef nonnull align 8 dereferenceable(32) %i.eh) #22
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.am
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.029.036, i64 104 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.u
  br i1 %i.ep, label %.lr.ph.i.i.i.preheader, label %bb.g

.critedge.sink.split:                             ; preds = %bb.al, %_ZNK4node9inspector12_GLOBAL__N_111HttpHandler13IsAllowedHostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.ai
  %i.eq = load ptr, ptr %0, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(464) %0) #22
  br label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.an, %.critedge.sink.split
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt8_DestroyIN4node9inspector12_GLOBAL__N_19HttpEventEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fk, %_ZSt8_DestroyIN4node9inspector12_GLOBAL__N_19HttpEventEEvPT_.exit.i.i.i ], [ %i.s, %.lr.ph.i.i.i.preheader ] ; 7 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ex = load i64, ptr %i.ev, align 8
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.fa = load ptr, ptr %i.ez, align 8            ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.fd = load i64, ptr %i.fb, align 8
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.ff = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZSt8_DestroyIN4node9inspector12_GLOBAL__N_19HttpEventEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i
  %i.fi = load i64, ptr %i.fg, align 8
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #25
  br label %_ZSt8_DestroyIN4node9inspector12_GLOBAL__N_19HttpEventEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4node9inspector12_GLOBAL__N_19HttpEventEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.fk, %i.u
  br i1 %.not.i.i.i28, label %_ZSt8_DestroyIPN4node9inspector12_GLOBAL__N_19HttpEventEEvT_S5_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !40

_ZSt8_DestroyIPN4node9inspector12_GLOBAL__N_19HttpEventEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIN4node9inspector12_GLOBAL__N_19HttpEventEEvPT_.exit.i.i.i, %bb.f
  %.not.i.i2.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN4node9inspector12_GLOBAL__N_19HttpEventESaIS3_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPN4node9inspector12_GLOBAL__N_19HttpEventEEvT_S5_.exit.i
  %i.fl = ptrtoint ptr %i.w to i64
  %i.fm = ptrtoint ptr %i.s to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.fn) #25
  br label %_ZNSt6vectorIN4node9inspector12_GLOBAL__N_19HttpEventESaIS3_EED2Ev.exit

_ZNSt6vectorIN4node9inspector12_GLOBAL__N_19HttpEventESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4node9inspector12_GLOBAL__N_19HttpEventEEvT_S5_.exit.i, %bb.ao
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_111HttpHandler5OnEofEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(464) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4node9inspector9TcpHolderENS0_15FunctionDeleterIS2_XadL_ZNS2_20DisconnectAndDisposeEPS2_EEEEE5resetES4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @uv_close(ptr noundef nonnull %i.b, ptr noundef nonnull @_ZN4node9inspector9TcpHolder8OnClosedEP11uv_handle_s) #22
  br label %_ZNSt10unique_ptrIN4node9inspector9TcpHolderENS0_15FunctionDeleterIS2_XadL_ZNS2_20DisconnectAndDisposeEPS2_EEEEE5resetES4_.exit

_ZNSt10unique_ptrIN4node9inspector9TcpHolderENS0_15FunctionDeleterIS2_XadL_ZNS2_20DisconnectAndDisposeEPS2_EEEEE5resetES4_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_111HttpHandler5WriteESt6vectorIcSaIcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(464) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef range(i32 0, 2) i32 @_ZN4node9inspector9TcpHolder8WriteRawERKSt6vectorIcSaIcEEPFvP10uv_write_siE(ptr noundef nonnull align 8 dereferenceable(288) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noundef nonnull @_ZN4node9inspector12_GLOBAL__N_112WriteRequest7CleanupEP10uv_write_si) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_111HttpHandler15CancelHandshakeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(464) %0) unnamed_addr #0 align 2 {
_ZNSt6vectorIcSaIcEED2Ev.exit:
  %1 = alloca %"class.std::vector", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.a = tail call noalias noundef nonnull dereferenceable(101) ptr @_Znwm(i64 noundef 101) #24 ; 4 uses
  store ptr %i.a, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 101 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.b, ptr %i.c, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(101) %i.a, ptr noundef nonnull align 16 dereferenceable(101) @__const._ZN4node9inspector12_GLOBAL__N_111HttpHandler15CancelHandshakeEv.HANDSHAKE_FAILED_RESPONSE, i64 101, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call noundef range(i32 0, 2) i32 @_ZN4node9inspector9TcpHolder8WriteRawERKSt6vectorIcSaIcEEPFvP10uv_write_siE(ptr noundef nonnull align 8 dereferenceable(288) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noundef nonnull @_ZN4node9inspector12_GLOBAL__N_111HttpHandler25ThenCloseAndReportFailureEP10uv_write_si) ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 101) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_111HttpHandler8ShutdownEv(ptr noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(464) %0) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_111HttpHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(464) initializes((0, 8)) %0) unnamed_addr #13 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4node9inspector12_GLOBAL__N_111HttpHandlerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4node9inspector12_GLOBAL__N_19HttpEventEEvT_S5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZSt8_DestroyIN4node9inspector12_GLOBAL__N_19HttpEventEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyIN4node9inspector12_GLOBAL__N_19HttpEventEEvPT_.exit.i.i.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3 ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.af = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZSt8_DestroyIN4node9inspector12_GLOBAL__N_19HttpEventEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i
end_hunk_0
