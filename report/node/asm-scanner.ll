Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/asm-scanner?download=true
inline.NumInlined: 617
inline.NumDeleted: 235
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal12AsmJsScanner17ConsumeIdentifierEj:bb.a
  %i.at = phi ptr [ %.pre.i.i, %bb.c ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i8 ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al
  store i8 %i.ak, ptr %i.au, align 1
  store i64 %i.am, ptr %i.c, align 8
  %i.av = load ptr, ptr %i.a, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.am
  store i8 0, ptr %i.aw, align 1
  %i.ax = load i64, ptr %i.m, align 8             ; 2 uses
  %i.ay = load ptr, ptr %i.n, align 8
  %i.az = load ptr, ptr %0, align 8               ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 2
  %i.be = icmp ult i64 %i.ax, %i.bd
  br i1 %i.be, label %.lr.ph, label %.critedge, !llvm.loop !16

.critedge:                                        ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = icmp eq i32 %i.bg, 46
  br i1 %i.bh, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.critedge
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bj = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.a) ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.bm, ptr %i.bn, align 8
  br label %bb.u

bb.f:                                             ; preds = %.critedge
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bp = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %i.a) ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.bs, ptr %i.bt, align 8
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bv = load i8, ptr %i.bu, align 8, !range !10, !noundef !11
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.by = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.a) ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.cb, ptr %i.cc, align 8
  br label %bb.u

.thread:                                          ; preds = %bb.i, %bb.d, %bb.h
  %i.cd = load i32, ptr %i.bf, align 4
  %i.ce = icmp eq i32 %i.cd, 46
  br i1 %i.ce, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8            ; 3 uses
  %i.ch = icmp slt i32 %i.cg, 251658240
  br i1 %i.ch, label %bb.m, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #16
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ci = add nsw i32 %i.cg, 1
  store i32 %i.ci, ptr %i.cf, align 8
  %i.cj = add nsw i32 %i.cg, 256                  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.cj, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cm = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  store i32 %i.cj, ptr %i.cm, align 4
  br label %bb.u

bb.n:                                             ; preds = %.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.co = load i8, ptr %i.cn, align 8, !range !10, !noundef !11
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cr = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.cs = icmp ult i64 %i.cr, 251658240
  br i1 %i.cs, label %bb.q, label %bb.p, !prof !9

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.57) #16
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cu = trunc nuw nsw i64 %i.cr to i32
  %i.cv = sub nuw nsw i32 -10000, %i.cu           ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.cv, ptr %i.cw, align 8
  %i.cx = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  store i32 %i.cv, ptr %i.cx, align 4
  br label %bb.u

bb.r:                                             ; preds = %bb.n
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8            ; 3 uses
  %i.da = icmp slt i32 %i.cz, 251658240
  br i1 %i.da, label %bb.t, label %bb.s, !prof !9

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #16
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.db = add nsw i32 %i.cz, 1
  store i32 %i.db, ptr %i.cy, align 8
  %i.dc = add nsw i32 %i.cz, 256                  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.dc, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.df = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  store i32 %i.dc, ptr %i.df, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.j, %bb.g, %bb.e, %bb.q, %bb.t, %bb.m
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal12AsmJsScanner13IsNumberStartEj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(317) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 46
  %i.b = add i32 %1, -48
  %i.c = icmp ult i32 %i.b, 10
  %i.d = or i1 %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12AsmJsScanner13ConsumeNumberEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(317) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.a, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.c = trunc i32 %1 to i8
  store i8 %i.c, ptr %i.a, align 8
  store i64 1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 0, ptr %i.d, align 1
  %i.e = icmp eq i32 %1, 46                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.f, align 8              ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2
  %i.o = icmp ult i64 %i.h, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %i.p = phi ptr [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit ]
  %i.q = phi i64 [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit ]
  %.0124 = phi i1 [ %.1107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit ] ; 5 uses
  %.067122 = phi i8 [ %.168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4              ; 7 uses
  %i.t = add i32 %i.s, -48
  %or.cond = icmp ult i32 %i.t, 10
  %i.u = add i32 %i.s, -97
  %or.cond3 = icmp ult i32 %i.u, 6
  %or.cond73 = or i1 %or.cond, %or.cond3
  br i1 %or.cond73, label %bb.d, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  switch i32 %i.s, label %bb.b [
    i32 46, label %.thread
    i32 120, label %bb.e
    i32 111, label %bb.e
    i32 98, label %bb.e
    i32 65, label %.thread.fold.split
    i32 66, label %.thread.fold.split
    i32 67, label %.thread.fold.split
    i32 68, label %.thread.fold.split
    i32 69, label %.thread.fold.split
    i32 70, label %.thread.fold.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.v = icmp ne i32 %i.s, 45
  %i.w = icmp ne i32 %i.s, 43
  %or.cond15.not72 = and i1 %i.v, %i.w
  %i.x = trunc nuw i8 %.067122 to i1
  %or.cond17 = select i1 %or.cond15.not72, i1 true, i1 %i.x
  %.pre.pre149 = load i64, ptr %i.b, align 8      ; 3 uses
  br i1 %or.cond17, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %2, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 %.pre.pre149
  %i.aa = getelementptr i8, ptr %i.z, i64 -1
  %i.ab = load i8, ptr %i.aa, align 1
  switch i8 %i.ab, label %._crit_edge [
    i8 101, label %bb.d
    i8 69, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %.lr.ph
  %cond = icmp eq i32 %i.s, 98
  br i1 %cond, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.a, %bb.a
  br label %.thread

.thread.fold.split:                               ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.a, %.thread.fold.split, %bb.e
  %.1107 = phi i1 [ %.0124, %bb.e ], [ true, %bb.a ], [ %.0124, %bb.d ], [ %.0124, %.thread.fold.split ] ; 2 uses
  %.168 = phi i8 [ 1, %bb.e ], [ %.067122, %bb.a ], [ %.067122, %bb.d ], [ %.067122, %.thread.fold.split ] ; 2 uses
  %i.ac = trunc nuw nsw i32 %i.s to i8
  %i.ad = load i64, ptr %i.b, align 8             ; 5 uses
  %i.ae = add i64 %i.ad, 1                        ; 9 uses
  %i.af = load ptr, ptr %2, align 8               ; 3 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %.thread
  %i.ah = icmp samesign ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp samesign ugt i64 %i.ae, 15
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i94, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread: ; preds = %.thread
  %i.aj = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ak = icmp ugt i64 %i.ae, %i.aj
  br i1 %i.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i94, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i94: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.al = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread ] ; 2 uses
  %i.am = icmp slt i64 %i.ae, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i94
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #16
  unreachable

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i94
  %i.an = icmp ugt i64 %i.ae, %i.al
  br i1 %i.an, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = shl nuw i64 %i.al, 1                    ; 2 uses
  %i.ap = icmp ult i64 %i.ae, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %spec.store.select.i.i103 = call i64 @llvm.umin.i64(i64 %i.ao, i64 9223372036854775807)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.0.i95 = phi i64 [ %spec.store.select.i.i103, %bb.i ], [ %i.ae, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.aq = add nuw i64 %.0.i95, 1                  ; 2 uses
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i96, !prof !13

bb.k:                                             ; preds = %bb.j
  call void @_ZSt17__throw_bad_allocv() #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i96: ; preds = %bb.j
  %i.as = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #17 ; 4 uses
  %.pre.i98.pre = load ptr, ptr %2, align 8       ; 4 uses
  switch i64 %i.ad, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i100
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i96
  %i.at = load i8, ptr %.pre.i98.pre, align 1
  store i8 %i.at, ptr %i.as, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i100

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 1 %.pre.i98.pre, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i96, %bb.l, %bb.m
  %i.au = icmp eq ptr %.pre.i98.pre, %i.a
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i100
  %i.av = load i64, ptr %i.a, align 8
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %.pre.i98.pre, i64 noundef %i.aw) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i101
  store ptr %i.as, ptr %2, align 8
  store i64 %.0.i95, ptr %i.a, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit105
  %i.ax = phi ptr [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit105 ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ad
  store i8 %i.ac, ptr %i.ay, align 1
  store i64 %i.ae, ptr %i.b, align 8
  %i.az = load ptr, ptr %2, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ae
  store i8 0, ptr %i.ba, align 1
  %i.bb = load i64, ptr %i.f, align 8
  %i.bc = add i64 %i.bb, 1                        ; 3 uses
  store i64 %i.bc, ptr %i.f, align 8
  %i.bd = load ptr, ptr %i.g, align 8
  %i.be = load ptr, ptr %0, align 8               ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 2
  %i.bj = icmp ult i64 %i.bc, %i.bi
  br i1 %i.bj, label %.lr.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.._crit_edge.loopexit_crit_edge, !llvm.loop !17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.._crit_edge.loopexit_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %.pre.pre = load i64, ptr %i.b, align 8
  br label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.b, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.._crit_edge.loopexit_crit_edge
  %.pre = phi i64 [ %.pre.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.._crit_edge.loopexit_crit_edge ], [ %.pre.pre149, %bb.c ], [ %.pre.pre149, %bb.b ] ; 2 uses
  %.067.lcssa.ph = phi i8 [ %.168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.._crit_edge.loopexit_crit_edge ], [ %.067122, %bb.b ], [ 0, %bb.c ]
  %.0.lcssa.ph = phi i1 [ %.1107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.._crit_edge.loopexit_crit_edge ], [ %.0124, %bb.c ], [ %.0124, %bb.b ] ; 2 uses
  %i.bk = trunc nuw i8 %.067.lcssa.ph to i1       ; 2 uses
  %i.bl = icmp eq i64 %.pre, 1
  br i1 %i.bl, label %._crit_edge.thread, label %bb.o

._crit_edge.thread:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit, %._crit_edge
  %.0.lcssa171 = phi i1 [ %.0.lcssa.ph, %._crit_edge ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit ]
  %.067.lcssa169 = phi i1 [ %i.bk, %._crit_edge ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit ]
  %i.bm = load ptr, ptr %2, align 8
  %i.bn = load i8, ptr %i.bm, align 1
  switch i8 %i.bn, label %bb.o [
    i8 48, label %bb.n
    i8 46, label %bb.an
  ]

bb.n:                                             ; preds = %._crit_edge.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.bo, align 8
  br label %bb.an

bb.o:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.0.lcssa170 = phi i1 [ %.0.lcssa.ph, %._crit_edge ], [ %.0.lcssa171, %._crit_edge.thread ]
  %.067.lcssa168 = phi i1 [ %i.bk, %._crit_edge ], [ %.067.lcssa169, %._crit_edge.thread ]
  %i.bp = phi i64 [ %.pre, %._crit_edge ], [ 1, %._crit_edge.thread ] ; 8 uses
  %i.bq = load ptr, ptr %2, align 8               ; 10 uses
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = icmp eq i8 %i.br, 48                    ; 2 uses
  br i1 %.067.lcssa168, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  br i1 %i.bs, label %bb.q, label %.thread110

bb.q:                                             ; preds = %bb.p
  %i.bt = icmp ult i64 %i.bp, 3
  br i1 %i.bt, label %bb.an, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bv = load i8, ptr %i.bu, align 1
  switch i8 %i.bv, label %bb.v [
    i8 98, label %bb.s
    i8 111, label %bb.t
    i8 120, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.bw = call noundef double @_ZN2v88internal20BinaryStringToDoubleENS_4base6VectorIKhEE(ptr nonnull %i.bq, i64 %i.bp) #14 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store double %i.bw, ptr %i.bx, align 8
  br label %bb.ah

bb.t:                                             ; preds = %bb.r
  %i.by = call noundef double @_ZN2v88internal19OctalStringToDoubleENS_4base6VectorIKhEE(ptr nonnull %i.bq, i64 %i.bp) #14 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 304
  store double %i.by, ptr %i.bz, align 8
  br label %bb.ah

bb.u:                                             ; preds = %bb.r
  %i.ca = call noundef double @_ZN2v88internal17HexStringToDoubleENS_4base6VectorIKhEE(ptr nonnull %i.bq, i64 %i.bp) #14 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 304
  store double %i.ca, ptr %i.cb, align 8
  br label %bb.ah

bb.v:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 -2, ptr %i.cc, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.pre148 = load double, ptr %.phi.trans.insert, align 8
  br label %bb.ah

bb.w:                                             ; preds = %bb.o
  br i1 %i.bs, label %bb.x, label %.thread110

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp ; 2 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %gepdiff.i = add nsw i64 %i.bp, -1              ; 2 uses
  %i.cg = ashr i64 %gepdiff.i, 2                  ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.x
end_hunk_0
