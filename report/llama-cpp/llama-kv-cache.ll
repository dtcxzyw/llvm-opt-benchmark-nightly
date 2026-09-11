Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-kv-cache?download=true
inline.NumInlined: 4945
inline.NumDeleted: 2050
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZL22set_input_kq_mask_implItLb1EEvRK22args_set_input_kq_maskPT_:bb.a
  %i.dj = icmp sgt i64 %i.ac, 0
  br i1 %i.dj, label %.lr.ph134.i.i.i, label %_ZL22set_input_kq_mask_implItLb1ELb1ELb1ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i

.lr.ph134.i.i.i:                                  ; preds = %.preheader.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %24, i64 48 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.dp = getelementptr inbounds nuw i8, ptr %25, i64 48 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %25, i64 40 ; 3 uses
  %i.du = icmp sgt i64 %i.ae, 0
  %i.dv = trunc i64 %i.ae to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dy = icmp sgt i64 %i.aa, 0
  %i.dz = sdiv i32 %i.y, 2
  %i.ea = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 3 uses
  br label %bb.d

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i:             ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i ] ; 4 uses
  %niter1903 = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter1903.next.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i ]
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i.i.i
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !336
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !110
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.i.i.i
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !110
  %i.ei = load i32, ptr %i.ef, align 4, !tbaa !110
  %i.ej = tail call i32 @llvm.smin.i32(i32 %i.eh, i32 %i.ei)
  store i32 %i.ej, ptr %i.ef, align 4, !tbaa !110
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next.i.i.i
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !336
  %i.em = load i32, ptr %i.el, align 4, !tbaa !110
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next.i.i.i
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !110
  %i.er = load i32, ptr %i.eo, align 4, !tbaa !110
  %i.es = tail call i32 @llvm.smin.i32(i32 %i.eq, i32 %i.er)
  store i32 %i.es, ptr %i.eo, align 4, !tbaa !110
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter1903.next.1 = add i64 %niter1903, 2       ; 2 uses
  %niter1903.ncmp.1 = icmp eq i64 %niter1903.next.1, %unroll_iter1902
  br i1 %niter1903.ncmp.1, label %.preheader.i.i.i.loopexit.unr-lcssa, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i, !llvm.loop !810

bb.d:                                             ; preds = %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i, %.lr.ph134.i.i.i
  %.081133.i.i.i = phi i32 [ 0, %.lr.ph134.i.i.i ], [ %i.fs, %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  store ptr %i.dk, ptr %24, align 8, !tbaa !437
  store i64 1, ptr %i.dl, align 8, !tbaa !438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dn, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  store ptr %i.dp, ptr %25, align 8, !tbaa !392
  store i64 1, ptr %i.dq, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ds, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false)
  br i1 %i.du, label %.lr.ph131.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i

.lr.ph131.i.i.i:                                  ; preds = %bb.d
  %i.et = mul i32 %.081133.i.i.i, %i.dv
  br label %bb.h

._crit_edge132.i.i.i:                             ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.dr, align 8, !tbaa !401 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %._crit_edge132.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.eu, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i, %._crit_edge132.i.i.i ] ; 4 uses
  %i.eu = load ptr, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !157 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !275
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ew to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fb) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i, i64 noundef 40) #31
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !38

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i, %._crit_edge132.i.i.i, %bb.d
  %i.fc = load ptr, ptr %25, align 8, !tbaa !392
  %i.fd = load i64, ptr %i.dq, align 8, !tbaa !393
  %i.fe = shl i64 %i.fd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fc, i8 0, i64 %i.fe, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i8 0, i64 16, i1 false)
  %i.ff = load ptr, ptr %25, align 8, !tbaa !392  ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.dp
  br i1 %i.fg, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  %i.fh = load i64, ptr %i.dq, align 8, !tbaa !393
  %i.fi = shl i64 %i.fh, 3
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #31
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i: ; preds = %bb.f, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  %i.fj = load ptr, ptr %i.dm, align 8, !tbaa !439 ; 2 uses
  %.not5.i.i.i.i92.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not5.i.i.i.i92.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i93.i.i.i

.lr.ph.i.i.i.i93.i.i.i:                           ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i, %.lr.ph.i.i.i.i93.i.i.i
  %.06.i.i.i.i94.i.i.i = phi ptr [ %i.fk, %.lr.ph.i.i.i.i93.i.i.i ], [ %i.fj, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i ] ; 2 uses
  %i.fk = load ptr, ptr %.06.i.i.i.i94.i.i.i, align 8, !tbaa !157 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i94.i.i.i, i64 noundef 16) #31
  %.not.i.i.i.i95.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i95.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i93.i.i.i, !llvm.loop !41

_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i93.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i
  %i.fl = load ptr, ptr %24, align 8, !tbaa !437
  %i.fm = load i64, ptr %i.dl, align 8, !tbaa !438
  %i.fn = shl i64 %i.fm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fl, i8 0, i64 %i.fn, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i8 0, i64 16, i1 false)
  %i.fo = load ptr, ptr %24, align 8, !tbaa !437  ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.dk
  br i1 %i.fp, label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  %i.fq = load i64, ptr %i.dl, align 8, !tbaa !438
  %i.fr = shl i64 %i.fq, 3
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #31
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i

_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i: ; preds = %bb.g, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.fs = add i32 %.081133.i.i.i, 1               ; 2 uses
  %i.ft = zext i32 %i.fs to i64
  %i.fu = icmp sgt i64 %i.ac, %i.ft
  br i1 %i.fu, label %bb.d, label %_ZL22set_input_kq_mask_implItLb1ELb1ELb1ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i, !llvm.loop !811

bb.h:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph131.i.i.i
  %.078129.i.i.i = phi i32 [ 0, %.lr.ph131.i.i.i ], [ %i.jr, %._crit_edge.i.i.i ] ; 2 uses
  %i.fv = add i32 %.078129.i.i.i, %i.et           ; 3 uses
  %i.fw = load ptr, ptr %i.k, align 8, !tbaa !327 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 56
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !363
  %i.fz = zext i32 %i.fv to i64                   ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !336
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !110
  %.fr136.i.i.i = freeze i32 %i.gc                ; 5 uses
  %i.gd = sext i32 %.fr136.i.i.i to i64           ; 6 uses
  %i.ge = load ptr, ptr %i.w, align 8, !tbaa !120
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gd
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !110
  %i.gh = zext i32 %i.gg to i64                   ; 3 uses
  %i.gi = load ptr, ptr %i.dw, align 8, !tbaa !153
  %i.gj = load ptr, ptr %i.u, align 8, !tbaa !123 ; 2 uses
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = sdiv exact i64 %i.gm, 12440             ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.gn, %i.gh
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.101, i64 noundef %i.gh, i64 noundef %i.gn) #29
          to label %.noexc.i.i.i unwind label %bb.z

.noexc.i.i.i:                                     ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.go = getelementptr inbounds nuw [12440 x i8], ptr %i.gj, i64 %i.gh ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !366 ; 3 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.fz
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !110 ; 7 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !312 ; 2 uses
  %i.gv = shl i32 %i.gu, 1
  %i.gw = add i32 %i.gv, %i.fv
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !110
  %i.ha = add i32 %i.gu, %i.fv
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !110 ; 2 uses
  %i.he = mul nsw i64 %i.aa, %i.fz
  %i.hf = load i64, ptr %i.dq, align 8, !tbaa !393 ; 3 uses
  %i.hg = urem i64 %i.gd, %i.hf                   ; 3 uses
  %i.hh = load ptr, ptr %25, align 8, !tbaa !392
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hg
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i96.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i.i96.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !157 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !110
  %i.hn = icmp eq i32 %.fr136.i.i.i, %i.hm
  br i1 %i.hn, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i, label %.lr.ph.i.i.i.i97.i.i.i

bb.l:                                             ; preds = %bb.m
  %i.ho = icmp eq i32 %.fr136.i.i.i, %i.hr
  br i1 %i.ho, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i, label %.lr.ph.i.i.i.i97.i.i.i, !llvm.loop !37

.lr.ph.i.i.i.i97.i.i.i:                           ; preds = %bb.k, %bb.l
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.hp, %bb.l ], [ %i.hk, %bb.k ]
  %i.hp = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !157 ; 3 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.hp, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i97.i.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !110 ; 2 uses
  %i.hs = sext i32 %i.hr to i64
  %i.ht = urem i64 %i.hs, %i.hf
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.ht, %i.hg
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.l, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !37

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.m
  br label %.loopexit.i.i.i.i.i, !llvm.loop !37

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i97.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  store ptr %25, ptr %23, align 8, !tbaa !397
  %i.hu = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc98.i.i.i unwind label %bb.aa ; 9 uses

.noexc98.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i
  store ptr null, ptr %i.hu, align 8, !tbaa !157
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store i32 %.fr136.i.i.i, ptr %i.hv, align 8, !tbaa !399
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, i8 0, i64 24, i1 false)
  store ptr %i.hu, ptr %i.dx, align 8, !tbaa !400
  %i.hx = load i64, ptr %i.dt, align 8, !tbaa !431
  %i.hy = load i64, ptr %i.ea, align 8, !tbaa !440
  %i.hz = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i64 noundef %i.hf, i64 noundef %i.hy, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.x ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc98.i.i.i
  %i.ia = extractvalue { i8, i64 } %i.hz, 0
  %i.ib = trunc i8 %i.ia to i1
  br i1 %i.ib, label %bb.n, label %bb.s

bb.n:                                             ; preds = %.noexc.i.i
  %i.ic = extractvalue { i8, i64 } %i.hz, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %25, i64 noundef %i.ic)
          to label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  %i.if = call ptr @__cxa_begin_catch(ptr %i.ie) #30 ; 0 uses
  store i64 %i.hx, ptr %i.dt, align 8, !tbaa !431
  invoke void @__cxa_rethrow() #29
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ig = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ih = landingpad { ptr, i32 }
          catch ptr null
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0
  call void @__clang_call_terminate(ptr %i.ii) #33
  unreachable

bb.r:                                             ; preds = %bb.o
  unreachable

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i: ; preds = %bb.n
  %i.ij = load i64, ptr %i.dq, align 8, !tbaa !393
  %i.ik = urem i64 %i.gd, %i.ij
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i, %.noexc.i.i
  %.0.i.i.i = phi i64 [ %i.ik, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i ], [ %i.hg, %.noexc.i.i ]
  %i.il = load ptr, ptr %25, align 8, !tbaa !392  ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.0.i.i.i ; 3 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !156 ; 2 uses
  %.not.i.i49.i.i = icmp eq ptr %i.in, null
  br i1 %.not.i.i49.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !157
  store ptr %i.io, ptr %i.hu, align 8, !tbaa !157
  %i.ip = load ptr, ptr %i.im, align 8, !tbaa !156
  store ptr %i.hu, ptr %i.ip, align 8, !tbaa !157
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.iq = load ptr, ptr %i.dr, align 8, !tbaa !401 ; 3 uses
  store ptr %i.iq, ptr %i.hu, align 8, !tbaa !157
  store ptr %i.hu, ptr %i.dr, align 8, !tbaa !401
  %.not11.i.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not11.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load i64, ptr %i.dq, align 8, !tbaa !393
  %i.it = load i32, ptr %i.ir, align 4, !tbaa !110
  %i.iu = sext i32 %i.it to i64
  %i.iv = urem i64 %i.iu, %i.is
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.iv
  store ptr %i.hu, ptr %i.iw, align 8, !tbaa !156
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store ptr %i.dr, ptr %i.im, align 8, !tbaa !156
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i: ; preds = %bb.w, %bb.t
  %i.ix = load i64, ptr %i.ea, align 8, !tbaa !440
  %i.iy = add i64 %i.ix, 1
  store i64 %i.iy, ptr %i.ea, align 8, !tbaa !440
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i

bb.x:                                             ; preds = %.noexc98.i.i.i
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.x, %bb.p
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.iz, %bb.x ], [ %i.ig, %bb.p ]
  call void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %.body.i.i.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i: ; preds = %bb.l, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i, %bb.k
  br i1 %i.dy, label %.lr.ph123.i.i.i, label %._crit_edge.i.i.i

.lr.ph123.i.i.i:                                  ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.go, i64 56 ; 2 uses
  %i.jb = icmp ugt i32 %.fr136.i.i.i, 255
  %i.jc = getelementptr inbounds nuw i8, ptr %i.go, i64 128
  %i.jd = lshr i64 %i.gd, 6
  %i.je = and i64 %i.gd, 63
  %i.jf = shl nuw i64 1, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.go, i64 80
  %i.jh = getelementptr [2 x i8], ptr %1, i64 %i.he ; 2 uses
  br i1 %i.jb, label %.lr.ph123.split.us.i.i.i, label %.lr.ph123.split.i.i.i

.lr.ph123.split.us.i.i.i:                         ; preds = %.lr.ph123.i.i.i
  %i.ji = load ptr, ptr %i.ja, align 8, !tbaa !126
  br label %bb.y

bb.y:                                             ; preds = %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i, %.lr.ph123.split.us.i.i.i
  %i.jj = phi i64 [ 0, %.lr.ph123.split.us.i.i.i ], [ %i.jp, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i ] ; 2 uses
  %.0122.us.i.i.i = phi i32 [ 0, %.lr.ph123.split.us.i.i.i ], [ %i.jo, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i ]
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !110
  %i.jm = icmp eq i32 %i.jl, -1
  br i1 %i.jm, label %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i, label %.split.us.i.i.i

_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i: ; preds = %bb.y
  %i.jn = getelementptr [2 x i8], ptr %i.jh, i64 %i.jj
  store i16 %i.ag, ptr %i.jn, align 2, !tbaa !442
  %i.jo = add i32 %.0122.us.i.i.i, 1              ; 2 uses
  %i.jp = zext i32 %i.jo to i64                   ; 2 uses
  %i.jq = icmp samesign ugt i64 %i.aa, %i.jp
  br i1 %i.jq, label %bb.y, label %._crit_edge.i.i.i, !llvm.loop !812

._crit_edge.i.i.i:                                ; preds = %_ZL10llama_castItfET_T0_.exit.i.i.i, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i
  %i.jr = add i32 %.078129.i.i.i, 1               ; 2 uses
  %i.js = zext i32 %i.jr to i64
  %i.jt = icmp sgt i64 %i.ae, %i.js
  br i1 %i.jt, label %bb.h, label %._crit_edge132.i.i.i, !llvm.loop !813

bb.z:                                             ; preds = %bb.i
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.aa:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.lr.ph123.split.i.i.i:                            ; preds = %.lr.ph123.i.i.i, %_ZL10llama_castItfET_T0_.exit.i.i.i
  %i.jw = phi i64 [ %i.ld, %_ZL10llama_castItfET_T0_.exit.i.i.i ], [ 0, %.lr.ph123.i.i.i ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZL22set_input_kq_mask_implItLb1EEvRK22args_set_input_kq_maskPT_:bb.a
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !110
  %i.adx = sext i32 %i.adw to i64
  %i.ady = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.adx ; 2 uses
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.ads, i64 %indvars.iv.i.i86.i.epil.init
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !110
  %i.aeb = load i32, ptr %i.ady, align 4, !tbaa !110
  %i.aec = tail call i32 @llvm.smin.i32(i32 %i.aea, i32 %i.aeb)
  store i32 %i.aec, ptr %i.ady, align 4, !tbaa !110
  br label %.preheader.i.i89.i

.preheader.i.i89.i:                               ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i85.i.epil.preheader, %.preheader.i.i89.i.loopexit.unr-lcssa, %vector.ph1565
  %i.aed = icmp sgt i64 %i.ac, 0
  br i1 %i.aed, label %.lr.ph117.i.i.i, label %_ZL22set_input_kq_mask_implItLb1ELb1ELb0ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i

.lr.ph117.i.i.i:                                  ; preds = %.preheader.i.i89.i
  %i.aee = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.aei = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.aej = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 6 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 3 uses
  %i.aeo = icmp sgt i64 %i.ae, 0
  %i.aep = trunc i64 %i.ae to i32
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aer = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.aes = icmp sgt i64 %i.aa, 0
  %i.aet = sdiv i32 %i.y, 2
  %i.aeu = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 3 uses
  br label %bb.da

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i85.i:           ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i85.i, %.lr.ph.i.i83.i.new
  %indvars.iv.i.i86.i = phi i64 [ 0, %.lr.ph.i.i83.i.new ], [ %indvars.iv.next.i.i87.i.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i85.i ] ; 4 uses
  %niter1893 = phi i64 [ 0, %.lr.ph.i.i83.i.new ], [ %niter1893.next.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i85.i ]
  %i.aev = getelementptr inbounds nuw [8 x i8], ptr %i.adq, i64 %indvars.iv.i.i86.i
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !336
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !110
  %i.aey = sext i32 %i.aex to i64
  %i.aez = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.aey ; 2 uses
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.ads, i64 %indvars.iv.i.i86.i
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !110
  %i.afc = load i32, ptr %i.aez, align 4, !tbaa !110
  %i.afd = tail call i32 @llvm.smin.i32(i32 %i.afb, i32 %i.afc)
  store i32 %i.afd, ptr %i.aez, align 4, !tbaa !110
  %indvars.iv.next.i.i87.i = or disjoint i64 %indvars.iv.i.i86.i, 1 ; 2 uses
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %i.adq, i64 %indvars.iv.next.i.i87.i
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !336
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !110
  %i.afh = sext i32 %i.afg to i64
  %i.afi = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.afh ; 2 uses
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.ads, i64 %indvars.iv.next.i.i87.i
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !110
  %i.afl = load i32, ptr %i.afi, align 4, !tbaa !110
  %i.afm = tail call i32 @llvm.smin.i32(i32 %i.afk, i32 %i.afl)
  store i32 %i.afm, ptr %i.afi, align 4, !tbaa !110
  %indvars.iv.next.i.i87.i.1 = add nuw nsw i64 %indvars.iv.i.i86.i, 2 ; 2 uses
  %niter1893.next.1 = add i64 %niter1893, 2       ; 2 uses
  %niter1893.ncmp.1 = icmp eq i64 %niter1893.next.1, %unroll_iter1892
  br i1 %niter1893.ncmp.1, label %.preheader.i.i89.i.loopexit.unr-lcssa, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i85.i, !llvm.loop !818

bb.da:                                            ; preds = %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i93.i, %.lr.ph117.i.i.i
  %.066116.i.i.i = phi i32 [ 0, %.lr.ph117.i.i.i ], [ %i.agm, %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i93.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  store ptr %i.aee, ptr %18, align 8, !tbaa !437
  store i64 1, ptr %i.aef, align 8, !tbaa !438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aeg, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aeh, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aei, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  store ptr %i.aej, ptr %19, align 8, !tbaa !392
  store i64 1, ptr %i.aek, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ael, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aem, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aen, i8 0, i64 16, i1 false)
  br i1 %i.aeo, label %.lr.ph114.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i90.i

.lr.ph114.i.i.i:                                  ; preds = %bb.da
  %i.afn = mul i32 %.066116.i.i.i, %i.aep
  br label %bb.de

._crit_edge115.i.i.i:                             ; preds = %._crit_edge.i.i109.i
  %.pre.i.i110.i = load ptr, ptr %i.ael, align 8, !tbaa !401 ; 2 uses
  %.not5.i.i.i.i.i.i111.i = icmp eq ptr %.pre.i.i110.i, null
  br i1 %.not5.i.i.i.i.i.i111.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i90.i, label %.lr.ph.i.i.i.i.i.i112.i

.lr.ph.i.i.i.i.i.i112.i:                          ; preds = %._crit_edge115.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i115.i
  %.06.i.i.i.i.i.i113.i = phi ptr [ %i.afo, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i115.i ], [ %.pre.i.i110.i, %._crit_edge115.i.i.i ] ; 4 uses
  %i.afo = load ptr, ptr %.06.i.i.i.i.i.i113.i, align 8, !tbaa !157 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i113.i, i64 16
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i114.i = icmp eq ptr %i.afq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i114.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i115.i, label %bb.db

bb.db:                                            ; preds = %.lr.ph.i.i.i.i.i.i112.i
  %i.afr = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i113.i, i64 32
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !275
  %i.aft = ptrtoint ptr %i.afs to i64
  %i.afu = ptrtoint ptr %i.afq to i64
  %i.afv = sub i64 %i.aft, %i.afu
  call void @_ZdlPvm(ptr noundef nonnull %i.afq, i64 noundef %i.afv) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i115.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i115.i: ; preds = %bb.db, %.lr.ph.i.i.i.i.i.i112.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i113.i, i64 noundef 40) #31
  %.not.i.i.i.i.i.i116.i = icmp eq ptr %i.afo, null
  br i1 %.not.i.i.i.i.i.i116.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i90.i, label %.lr.ph.i.i.i.i.i.i112.i, !llvm.loop !38

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i90.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i115.i, %._crit_edge115.i.i.i, %bb.da
  %i.afw = load ptr, ptr %19, align 8, !tbaa !392
  %i.afx = load i64, ptr %i.aek, align 8, !tbaa !393
  %i.afy = shl i64 %i.afx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.afw, i8 0, i64 %i.afy, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ael, i8 0, i64 16, i1 false)
  %i.afz = load ptr, ptr %19, align 8, !tbaa !392 ; 2 uses
  %i.aga = icmp eq ptr %i.afz, %i.aej
  br i1 %i.aga, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i91.i, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i90.i
  %i.agb = load i64, ptr %i.aek, align 8, !tbaa !393
  %i.agc = shl i64 %i.agb, 3
  call void @_ZdlPvm(ptr noundef %i.afz, i64 noundef %i.agc) #31
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i91.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i91.i: ; preds = %bb.dc, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i90.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  %i.agd = load ptr, ptr %i.aeg, align 8, !tbaa !439 ; 2 uses
  %.not5.i.i.i.i76.i.i.i = icmp eq ptr %i.agd, null
  br i1 %.not5.i.i.i.i76.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i92.i, label %.lr.ph.i.i.i.i77.i.i.i

.lr.ph.i.i.i.i77.i.i.i:                           ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i91.i, %.lr.ph.i.i.i.i77.i.i.i
  %.06.i.i.i.i78.i.i.i = phi ptr [ %i.age, %.lr.ph.i.i.i.i77.i.i.i ], [ %i.agd, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i91.i ] ; 2 uses
  %i.age = load ptr, ptr %.06.i.i.i.i78.i.i.i, align 8, !tbaa !157 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i78.i.i.i, i64 noundef 16) #31
  %.not.i.i.i.i79.i.i.i = icmp eq ptr %i.age, null
  br i1 %.not.i.i.i.i79.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i92.i, label %.lr.ph.i.i.i.i77.i.i.i, !llvm.loop !41

_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i92.i: ; preds = %.lr.ph.i.i.i.i77.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i91.i
  %i.agf = load ptr, ptr %18, align 8, !tbaa !437
  %i.agg = load i64, ptr %i.aef, align 8, !tbaa !438
  %i.agh = shl i64 %i.agg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.agf, i8 0, i64 %i.agh, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aeg, i8 0, i64 16, i1 false)
  %i.agi = load ptr, ptr %18, align 8, !tbaa !437 ; 2 uses
  %i.agj = icmp eq ptr %i.agi, %i.aee
  br i1 %i.agj, label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i93.i, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i92.i
  %i.agk = load i64, ptr %i.aef, align 8, !tbaa !438
  %i.agl = shl i64 %i.agk, 3
  call void @_ZdlPvm(ptr noundef %i.agi, i64 noundef %i.agl) #31
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i93.i

_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i93.i: ; preds = %bb.dd, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i92.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  %i.agm = add i32 %.066116.i.i.i, 1              ; 2 uses
  %i.agn = zext i32 %i.agm to i64
  %i.ago = icmp sgt i64 %i.ac, %i.agn
  br i1 %i.ago, label %bb.da, label %_ZL22set_input_kq_mask_implItLb1ELb1ELb0ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i, !llvm.loop !819

bb.de:                                            ; preds = %._crit_edge.i.i109.i, %.lr.ph114.i.i.i
  %.064112.i.i.i = phi i32 [ 0, %.lr.ph114.i.i.i ], [ %i.ajz, %._crit_edge.i.i109.i ] ; 2 uses
  %i.agp = add i32 %.064112.i.i.i, %i.afn
  %i.agq = load ptr, ptr %i.k, align 8, !tbaa !327 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 56
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !363
  %i.agt = zext i32 %i.agp to i64                 ; 3 uses
  %i.agu = getelementptr inbounds nuw [8 x i8], ptr %i.ags, i64 %i.agt
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !336
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !110
  %.fr119.i.i.i = freeze i32 %i.agw               ; 5 uses
  %i.agx = sext i32 %.fr119.i.i.i to i64          ; 6 uses
  %i.agy = load ptr, ptr %i.w, align 8, !tbaa !120
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.agx
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !110
  %i.ahb = zext i32 %i.aha to i64                 ; 3 uses
  %i.ahc = load ptr, ptr %i.aeq, align 8, !tbaa !153
  %i.ahd = load ptr, ptr %i.u, align 8, !tbaa !123 ; 2 uses
  %i.ahe = ptrtoint ptr %i.ahc to i64
  %i.ahf = ptrtoint ptr %i.ahd to i64
  %i.ahg = sub i64 %i.ahe, %i.ahf
  %i.ahh = sdiv exact i64 %i.ahg, 12440           ; 2 uses
  %.not.i.i.i.i94.i = icmp ugt i64 %i.ahh, %i.ahb
  br i1 %.not.i.i.i.i94.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.101, i64 noundef %i.ahb, i64 noundef %i.ahh) #29
          to label %.noexc.i.i97.i unwind label %bb.dw

.noexc.i.i97.i:                                   ; preds = %bb.df
  unreachable

bb.dg:                                            ; preds = %bb.de
  %i.ahi = getelementptr inbounds nuw [12440 x i8], ptr %i.ahd, i64 %i.ahb ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.agq, i64 40
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !366
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.ahk, i64 %i.agt
  %i.ahm = load i32, ptr %i.ahl, align 4, !tbaa !110 ; 6 uses
  %i.ahn = mul nsw i64 %i.aa, %i.agt
  %i.aho = load i64, ptr %i.aek, align 8, !tbaa !393 ; 3 uses
  %i.ahp = urem i64 %i.agx, %i.aho                ; 3 uses
  %i.ahq = load ptr, ptr %19, align 8, !tbaa !392
  %i.ahr = getelementptr inbounds nuw [8 x i8], ptr %i.ahq, i64 %i.ahp
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i80.i.i.i = icmp eq ptr %i.ahs, null
  br i1 %.not.i.i.i.i80.i.i.i, label %.loopexit.i.i.i.i102.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !157 ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !110
  %i.ahw = icmp eq i32 %.fr119.i.i.i, %i.ahv
  br i1 %i.ahw, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i108.i, label %.lr.ph.i.i.i.i81.i.i.i

bb.di:                                            ; preds = %bb.dj
  %i.ahx = icmp eq i32 %.fr119.i.i.i, %i.aia
  br i1 %i.ahx, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i108.i, label %.lr.ph.i.i.i.i81.i.i.i, !llvm.loop !37

.lr.ph.i.i.i.i81.i.i.i:                           ; preds = %bb.dh, %bb.di
  %.020.i.i.i.i.i.i98.i = phi ptr [ %i.ahy, %bb.di ], [ %i.aht, %bb.dh ]
  %i.ahy = load ptr, ptr %.020.i.i.i.i.i.i98.i, align 8, !tbaa !157 ; 3 uses
  %.not18.i.i.i.i.i.i99.i = icmp eq ptr %i.ahy, null
  br i1 %.not18.i.i.i.i.i.i99.i, label %.loopexit.i.i.i.i102.i, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph.i.i.i.i81.i.i.i
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 8
  %i.aia = load i32, ptr %i.ahz, align 4, !tbaa !110 ; 2 uses
  %i.aib = sext i32 %i.aia to i64
  %i.aic = urem i64 %i.aib, %i.aho
  %.not19.i.i.i.i.i.i100.i = icmp eq i64 %i.aic, %i.ahp
  br i1 %.not19.i.i.i.i.i.i100.i, label %bb.di, label %..loopexit_crit_edge21.i.i.i.i.i.i101.i, !llvm.loop !37

..loopexit_crit_edge21.i.i.i.i.i.i101.i:          ; preds = %bb.dj
  br label %.loopexit.i.i.i.i102.i, !llvm.loop !37

.loopexit.i.i.i.i102.i:                           ; preds = %.lr.ph.i.i.i.i81.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i101.i, %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  store ptr %19, ptr %17, align 8, !tbaa !397
  %i.aid = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc82.i.i.i unwind label %bb.dx ; 9 uses

.noexc82.i.i.i:                                   ; preds = %.loopexit.i.i.i.i102.i
  store ptr null, ptr %i.aid, align 8, !tbaa !157
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 8
  store i32 %.fr119.i.i.i, ptr %i.aie, align 8, !tbaa !399
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aid, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aif, i8 0, i64 24, i1 false)
  store ptr %i.aid, ptr %i.aer, align 8, !tbaa !400
  %i.aig = load i64, ptr %i.aen, align 8, !tbaa !431
  %i.aih = load i64, ptr %i.aeu, align 8, !tbaa !440
  %i.aii = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aem, i64 noundef %i.aho, i64 noundef %i.aih, i64 noundef 1)
          to label %.noexc.i105.i unwind label %bb.du ; 2 uses

.noexc.i105.i:                                    ; preds = %.noexc82.i.i.i
  %i.aij = extractvalue { i8, i64 } %i.aii, 0
  %i.aik = trunc i8 %i.aij to i1
  br i1 %i.aik, label %bb.dk, label %bb.dp

bb.dk:                                            ; preds = %.noexc.i105.i
  %i.ail = extractvalue { i8, i64 } %i.aii, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %19, i64 noundef %i.ail)
          to label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i129.i unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.aim = landingpad { ptr, i32 }
          catch ptr null
  %i.ain = extractvalue { ptr, i32 } %i.aim, 0
  %i.aio = call ptr @__cxa_begin_catch(ptr %i.ain) #30 ; 0 uses
  store i64 %i.aig, ptr %i.aen, align 8, !tbaa !431
  invoke void @__cxa_rethrow() #29
          to label %bb.do unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.aip = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i103.i unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.aiq = landingpad { ptr, i32 }
          catch ptr null
  %i.air = extractvalue { ptr, i32 } %i.aiq, 0
  call void @__clang_call_terminate(ptr %i.air) #33
  unreachable

bb.do:                                            ; preds = %bb.dl
  unreachable

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i129.i: ; preds = %bb.dk
  %i.ais = load i64, ptr %i.aek, align 8, !tbaa !393
  %i.ait = urem i64 %i.agx, %i.ais
  br label %bb.dp

bb.dp:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i129.i, %.noexc.i105.i
  %.0.i.i106.i = phi i64 [ %i.ait, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i129.i ], [ %i.ahp, %.noexc.i105.i ]
  %i.aiu = load ptr, ptr %19, align 8, !tbaa !392 ; 2 uses
  %i.aiv = getelementptr inbounds nuw [8 x i8], ptr %i.aiu, i64 %.0.i.i106.i ; 3 uses
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !156 ; 2 uses
  %.not.i.i48.i.i = icmp eq ptr %i.aiw, null
  br i1 %.not.i.i48.i.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !157
  store ptr %i.aix, ptr %i.aid, align 8, !tbaa !157
  %i.aiy = load ptr, ptr %i.aiv, align 8, !tbaa !156
  store ptr %i.aid, ptr %i.aiy, align 8, !tbaa !157
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i107.i

bb.dr:                                            ; preds = %bb.dp
  %i.aiz = load ptr, ptr %i.ael, align 8, !tbaa !401 ; 3 uses
  store ptr %i.aiz, ptr %i.aid, align 8, !tbaa !157
  store ptr %i.aid, ptr %i.ael, align 8, !tbaa !401
  %.not11.i.i.i128.i = icmp eq ptr %i.aiz, null
  br i1 %.not11.i.i.i128.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 8
  %i.ajb = load i64, ptr %i.aek, align 8, !tbaa !393
  %i.ajc = load i32, ptr %i.aja, align 4, !tbaa !110
  %i.ajd = sext i32 %i.ajc to i64
  %i.aje = urem i64 %i.ajd, %i.ajb
  %i.ajf = getelementptr inbounds nuw [8 x i8], ptr %i.aiu, i64 %i.aje
  store ptr %i.aid, ptr %i.ajf, align 8, !tbaa !156
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  store ptr %i.ael, ptr %i.aiv, align 8, !tbaa !156
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i107.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i107.i: ; preds = %bb.dt, %bb.dq
  %i.ajg = load i64, ptr %i.aeu, align 8, !tbaa !440
  %i.ajh = add i64 %i.ajg, 1
  store i64 %i.ajh, ptr %i.aeu, align 8, !tbaa !440
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i108.i

bb.du:                                            ; preds = %.noexc82.i.i.i
  %i.aji = landingpad { ptr, i32 }
          cleanup
  br label %.body.i103.i

.body.i103.i:                                     ; preds = %bb.du, %bb.dm
  %eh.lpad-body.i104.i = phi { ptr, i32 } [ %i.aji, %bb.du ], [ %i.aip, %bb.dm ]
  call void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %.body.i.i95.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i108.i: ; preds = %bb.di, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i107.i, %bb.dh
  br i1 %i.aes, label %.lr.ph106.i.i.i, label %._crit_edge.i.i109.i

.lr.ph106.i.i.i:                                  ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i108.i
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 56 ; 2 uses
  %i.ajk = icmp ugt i32 %.fr119.i.i.i, 255
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ahi, i64 128
  %i.ajm = lshr i64 %i.agx, 6
  %i.ajn = and i64 %i.agx, 63
  %i.ajo = shl nuw i64 1, %i.ajn
  %i.ajp = getelementptr [2 x i8], ptr %1, i64 %i.ahn ; 2 uses
  br i1 %i.ajk, label %.lr.ph106.split.us.i.i.i, label %.lr.ph106.split.i.i.i

.lr.ph106.split.us.i.i.i:                         ; preds = %.lr.ph106.i.i.i
  %i.ajq = load ptr, ptr %i.ajj, align 8, !tbaa !126
  br label %bb.dv

bb.dv:                                            ; preds = %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.thread.us.i.i.i, %.lr.ph106.split.us.i.i.i
  %i.ajr = phi i64 [ 0, %.lr.ph106.split.us.i.i.i ], [ %i.ajx, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.thread.us.i.i.i ] ; 2 uses
  %.0105.us.i.i.i = phi i32 [ 0, %.lr.ph106.split.us.i.i.i ], [ %i.ajw, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.thread.us.i.i.i ]
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.ajq, i64 %i.ajr
  %i.ajt = load i32, ptr %i.ajs, align 4, !tbaa !110
  %i.aju = icmp eq i32 %i.ajt, -1
  br i1 %i.aju, label %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.thread.us.i.i.i, label %.split.us.i.i125.i

_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.thread.us.i.i.i: ; preds = %bb.dv
  %i.ajv = getelementptr [2 x i8], ptr %i.ajp, i64 %i.ajr
  store i16 %i.ag, ptr %i.ajv, align 2, !tbaa !442
  %i.ajw = add i32 %.0105.us.i.i.i, 1             ; 2 uses
  %i.ajx = zext i32 %i.ajw to i64                 ; 2 uses
  %i.ajy = icmp samesign ugt i64 %i.aa, %i.ajx
  br i1 %i.ajy, label %bb.dv, label %._crit_edge.i.i109.i, !llvm.loop !820

._crit_edge.i.i109.i:                             ; preds = %_ZL10llama_castItfET_T0_.exit.i.i122.i, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.thread.us.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i108.i
  %i.ajz = add i32 %.064112.i.i.i, 1              ; 2 uses
  %i.aka = zext i32 %i.ajz to i64
  %i.akb = icmp sgt i64 %i.ae, %i.aka
  br i1 %i.akb, label %bb.de, label %._crit_edge115.i.i.i, !llvm.loop !821

bb.dw:                                            ; preds = %bb.df
  %i.akc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i95.i

bb.dx:                                            ; preds = %.loopexit.i.i.i.i102.i
  %i.akd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i95.i

.lr.ph106.split.i.i.i:                            ; preds = %.lr.ph106.i.i.i, %_ZL10llama_castItfET_T0_.exit.i.i122.i
  %i.ake = phi i64 [ %i.alc, %_ZL10llama_castItfET_T0_.exit.i.i122.i ], [ 0, %.lr.ph106.i.i.i ] ; 3 uses
  %.0105.i.i.i = phi i32 [ %i.alb, %_ZL10llama_castItfET_T0_.exit.i.i122.i ], [ 0, %.lr.ph106.i.i.i ]
end_hunk_1
begin_hunk_2_@_ZL22set_input_kq_mask_implItLb1EEvRK22args_set_input_kq_maskPT_:bb.a
.preheader.i.i.i132:                              ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i128.epil.preheader, %.preheader.i.i.i132.loopexit.unr-lcssa, %vector.ph1595
  %i.bdp = icmp sgt i64 %i.bai, 0
  br i1 %i.bdp, label %.lr.ph126.i.i.i, label %_ZL22set_input_kq_mask_implItLb1ELb0ELb1ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i

.lr.ph126.i.i.i:                                  ; preds = %.preheader.i.i.i132
  %i.bdq = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.bdu = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.bdv = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  %i.bea = icmp sgt i64 %i.bak, 0
  %i.beb = trunc i64 %i.bak to i32
  %i.bec = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bed = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bee = icmp sgt i64 %i.bag, 0
  %i.bef = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  br label %bb.gu

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i128:          ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i128, %.lr.ph.i.i.i126.new
  %indvars.iv.i.i.i129 = phi i64 [ 0, %.lr.ph.i.i.i126.new ], [ %indvars.iv.next.i.i.i130.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i128 ] ; 4 uses
  %niter1923 = phi i64 [ 0, %.lr.ph.i.i.i126.new ], [ %niter1923.next.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i128 ]
  %i.beg = getelementptr inbounds nuw [8 x i8], ptr %i.bdc, i64 %indvars.iv.i.i.i129
  %i.beh = load ptr, ptr %i.beg, align 8, !tbaa !336
  %i.bei = load i32, ptr %i.beh, align 4, !tbaa !110
  %i.bej = sext i32 %i.bei to i64
  %i.bek = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bej ; 2 uses
  %i.bel = getelementptr inbounds nuw [4 x i8], ptr %i.bde, i64 %indvars.iv.i.i.i129
  %i.bem = load i32, ptr %i.bel, align 4, !tbaa !110
  %i.ben = load i32, ptr %i.bek, align 4, !tbaa !110
  %i.beo = tail call i32 @llvm.smin.i32(i32 %i.bem, i32 %i.ben)
  store i32 %i.beo, ptr %i.bek, align 4, !tbaa !110
  %indvars.iv.next.i.i.i130 = or disjoint i64 %indvars.iv.i.i.i129, 1 ; 2 uses
  %i.bep = getelementptr inbounds nuw [8 x i8], ptr %i.bdc, i64 %indvars.iv.next.i.i.i130
  %i.beq = load ptr, ptr %i.bep, align 8, !tbaa !336
  %i.ber = load i32, ptr %i.beq, align 4, !tbaa !110
  %i.bes = sext i32 %i.ber to i64
  %i.bet = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bes ; 2 uses
  %i.beu = getelementptr inbounds nuw [4 x i8], ptr %i.bde, i64 %indvars.iv.next.i.i.i130
  %i.bev = load i32, ptr %i.beu, align 4, !tbaa !110
  %i.bew = load i32, ptr %i.bet, align 4, !tbaa !110
  %i.bex = tail call i32 @llvm.smin.i32(i32 %i.bev, i32 %i.bew)
  store i32 %i.bex, ptr %i.bet, align 4, !tbaa !110
  %indvars.iv.next.i.i.i130.1 = add nuw nsw i64 %indvars.iv.i.i.i129, 2 ; 2 uses
  %niter1923.next.1 = add i64 %niter1923, 2       ; 2 uses
  %niter1923.ncmp.1 = icmp eq i64 %niter1923.next.1, %unroll_iter1922
  br i1 %niter1923.ncmp.1, label %.preheader.i.i.i132.loopexit.unr-lcssa, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i128, !llvm.loop !826

bb.gu:                                            ; preds = %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i136, %.lr.ph126.i.i.i
  %.075125.i.i.i = phi i32 [ 0, %.lr.ph126.i.i.i ], [ %i.bfx, %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i136 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  store ptr %i.bdq, ptr %12, align 8, !tbaa !437
  store i64 1, ptr %i.bdr, align 8, !tbaa !438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bds, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bdt, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdu, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  store ptr %i.bdv, ptr %13, align 8, !tbaa !392
  store i64 1, ptr %i.bdw, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bdy, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdz, i8 0, i64 16, i1 false)
  br i1 %i.bea, label %.lr.ph123.i.i.i137, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i133

.lr.ph123.i.i.i137:                               ; preds = %bb.gu
  %i.bey = mul i32 %.075125.i.i.i, %i.beb
  br label %bb.gy

._crit_edge124.i.i.i:                             ; preds = %._crit_edge.i.i.i153
  %.pre.i.i.i154 = load ptr, ptr %i.bdx, align 8, !tbaa !401 ; 2 uses
  %.not5.i.i.i.i.i.i.i155 = icmp eq ptr %.pre.i.i.i154, null
  br i1 %.not5.i.i.i.i.i.i.i155, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i156

.lr.ph.i.i.i.i.i.i.i156:                          ; preds = %._crit_edge124.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i159
  %.06.i.i.i.i.i.i.i157 = phi ptr [ %i.bez, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i159 ], [ %.pre.i.i.i154, %._crit_edge124.i.i.i ] ; 4 uses
  %i.bez = load ptr, ptr %.06.i.i.i.i.i.i.i157, align 8, !tbaa !157 ; 2 uses
  %i.bfa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i157, i64 16
  %i.bfb = load ptr, ptr %i.bfa, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i158 = icmp eq ptr %i.bfb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i158, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i159, label %bb.gv

bb.gv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i156
  %i.bfc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i157, i64 32
  %i.bfd = load ptr, ptr %i.bfc, align 8, !tbaa !275
  %i.bfe = ptrtoint ptr %i.bfd to i64
  %i.bff = ptrtoint ptr %i.bfb to i64
  %i.bfg = sub i64 %i.bfe, %i.bff
  call void @_ZdlPvm(ptr noundef nonnull %i.bfb, i64 noundef %i.bfg) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i159

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i159: ; preds = %bb.gv, %.lr.ph.i.i.i.i.i.i.i156
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i157, i64 noundef 40) #31
  %.not.i.i.i.i.i.i.i160 = icmp eq ptr %i.bez, null
  br i1 %.not.i.i.i.i.i.i.i160, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i156, !llvm.loop !38

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i133: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i159, %._crit_edge124.i.i.i, %bb.gu
  %i.bfh = load ptr, ptr %13, align 8, !tbaa !392
  %i.bfi = load i64, ptr %i.bdw, align 8, !tbaa !393
  %i.bfj = shl i64 %i.bfi, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bfh, i8 0, i64 %i.bfj, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdx, i8 0, i64 16, i1 false)
  %i.bfk = load ptr, ptr %13, align 8, !tbaa !392 ; 2 uses
  %i.bfl = icmp eq ptr %i.bfk, %i.bdv
  br i1 %i.bfl, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i134, label %bb.gw

bb.gw:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i133
  %i.bfm = load i64, ptr %i.bdw, align 8, !tbaa !393
  %i.bfn = shl i64 %i.bfm, 3
  call void @_ZdlPvm(ptr noundef %i.bfk, i64 noundef %i.bfn) #31
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i134

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i134: ; preds = %bb.gw, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.bfo = load ptr, ptr %i.bds, align 8, !tbaa !439 ; 2 uses
  %.not5.i.i.i.i85.i.i.i = icmp eq ptr %i.bfo, null
  br i1 %.not5.i.i.i.i85.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i135, label %.lr.ph.i.i.i.i86.i.i.i

.lr.ph.i.i.i.i86.i.i.i:                           ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i134, %.lr.ph.i.i.i.i86.i.i.i
  %.06.i.i.i.i87.i.i.i = phi ptr [ %i.bfp, %.lr.ph.i.i.i.i86.i.i.i ], [ %i.bfo, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i134 ] ; 2 uses
  %i.bfp = load ptr, ptr %.06.i.i.i.i87.i.i.i, align 8, !tbaa !157 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i87.i.i.i, i64 noundef 16) #31
  %.not.i.i.i.i88.i.i.i = icmp eq ptr %i.bfp, null
  br i1 %.not.i.i.i.i88.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i135, label %.lr.ph.i.i.i.i86.i.i.i, !llvm.loop !41

_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i135: ; preds = %.lr.ph.i.i.i.i86.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i134
  %i.bfq = load ptr, ptr %12, align 8, !tbaa !437
  %i.bfr = load i64, ptr %i.bdr, align 8, !tbaa !438
  %i.bfs = shl i64 %i.bfr, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bfq, i8 0, i64 %i.bfs, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bds, i8 0, i64 16, i1 false)
  %i.bft = load ptr, ptr %12, align 8, !tbaa !437 ; 2 uses
  %i.bfu = icmp eq ptr %i.bft, %i.bdq
  br i1 %i.bfu, label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i136, label %bb.gx

bb.gx:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i135
  %i.bfv = load i64, ptr %i.bdr, align 8, !tbaa !438
  %i.bfw = shl i64 %i.bfv, 3
  call void @_ZdlPvm(ptr noundef %i.bft, i64 noundef %i.bfw) #31
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i136

_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i136: ; preds = %bb.gx, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.bfx = add i32 %.075125.i.i.i, 1              ; 2 uses
  %i.bfy = zext i32 %i.bfx to i64
  %i.bfz = icmp sgt i64 %i.bai, %i.bfy
  br i1 %i.bfz, label %bb.gu, label %_ZL22set_input_kq_mask_implItLb1ELb0ELb1ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i, !llvm.loop !827

bb.gy:                                            ; preds = %._crit_edge.i.i.i153, %.lr.ph123.i.i.i137
  %.073121.i.i.i = phi i32 [ 0, %.lr.ph123.i.i.i137 ], [ %i.bjw, %._crit_edge.i.i.i153 ] ; 2 uses
  %i.bga = add i32 %.073121.i.i.i, %i.bey         ; 3 uses
  %i.bgb = load ptr, ptr %i.k, align 8, !tbaa !327 ; 3 uses
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bgb, i64 56
  %i.bgd = load ptr, ptr %i.bgc, align 8, !tbaa !363
  %i.bge = zext i32 %i.bga to i64                 ; 3 uses
  %i.bgf = getelementptr inbounds nuw [8 x i8], ptr %i.bgd, i64 %i.bge
  %i.bgg = load ptr, ptr %i.bgf, align 8, !tbaa !336
  %i.bgh = load i32, ptr %i.bgg, align 4, !tbaa !110
  %.fr128.i.i.i = freeze i32 %i.bgh               ; 5 uses
  %i.bgi = sext i32 %.fr128.i.i.i to i64          ; 6 uses
  %i.bgj = load ptr, ptr %i.w, align 8, !tbaa !120
  %i.bgk = getelementptr inbounds nuw [4 x i8], ptr %i.bgj, i64 %i.bgi
  %i.bgl = load i32, ptr %i.bgk, align 4, !tbaa !110
  %i.bgm = zext i32 %i.bgl to i64                 ; 3 uses
  %i.bgn = load ptr, ptr %i.bec, align 8, !tbaa !153
  %i.bgo = load ptr, ptr %i.u, align 8, !tbaa !123 ; 2 uses
  %i.bgp = ptrtoint ptr %i.bgn to i64
  %i.bgq = ptrtoint ptr %i.bgo to i64
  %i.bgr = sub i64 %i.bgp, %i.bgq
  %i.bgs = sdiv exact i64 %i.bgr, 12440           ; 2 uses
  %.not.i.i.i.i.i138 = icmp ugt i64 %i.bgs, %i.bgm
  br i1 %.not.i.i.i.i.i138, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.101, i64 noundef %i.bgm, i64 noundef %i.bgs) #29
          to label %.noexc.i.i.i141 unwind label %bb.hq

.noexc.i.i.i141:                                  ; preds = %bb.gz
  unreachable

bb.ha:                                            ; preds = %bb.gy
  %i.bgt = getelementptr inbounds nuw [12440 x i8], ptr %i.bgo, i64 %i.bgm ; 3 uses
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgb, i64 40
  %i.bgv = load ptr, ptr %i.bgu, align 8, !tbaa !366 ; 3 uses
  %i.bgw = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %i.bge
  %i.bgx = load i32, ptr %i.bgw, align 4, !tbaa !110 ; 3 uses
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgb, i64 4
  %i.bgz = load i32, ptr %i.bgy, align 4, !tbaa !312 ; 2 uses
  %i.bha = shl i32 %i.bgz, 1
  %i.bhb = add i32 %i.bha, %i.bga
  %i.bhc = zext i32 %i.bhb to i64
  %i.bhd = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %i.bhc
  %i.bhe = load i32, ptr %i.bhd, align 4, !tbaa !110
  %i.bhf = add i32 %i.bgz, %i.bga
  %i.bhg = zext i32 %i.bhf to i64
  %i.bhh = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %i.bhg
  %i.bhi = load i32, ptr %i.bhh, align 4, !tbaa !110 ; 2 uses
  %i.bhj = mul nsw i64 %i.bag, %i.bge
  %i.bhk = load i64, ptr %i.bdw, align 8, !tbaa !393 ; 3 uses
  %i.bhl = urem i64 %i.bgi, %i.bhk                ; 3 uses
  %i.bhm = load ptr, ptr %13, align 8, !tbaa !392
  %i.bhn = getelementptr inbounds nuw [8 x i8], ptr %i.bhm, i64 %i.bhl
  %i.bho = load ptr, ptr %i.bhn, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i89.i.i.i = icmp eq ptr %i.bho, null
  br i1 %.not.i.i.i.i89.i.i.i, label %.loopexit.i.i.i.i.i146, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.bhp = load ptr, ptr %i.bho, align 8, !tbaa !157 ; 2 uses
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 8
  %i.bhr = load i32, ptr %i.bhq, align 4, !tbaa !110
  %i.bhs = icmp eq i32 %.fr128.i.i.i, %i.bhr
  br i1 %i.bhs, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i152, label %.lr.ph.i.i.i.i90.i.i.i

bb.hc:                                            ; preds = %bb.hd
  %i.bht = icmp eq i32 %.fr128.i.i.i, %i.bhw
  br i1 %i.bht, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i152, label %.lr.ph.i.i.i.i90.i.i.i, !llvm.loop !37

.lr.ph.i.i.i.i90.i.i.i:                           ; preds = %bb.hb, %bb.hc
  %.020.i.i.i.i.i.i.i142 = phi ptr [ %i.bhu, %bb.hc ], [ %i.bhp, %bb.hb ]
  %i.bhu = load ptr, ptr %.020.i.i.i.i.i.i.i142, align 8, !tbaa !157 ; 3 uses
  %.not18.i.i.i.i.i.i.i143 = icmp eq ptr %i.bhu, null
  br i1 %.not18.i.i.i.i.i.i.i143, label %.loopexit.i.i.i.i.i146, label %bb.hd

bb.hd:                                            ; preds = %.lr.ph.i.i.i.i90.i.i.i
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhu, i64 8
  %i.bhw = load i32, ptr %i.bhv, align 4, !tbaa !110 ; 2 uses
  %i.bhx = sext i32 %i.bhw to i64
  %i.bhy = urem i64 %i.bhx, %i.bhk
  %.not19.i.i.i.i.i.i.i144 = icmp eq i64 %i.bhy, %i.bhl
  br i1 %.not19.i.i.i.i.i.i.i144, label %bb.hc, label %..loopexit_crit_edge21.i.i.i.i.i.i.i145, !llvm.loop !37

..loopexit_crit_edge21.i.i.i.i.i.i.i145:          ; preds = %bb.hd
  br label %.loopexit.i.i.i.i.i146, !llvm.loop !37

.loopexit.i.i.i.i.i146:                           ; preds = %.lr.ph.i.i.i.i90.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i.i145, %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store ptr %13, ptr %11, align 8, !tbaa !397
  %i.bhz = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc91.i.i.i unwind label %bb.hr ; 9 uses

.noexc91.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i146
  store ptr null, ptr %i.bhz, align 8, !tbaa !157
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhz, i64 8
  store i32 %.fr128.i.i.i, ptr %i.bia, align 8, !tbaa !399
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bhz, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bib, i8 0, i64 24, i1 false)
  store ptr %i.bhz, ptr %i.bed, align 8, !tbaa !400
  %i.bic = load i64, ptr %i.bdz, align 8, !tbaa !431
  %i.bid = load i64, ptr %i.bef, align 8, !tbaa !440
  %i.bie = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bdy, i64 noundef %i.bhk, i64 noundef %i.bid, i64 noundef 1)
          to label %.noexc.i.i149 unwind label %bb.ho ; 2 uses

.noexc.i.i149:                                    ; preds = %.noexc91.i.i.i
  %i.bif = extractvalue { i8, i64 } %i.bie, 0
  %i.big = trunc i8 %i.bif to i1
  br i1 %i.big, label %bb.he, label %bb.hj

bb.he:                                            ; preds = %.noexc.i.i149
  %i.bih = extractvalue { i8, i64 } %i.bie, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %13, i64 noundef %i.bih)
          to label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i172 unwind label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.bii = landingpad { ptr, i32 }
          catch ptr null
  %i.bij = extractvalue { ptr, i32 } %i.bii, 0
  %i.bik = call ptr @__cxa_begin_catch(ptr %i.bij) #30 ; 0 uses
  store i64 %i.bic, ptr %i.bdz, align 8, !tbaa !431
  invoke void @__cxa_rethrow() #29
          to label %bb.hi unwind label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.bil = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i147 unwind label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.bim = landingpad { ptr, i32 }
          catch ptr null
  %i.bin = extractvalue { ptr, i32 } %i.bim, 0
  call void @__clang_call_terminate(ptr %i.bin) #33
  unreachable

bb.hi:                                            ; preds = %bb.hf
  unreachable

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i172: ; preds = %bb.he
  %i.bio = load i64, ptr %i.bdw, align 8, !tbaa !393
  %i.bip = urem i64 %i.bgi, %i.bio
  br label %bb.hj

bb.hj:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i172, %.noexc.i.i149
  %.0.i.i.i150 = phi i64 [ %i.bip, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i172 ], [ %i.bhl, %.noexc.i.i149 ]
  %i.biq = load ptr, ptr %13, align 8, !tbaa !392 ; 2 uses
  %i.bir = getelementptr inbounds nuw [8 x i8], ptr %i.biq, i64 %.0.i.i.i150 ; 3 uses
  %i.bis = load ptr, ptr %i.bir, align 8, !tbaa !156 ; 2 uses
  %.not.i.i46.i.i = icmp eq ptr %i.bis, null
  br i1 %.not.i.i46.i.i, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.bit = load ptr, ptr %i.bis, align 8, !tbaa !157
  store ptr %i.bit, ptr %i.bhz, align 8, !tbaa !157
  %i.biu = load ptr, ptr %i.bir, align 8, !tbaa !156
  store ptr %i.bhz, ptr %i.biu, align 8, !tbaa !157
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i151

bb.hl:                                            ; preds = %bb.hj
  %i.biv = load ptr, ptr %i.bdx, align 8, !tbaa !401 ; 3 uses
  store ptr %i.biv, ptr %i.bhz, align 8, !tbaa !157
  store ptr %i.bhz, ptr %i.bdx, align 8, !tbaa !401
  %.not11.i.i.i.i171 = icmp eq ptr %i.biv, null
  br i1 %.not11.i.i.i.i171, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.biw = getelementptr inbounds nuw i8, ptr %i.biv, i64 8
  %i.bix = load i64, ptr %i.bdw, align 8, !tbaa !393
  %i.biy = load i32, ptr %i.biw, align 4, !tbaa !110
  %i.biz = sext i32 %i.biy to i64
  %i.bja = urem i64 %i.biz, %i.bix
  %i.bjb = getelementptr inbounds nuw [8 x i8], ptr %i.biq, i64 %i.bja
  store ptr %i.bhz, ptr %i.bjb, align 8, !tbaa !156
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  store ptr %i.bdx, ptr %i.bir, align 8, !tbaa !156
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i151

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i151: ; preds = %bb.hn, %bb.hk
  %i.bjc = load i64, ptr %i.bef, align 8, !tbaa !440
  %i.bjd = add i64 %i.bjc, 1
  store i64 %i.bjd, ptr %i.bef, align 8, !tbaa !440
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i152

bb.ho:                                            ; preds = %.noexc91.i.i.i
  %i.bje = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i147

.body.i.i147:                                     ; preds = %bb.ho, %bb.hg
  %eh.lpad-body.i.i148 = phi { ptr, i32 } [ %i.bje, %bb.ho ], [ %i.bil, %bb.hg ]
  call void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %.body.i.i.i139

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i152: ; preds = %bb.hc, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i151, %bb.hb
  br i1 %i.bee, label %.lr.ph115.i.i.i, label %._crit_edge.i.i.i153

.lr.ph115.i.i.i:                                  ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i152
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bgt, i64 56 ; 2 uses
  %i.bjg = icmp ugt i32 %.fr128.i.i.i, 255
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bgt, i64 128
  %i.bji = lshr i64 %i.bgi, 6
  %i.bjj = and i64 %i.bgi, 63
  %i.bjk = shl nuw i64 1, %i.bjj
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bgt, i64 80
  %i.bjm = getelementptr [2 x i8], ptr %1, i64 %i.bhj ; 2 uses
  br i1 %i.bjg, label %.lr.ph115.split.us.i.i.i, label %.lr.ph115.split.i.i.i

.lr.ph115.split.us.i.i.i:                         ; preds = %.lr.ph115.i.i.i
  %i.bjn = load ptr, ptr %i.bjf, align 8, !tbaa !126
  br label %bb.hp

bb.hp:                                            ; preds = %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i170, %.lr.ph115.split.us.i.i.i
  %i.bjo = phi i64 [ 0, %.lr.ph115.split.us.i.i.i ], [ %i.bju, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i170 ] ; 2 uses
  %.0114.us.i.i.i = phi i32 [ 0, %.lr.ph115.split.us.i.i.i ], [ %i.bjt, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i170 ]
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %i.bjn, i64 %i.bjo
  %i.bjq = load i32, ptr %i.bjp, align 4, !tbaa !110
  %i.bjr = icmp eq i32 %i.bjq, -1
  br i1 %i.bjr, label %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i170, label %.split.us.i.i.i167

_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i170: ; preds = %bb.hp
  %i.bjs = getelementptr [2 x i8], ptr %i.bjm, i64 %i.bjo
  store i16 %i.bam, ptr %i.bjs, align 2, !tbaa !442
  %i.bjt = add i32 %.0114.us.i.i.i, 1             ; 2 uses
  %i.bju = zext i32 %i.bjt to i64                 ; 2 uses
  %i.bjv = icmp samesign ugt i64 %i.bag, %i.bju
  br i1 %i.bjv, label %bb.hp, label %._crit_edge.i.i.i153, !llvm.loop !828

._crit_edge.i.i.i153:                             ; preds = %_ZL10llama_castItfET_T0_.exit.i.i.i164, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i170, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i152
  %i.bjw = add i32 %.073121.i.i.i, 1              ; 2 uses
  %i.bjx = zext i32 %i.bjw to i64
  %i.bjy = icmp sgt i64 %i.bak, %i.bjx
  br i1 %i.bjy, label %bb.gy, label %._crit_edge124.i.i.i, !llvm.loop !829

bb.hq:                                            ; preds = %bb.gz
  %i.bjz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i139

bb.hr:                                            ; preds = %.loopexit.i.i.i.i.i146
  %i.bka = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i139

.lr.ph115.split.i.i.i:                            ; preds = %.lr.ph115.i.i.i, %_ZL10llama_castItfET_T0_.exit.i.i.i164
  %i.bkb = phi i64 [ %i.bld, %_ZL10llama_castItfET_T0_.exit.i.i.i164 ], [ 0, %.lr.ph115.i.i.i ] ; 4 uses
end_hunk_2
begin_hunk_3_@_ZL22set_input_kq_mask_implItLb1EEvRK22args_set_input_kq_maskPT_:bb.a
  %i.ceh = load ptr, ptr %i.ceg, align 8, !tbaa !336
  %i.cei = load i32, ptr %i.ceh, align 4, !tbaa !110
  %i.cej = sext i32 %i.cei to i64
  %i.cek = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cej ; 2 uses
  %i.cel = getelementptr inbounds nuw [4 x i8], ptr %i.cee, i64 %indvars.iv.i.i81.i.epil.init
  %i.cem = load i32, ptr %i.cel, align 4, !tbaa !110
  %i.cen = load i32, ptr %i.cek, align 4, !tbaa !110
  %i.ceo = tail call i32 @llvm.smin.i32(i32 %i.cem, i32 %i.cen)
  store i32 %i.ceo, ptr %i.cek, align 4, !tbaa !110
  br label %.preheader.i.i84.i

.preheader.i.i84.i:                               ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i80.i.epil.preheader, %.preheader.i.i84.i.loopexit.unr-lcssa, %vector.ph1585
  %i.cep = icmp sgt i64 %i.cbi, 0
  br i1 %i.cep, label %.lr.ph110.i.i.i, label %_ZL22set_input_kq_mask_implItLb1ELb0ELb0ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i

.lr.ph110.i.i.i:                                  ; preds = %.preheader.i.i84.i
  %i.ceq = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.cer = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ces = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.cet = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ceu = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cev = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.cew = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.cex = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.cey = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.cez = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.cfa = icmp sgt i64 %i.cbk, 0
  %i.cfb = trunc i64 %i.cbk to i32
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cfd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cfe = icmp sgt i64 %i.cbg, 0
  %i.cff = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  br label %bb.kl

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i80.i:           ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i80.i, %.lr.ph.i.i78.i.new
  %indvars.iv.i.i81.i = phi i64 [ 0, %.lr.ph.i.i78.i.new ], [ %indvars.iv.next.i.i82.i.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i80.i ] ; 4 uses
  %niter1913 = phi i64 [ 0, %.lr.ph.i.i78.i.new ], [ %niter1913.next.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i80.i ]
  %i.cfg = getelementptr inbounds nuw [8 x i8], ptr %i.cec, i64 %indvars.iv.i.i81.i
  %i.cfh = load ptr, ptr %i.cfg, align 8, !tbaa !336
  %i.cfi = load i32, ptr %i.cfh, align 4, !tbaa !110
  %i.cfj = sext i32 %i.cfi to i64
  %i.cfk = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cfj ; 2 uses
  %i.cfl = getelementptr inbounds nuw [4 x i8], ptr %i.cee, i64 %indvars.iv.i.i81.i
  %i.cfm = load i32, ptr %i.cfl, align 4, !tbaa !110
  %i.cfn = load i32, ptr %i.cfk, align 4, !tbaa !110
  %i.cfo = tail call i32 @llvm.smin.i32(i32 %i.cfm, i32 %i.cfn)
  store i32 %i.cfo, ptr %i.cfk, align 4, !tbaa !110
  %indvars.iv.next.i.i82.i = or disjoint i64 %indvars.iv.i.i81.i, 1 ; 2 uses
  %i.cfp = getelementptr inbounds nuw [8 x i8], ptr %i.cec, i64 %indvars.iv.next.i.i82.i
  %i.cfq = load ptr, ptr %i.cfp, align 8, !tbaa !336
  %i.cfr = load i32, ptr %i.cfq, align 4, !tbaa !110
  %i.cfs = sext i32 %i.cfr to i64
  %i.cft = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cfs ; 2 uses
  %i.cfu = getelementptr inbounds nuw [4 x i8], ptr %i.cee, i64 %indvars.iv.next.i.i82.i
  %i.cfv = load i32, ptr %i.cfu, align 4, !tbaa !110
  %i.cfw = load i32, ptr %i.cft, align 4, !tbaa !110
  %i.cfx = tail call i32 @llvm.smin.i32(i32 %i.cfv, i32 %i.cfw)
  store i32 %i.cfx, ptr %i.cft, align 4, !tbaa !110
  %indvars.iv.next.i.i82.i.1 = add nuw nsw i64 %indvars.iv.i.i81.i, 2 ; 2 uses
  %niter1913.next.1 = add i64 %niter1913, 2       ; 2 uses
  %niter1913.ncmp.1 = icmp eq i64 %niter1913.next.1, %unroll_iter1912
  br i1 %niter1913.ncmp.1, label %.preheader.i.i84.i.loopexit.unr-lcssa, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i80.i, !llvm.loop !834

bb.kl:                                            ; preds = %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i88.i, %.lr.ph110.i.i.i
  %.060109.i.i.i = phi i32 [ 0, %.lr.ph110.i.i.i ], [ %i.cgx, %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i88.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.ceq, ptr %6, align 8, !tbaa !437
  store i64 1, ptr %i.cer, align 8, !tbaa !438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ces, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cet, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ceu, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr %i.cev, ptr %7, align 8, !tbaa !392
  store i64 1, ptr %i.cew, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cex, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cey, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cez, i8 0, i64 16, i1 false)
  br i1 %i.cfa, label %.lr.ph107.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i85.i

.lr.ph107.i.i.i:                                  ; preds = %bb.kl
  %i.cfy = mul i32 %.060109.i.i.i, %i.cfb
  br label %bb.kp

._crit_edge108.i.i.i:                             ; preds = %._crit_edge.i.i104.i
  %.pre.i.i105.i = load ptr, ptr %i.cex, align 8, !tbaa !401 ; 2 uses
  %.not5.i.i.i.i.i.i106.i = icmp eq ptr %.pre.i.i105.i, null
  br i1 %.not5.i.i.i.i.i.i106.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i85.i, label %.lr.ph.i.i.i.i.i.i107.i

.lr.ph.i.i.i.i.i.i107.i:                          ; preds = %._crit_edge108.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i110.i
  %.06.i.i.i.i.i.i108.i = phi ptr [ %i.cfz, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i110.i ], [ %.pre.i.i105.i, %._crit_edge108.i.i.i ] ; 4 uses
  %i.cfz = load ptr, ptr %.06.i.i.i.i.i.i108.i, align 8, !tbaa !157 ; 2 uses
  %i.cga = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i108.i, i64 16
  %i.cgb = load ptr, ptr %i.cga, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i109.i = icmp eq ptr %i.cgb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i109.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i110.i, label %bb.km

bb.km:                                            ; preds = %.lr.ph.i.i.i.i.i.i107.i
  %i.cgc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i108.i, i64 32
  %i.cgd = load ptr, ptr %i.cgc, align 8, !tbaa !275
  %i.cge = ptrtoint ptr %i.cgd to i64
  %i.cgf = ptrtoint ptr %i.cgb to i64
  %i.cgg = sub i64 %i.cge, %i.cgf
  call void @_ZdlPvm(ptr noundef nonnull %i.cgb, i64 noundef %i.cgg) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i110.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i110.i: ; preds = %bb.km, %.lr.ph.i.i.i.i.i.i107.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i108.i, i64 noundef 40) #31
  %.not.i.i.i.i.i.i111.i = icmp eq ptr %i.cfz, null
  br i1 %.not.i.i.i.i.i.i111.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i85.i, label %.lr.ph.i.i.i.i.i.i107.i, !llvm.loop !38

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i85.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i110.i, %._crit_edge108.i.i.i, %bb.kl
  %i.cgh = load ptr, ptr %7, align 8, !tbaa !392
  %i.cgi = load i64, ptr %i.cew, align 8, !tbaa !393
  %i.cgj = shl i64 %i.cgi, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cgh, i8 0, i64 %i.cgj, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cex, i8 0, i64 16, i1 false)
  %i.cgk = load ptr, ptr %7, align 8, !tbaa !392  ; 2 uses
  %i.cgl = icmp eq ptr %i.cgk, %i.cev
  br i1 %i.cgl, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i86.i, label %bb.kn

bb.kn:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i85.i
  %i.cgm = load i64, ptr %i.cew, align 8, !tbaa !393
  %i.cgn = shl i64 %i.cgm, 3
  call void @_ZdlPvm(ptr noundef %i.cgk, i64 noundef %i.cgn) #31
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i86.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i86.i: ; preds = %bb.kn, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i85.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.cgo = load ptr, ptr %i.ces, align 8, !tbaa !439 ; 2 uses
  %.not5.i.i.i.i70.i.i.i = icmp eq ptr %i.cgo, null
  br i1 %.not5.i.i.i.i70.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i87.i, label %.lr.ph.i.i.i.i71.i.i.i

.lr.ph.i.i.i.i71.i.i.i:                           ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i86.i, %.lr.ph.i.i.i.i71.i.i.i
  %.06.i.i.i.i72.i.i.i = phi ptr [ %i.cgp, %.lr.ph.i.i.i.i71.i.i.i ], [ %i.cgo, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i86.i ] ; 2 uses
  %i.cgp = load ptr, ptr %.06.i.i.i.i72.i.i.i, align 8, !tbaa !157 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i72.i.i.i, i64 noundef 16) #31
  %.not.i.i.i.i73.i.i.i = icmp eq ptr %i.cgp, null
  br i1 %.not.i.i.i.i73.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i87.i, label %.lr.ph.i.i.i.i71.i.i.i, !llvm.loop !41

_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i87.i: ; preds = %.lr.ph.i.i.i.i71.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i86.i
  %i.cgq = load ptr, ptr %6, align 8, !tbaa !437
  %i.cgr = load i64, ptr %i.cer, align 8, !tbaa !438
  %i.cgs = shl i64 %i.cgr, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cgq, i8 0, i64 %i.cgs, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ces, i8 0, i64 16, i1 false)
  %i.cgt = load ptr, ptr %6, align 8, !tbaa !437  ; 2 uses
  %i.cgu = icmp eq ptr %i.cgt, %i.ceq
  br i1 %i.cgu, label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i88.i, label %bb.ko

bb.ko:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i87.i
  %i.cgv = load i64, ptr %i.cer, align 8, !tbaa !438
  %i.cgw = shl i64 %i.cgv, 3
  call void @_ZdlPvm(ptr noundef %i.cgt, i64 noundef %i.cgw) #31
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i88.i

_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i88.i: ; preds = %bb.ko, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i87.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cgx = add i32 %.060109.i.i.i, 1              ; 2 uses
  %i.cgy = zext i32 %i.cgx to i64
  %i.cgz = icmp sgt i64 %i.cbi, %i.cgy
  br i1 %i.cgz, label %bb.kl, label %_ZL22set_input_kq_mask_implItLb1ELb0ELb0ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i, !llvm.loop !835

bb.kp:                                            ; preds = %._crit_edge.i.i104.i, %.lr.ph107.i.i.i
  %.059105.i.i.i = phi i32 [ 0, %.lr.ph107.i.i.i ], [ %i.ckk, %._crit_edge.i.i104.i ] ; 2 uses
  %i.cha = add i32 %.059105.i.i.i, %i.cfy
  %i.chb = load ptr, ptr %i.k, align 8, !tbaa !327 ; 2 uses
  %i.chc = getelementptr inbounds nuw i8, ptr %i.chb, i64 56
  %i.chd = load ptr, ptr %i.chc, align 8, !tbaa !363
  %i.che = zext i32 %i.cha to i64                 ; 3 uses
  %i.chf = getelementptr inbounds nuw [8 x i8], ptr %i.chd, i64 %i.che
  %i.chg = load ptr, ptr %i.chf, align 8, !tbaa !336
  %i.chh = load i32, ptr %i.chg, align 4, !tbaa !110
  %.fr112.i.i.i = freeze i32 %i.chh               ; 5 uses
  %i.chi = sext i32 %.fr112.i.i.i to i64          ; 6 uses
  %i.chj = load ptr, ptr %i.w, align 8, !tbaa !120
  %i.chk = getelementptr inbounds nuw [4 x i8], ptr %i.chj, i64 %i.chi
  %i.chl = load i32, ptr %i.chk, align 4, !tbaa !110
  %i.chm = zext i32 %i.chl to i64                 ; 3 uses
  %i.chn = load ptr, ptr %i.cfc, align 8, !tbaa !153
  %i.cho = load ptr, ptr %i.u, align 8, !tbaa !123 ; 2 uses
  %i.chp = ptrtoint ptr %i.chn to i64
  %i.chq = ptrtoint ptr %i.cho to i64
  %i.chr = sub i64 %i.chp, %i.chq
  %i.chs = sdiv exact i64 %i.chr, 12440           ; 2 uses
  %.not.i.i.i.i89.i = icmp ugt i64 %i.chs, %i.chm
  br i1 %.not.i.i.i.i89.i, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.101, i64 noundef %i.chm, i64 noundef %i.chs) #29
          to label %.noexc.i.i92.i unwind label %bb.li

.noexc.i.i92.i:                                   ; preds = %bb.kq
  unreachable

bb.kr:                                            ; preds = %bb.kp
  %i.cht = getelementptr inbounds nuw [12440 x i8], ptr %i.cho, i64 %i.chm ; 2 uses
  %i.chu = getelementptr inbounds nuw i8, ptr %i.chb, i64 40
  %i.chv = load ptr, ptr %i.chu, align 8, !tbaa !366
  %i.chw = getelementptr inbounds nuw [4 x i8], ptr %i.chv, i64 %i.che
  %i.chx = load i32, ptr %i.chw, align 4, !tbaa !110 ; 2 uses
  %i.chy = mul nsw i64 %i.cbg, %i.che
  %i.chz = load i64, ptr %i.cew, align 8, !tbaa !393 ; 3 uses
  %i.cia = urem i64 %i.chi, %i.chz                ; 3 uses
  %i.cib = load ptr, ptr %7, align 8, !tbaa !392
  %i.cic = getelementptr inbounds nuw [8 x i8], ptr %i.cib, i64 %i.cia
  %i.cid = load ptr, ptr %i.cic, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i74.i.i.i = icmp eq ptr %i.cid, null
  br i1 %.not.i.i.i.i74.i.i.i, label %.loopexit.i.i.i.i97.i, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.cie = load ptr, ptr %i.cid, align 8, !tbaa !157 ; 2 uses
  %i.cif = getelementptr inbounds nuw i8, ptr %i.cie, i64 8
  %i.cig = load i32, ptr %i.cif, align 4, !tbaa !110
  %i.cih = icmp eq i32 %.fr112.i.i.i, %i.cig
  br i1 %i.cih, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i103.i, label %.lr.ph.i.i.i.i75.i.i.i

bb.kt:                                            ; preds = %bb.ku
  %i.cii = icmp eq i32 %.fr112.i.i.i, %i.cil
  br i1 %i.cii, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i103.i, label %.lr.ph.i.i.i.i75.i.i.i, !llvm.loop !37

.lr.ph.i.i.i.i75.i.i.i:                           ; preds = %bb.ks, %bb.kt
  %.020.i.i.i.i.i.i93.i = phi ptr [ %i.cij, %bb.kt ], [ %i.cie, %bb.ks ]
  %i.cij = load ptr, ptr %.020.i.i.i.i.i.i93.i, align 8, !tbaa !157 ; 3 uses
  %.not18.i.i.i.i.i.i94.i = icmp eq ptr %i.cij, null
  br i1 %.not18.i.i.i.i.i.i94.i, label %.loopexit.i.i.i.i97.i, label %bb.ku

bb.ku:                                            ; preds = %.lr.ph.i.i.i.i75.i.i.i
  %i.cik = getelementptr inbounds nuw i8, ptr %i.cij, i64 8
  %i.cil = load i32, ptr %i.cik, align 4, !tbaa !110 ; 2 uses
  %i.cim = sext i32 %i.cil to i64
  %i.cin = urem i64 %i.cim, %i.chz
  %.not19.i.i.i.i.i.i95.i = icmp eq i64 %i.cin, %i.cia
  br i1 %.not19.i.i.i.i.i.i95.i, label %bb.kt, label %..loopexit_crit_edge21.i.i.i.i.i.i96.i, !llvm.loop !37

..loopexit_crit_edge21.i.i.i.i.i.i96.i:           ; preds = %bb.ku
  br label %.loopexit.i.i.i.i97.i, !llvm.loop !37

.loopexit.i.i.i.i97.i:                            ; preds = %.lr.ph.i.i.i.i75.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i96.i, %bb.kr
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %7, ptr %5, align 8, !tbaa !397
  %i.cio = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc76.i.i.i unwind label %bb.lj ; 9 uses

.noexc76.i.i.i:                                   ; preds = %.loopexit.i.i.i.i97.i
  store ptr null, ptr %i.cio, align 8, !tbaa !157
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cio, i64 8
  store i32 %.fr112.i.i.i, ptr %i.cip, align 8, !tbaa !399
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.cio, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ciq, i8 0, i64 24, i1 false)
  store ptr %i.cio, ptr %i.cfd, align 8, !tbaa !400
  %i.cir = load i64, ptr %i.cez, align 8, !tbaa !431
  %i.cis = load i64, ptr %i.cff, align 8, !tbaa !440
  %i.cit = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.cey, i64 noundef %i.chz, i64 noundef %i.cis, i64 noundef 1)
          to label %.noexc.i100.i unwind label %bb.lf ; 2 uses

.noexc.i100.i:                                    ; preds = %.noexc76.i.i.i
  %i.ciu = extractvalue { i8, i64 } %i.cit, 0
  %i.civ = trunc i8 %i.ciu to i1
  br i1 %i.civ, label %bb.kv, label %bb.la

bb.kv:                                            ; preds = %.noexc.i100.i
  %i.ciw = extractvalue { i8, i64 } %i.cit, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %7, i64 noundef %i.ciw)
          to label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i121.i unwind label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.cix = landingpad { ptr, i32 }
          catch ptr null
  %i.ciy = extractvalue { ptr, i32 } %i.cix, 0
  %i.ciz = call ptr @__cxa_begin_catch(ptr %i.ciy) #30 ; 0 uses
  store i64 %i.cir, ptr %i.cez, align 8, !tbaa !431
  invoke void @__cxa_rethrow() #29
          to label %bb.kz unwind label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.cja = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i98.i unwind label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.cjb = landingpad { ptr, i32 }
          catch ptr null
  %i.cjc = extractvalue { ptr, i32 } %i.cjb, 0
  call void @__clang_call_terminate(ptr %i.cjc) #33
  unreachable

bb.kz:                                            ; preds = %bb.kw
  unreachable

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i121.i: ; preds = %bb.kv
  %i.cjd = load i64, ptr %i.cew, align 8, !tbaa !393
  %i.cje = urem i64 %i.chi, %i.cjd
  br label %bb.la

bb.la:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i121.i, %.noexc.i100.i
  %.0.i.i101.i = phi i64 [ %i.cje, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i121.i ], [ %i.cia, %.noexc.i100.i ]
  %i.cjf = load ptr, ptr %7, align 8, !tbaa !392  ; 2 uses
  %i.cjg = getelementptr inbounds nuw [8 x i8], ptr %i.cjf, i64 %.0.i.i101.i ; 3 uses
  %i.cjh = load ptr, ptr %i.cjg, align 8, !tbaa !156 ; 2 uses
  %.not.i.i45.i.i = icmp eq ptr %i.cjh, null
  br i1 %.not.i.i45.i.i, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.cji = load ptr, ptr %i.cjh, align 8, !tbaa !157
  store ptr %i.cji, ptr %i.cio, align 8, !tbaa !157
  %i.cjj = load ptr, ptr %i.cjg, align 8, !tbaa !156
  store ptr %i.cio, ptr %i.cjj, align 8, !tbaa !157
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i102.i

bb.lc:                                            ; preds = %bb.la
  %i.cjk = load ptr, ptr %i.cex, align 8, !tbaa !401 ; 3 uses
  store ptr %i.cjk, ptr %i.cio, align 8, !tbaa !157
  store ptr %i.cio, ptr %i.cex, align 8, !tbaa !401
  %.not11.i.i.i120.i = icmp eq ptr %i.cjk, null
  br i1 %.not11.i.i.i120.i, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.cjl = getelementptr inbounds nuw i8, ptr %i.cjk, i64 8
  %i.cjm = load i64, ptr %i.cew, align 8, !tbaa !393
  %i.cjn = load i32, ptr %i.cjl, align 4, !tbaa !110
  %i.cjo = sext i32 %i.cjn to i64
  %i.cjp = urem i64 %i.cjo, %i.cjm
  %i.cjq = getelementptr inbounds nuw [8 x i8], ptr %i.cjf, i64 %i.cjp
  store ptr %i.cio, ptr %i.cjq, align 8, !tbaa !156
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.lc
  store ptr %i.cex, ptr %i.cjg, align 8, !tbaa !156
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i102.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i102.i: ; preds = %bb.le, %bb.lb
  %i.cjr = load i64, ptr %i.cff, align 8, !tbaa !440
  %i.cjs = add i64 %i.cjr, 1
  store i64 %i.cjs, ptr %i.cff, align 8, !tbaa !440
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i103.i

bb.lf:                                            ; preds = %.noexc76.i.i.i
  %i.cjt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i98.i

.body.i98.i:                                      ; preds = %bb.lf, %bb.kx
  %eh.lpad-body.i99.i = phi { ptr, i32 } [ %i.cjt, %bb.lf ], [ %i.cja, %bb.kx ]
  call void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.body.i.i90.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i103.i: ; preds = %bb.kt, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i102.i, %bb.ks
  br i1 %i.cfe, label %.lr.ph99.i.i.i, label %._crit_edge.i.i104.i

.lr.ph99.i.i.i:                                   ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i103.i
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cht, i64 56 ; 2 uses
  %i.cjv = icmp ugt i32 %.fr112.i.i.i, 255
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.cht, i64 128
  %i.cjx = lshr i64 %i.chi, 6
  %i.cjy = and i64 %i.chi, 63
  %i.cjz = shl nuw i64 1, %i.cjy
  %i.cka = getelementptr [2 x i8], ptr %1, i64 %i.chy ; 2 uses
  br i1 %i.cjv, label %.lr.ph99.split.us.i.i.i, label %.lr.ph99.split.i.i.i

.lr.ph99.split.us.i.i.i:                          ; preds = %.lr.ph99.i.i.i
  %i.ckb = load ptr, ptr %i.cju, align 8, !tbaa !126
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lh, %.lr.ph99.split.us.i.i.i
  %i.ckc = phi i64 [ 0, %.lr.ph99.split.us.i.i.i ], [ %i.cki, %bb.lh ] ; 2 uses
  %.098.us.i.i.i = phi i32 [ 0, %.lr.ph99.split.us.i.i.i ], [ %i.ckh, %bb.lh ]
  %i.ckd = getelementptr inbounds nuw [4 x i8], ptr %i.ckb, i64 %i.ckc
  %i.cke = load i32, ptr %i.ckd, align 4, !tbaa !110
  %i.ckf = icmp eq i32 %i.cke, -1
  br i1 %i.ckf, label %bb.lh, label %.split.us.i.i117.i

bb.lh:                                            ; preds = %bb.lg
  %i.ckg = getelementptr [2 x i8], ptr %i.cka, i64 %i.ckc
  store i16 %i.cbm, ptr %i.ckg, align 2, !tbaa !442
  %i.ckh = add i32 %.098.us.i.i.i, 1              ; 2 uses
  %i.cki = zext i32 %i.ckh to i64                 ; 2 uses
  %i.ckj = icmp samesign ugt i64 %i.cbg, %i.cki
  br i1 %i.ckj, label %bb.lg, label %._crit_edge.i.i104.i, !llvm.loop !836

._crit_edge.i.i104.i:                             ; preds = %_ZL10llama_castItfET_T0_.exit.i.i115.i, %bb.lh, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i103.i
  %i.ckk = add i32 %.059105.i.i.i, 1              ; 2 uses
  %i.ckl = zext i32 %i.ckk to i64
  %i.ckm = icmp sgt i64 %i.cbk, %i.ckl
  br i1 %i.ckm, label %bb.kp, label %._crit_edge108.i.i.i, !llvm.loop !837

bb.li:                                            ; preds = %bb.kq
  %i.ckn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i90.i

bb.lj:                                            ; preds = %.loopexit.i.i.i.i97.i
  %i.cko = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i90.i

.lr.ph99.split.i.i.i:                             ; preds = %.lr.ph99.i.i.i, %_ZL10llama_castItfET_T0_.exit.i.i115.i
  %i.ckp = phi i64 [ %i.clf, %_ZL10llama_castItfET_T0_.exit.i.i115.i ], [ 0, %.lr.ph99.i.i.i ] ; 3 uses
  %.098.i.i.i = phi i32 [ %i.cle, %_ZL10llama_castItfET_T0_.exit.i.i115.i ], [ 0, %.lr.ph99.i.i.i ]
end_hunk_3
begin_hunk_4_@_ZL22set_input_kq_mask_implItLb0EEvRK22args_set_input_kq_maskPT_:bb.a
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.i.i.i.epil.init
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !110
  %i.dh = load i32, ptr %i.de, align 4, !tbaa !110
  %i.di = tail call i32 @llvm.smin.i32(i32 %i.dg, i32 %i.dh)
  store i32 %i.di, ptr %i.de, align 4, !tbaa !110
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.epil.preheader, %.preheader.i.i.i.loopexit.unr-lcssa, %vector.ph1573
  %i.dj = icmp sgt i64 %i.ac, 0
  br i1 %i.dj, label %.lr.ph127.i.i.i, label %_ZL22set_input_kq_mask_implItLb0ELb1ELb1ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i

.lr.ph127.i.i.i:                                  ; preds = %.preheader.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %24, i64 48 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.dp = getelementptr inbounds nuw i8, ptr %25, i64 48 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %25, i64 40 ; 3 uses
  %i.du = icmp sgt i64 %i.ae, 0
  %i.dv = trunc i64 %i.ae to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dy = icmp sgt i64 %i.aa, 0
  %i.dz = sdiv i32 %i.y, 2                        ; 2 uses
  %i.ea = sub nsw i32 0, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 3 uses
  br label %bb.d

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i:             ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i ] ; 4 uses
  %niter1901 = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter1901.next.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i ]
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i.i.i
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !336
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !110
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.i.i.i
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !110
  %i.ej = load i32, ptr %i.eg, align 4, !tbaa !110
  %i.ek = tail call i32 @llvm.smin.i32(i32 %i.ei, i32 %i.ej)
  store i32 %i.ek, ptr %i.eg, align 4, !tbaa !110
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next.i.i.i
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !336
  %i.en = load i32, ptr %i.em, align 4, !tbaa !110
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.eo ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next.i.i.i
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !110
  %i.es = load i32, ptr %i.ep, align 4, !tbaa !110
  %i.et = tail call i32 @llvm.smin.i32(i32 %i.er, i32 %i.es)
  store i32 %i.et, ptr %i.ep, align 4, !tbaa !110
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter1901.next.1 = add i64 %niter1901, 2       ; 2 uses
  %niter1901.ncmp.1 = icmp eq i64 %niter1901.next.1, %unroll_iter1900
  br i1 %niter1901.ncmp.1, label %.preheader.i.i.i.loopexit.unr-lcssa, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i, !llvm.loop !842

bb.d:                                             ; preds = %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i, %.lr.ph127.i.i.i
  %.073126.i.i.i = phi i32 [ 0, %.lr.ph127.i.i.i ], [ %i.ft, %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  store ptr %i.dk, ptr %24, align 8, !tbaa !437
  store i64 1, ptr %i.dl, align 8, !tbaa !438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dn, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  store ptr %i.dp, ptr %25, align 8, !tbaa !392
  store i64 1, ptr %i.dq, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ds, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false)
  br i1 %i.du, label %.lr.ph124.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i

.lr.ph124.i.i.i:                                  ; preds = %bb.d
  %i.eu = mul i32 %.073126.i.i.i, %i.dv
  br label %bb.h

._crit_edge125.i.i.i:                             ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.dr, align 8, !tbaa !401 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %._crit_edge125.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ev, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i, %._crit_edge125.i.i.i ] ; 4 uses
  %i.ev = load ptr, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !157 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !275
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ex to i64
  %i.fc = sub i64 %i.fa, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fc) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i, i64 noundef 40) #31
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !38

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i, %._crit_edge125.i.i.i, %bb.d
  %i.fd = load ptr, ptr %25, align 8, !tbaa !392
  %i.fe = load i64, ptr %i.dq, align 8, !tbaa !393
  %i.ff = shl i64 %i.fe, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fd, i8 0, i64 %i.ff, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i8 0, i64 16, i1 false)
  %i.fg = load ptr, ptr %25, align 8, !tbaa !392  ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.dp
  br i1 %i.fh, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  %i.fi = load i64, ptr %i.dq, align 8, !tbaa !393
  %i.fj = shl i64 %i.fi, 3
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #31
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i: ; preds = %bb.f, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  %i.fk = load ptr, ptr %i.dm, align 8, !tbaa !439 ; 2 uses
  %.not5.i.i.i.i81.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not5.i.i.i.i81.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i82.i.i.i

.lr.ph.i.i.i.i82.i.i.i:                           ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i, %.lr.ph.i.i.i.i82.i.i.i
  %.06.i.i.i.i83.i.i.i = phi ptr [ %i.fl, %.lr.ph.i.i.i.i82.i.i.i ], [ %i.fk, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i ] ; 2 uses
  %i.fl = load ptr, ptr %.06.i.i.i.i83.i.i.i, align 8, !tbaa !157 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i83.i.i.i, i64 noundef 16) #31
  %.not.i.i.i.i84.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i84.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i82.i.i.i, !llvm.loop !41

_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i82.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i
  %i.fm = load ptr, ptr %24, align 8, !tbaa !437
  %i.fn = load i64, ptr %i.dl, align 8, !tbaa !438
  %i.fo = shl i64 %i.fn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fm, i8 0, i64 %i.fo, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i8 0, i64 16, i1 false)
  %i.fp = load ptr, ptr %24, align 8, !tbaa !437  ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.dk
  br i1 %i.fq, label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  %i.fr = load i64, ptr %i.dl, align 8, !tbaa !438
  %i.fs = shl i64 %i.fr, 3
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #31
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i

_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i: ; preds = %bb.g, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.ft = add i32 %.073126.i.i.i, 1               ; 2 uses
  %i.fu = zext i32 %i.ft to i64
  %i.fv = icmp sgt i64 %i.ac, %i.fu
  br i1 %i.fv, label %bb.d, label %_ZL22set_input_kq_mask_implItLb0ELb1ELb1ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i, !llvm.loop !843

bb.h:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph124.i.i.i
  %.071122.i.i.i = phi i32 [ 0, %.lr.ph124.i.i.i ], [ %i.jh, %._crit_edge.i.i.i ] ; 2 uses
  %i.fw = add i32 %.071122.i.i.i, %i.eu
  %i.fx = load ptr, ptr %i.k, align 8, !tbaa !327 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 56
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !363
  %i.ga = zext i32 %i.fw to i64                   ; 3 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.ga
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !336
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !110
  %.fr130.i.i.i = freeze i32 %i.gd                ; 5 uses
  %i.ge = sext i32 %.fr130.i.i.i to i64           ; 7 uses
  %i.gf = load ptr, ptr %i.w, align 8, !tbaa !120
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.ge
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !110
  %i.gi = zext i32 %i.gh to i64                   ; 3 uses
  %i.gj = load ptr, ptr %i.dw, align 8, !tbaa !153
  %i.gk = load ptr, ptr %i.u, align 8, !tbaa !123 ; 2 uses
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = sdiv exact i64 %i.gn, 12440             ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.go, %i.gi
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.101, i64 noundef %i.gi, i64 noundef %i.go) #29
          to label %.noexc.i.i.i unwind label %bb.z

.noexc.i.i.i:                                     ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.gp = getelementptr inbounds nuw [12440 x i8], ptr %i.gk, i64 %i.gi ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !366
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.ga
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !110 ; 5 uses
  %i.gu = mul nsw i64 %i.aa, %i.ga
  %i.gv = load i64, ptr %i.dq, align 8, !tbaa !393 ; 3 uses
  %i.gw = urem i64 %i.ge, %i.gv                   ; 3 uses
  %i.gx = load ptr, ptr %25, align 8, !tbaa !392
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gw
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i85.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i85.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !157 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !110
  %i.hd = icmp eq i32 %.fr130.i.i.i, %i.hc
  br i1 %i.hd, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i, label %.lr.ph.i.i.i.i86.i.i.i

bb.l:                                             ; preds = %bb.m
  %i.he = icmp eq i32 %.fr130.i.i.i, %i.hh
  br i1 %i.he, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i, label %.lr.ph.i.i.i.i86.i.i.i, !llvm.loop !37

.lr.ph.i.i.i.i86.i.i.i:                           ; preds = %bb.k, %bb.l
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.hf, %bb.l ], [ %i.ha, %bb.k ]
  %i.hf = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !157 ; 3 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.hf, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i86.i.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !110 ; 2 uses
  %i.hi = sext i32 %i.hh to i64
  %i.hj = urem i64 %i.hi, %i.gv
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.hj, %i.gw
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.l, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !37

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.m
  br label %.loopexit.i.i.i.i.i, !llvm.loop !37

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i86.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  store ptr %25, ptr %23, align 8, !tbaa !397
  %i.hk = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc87.i.i.i unwind label %bb.aa ; 9 uses

.noexc87.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i
  store ptr null, ptr %i.hk, align 8, !tbaa !157
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store i32 %.fr130.i.i.i, ptr %i.hl, align 8, !tbaa !399
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i8 0, i64 24, i1 false)
  store ptr %i.hk, ptr %i.dx, align 8, !tbaa !400
  %i.hn = load i64, ptr %i.dt, align 8, !tbaa !431
  %i.ho = load i64, ptr %i.eb, align 8, !tbaa !440
  %i.hp = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i64 noundef %i.gv, i64 noundef %i.ho, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.x ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc87.i.i.i
  %i.hq = extractvalue { i8, i64 } %i.hp, 0
  %i.hr = trunc i8 %i.hq to i1
  br i1 %i.hr, label %bb.n, label %bb.s

bb.n:                                             ; preds = %.noexc.i.i
  %i.hs = extractvalue { i8, i64 } %i.hp, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %25, i64 noundef %i.hs)
          to label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  %i.hv = call ptr @__cxa_begin_catch(ptr %i.hu) #30 ; 0 uses
  store i64 %i.hn, ptr %i.dt, align 8, !tbaa !431
  invoke void @__cxa_rethrow() #29
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #33
  unreachable

bb.r:                                             ; preds = %bb.o
  unreachable

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i: ; preds = %bb.n
  %i.hz = load i64, ptr %i.dq, align 8, !tbaa !393
  %i.ia = urem i64 %i.ge, %i.hz
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i, %.noexc.i.i
  %.0.i.i.i = phi i64 [ %i.ia, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i ], [ %i.gw, %.noexc.i.i ]
  %i.ib = load ptr, ptr %25, align 8, !tbaa !392  ; 2 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %.0.i.i.i ; 3 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !156 ; 2 uses
  %.not.i.i49.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i49.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !157
  store ptr %i.ie, ptr %i.hk, align 8, !tbaa !157
  %i.if = load ptr, ptr %i.ic, align 8, !tbaa !156
  store ptr %i.hk, ptr %i.if, align 8, !tbaa !157
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ig = load ptr, ptr %i.dr, align 8, !tbaa !401 ; 3 uses
  store ptr %i.ig, ptr %i.hk, align 8, !tbaa !157
  store ptr %i.hk, ptr %i.dr, align 8, !tbaa !401
  %.not11.i.i.i.i = icmp eq ptr %i.ig, null
  br i1 %.not11.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i64, ptr %i.dq, align 8, !tbaa !393
  %i.ij = load i32, ptr %i.ih, align 4, !tbaa !110
  %i.ik = sext i32 %i.ij to i64
  %i.il = urem i64 %i.ik, %i.ii
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.il
  store ptr %i.hk, ptr %i.im, align 8, !tbaa !156
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store ptr %i.dr, ptr %i.ic, align 8, !tbaa !156
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i: ; preds = %bb.w, %bb.t
  %i.in = load i64, ptr %i.eb, align 8, !tbaa !440
  %i.io = add i64 %i.in, 1
  store i64 %i.io, ptr %i.eb, align 8, !tbaa !440
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i

bb.x:                                             ; preds = %.noexc87.i.i.i
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.x, %bb.p
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ip, %bb.x ], [ %i.hw, %bb.p ]
  call void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %.body.i.i.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i: ; preds = %bb.l, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i, %bb.k
  br i1 %i.dy, label %.lr.ph116.i.i.i, label %._crit_edge.i.i.i

.lr.ph116.i.i.i:                                  ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gp, i64 56 ; 2 uses
  %i.ir = icmp ugt i32 %.fr130.i.i.i, 255
  %i.is = getelementptr inbounds nuw i8, ptr %i.gp, i64 128
  %i.it = lshr i64 %i.ge, 6
  %i.iu = and i64 %i.ge, 63
  %i.iv = shl nuw i64 1, %i.iu
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ge
  %i.ix = getelementptr [2 x i8], ptr %1, i64 %i.gu ; 2 uses
  br i1 %i.ir, label %.lr.ph116.split.us.i.i.i, label %.lr.ph116.split.i.i.i

.lr.ph116.split.us.i.i.i:                         ; preds = %.lr.ph116.i.i.i
  %i.iy = load ptr, ptr %i.iq, align 8, !tbaa !126
  br label %bb.y

bb.y:                                             ; preds = %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i.i, %.lr.ph116.split.us.i.i.i
  %i.iz = phi i64 [ 0, %.lr.ph116.split.us.i.i.i ], [ %i.jf, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i.i ] ; 2 uses
  %.0115.us.i.i.i = phi i32 [ 0, %.lr.ph116.split.us.i.i.i ], [ %i.je, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i.i ]
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !110
  %i.jc = icmp eq i32 %i.jb, -1
  br i1 %i.jc, label %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i.i, label %.split.us.i.i.i

_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i.i: ; preds = %bb.y
  %i.jd = getelementptr [2 x i8], ptr %i.ix, i64 %i.iz
  store i16 %i.ag, ptr %i.jd, align 2, !tbaa !442
  %i.je = add i32 %.0115.us.i.i.i, 1              ; 2 uses
  %i.jf = zext i32 %i.je to i64                   ; 2 uses
  %i.jg = icmp samesign ugt i64 %i.aa, %i.jf
  br i1 %i.jg, label %bb.y, label %._crit_edge.i.i.i, !llvm.loop !844

._crit_edge.i.i.i:                                ; preds = %_ZL10llama_castItfET_T0_.exit.i.i.i, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i
  %i.jh = add i32 %.071122.i.i.i, 1               ; 2 uses
  %i.ji = zext i32 %i.jh to i64
  %i.jj = icmp sgt i64 %i.ae, %i.ji
  br i1 %i.jj, label %bb.h, label %._crit_edge125.i.i.i, !llvm.loop !845

bb.z:                                             ; preds = %bb.i
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.aa:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.lr.ph116.split.i.i.i:                            ; preds = %.lr.ph116.i.i.i, %_ZL10llama_castItfET_T0_.exit.i.i.i
  %i.jm = phi i64 [ %i.ko, %_ZL10llama_castItfET_T0_.exit.i.i.i ], [ 0, %.lr.ph116.i.i.i ] ; 3 uses
end_hunk_4
begin_hunk_5_@_ZL22set_input_kq_mask_implItLb0EEvRK22args_set_input_kq_maskPT_:bb.a
  %i.act = sext i32 %i.acs to i64
  %i.acu = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.act ; 2 uses
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.aco, i64 %indvars.iv.i.i105.i.epil.init
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !110
  %i.acx = load i32, ptr %i.acu, align 4, !tbaa !110
  %i.acy = tail call i32 @llvm.smin.i32(i32 %i.acw, i32 %i.acx)
  store i32 %i.acy, ptr %i.acu, align 4, !tbaa !110
  br label %.preheader.i.i108.i

.preheader.i.i108.i:                              ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i104.i.epil.preheader, %.preheader.i.i108.i.loopexit.unr-lcssa, %vector.ph1563
  %i.acz = icmp sgt i64 %i.ac, 0
  br i1 %i.acz, label %.lr.ph121.i.i.i, label %_ZL22set_input_kq_mask_implItLb0ELb1ELb0ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i

.lr.ph121.i.i.i:                                  ; preds = %.preheader.i.i108.i
  %i.ada = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.add = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.ade = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.adf = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 6 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 3 uses
  %i.adk = icmp sgt i64 %i.ae, 0
  %i.adl = trunc i64 %i.ae to i32
  %i.adm = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.adn = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ado = icmp sgt i64 %i.aa, 0
  %i.adp = sdiv i32 %i.y, 2                       ; 2 uses
  %i.adq = sub nsw i32 0, %i.adp
  %i.adr = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 3 uses
  br label %bb.cz

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i104.i:          ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i104.i, %.lr.ph.i.i102.i.new
  %indvars.iv.i.i105.i = phi i64 [ 0, %.lr.ph.i.i102.i.new ], [ %indvars.iv.next.i.i106.i.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i104.i ] ; 4 uses
  %niter1891 = phi i64 [ 0, %.lr.ph.i.i102.i.new ], [ %niter1891.next.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i104.i ]
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %i.acm, i64 %indvars.iv.i.i105.i
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !336
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !110
  %i.adv = sext i32 %i.adu to i64
  %i.adw = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.adv ; 2 uses
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.aco, i64 %indvars.iv.i.i105.i
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !110
  %i.adz = load i32, ptr %i.adw, align 4, !tbaa !110
  %i.aea = tail call i32 @llvm.smin.i32(i32 %i.ady, i32 %i.adz)
  store i32 %i.aea, ptr %i.adw, align 4, !tbaa !110
  %indvars.iv.next.i.i106.i = or disjoint i64 %indvars.iv.i.i105.i, 1 ; 2 uses
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.acm, i64 %indvars.iv.next.i.i106.i
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !336
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !110
  %i.aee = sext i32 %i.aed to i64
  %i.aef = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.aee ; 2 uses
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.aco, i64 %indvars.iv.next.i.i106.i
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !110
  %i.aei = load i32, ptr %i.aef, align 4, !tbaa !110
  %i.aej = tail call i32 @llvm.smin.i32(i32 %i.aeh, i32 %i.aei)
  store i32 %i.aej, ptr %i.aef, align 4, !tbaa !110
  %indvars.iv.next.i.i106.i.1 = add nuw nsw i64 %indvars.iv.i.i105.i, 2 ; 2 uses
  %niter1891.next.1 = add i64 %niter1891, 2       ; 2 uses
  %niter1891.ncmp.1 = icmp eq i64 %niter1891.next.1, %unroll_iter1890
  br i1 %niter1891.ncmp.1, label %.preheader.i.i108.i.loopexit.unr-lcssa, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i104.i, !llvm.loop !850

bb.cz:                                            ; preds = %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i112.i, %.lr.ph121.i.i.i
  %.067120.i.i.i = phi i32 [ 0, %.lr.ph121.i.i.i ], [ %i.afj, %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i112.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  store ptr %i.ada, ptr %18, align 8, !tbaa !437
  store i64 1, ptr %i.adb, align 8, !tbaa !438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.adc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.add, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ade, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  store ptr %i.adf, ptr %19, align 8, !tbaa !392
  store i64 1, ptr %i.adg, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.adh, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.adi, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.adj, i8 0, i64 16, i1 false)
  br i1 %i.adk, label %.lr.ph118.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i

.lr.ph118.i.i.i:                                  ; preds = %bb.cz
  %i.aek = mul i32 %.067120.i.i.i, %i.adl
  br label %bb.dd

._crit_edge119.i.i.i:                             ; preds = %._crit_edge.i.i129.i
  %.pre.i.i130.i = load ptr, ptr %i.adh, align 8, !tbaa !401 ; 2 uses
  %.not5.i.i.i.i.i.i131.i = icmp eq ptr %.pre.i.i130.i, null
  br i1 %.not5.i.i.i.i.i.i131.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i, label %.lr.ph.i.i.i.i.i.i132.i

.lr.ph.i.i.i.i.i.i132.i:                          ; preds = %._crit_edge119.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i135.i
  %.06.i.i.i.i.i.i133.i = phi ptr [ %i.ael, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i135.i ], [ %.pre.i.i130.i, %._crit_edge119.i.i.i ] ; 4 uses
  %i.ael = load ptr, ptr %.06.i.i.i.i.i.i133.i, align 8, !tbaa !157 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i133.i, i64 16
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i134.i = icmp eq ptr %i.aen, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i134.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i135.i, label %bb.da

bb.da:                                            ; preds = %.lr.ph.i.i.i.i.i.i132.i
  %i.aeo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i133.i, i64 32
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !275
  %i.aeq = ptrtoint ptr %i.aep to i64
  %i.aer = ptrtoint ptr %i.aen to i64
  %i.aes = sub i64 %i.aeq, %i.aer
  call void @_ZdlPvm(ptr noundef nonnull %i.aen, i64 noundef %i.aes) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i135.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i135.i: ; preds = %bb.da, %.lr.ph.i.i.i.i.i.i132.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i133.i, i64 noundef 40) #31
  %.not.i.i.i.i.i.i136.i = icmp eq ptr %i.ael, null
  br i1 %.not.i.i.i.i.i.i136.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i, label %.lr.ph.i.i.i.i.i.i132.i, !llvm.loop !38

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i135.i, %._crit_edge119.i.i.i, %bb.cz
  %i.aet = load ptr, ptr %19, align 8, !tbaa !392
  %i.aeu = load i64, ptr %i.adg, align 8, !tbaa !393
  %i.aev = shl i64 %i.aeu, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aet, i8 0, i64 %i.aev, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.adh, i8 0, i64 16, i1 false)
  %i.aew = load ptr, ptr %19, align 8, !tbaa !392 ; 2 uses
  %i.aex = icmp eq ptr %i.aew, %i.adf
  br i1 %i.aex, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i110.i, label %bb.db

bb.db:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i
  %i.aey = load i64, ptr %i.adg, align 8, !tbaa !393
  %i.aez = shl i64 %i.aey, 3
  call void @_ZdlPvm(ptr noundef %i.aew, i64 noundef %i.aez) #31
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i110.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i110.i: ; preds = %bb.db, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  %i.afa = load ptr, ptr %i.adc, align 8, !tbaa !439 ; 2 uses
  %.not5.i.i.i.i75.i.i.i = icmp eq ptr %i.afa, null
  br i1 %.not5.i.i.i.i75.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i111.i, label %.lr.ph.i.i.i.i76.i.i.i

.lr.ph.i.i.i.i76.i.i.i:                           ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i110.i, %.lr.ph.i.i.i.i76.i.i.i
  %.06.i.i.i.i77.i.i.i = phi ptr [ %i.afb, %.lr.ph.i.i.i.i76.i.i.i ], [ %i.afa, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i110.i ] ; 2 uses
  %i.afb = load ptr, ptr %.06.i.i.i.i77.i.i.i, align 8, !tbaa !157 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i77.i.i.i, i64 noundef 16) #31
  %.not.i.i.i.i78.i.i.i = icmp eq ptr %i.afb, null
  br i1 %.not.i.i.i.i78.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i111.i, label %.lr.ph.i.i.i.i76.i.i.i, !llvm.loop !41

_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i111.i: ; preds = %.lr.ph.i.i.i.i76.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i110.i
  %i.afc = load ptr, ptr %18, align 8, !tbaa !437
  %i.afd = load i64, ptr %i.adb, align 8, !tbaa !438
  %i.afe = shl i64 %i.afd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.afc, i8 0, i64 %i.afe, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.adc, i8 0, i64 16, i1 false)
  %i.aff = load ptr, ptr %18, align 8, !tbaa !437 ; 2 uses
  %i.afg = icmp eq ptr %i.aff, %i.ada
  br i1 %i.afg, label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i112.i, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i111.i
  %i.afh = load i64, ptr %i.adb, align 8, !tbaa !438
  %i.afi = shl i64 %i.afh, 3
  call void @_ZdlPvm(ptr noundef %i.aff, i64 noundef %i.afi) #31
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i112.i

_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i112.i: ; preds = %bb.dc, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i111.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  %i.afj = add i32 %.067120.i.i.i, 1              ; 2 uses
  %i.afk = zext i32 %i.afj to i64
  %i.afl = icmp sgt i64 %i.ac, %i.afk
  br i1 %i.afl, label %bb.cz, label %_ZL22set_input_kq_mask_implItLb0ELb1ELb0ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i, !llvm.loop !851

bb.dd:                                            ; preds = %._crit_edge.i.i129.i, %.lr.ph118.i.i.i
  %.065116.i.i.i = phi i32 [ 0, %.lr.ph118.i.i.i ], [ %i.aix, %._crit_edge.i.i129.i ] ; 2 uses
  %i.afm = add i32 %.065116.i.i.i, %i.aek
  %i.afn = load ptr, ptr %i.k, align 8, !tbaa !327 ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 56
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !363
  %i.afq = zext i32 %i.afm to i64                 ; 3 uses
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %i.afp, i64 %i.afq
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !336
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !110
  %.fr124.i.i.i = freeze i32 %i.aft               ; 5 uses
  %i.afu = sext i32 %.fr124.i.i.i to i64          ; 7 uses
  %i.afv = load ptr, ptr %i.w, align 8, !tbaa !120
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %i.afu
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !110
  %i.afy = zext i32 %i.afx to i64                 ; 3 uses
  %i.afz = load ptr, ptr %i.adm, align 8, !tbaa !153
  %i.aga = load ptr, ptr %i.u, align 8, !tbaa !123 ; 2 uses
  %i.agb = ptrtoint ptr %i.afz to i64
  %i.agc = ptrtoint ptr %i.aga to i64
  %i.agd = sub i64 %i.agb, %i.agc
  %i.age = sdiv exact i64 %i.agd, 12440           ; 2 uses
  %.not.i.i.i.i113.i = icmp ugt i64 %i.age, %i.afy
  br i1 %.not.i.i.i.i113.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.101, i64 noundef %i.afy, i64 noundef %i.age) #29
          to label %.noexc.i.i116.i unwind label %bb.dv

.noexc.i.i116.i:                                  ; preds = %bb.de
  unreachable

bb.df:                                            ; preds = %bb.dd
  %i.agf = getelementptr inbounds nuw [12440 x i8], ptr %i.aga, i64 %i.afy ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.afn, i64 40
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !366
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %i.agh, i64 %i.afq
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !110 ; 5 uses
  %i.agk = mul nsw i64 %i.aa, %i.afq
  %i.agl = load i64, ptr %i.adg, align 8, !tbaa !393 ; 3 uses
  %i.agm = urem i64 %i.afu, %i.agl                ; 3 uses
  %i.agn = load ptr, ptr %19, align 8, !tbaa !392
  %i.ago = getelementptr inbounds nuw [8 x i8], ptr %i.agn, i64 %i.agm
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i79.i.i.i = icmp eq ptr %i.agp, null
  br i1 %.not.i.i.i.i79.i.i.i, label %.loopexit.i.i.i.i121.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !157 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 8
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !110
  %i.agt = icmp eq i32 %.fr124.i.i.i, %i.ags
  br i1 %i.agt, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i128.i, label %.lr.ph.i.i.i.i80.i.i.i

bb.dh:                                            ; preds = %bb.di
  %i.agu = icmp eq i32 %.fr124.i.i.i, %i.agx
  br i1 %i.agu, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i128.i, label %.lr.ph.i.i.i.i80.i.i.i, !llvm.loop !37

.lr.ph.i.i.i.i80.i.i.i:                           ; preds = %bb.dg, %bb.dh
  %.020.i.i.i.i.i.i117.i = phi ptr [ %i.agv, %bb.dh ], [ %i.agq, %bb.dg ]
  %i.agv = load ptr, ptr %.020.i.i.i.i.i.i117.i, align 8, !tbaa !157 ; 3 uses
  %.not18.i.i.i.i.i.i118.i = icmp eq ptr %i.agv, null
  br i1 %.not18.i.i.i.i.i.i118.i, label %.loopexit.i.i.i.i121.i, label %bb.di

bb.di:                                            ; preds = %.lr.ph.i.i.i.i80.i.i.i
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 8
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !110 ; 2 uses
  %i.agy = sext i32 %i.agx to i64
  %i.agz = urem i64 %i.agy, %i.agl
  %.not19.i.i.i.i.i.i119.i = icmp eq i64 %i.agz, %i.agm
  br i1 %.not19.i.i.i.i.i.i119.i, label %bb.dh, label %..loopexit_crit_edge21.i.i.i.i.i.i120.i, !llvm.loop !37

..loopexit_crit_edge21.i.i.i.i.i.i120.i:          ; preds = %bb.di
  br label %.loopexit.i.i.i.i121.i, !llvm.loop !37

.loopexit.i.i.i.i121.i:                           ; preds = %.lr.ph.i.i.i.i80.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i120.i, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  store ptr %19, ptr %17, align 8, !tbaa !397
  %i.aha = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc81.i.i.i unwind label %bb.dw ; 9 uses

.noexc81.i.i.i:                                   ; preds = %.loopexit.i.i.i.i121.i
  store ptr null, ptr %i.aha, align 8, !tbaa !157
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  store i32 %.fr124.i.i.i, ptr %i.ahb, align 8, !tbaa !399
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.aha, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahc, i8 0, i64 24, i1 false)
  store ptr %i.aha, ptr %i.adn, align 8, !tbaa !400
  %i.ahd = load i64, ptr %i.adj, align 8, !tbaa !431
  %i.ahe = load i64, ptr %i.adr, align 8, !tbaa !440
  %i.ahf = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.adi, i64 noundef %i.agl, i64 noundef %i.ahe, i64 noundef 1)
          to label %.noexc.i124.i unwind label %bb.dt ; 2 uses

.noexc.i124.i:                                    ; preds = %.noexc81.i.i.i
  %i.ahg = extractvalue { i8, i64 } %i.ahf, 0
  %i.ahh = trunc i8 %i.ahg to i1
  br i1 %i.ahh, label %bb.dj, label %bb.do

bb.dj:                                            ; preds = %.noexc.i124.i
  %i.ahi = extractvalue { i8, i64 } %i.ahf, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %19, i64 noundef %i.ahi)
          to label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i151.i unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ahj = landingpad { ptr, i32 }
          catch ptr null
  %i.ahk = extractvalue { ptr, i32 } %i.ahj, 0
  %i.ahl = call ptr @__cxa_begin_catch(ptr %i.ahk) #30 ; 0 uses
  store i64 %i.ahd, ptr %i.adj, align 8, !tbaa !431
  invoke void @__cxa_rethrow() #29
          to label %bb.dn unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ahm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i122.i unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ahn = landingpad { ptr, i32 }
          catch ptr null
  %i.aho = extractvalue { ptr, i32 } %i.ahn, 0
  call void @__clang_call_terminate(ptr %i.aho) #33
  unreachable

bb.dn:                                            ; preds = %bb.dk
  unreachable

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i151.i: ; preds = %bb.dj
  %i.ahp = load i64, ptr %i.adg, align 8, !tbaa !393
  %i.ahq = urem i64 %i.afu, %i.ahp
  br label %bb.do

bb.do:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i151.i, %.noexc.i124.i
  %.0.i.i125.i = phi i64 [ %i.ahq, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i151.i ], [ %i.agm, %.noexc.i124.i ]
  %i.ahr = load ptr, ptr %19, align 8, !tbaa !392 ; 2 uses
  %i.ahs = getelementptr inbounds nuw [8 x i8], ptr %i.ahr, i64 %.0.i.i125.i ; 3 uses
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !156 ; 2 uses
  %.not.i.i49.i126.i = icmp eq ptr %i.aht, null
  br i1 %.not.i.i49.i126.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !157
  store ptr %i.ahu, ptr %i.aha, align 8, !tbaa !157
  %i.ahv = load ptr, ptr %i.ahs, align 8, !tbaa !156
  store ptr %i.aha, ptr %i.ahv, align 8, !tbaa !157
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i127.i

bb.dq:                                            ; preds = %bb.do
  %i.ahw = load ptr, ptr %i.adh, align 8, !tbaa !401 ; 3 uses
  store ptr %i.ahw, ptr %i.aha, align 8, !tbaa !157
  store ptr %i.aha, ptr %i.adh, align 8, !tbaa !401
  %.not11.i.i.i150.i = icmp eq ptr %i.ahw, null
  br i1 %.not11.i.i.i150.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 8
  %i.ahy = load i64, ptr %i.adg, align 8, !tbaa !393
  %i.ahz = load i32, ptr %i.ahx, align 4, !tbaa !110
  %i.aia = sext i32 %i.ahz to i64
  %i.aib = urem i64 %i.aia, %i.ahy
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %i.ahr, i64 %i.aib
  store ptr %i.aha, ptr %i.aic, align 8, !tbaa !156
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  store ptr %i.adh, ptr %i.ahs, align 8, !tbaa !156
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i127.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i127.i: ; preds = %bb.ds, %bb.dp
  %i.aid = load i64, ptr %i.adr, align 8, !tbaa !440
  %i.aie = add i64 %i.aid, 1
  store i64 %i.aie, ptr %i.adr, align 8, !tbaa !440
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i128.i

bb.dt:                                            ; preds = %.noexc81.i.i.i
  %i.aif = landingpad { ptr, i32 }
          cleanup
  br label %.body.i122.i

.body.i122.i:                                     ; preds = %bb.dt, %bb.dl
  %eh.lpad-body.i123.i = phi { ptr, i32 } [ %i.aif, %bb.dt ], [ %i.ahm, %bb.dl ]
  call void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %.body.i.i114.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i128.i: ; preds = %bb.dh, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i127.i, %bb.dg
  br i1 %i.ado, label %.lr.ph110.i.i.i, label %._crit_edge.i.i129.i

.lr.ph110.i.i.i:                                  ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i128.i
  %i.aig = getelementptr inbounds nuw i8, ptr %i.agf, i64 56 ; 2 uses
  %i.aih = icmp ugt i32 %.fr124.i.i.i, 255
  %i.aii = getelementptr inbounds nuw i8, ptr %i.agf, i64 128
  %i.aij = lshr i64 %i.afu, 6
  %i.aik = and i64 %i.afu, 63
  %i.ail = shl nuw i64 1, %i.aik
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.afu
  %i.ain = getelementptr [2 x i8], ptr %1, i64 %i.agk ; 2 uses
  br i1 %i.aih, label %.lr.ph110.split.us.i.i.i, label %.lr.ph110.split.i.i.i

.lr.ph110.split.us.i.i.i:                         ; preds = %.lr.ph110.i.i.i
  %i.aio = load ptr, ptr %i.aig, align 8, !tbaa !126
  br label %bb.du

bb.du:                                            ; preds = %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i149.i, %.lr.ph110.split.us.i.i.i
  %i.aip = phi i64 [ 0, %.lr.ph110.split.us.i.i.i ], [ %i.aiv, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i149.i ] ; 2 uses
  %.0109.us.i.i.i = phi i32 [ 0, %.lr.ph110.split.us.i.i.i ], [ %i.aiu, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i149.i ]
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.aio, i64 %i.aip
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !110
  %i.ais = icmp eq i32 %i.air, -1
  br i1 %i.ais, label %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i149.i, label %.split.us.i.i146.i

_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i149.i: ; preds = %bb.du
  %i.ait = getelementptr [2 x i8], ptr %i.ain, i64 %i.aip
  store i16 %i.ag, ptr %i.ait, align 2, !tbaa !442
  %i.aiu = add i32 %.0109.us.i.i.i, 1             ; 2 uses
  %i.aiv = zext i32 %i.aiu to i64                 ; 2 uses
  %i.aiw = icmp samesign ugt i64 %i.aa, %i.aiv
  br i1 %i.aiw, label %bb.du, label %._crit_edge.i.i129.i, !llvm.loop !852

._crit_edge.i.i129.i:                             ; preds = %_ZL10llama_castItfET_T0_.exit.i.i142.i, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i149.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i128.i
  %i.aix = add i32 %.065116.i.i.i, 1              ; 2 uses
  %i.aiy = zext i32 %i.aix to i64
  %i.aiz = icmp sgt i64 %i.ae, %i.aiy
  br i1 %i.aiz, label %bb.dd, label %._crit_edge119.i.i.i, !llvm.loop !853

bb.dv:                                            ; preds = %bb.de
  %i.aja = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i114.i

bb.dw:                                            ; preds = %.loopexit.i.i.i.i121.i
  %i.ajb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i114.i

.lr.ph110.split.i.i.i:                            ; preds = %.lr.ph110.i.i.i, %_ZL10llama_castItfET_T0_.exit.i.i142.i
  %i.ajc = phi i64 [ %i.ake, %_ZL10llama_castItfET_T0_.exit.i.i142.i ], [ 0, %.lr.ph110.i.i.i ] ; 3 uses
end_hunk_5
begin_hunk_6_@_ZL22set_input_kq_mask_implItLb0EEvRK22args_set_input_kq_maskPT_:bb.a
  %i.bcp = load ptr, ptr %i.bco, align 8, !tbaa !336
  %i.bcq = load i32, ptr %i.bcp, align 4, !tbaa !110
  %i.bcr = sext i32 %i.bcq to i64
  %i.bcs = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bcr ; 2 uses
  %i.bct = getelementptr inbounds nuw [4 x i8], ptr %i.bcm, i64 %indvars.iv.i.i.i130.epil.init
  %i.bcu = load i32, ptr %i.bct, align 4, !tbaa !110
  %i.bcv = load i32, ptr %i.bcs, align 4, !tbaa !110
  %i.bcw = tail call i32 @llvm.smin.i32(i32 %i.bcu, i32 %i.bcv)
  store i32 %i.bcw, ptr %i.bcs, align 4, !tbaa !110
  br label %.preheader.i.i.i133

.preheader.i.i.i133:                              ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i129.epil.preheader, %.preheader.i.i.i133.loopexit.unr-lcssa, %vector.ph1593
  %i.bcx = icmp sgt i64 %i.azq, 0
  br i1 %i.bcx, label %.lr.ph192.i.i.i, label %_ZL22set_input_kq_mask_implItLb0ELb0ELb1ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i

.lr.ph192.i.i.i:                                  ; preds = %.preheader.i.i.i133
  %i.bcy = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 3 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.bdc = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.bdd = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 3 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 8 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 8 uses
  %i.bdg = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  %i.bdi = icmp sgt i64 %i.azs, 0
  %i.bdj = trunc i64 %i.azs to i32
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bdl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bdm = icmp sgt i64 %i.azo, 0
  %i.bdn = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  br label %bb.gw

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i129:          ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i129, %.lr.ph.i.i.i127.new
  %indvars.iv.i.i.i130 = phi i64 [ 0, %.lr.ph.i.i.i127.new ], [ %indvars.iv.next.i.i.i131.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i129 ] ; 4 uses
  %niter1921 = phi i64 [ 0, %.lr.ph.i.i.i127.new ], [ %niter1921.next.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i129 ]
  %i.bdo = getelementptr inbounds nuw [8 x i8], ptr %i.bck, i64 %indvars.iv.i.i.i130
  %i.bdp = load ptr, ptr %i.bdo, align 8, !tbaa !336
  %i.bdq = load i32, ptr %i.bdp, align 4, !tbaa !110
  %i.bdr = sext i32 %i.bdq to i64
  %i.bds = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bdr ; 2 uses
  %i.bdt = getelementptr inbounds nuw [4 x i8], ptr %i.bcm, i64 %indvars.iv.i.i.i130
  %i.bdu = load i32, ptr %i.bdt, align 4, !tbaa !110
  %i.bdv = load i32, ptr %i.bds, align 4, !tbaa !110
  %i.bdw = tail call i32 @llvm.smin.i32(i32 %i.bdu, i32 %i.bdv)
  store i32 %i.bdw, ptr %i.bds, align 4, !tbaa !110
  %indvars.iv.next.i.i.i131 = or disjoint i64 %indvars.iv.i.i.i130, 1 ; 2 uses
  %i.bdx = getelementptr inbounds nuw [8 x i8], ptr %i.bck, i64 %indvars.iv.next.i.i.i131
  %i.bdy = load ptr, ptr %i.bdx, align 8, !tbaa !336
  %i.bdz = load i32, ptr %i.bdy, align 4, !tbaa !110
  %i.bea = sext i32 %i.bdz to i64
  %i.beb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bea ; 2 uses
  %i.bec = getelementptr inbounds nuw [4 x i8], ptr %i.bcm, i64 %indvars.iv.next.i.i.i131
  %i.bed = load i32, ptr %i.bec, align 4, !tbaa !110
  %i.bee = load i32, ptr %i.beb, align 4, !tbaa !110
  %i.bef = tail call i32 @llvm.smin.i32(i32 %i.bed, i32 %i.bee)
  store i32 %i.bef, ptr %i.beb, align 4, !tbaa !110
  %indvars.iv.next.i.i.i131.1 = add nuw nsw i64 %indvars.iv.i.i.i130, 2 ; 2 uses
  %niter1921.next.1 = add i64 %niter1921, 2       ; 2 uses
  %niter1921.ncmp.1 = icmp eq i64 %niter1921.next.1, %unroll_iter1920
  br i1 %niter1921.ncmp.1, label %.preheader.i.i.i133.loopexit.unr-lcssa, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i129, !llvm.loop !858

bb.gw:                                            ; preds = %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i137, %.lr.ph192.i.i.i
  %.064191.i.i.i = phi i32 [ 0, %.lr.ph192.i.i.i ], [ %i.bff, %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i137 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  store ptr %i.bcy, ptr %12, align 8, !tbaa !437
  store i64 1, ptr %i.bcz, align 8, !tbaa !438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bda, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bdb, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  store ptr %i.bdd, ptr %13, align 8, !tbaa !392
  store i64 1, ptr %i.bde, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdf, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bdg, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdh, i8 0, i64 16, i1 false)
  br i1 %i.bdi, label %.lr.ph189.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i134

.lr.ph189.i.i.i:                                  ; preds = %bb.gw
  %i.beg = mul i32 %.064191.i.i.i, %i.bdj
  br label %bb.ha

._crit_edge190.i.i.i:                             ; preds = %._crit_edge.i.i.i156
  %.pre.i.i.i157 = load ptr, ptr %i.bdf, align 8, !tbaa !401 ; 2 uses
  %.not5.i.i.i.i.i.i.i158 = icmp eq ptr %.pre.i.i.i157, null
  br i1 %.not5.i.i.i.i.i.i.i158, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i134, label %.lr.ph.i.i.i.i.i.i.i159

.lr.ph.i.i.i.i.i.i.i159:                          ; preds = %._crit_edge190.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i162
  %.06.i.i.i.i.i.i.i160 = phi ptr [ %i.beh, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i162 ], [ %.pre.i.i.i157, %._crit_edge190.i.i.i ] ; 4 uses
  %i.beh = load ptr, ptr %.06.i.i.i.i.i.i.i160, align 8, !tbaa !157 ; 2 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i160, i64 16
  %i.bej = load ptr, ptr %i.bei, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i161 = icmp eq ptr %i.bej, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i161, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i162, label %bb.gx

bb.gx:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i159
  %i.bek = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i160, i64 32
  %i.bel = load ptr, ptr %i.bek, align 8, !tbaa !275
  %i.bem = ptrtoint ptr %i.bel to i64
  %i.ben = ptrtoint ptr %i.bej to i64
  %i.beo = sub i64 %i.bem, %i.ben
  call void @_ZdlPvm(ptr noundef nonnull %i.bej, i64 noundef %i.beo) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i162

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i162: ; preds = %bb.gx, %.lr.ph.i.i.i.i.i.i.i159
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i160, i64 noundef 40) #31
  %.not.i.i.i.i.i.i.i163 = icmp eq ptr %i.beh, null
  br i1 %.not.i.i.i.i.i.i.i163, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i134, label %.lr.ph.i.i.i.i.i.i.i159, !llvm.loop !38

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i134: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i162, %._crit_edge190.i.i.i, %bb.gw
  %i.bep = load ptr, ptr %13, align 8, !tbaa !392
  %i.beq = load i64, ptr %i.bde, align 8, !tbaa !393
  %i.ber = shl i64 %i.beq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bep, i8 0, i64 %i.ber, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdf, i8 0, i64 16, i1 false)
  %i.bes = load ptr, ptr %13, align 8, !tbaa !392 ; 2 uses
  %i.bet = icmp eq ptr %i.bes, %i.bdd
  br i1 %i.bet, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i135, label %bb.gy

bb.gy:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i134
  %i.beu = load i64, ptr %i.bde, align 8, !tbaa !393
  %i.bev = shl i64 %i.beu, 3
  call void @_ZdlPvm(ptr noundef %i.bes, i64 noundef %i.bev) #31
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i135

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i135: ; preds = %bb.gy, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.bew = load ptr, ptr %i.bda, align 8, !tbaa !439 ; 2 uses
  %.not5.i.i.i.i72.i.i.i = icmp eq ptr %i.bew, null
  br i1 %.not5.i.i.i.i72.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i136, label %.lr.ph.i.i.i.i73.i.i.i

.lr.ph.i.i.i.i73.i.i.i:                           ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i135, %.lr.ph.i.i.i.i73.i.i.i
  %.06.i.i.i.i74.i.i.i = phi ptr [ %i.bex, %.lr.ph.i.i.i.i73.i.i.i ], [ %i.bew, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i135 ] ; 2 uses
  %i.bex = load ptr, ptr %.06.i.i.i.i74.i.i.i, align 8, !tbaa !157 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i74.i.i.i, i64 noundef 16) #31
  %.not.i.i.i.i75.i.i.i = icmp eq ptr %i.bex, null
  br i1 %.not.i.i.i.i75.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i136, label %.lr.ph.i.i.i.i73.i.i.i, !llvm.loop !41

_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i136: ; preds = %.lr.ph.i.i.i.i73.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i135
  %i.bey = load ptr, ptr %12, align 8, !tbaa !437
  %i.bez = load i64, ptr %i.bcz, align 8, !tbaa !438
  %i.bfa = shl i64 %i.bez, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bey, i8 0, i64 %i.bfa, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bda, i8 0, i64 16, i1 false)
  %i.bfb = load ptr, ptr %12, align 8, !tbaa !437 ; 2 uses
  %i.bfc = icmp eq ptr %i.bfb, %i.bcy
  br i1 %i.bfc, label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i137, label %bb.gz

bb.gz:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i136
  %i.bfd = load i64, ptr %i.bcz, align 8, !tbaa !438
  %i.bfe = shl i64 %i.bfd, 3
  call void @_ZdlPvm(ptr noundef %i.bfb, i64 noundef %i.bfe) #31
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i137

_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i137: ; preds = %bb.gz, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.bff = add i32 %.064191.i.i.i, 1              ; 2 uses
  %i.bfg = zext i32 %i.bff to i64
  %i.bfh = icmp sgt i64 %i.azq, %i.bfg
  br i1 %i.bfh, label %bb.gw, label %_ZL22set_input_kq_mask_implItLb0ELb0ELb1ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i, !llvm.loop !859

bb.ha:                                            ; preds = %._crit_edge.i.i.i156, %.lr.ph189.i.i.i
  %.063187.i.i.i = phi i32 [ 0, %.lr.ph189.i.i.i ], [ %i.bis, %._crit_edge.i.i.i156 ] ; 2 uses
  %i.bfi = add i32 %.063187.i.i.i, %i.beg
  %i.bfj = load ptr, ptr %i.k, align 8, !tbaa !327 ; 2 uses
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfj, i64 56
  %i.bfl = load ptr, ptr %i.bfk, align 8, !tbaa !363
  %i.bfm = zext i32 %i.bfi to i64                 ; 3 uses
  %i.bfn = getelementptr inbounds nuw [8 x i8], ptr %i.bfl, i64 %i.bfm
  %i.bfo = load ptr, ptr %i.bfn, align 8, !tbaa !336
  %i.bfp = load i32, ptr %i.bfo, align 4, !tbaa !110
  %.fr195.i.i.i = freeze i32 %i.bfp               ; 5 uses
  %i.bfq = sext i32 %.fr195.i.i.i to i64          ; 6 uses
  %i.bfr = load ptr, ptr %i.w, align 8, !tbaa !120
  %i.bfs = getelementptr inbounds nuw [4 x i8], ptr %i.bfr, i64 %i.bfq
  %i.bft = load i32, ptr %i.bfs, align 4, !tbaa !110
  %i.bfu = zext i32 %i.bft to i64                 ; 3 uses
  %i.bfv = load ptr, ptr %i.bdk, align 8, !tbaa !153
  %i.bfw = load ptr, ptr %i.u, align 8, !tbaa !123 ; 2 uses
  %i.bfx = ptrtoint ptr %i.bfv to i64
  %i.bfy = ptrtoint ptr %i.bfw to i64
  %i.bfz = sub i64 %i.bfx, %i.bfy
  %i.bga = sdiv exact i64 %i.bfz, 12440           ; 2 uses
  %.not.i.i.i.i.i138 = icmp ugt i64 %i.bga, %i.bfu
  br i1 %.not.i.i.i.i.i138, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.101, i64 noundef %i.bfu, i64 noundef %i.bga) #29
          to label %.noexc.i.i.i144 unwind label %bb.ht

.noexc.i.i.i144:                                  ; preds = %bb.hb
  unreachable

bb.hc:                                            ; preds = %bb.ha
  %i.bgb = getelementptr inbounds nuw [12440 x i8], ptr %i.bfw, i64 %i.bfu ; 2 uses
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfj, i64 40
  %i.bgd = load ptr, ptr %i.bgc, align 8, !tbaa !366
  %i.bge = getelementptr inbounds nuw [4 x i8], ptr %i.bgd, i64 %i.bfm
  %i.bgf = load i32, ptr %i.bge, align 4, !tbaa !110
  %i.bgg = mul nsw i64 %i.azo, %i.bfm
  %i.bgh = load i64, ptr %i.bde, align 8, !tbaa !393 ; 3 uses
  %i.bgi = urem i64 %i.bfq, %i.bgh                ; 3 uses
  %i.bgj = load ptr, ptr %13, align 8, !tbaa !392
  %i.bgk = getelementptr inbounds nuw [8 x i8], ptr %i.bgj, i64 %i.bgi
  %i.bgl = load ptr, ptr %i.bgk, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i76.i.i.i = icmp eq ptr %i.bgl, null
  br i1 %.not.i.i.i.i76.i.i.i, label %.loopexit.i.i.i.i.i149, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.bgm = load ptr, ptr %i.bgl, align 8, !tbaa !157 ; 2 uses
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 8
  %i.bgo = load i32, ptr %i.bgn, align 4, !tbaa !110
  %i.bgp = icmp eq i32 %.fr195.i.i.i, %i.bgo
  br i1 %i.bgp, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i155, label %.lr.ph.i.i.i.i77.i.i.i

bb.he:                                            ; preds = %bb.hf
  %i.bgq = icmp eq i32 %.fr195.i.i.i, %i.bgt
  br i1 %i.bgq, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i155, label %.lr.ph.i.i.i.i77.i.i.i, !llvm.loop !37

.lr.ph.i.i.i.i77.i.i.i:                           ; preds = %bb.hd, %bb.he
  %.020.i.i.i.i.i.i.i145 = phi ptr [ %i.bgr, %bb.he ], [ %i.bgm, %bb.hd ]
  %i.bgr = load ptr, ptr %.020.i.i.i.i.i.i.i145, align 8, !tbaa !157 ; 3 uses
  %.not18.i.i.i.i.i.i.i146 = icmp eq ptr %i.bgr, null
  br i1 %.not18.i.i.i.i.i.i.i146, label %.loopexit.i.i.i.i.i149, label %bb.hf

bb.hf:                                            ; preds = %.lr.ph.i.i.i.i77.i.i.i
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgr, i64 8
  %i.bgt = load i32, ptr %i.bgs, align 4, !tbaa !110 ; 2 uses
  %i.bgu = sext i32 %i.bgt to i64
  %i.bgv = urem i64 %i.bgu, %i.bgh
  %.not19.i.i.i.i.i.i.i147 = icmp eq i64 %i.bgv, %i.bgi
  br i1 %.not19.i.i.i.i.i.i.i147, label %bb.he, label %..loopexit_crit_edge21.i.i.i.i.i.i.i148, !llvm.loop !37

..loopexit_crit_edge21.i.i.i.i.i.i.i148:          ; preds = %bb.hf
  br label %.loopexit.i.i.i.i.i149, !llvm.loop !37

.loopexit.i.i.i.i.i149:                           ; preds = %.lr.ph.i.i.i.i77.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i.i148, %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store ptr %13, ptr %11, align 8, !tbaa !397
  %i.bgw = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc78.i.i.i unwind label %bb.hu ; 9 uses

.noexc78.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i149
  store ptr null, ptr %i.bgw, align 8, !tbaa !157
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgw, i64 8
  store i32 %.fr195.i.i.i, ptr %i.bgx, align 8, !tbaa !399
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgw, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bgy, i8 0, i64 24, i1 false)
  store ptr %i.bgw, ptr %i.bdl, align 8, !tbaa !400
  %i.bgz = load i64, ptr %i.bdh, align 8, !tbaa !431
  %i.bha = load i64, ptr %i.bdn, align 8, !tbaa !440
  %i.bhb = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bdg, i64 noundef %i.bgh, i64 noundef %i.bha, i64 noundef 1)
          to label %.noexc.i.i152 unwind label %bb.hq ; 2 uses

.noexc.i.i152:                                    ; preds = %.noexc78.i.i.i
  %i.bhc = extractvalue { i8, i64 } %i.bhb, 0
  %i.bhd = trunc i8 %i.bhc to i1
  br i1 %i.bhd, label %bb.hg, label %bb.hl

bb.hg:                                            ; preds = %.noexc.i.i152
  %i.bhe = extractvalue { i8, i64 } %i.bhb, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %13, i64 noundef %i.bhe)
          to label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i173 unwind label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.bhf = landingpad { ptr, i32 }
          catch ptr null
  %i.bhg = extractvalue { ptr, i32 } %i.bhf, 0
  %i.bhh = call ptr @__cxa_begin_catch(ptr %i.bhg) #30 ; 0 uses
  store i64 %i.bgz, ptr %i.bdh, align 8, !tbaa !431
  invoke void @__cxa_rethrow() #29
          to label %bb.hk unwind label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.bhi = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i150 unwind label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.bhj = landingpad { ptr, i32 }
          catch ptr null
  %i.bhk = extractvalue { ptr, i32 } %i.bhj, 0
  call void @__clang_call_terminate(ptr %i.bhk) #33
  unreachable

bb.hk:                                            ; preds = %bb.hh
  unreachable

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i173: ; preds = %bb.hg
  %i.bhl = load i64, ptr %i.bde, align 8, !tbaa !393
  %i.bhm = urem i64 %i.bfq, %i.bhl
  br label %bb.hl

bb.hl:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i173, %.noexc.i.i152
  %.0.i.i.i153 = phi i64 [ %i.bhm, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i173 ], [ %i.bgi, %.noexc.i.i152 ]
  %i.bhn = load ptr, ptr %13, align 8, !tbaa !392 ; 2 uses
  %i.bho = getelementptr inbounds nuw [8 x i8], ptr %i.bhn, i64 %.0.i.i.i153 ; 3 uses
  %i.bhp = load ptr, ptr %i.bho, align 8, !tbaa !156 ; 2 uses
  %.not.i.i45.i.i = icmp eq ptr %i.bhp, null
  br i1 %.not.i.i45.i.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.bhq = load ptr, ptr %i.bhp, align 8, !tbaa !157
  store ptr %i.bhq, ptr %i.bgw, align 8, !tbaa !157
  %i.bhr = load ptr, ptr %i.bho, align 8, !tbaa !156
  store ptr %i.bgw, ptr %i.bhr, align 8, !tbaa !157
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i154

bb.hn:                                            ; preds = %bb.hl
  %i.bhs = load ptr, ptr %i.bdf, align 8, !tbaa !401 ; 3 uses
  store ptr %i.bhs, ptr %i.bgw, align 8, !tbaa !157
  store ptr %i.bgw, ptr %i.bdf, align 8, !tbaa !401
  %.not11.i.i.i.i172 = icmp eq ptr %i.bhs, null
  br i1 %.not11.i.i.i.i172, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhs, i64 8
  %i.bhu = load i64, ptr %i.bde, align 8, !tbaa !393
  %i.bhv = load i32, ptr %i.bht, align 4, !tbaa !110
  %i.bhw = sext i32 %i.bhv to i64
  %i.bhx = urem i64 %i.bhw, %i.bhu
  %i.bhy = getelementptr inbounds nuw [8 x i8], ptr %i.bhn, i64 %i.bhx
  store ptr %i.bgw, ptr %i.bhy, align 8, !tbaa !156
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  store ptr %i.bdf, ptr %i.bho, align 8, !tbaa !156
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i154

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i154: ; preds = %bb.hp, %bb.hm
  %i.bhz = load i64, ptr %i.bdn, align 8, !tbaa !440
  %i.bia = add i64 %i.bhz, 1
  store i64 %i.bia, ptr %i.bdn, align 8, !tbaa !440
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i155

bb.hq:                                            ; preds = %.noexc78.i.i.i
  %i.bib = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i150

.body.i.i150:                                     ; preds = %bb.hq, %bb.hi
  %eh.lpad-body.i.i151 = phi { ptr, i32 } [ %i.bib, %bb.hq ], [ %i.bhi, %bb.hi ]
  call void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %.body.i.i.i139

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i155: ; preds = %bb.he, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i154, %bb.hd
  br i1 %i.bdm, label %.lr.ph145.i.i.i, label %._crit_edge.i.i.i156

.lr.ph145.i.i.i:                                  ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i155
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bgb, i64 56 ; 2 uses
  %i.bid = icmp ugt i32 %.fr195.i.i.i, 255
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bgb, i64 128
  %i.bif = lshr i64 %i.bfq, 6
  %i.big = and i64 %i.bfq, 63
  %i.bih = shl nuw i64 1, %i.big
  %i.bii = getelementptr [2 x i8], ptr %1, i64 %i.bgg ; 2 uses
  br i1 %i.bid, label %.lr.ph145.split.us.i.i.i, label %.lr.ph145.split.i.i.i

.lr.ph145.split.us.i.i.i:                         ; preds = %.lr.ph145.i.i.i
  %i.bij = load ptr, ptr %i.bic, align 8, !tbaa !126
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hs, %.lr.ph145.split.us.i.i.i
  %i.bik = phi i64 [ 0, %.lr.ph145.split.us.i.i.i ], [ %i.biq, %bb.hs ] ; 2 uses
  %.0144.us.i.i.i = phi i32 [ 0, %.lr.ph145.split.us.i.i.i ], [ %i.bip, %bb.hs ]
  %i.bil = getelementptr inbounds nuw [4 x i8], ptr %i.bij, i64 %i.bik
  %i.bim = load i32, ptr %i.bil, align 4, !tbaa !110
  %i.bin = icmp eq i32 %i.bim, -1
  br i1 %i.bin, label %bb.hs, label %.split.us.i.i.i169

bb.hs:                                            ; preds = %bb.hr
  %i.bio = getelementptr [2 x i8], ptr %i.bii, i64 %i.bik
  store i16 %i.azu, ptr %i.bio, align 2, !tbaa !442
  %i.bip = add i32 %.0144.us.i.i.i, 1             ; 2 uses
  %i.biq = zext i32 %i.bip to i64                 ; 2 uses
  %i.bir = icmp samesign ugt i64 %i.azo, %i.biq
  br i1 %i.bir, label %bb.hr, label %._crit_edge.i.i.i156, !llvm.loop !860

._crit_edge.i.i.i156:                             ; preds = %_ZL10llama_castItfET_T0_.exit.i.i.i167, %bb.hs, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i155
  %i.bis = add i32 %.063187.i.i.i, 1              ; 2 uses
  %i.bit = zext i32 %i.bis to i64
  %i.biu = icmp sgt i64 %i.azs, %i.bit
  br i1 %i.biu, label %bb.ha, label %._crit_edge190.i.i.i, !llvm.loop !861

bb.ht:                                            ; preds = %bb.hb
  %i.biv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i139

bb.hu:                                            ; preds = %.loopexit.i.i.i.i.i149
  %i.biw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i139

.lr.ph145.split.i.i.i:                            ; preds = %.lr.ph145.i.i.i, %_ZL10llama_castItfET_T0_.exit.i.i.i167
  %i.bix = phi i64 [ %i.bjo, %_ZL10llama_castItfET_T0_.exit.i.i.i167 ], [ 0, %.lr.ph145.i.i.i ] ; 3 uses
  %.0144.i.i.i = phi i32 [ %i.bjn, %_ZL10llama_castItfET_T0_.exit.i.i.i167 ], [ 0, %.lr.ph145.i.i.i ]
end_hunk_6
begin_hunk_7_@_ZL22set_input_kq_mask_implItLb0EEvRK22args_set_input_kq_maskPT_:bb.a
  %i.ccr = load ptr, ptr %i.ccq, align 8, !tbaa !336
  %i.ccs = load i32, ptr %i.ccr, align 4, !tbaa !110
  %i.cct = sext i32 %i.ccs to i64
  %i.ccu = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cct ; 2 uses
  %i.ccv = getelementptr inbounds nuw [4 x i8], ptr %i.cco, i64 %indvars.iv.i.i103.i.epil.init
  %i.ccw = load i32, ptr %i.ccv, align 4, !tbaa !110
  %i.ccx = load i32, ptr %i.ccu, align 4, !tbaa !110
  %i.ccy = tail call i32 @llvm.smin.i32(i32 %i.ccw, i32 %i.ccx)
  store i32 %i.ccy, ptr %i.ccu, align 4, !tbaa !110
  br label %.preheader.i.i106.i

.preheader.i.i106.i:                              ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i102.i.epil.preheader, %.preheader.i.i106.i.loopexit.unr-lcssa, %vector.ph1583
  %i.ccz = icmp sgt i64 %i.bzs, 0
  br i1 %i.ccz, label %.lr.ph186.i.i.i, label %_ZL22set_input_kq_mask_implItLb0ELb0ELb0ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i

.lr.ph186.i.i.i:                                  ; preds = %.preheader.i.i106.i
  %i.cda = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.cdb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.cdc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.cdd = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cde = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cdf = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.cdg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  %i.cdh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  %i.cdi = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.cdj = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.cdk = icmp sgt i64 %i.bzu, 0
  %i.cdl = trunc i64 %i.bzu to i32
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cdn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cdo = icmp sgt i64 %i.bzq, 0
  %i.cdp = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  br label %bb.kl

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i102.i:          ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i102.i, %.lr.ph.i.i100.i.new
  %indvars.iv.i.i103.i = phi i64 [ 0, %.lr.ph.i.i100.i.new ], [ %indvars.iv.next.i.i104.i.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i102.i ] ; 4 uses
  %niter1911 = phi i64 [ 0, %.lr.ph.i.i100.i.new ], [ %niter1911.next.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i102.i ]
  %i.cdq = getelementptr inbounds nuw [8 x i8], ptr %i.ccm, i64 %indvars.iv.i.i103.i
  %i.cdr = load ptr, ptr %i.cdq, align 8, !tbaa !336
  %i.cds = load i32, ptr %i.cdr, align 4, !tbaa !110
  %i.cdt = sext i32 %i.cds to i64
  %i.cdu = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cdt ; 2 uses
  %i.cdv = getelementptr inbounds nuw [4 x i8], ptr %i.cco, i64 %indvars.iv.i.i103.i
  %i.cdw = load i32, ptr %i.cdv, align 4, !tbaa !110
  %i.cdx = load i32, ptr %i.cdu, align 4, !tbaa !110
  %i.cdy = tail call i32 @llvm.smin.i32(i32 %i.cdw, i32 %i.cdx)
  store i32 %i.cdy, ptr %i.cdu, align 4, !tbaa !110
  %indvars.iv.next.i.i104.i = or disjoint i64 %indvars.iv.i.i103.i, 1 ; 2 uses
  %i.cdz = getelementptr inbounds nuw [8 x i8], ptr %i.ccm, i64 %indvars.iv.next.i.i104.i
  %i.cea = load ptr, ptr %i.cdz, align 8, !tbaa !336
  %i.ceb = load i32, ptr %i.cea, align 4, !tbaa !110
  %i.cec = sext i32 %i.ceb to i64
  %i.ced = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cec ; 2 uses
  %i.cee = getelementptr inbounds nuw [4 x i8], ptr %i.cco, i64 %indvars.iv.next.i.i104.i
  %i.cef = load i32, ptr %i.cee, align 4, !tbaa !110
  %i.ceg = load i32, ptr %i.ced, align 4, !tbaa !110
  %i.ceh = tail call i32 @llvm.smin.i32(i32 %i.cef, i32 %i.ceg)
  store i32 %i.ceh, ptr %i.ced, align 4, !tbaa !110
  %indvars.iv.next.i.i104.i.1 = add nuw nsw i64 %indvars.iv.i.i103.i, 2 ; 2 uses
  %niter1911.next.1 = add i64 %niter1911, 2       ; 2 uses
  %niter1911.ncmp.1 = icmp eq i64 %niter1911.next.1, %unroll_iter1910
  br i1 %niter1911.ncmp.1, label %.preheader.i.i106.i.loopexit.unr-lcssa, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i102.i, !llvm.loop !866

bb.kl:                                            ; preds = %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i110.i, %.lr.ph186.i.i.i
  %.058185.i.i.i = phi i32 [ 0, %.lr.ph186.i.i.i ], [ %i.cfh, %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i110.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.cda, ptr %6, align 8, !tbaa !437
  store i64 1, ptr %i.cdb, align 8, !tbaa !438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cdc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cdd, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cde, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr %i.cdf, ptr %7, align 8, !tbaa !392
  store i64 1, ptr %i.cdg, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cdh, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cdi, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cdj, i8 0, i64 16, i1 false)
  br i1 %i.cdk, label %.lr.ph183.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i107.i

.lr.ph183.i.i.i:                                  ; preds = %bb.kl
  %i.cei = mul i32 %.058185.i.i.i, %i.cdl
  br label %bb.kp

._crit_edge184.i.i.i:                             ; preds = %._crit_edge.i.i128.i
  %.pre.i.i129.i = load ptr, ptr %i.cdh, align 8, !tbaa !401 ; 2 uses
  %.not5.i.i.i.i.i.i130.i = icmp eq ptr %.pre.i.i129.i, null
  br i1 %.not5.i.i.i.i.i.i130.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i107.i, label %.lr.ph.i.i.i.i.i.i131.i

.lr.ph.i.i.i.i.i.i131.i:                          ; preds = %._crit_edge184.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i134.i
  %.06.i.i.i.i.i.i132.i = phi ptr [ %i.cej, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i134.i ], [ %.pre.i.i129.i, %._crit_edge184.i.i.i ] ; 4 uses
  %i.cej = load ptr, ptr %.06.i.i.i.i.i.i132.i, align 8, !tbaa !157 ; 2 uses
  %i.cek = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i132.i, i64 16
  %i.cel = load ptr, ptr %i.cek, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i133.i = icmp eq ptr %i.cel, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i133.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i134.i, label %bb.km

bb.km:                                            ; preds = %.lr.ph.i.i.i.i.i.i131.i
  %i.cem = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i132.i, i64 32
  %i.cen = load ptr, ptr %i.cem, align 8, !tbaa !275
  %i.ceo = ptrtoint ptr %i.cen to i64
  %i.cep = ptrtoint ptr %i.cel to i64
  %i.ceq = sub i64 %i.ceo, %i.cep
  call void @_ZdlPvm(ptr noundef nonnull %i.cel, i64 noundef %i.ceq) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i134.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i134.i: ; preds = %bb.km, %.lr.ph.i.i.i.i.i.i131.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i132.i, i64 noundef 40) #31
  %.not.i.i.i.i.i.i135.i = icmp eq ptr %i.cej, null
  br i1 %.not.i.i.i.i.i.i135.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i107.i, label %.lr.ph.i.i.i.i.i.i131.i, !llvm.loop !38

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i107.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i134.i, %._crit_edge184.i.i.i, %bb.kl
  %i.cer = load ptr, ptr %7, align 8, !tbaa !392
  %i.ces = load i64, ptr %i.cdg, align 8, !tbaa !393
  %i.cet = shl i64 %i.ces, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cer, i8 0, i64 %i.cet, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cdh, i8 0, i64 16, i1 false)
  %i.ceu = load ptr, ptr %7, align 8, !tbaa !392  ; 2 uses
  %i.cev = icmp eq ptr %i.ceu, %i.cdf
  br i1 %i.cev, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i108.i, label %bb.kn

bb.kn:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i107.i
  %i.cew = load i64, ptr %i.cdg, align 8, !tbaa !393
  %i.cex = shl i64 %i.cew, 3
  call void @_ZdlPvm(ptr noundef %i.ceu, i64 noundef %i.cex) #31
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i108.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i108.i: ; preds = %bb.kn, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i107.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.cey = load ptr, ptr %i.cdc, align 8, !tbaa !439 ; 2 uses
  %.not5.i.i.i.i66.i.i.i = icmp eq ptr %i.cey, null
  br i1 %.not5.i.i.i.i66.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i, label %.lr.ph.i.i.i.i67.i.i.i

.lr.ph.i.i.i.i67.i.i.i:                           ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i108.i, %.lr.ph.i.i.i.i67.i.i.i
  %.06.i.i.i.i68.i.i.i = phi ptr [ %i.cez, %.lr.ph.i.i.i.i67.i.i.i ], [ %i.cey, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i108.i ] ; 2 uses
  %i.cez = load ptr, ptr %.06.i.i.i.i68.i.i.i, align 8, !tbaa !157 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i68.i.i.i, i64 noundef 16) #31
  %.not.i.i.i.i69.i.i.i = icmp eq ptr %i.cez, null
  br i1 %.not.i.i.i.i69.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i, label %.lr.ph.i.i.i.i67.i.i.i, !llvm.loop !41

_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i: ; preds = %.lr.ph.i.i.i.i67.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i108.i
  %i.cfa = load ptr, ptr %6, align 8, !tbaa !437
  %i.cfb = load i64, ptr %i.cdb, align 8, !tbaa !438
  %i.cfc = shl i64 %i.cfb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cfa, i8 0, i64 %i.cfc, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cdc, i8 0, i64 16, i1 false)
  %i.cfd = load ptr, ptr %6, align 8, !tbaa !437  ; 2 uses
  %i.cfe = icmp eq ptr %i.cfd, %i.cda
  br i1 %i.cfe, label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i110.i, label %bb.ko

bb.ko:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i
  %i.cff = load i64, ptr %i.cdb, align 8, !tbaa !438
  %i.cfg = shl i64 %i.cff, 3
  call void @_ZdlPvm(ptr noundef %i.cfd, i64 noundef %i.cfg) #31
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i110.i

_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i110.i: ; preds = %bb.ko, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cfh = add i32 %.058185.i.i.i, 1              ; 2 uses
  %i.cfi = zext i32 %i.cfh to i64
  %i.cfj = icmp sgt i64 %i.bzs, %i.cfi
  br i1 %i.cfj, label %bb.kl, label %_ZL22set_input_kq_mask_implItLb0ELb0ELb0ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i, !llvm.loop !867

bb.kp:                                            ; preds = %._crit_edge.i.i128.i, %.lr.ph183.i.i.i
  %.057181.i.i.i = phi i32 [ 0, %.lr.ph183.i.i.i ], [ %i.ciu, %._crit_edge.i.i128.i ] ; 2 uses
  %i.cfk = add i32 %.057181.i.i.i, %i.cei
  %i.cfl = load ptr, ptr %i.k, align 8, !tbaa !327 ; 2 uses
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.cfl, i64 56
  %i.cfn = load ptr, ptr %i.cfm, align 8, !tbaa !363
  %i.cfo = zext i32 %i.cfk to i64                 ; 3 uses
  %i.cfp = getelementptr inbounds nuw [8 x i8], ptr %i.cfn, i64 %i.cfo
  %i.cfq = load ptr, ptr %i.cfp, align 8, !tbaa !336
  %i.cfr = load i32, ptr %i.cfq, align 4, !tbaa !110
  %.fr189.i.i.i = freeze i32 %i.cfr               ; 5 uses
  %i.cfs = sext i32 %.fr189.i.i.i to i64          ; 6 uses
  %i.cft = load ptr, ptr %i.w, align 8, !tbaa !120
  %i.cfu = getelementptr inbounds nuw [4 x i8], ptr %i.cft, i64 %i.cfs
  %i.cfv = load i32, ptr %i.cfu, align 4, !tbaa !110
  %i.cfw = zext i32 %i.cfv to i64                 ; 3 uses
  %i.cfx = load ptr, ptr %i.cdm, align 8, !tbaa !153
  %i.cfy = load ptr, ptr %i.u, align 8, !tbaa !123 ; 2 uses
  %i.cfz = ptrtoint ptr %i.cfx to i64
  %i.cga = ptrtoint ptr %i.cfy to i64
  %i.cgb = sub i64 %i.cfz, %i.cga
  %i.cgc = sdiv exact i64 %i.cgb, 12440           ; 2 uses
  %.not.i.i.i.i111.i = icmp ugt i64 %i.cgc, %i.cfw
  br i1 %.not.i.i.i.i111.i, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.101, i64 noundef %i.cfw, i64 noundef %i.cgc) #29
          to label %.noexc.i.i115.i unwind label %bb.li

.noexc.i.i115.i:                                  ; preds = %bb.kq
  unreachable

bb.kr:                                            ; preds = %bb.kp
  %i.cgd = getelementptr inbounds nuw [12440 x i8], ptr %i.cfy, i64 %i.cfw ; 2 uses
  %i.cge = getelementptr inbounds nuw i8, ptr %i.cfl, i64 40
  %i.cgf = load ptr, ptr %i.cge, align 8, !tbaa !366
  %i.cgg = getelementptr inbounds nuw [4 x i8], ptr %i.cgf, i64 %i.cfo
  %i.cgh = load i32, ptr %i.cgg, align 4, !tbaa !110
  %i.cgi = mul nsw i64 %i.bzq, %i.cfo
  %i.cgj = load i64, ptr %i.cdg, align 8, !tbaa !393 ; 3 uses
  %i.cgk = urem i64 %i.cfs, %i.cgj                ; 3 uses
  %i.cgl = load ptr, ptr %7, align 8, !tbaa !392
  %i.cgm = getelementptr inbounds nuw [8 x i8], ptr %i.cgl, i64 %i.cgk
  %i.cgn = load ptr, ptr %i.cgm, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i70.i.i.i = icmp eq ptr %i.cgn, null
  br i1 %.not.i.i.i.i70.i.i.i, label %.loopexit.i.i.i.i120.i, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.cgo = load ptr, ptr %i.cgn, align 8, !tbaa !157 ; 2 uses
  %i.cgp = getelementptr inbounds nuw i8, ptr %i.cgo, i64 8
  %i.cgq = load i32, ptr %i.cgp, align 4, !tbaa !110
  %i.cgr = icmp eq i32 %.fr189.i.i.i, %i.cgq
  br i1 %i.cgr, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i127.i, label %.lr.ph.i.i.i.i71.i.i.i

bb.kt:                                            ; preds = %bb.ku
  %i.cgs = icmp eq i32 %.fr189.i.i.i, %i.cgv
  br i1 %i.cgs, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i127.i, label %.lr.ph.i.i.i.i71.i.i.i, !llvm.loop !37

.lr.ph.i.i.i.i71.i.i.i:                           ; preds = %bb.ks, %bb.kt
  %.020.i.i.i.i.i.i116.i = phi ptr [ %i.cgt, %bb.kt ], [ %i.cgo, %bb.ks ]
  %i.cgt = load ptr, ptr %.020.i.i.i.i.i.i116.i, align 8, !tbaa !157 ; 3 uses
  %.not18.i.i.i.i.i.i117.i = icmp eq ptr %i.cgt, null
  br i1 %.not18.i.i.i.i.i.i117.i, label %.loopexit.i.i.i.i120.i, label %bb.ku

bb.ku:                                            ; preds = %.lr.ph.i.i.i.i71.i.i.i
  %i.cgu = getelementptr inbounds nuw i8, ptr %i.cgt, i64 8
  %i.cgv = load i32, ptr %i.cgu, align 4, !tbaa !110 ; 2 uses
  %i.cgw = sext i32 %i.cgv to i64
  %i.cgx = urem i64 %i.cgw, %i.cgj
  %.not19.i.i.i.i.i.i118.i = icmp eq i64 %i.cgx, %i.cgk
  br i1 %.not19.i.i.i.i.i.i118.i, label %bb.kt, label %..loopexit_crit_edge21.i.i.i.i.i.i119.i, !llvm.loop !37

..loopexit_crit_edge21.i.i.i.i.i.i119.i:          ; preds = %bb.ku
  br label %.loopexit.i.i.i.i120.i, !llvm.loop !37

.loopexit.i.i.i.i120.i:                           ; preds = %.lr.ph.i.i.i.i71.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i119.i, %bb.kr
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %7, ptr %5, align 8, !tbaa !397
  %i.cgy = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc72.i.i.i unwind label %bb.lj ; 9 uses

.noexc72.i.i.i:                                   ; preds = %.loopexit.i.i.i.i120.i
  store ptr null, ptr %i.cgy, align 8, !tbaa !157
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.cgy, i64 8
  store i32 %.fr189.i.i.i, ptr %i.cgz, align 8, !tbaa !399
  %i.cha = getelementptr inbounds nuw i8, ptr %i.cgy, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cha, i8 0, i64 24, i1 false)
  store ptr %i.cgy, ptr %i.cdn, align 8, !tbaa !400
  %i.chb = load i64, ptr %i.cdj, align 8, !tbaa !431
  %i.chc = load i64, ptr %i.cdp, align 8, !tbaa !440
  %i.chd = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.cdi, i64 noundef %i.cgj, i64 noundef %i.chc, i64 noundef 1)
          to label %.noexc.i123.i unwind label %bb.lf ; 2 uses

.noexc.i123.i:                                    ; preds = %.noexc72.i.i.i
  %i.che = extractvalue { i8, i64 } %i.chd, 0
  %i.chf = trunc i8 %i.che to i1
  br i1 %i.chf, label %bb.kv, label %bb.la

bb.kv:                                            ; preds = %.noexc.i123.i
  %i.chg = extractvalue { i8, i64 } %i.chd, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %7, i64 noundef %i.chg)
          to label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i145.i unwind label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.chh = landingpad { ptr, i32 }
          catch ptr null
  %i.chi = extractvalue { ptr, i32 } %i.chh, 0
  %i.chj = call ptr @__cxa_begin_catch(ptr %i.chi) #30 ; 0 uses
  store i64 %i.chb, ptr %i.cdj, align 8, !tbaa !431
  invoke void @__cxa_rethrow() #29
          to label %bb.kz unwind label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.chk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i121.i unwind label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.chl = landingpad { ptr, i32 }
          catch ptr null
  %i.chm = extractvalue { ptr, i32 } %i.chl, 0
  call void @__clang_call_terminate(ptr %i.chm) #33
  unreachable

bb.kz:                                            ; preds = %bb.kw
  unreachable

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i145.i: ; preds = %bb.kv
  %i.chn = load i64, ptr %i.cdg, align 8, !tbaa !393
  %i.cho = urem i64 %i.cfs, %i.chn
  br label %bb.la

bb.la:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i145.i, %.noexc.i123.i
  %.0.i.i124.i = phi i64 [ %i.cho, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i145.i ], [ %i.cgk, %.noexc.i123.i ]
  %i.chp = load ptr, ptr %7, align 8, !tbaa !392  ; 2 uses
  %i.chq = getelementptr inbounds nuw [8 x i8], ptr %i.chp, i64 %.0.i.i124.i ; 3 uses
  %i.chr = load ptr, ptr %i.chq, align 8, !tbaa !156 ; 2 uses
  %.not.i.i45.i125.i = icmp eq ptr %i.chr, null
  br i1 %.not.i.i45.i125.i, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.chs = load ptr, ptr %i.chr, align 8, !tbaa !157
  store ptr %i.chs, ptr %i.cgy, align 8, !tbaa !157
  %i.cht = load ptr, ptr %i.chq, align 8, !tbaa !156
  store ptr %i.cgy, ptr %i.cht, align 8, !tbaa !157
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i126.i

bb.lc:                                            ; preds = %bb.la
  %i.chu = load ptr, ptr %i.cdh, align 8, !tbaa !401 ; 3 uses
  store ptr %i.chu, ptr %i.cgy, align 8, !tbaa !157
  store ptr %i.cgy, ptr %i.cdh, align 8, !tbaa !401
  %.not11.i.i.i144.i = icmp eq ptr %i.chu, null
  br i1 %.not11.i.i.i144.i, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.chv = getelementptr inbounds nuw i8, ptr %i.chu, i64 8
  %i.chw = load i64, ptr %i.cdg, align 8, !tbaa !393
  %i.chx = load i32, ptr %i.chv, align 4, !tbaa !110
  %i.chy = sext i32 %i.chx to i64
  %i.chz = urem i64 %i.chy, %i.chw
  %i.cia = getelementptr inbounds nuw [8 x i8], ptr %i.chp, i64 %i.chz
  store ptr %i.cgy, ptr %i.cia, align 8, !tbaa !156
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.lc
  store ptr %i.cdh, ptr %i.chq, align 8, !tbaa !156
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i126.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i126.i: ; preds = %bb.le, %bb.lb
  %i.cib = load i64, ptr %i.cdp, align 8, !tbaa !440
  %i.cic = add i64 %i.cib, 1
  store i64 %i.cic, ptr %i.cdp, align 8, !tbaa !440
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i127.i

bb.lf:                                            ; preds = %.noexc72.i.i.i
  %i.cid = landingpad { ptr, i32 }
          cleanup
  br label %.body.i121.i

.body.i121.i:                                     ; preds = %bb.lf, %bb.kx
  %eh.lpad-body.i122.i = phi { ptr, i32 } [ %i.cid, %bb.lf ], [ %i.chk, %bb.kx ]
  call void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.body.i.i112.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i127.i: ; preds = %bb.kt, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i126.i, %bb.ks
  br i1 %i.cdo, label %.lr.ph139.i.i.i, label %._crit_edge.i.i128.i

.lr.ph139.i.i.i:                                  ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i127.i
  %i.cie = getelementptr inbounds nuw i8, ptr %i.cgd, i64 56 ; 2 uses
  %i.cif = icmp ugt i32 %.fr189.i.i.i, 255
  %i.cig = getelementptr inbounds nuw i8, ptr %i.cgd, i64 128
  %i.cih = lshr i64 %i.cfs, 6
  %i.cii = and i64 %i.cfs, 63
  %i.cij = shl nuw i64 1, %i.cii
  %i.cik = getelementptr [2 x i8], ptr %1, i64 %i.cgi ; 2 uses
  br i1 %i.cif, label %.lr.ph139.split.us.i.i.i, label %.lr.ph139.split.i.i.i

.lr.ph139.split.us.i.i.i:                         ; preds = %.lr.ph139.i.i.i
  %i.cil = load ptr, ptr %i.cie, align 8, !tbaa !126
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lh, %.lr.ph139.split.us.i.i.i
  %i.cim = phi i64 [ 0, %.lr.ph139.split.us.i.i.i ], [ %i.cis, %bb.lh ] ; 2 uses
  %.0138.us.i.i.i = phi i32 [ 0, %.lr.ph139.split.us.i.i.i ], [ %i.cir, %bb.lh ]
  %i.cin = getelementptr inbounds nuw [4 x i8], ptr %i.cil, i64 %i.cim
  %i.cio = load i32, ptr %i.cin, align 4, !tbaa !110
  %i.cip = icmp eq i32 %i.cio, -1
  br i1 %i.cip, label %bb.lh, label %.split.us.i.i141.i

bb.lh:                                            ; preds = %bb.lg
  %i.ciq = getelementptr [2 x i8], ptr %i.cik, i64 %i.cim
  store i16 %i.bzw, ptr %i.ciq, align 2, !tbaa !442
  %i.cir = add i32 %.0138.us.i.i.i, 1             ; 2 uses
  %i.cis = zext i32 %i.cir to i64                 ; 2 uses
  %i.cit = icmp samesign ugt i64 %i.bzq, %i.cis
  br i1 %i.cit, label %bb.lg, label %._crit_edge.i.i128.i, !llvm.loop !868

._crit_edge.i.i128.i:                             ; preds = %_ZL10llama_castItfET_T0_.exit.i.i139.i, %bb.lh, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i127.i
  %i.ciu = add i32 %.057181.i.i.i, 1              ; 2 uses
  %i.civ = zext i32 %i.ciu to i64
  %i.ciw = icmp sgt i64 %i.bzu, %i.civ
  br i1 %i.ciw, label %bb.kp, label %._crit_edge184.i.i.i, !llvm.loop !869

bb.li:                                            ; preds = %bb.kq
  %i.cix = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i112.i

bb.lj:                                            ; preds = %.loopexit.i.i.i.i120.i
  %i.ciy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i112.i

.lr.ph139.split.i.i.i:                            ; preds = %.lr.ph139.i.i.i, %_ZL10llama_castItfET_T0_.exit.i.i139.i
  %i.ciz = phi i64 [ %i.cjq, %_ZL10llama_castItfET_T0_.exit.i.i139.i ], [ 0, %.lr.ph139.i.i.i ] ; 3 uses
  %.0138.i.i.i = phi i32 [ %i.cjp, %_ZL10llama_castItfET_T0_.exit.i.i139.i ], [ 0, %.lr.ph139.i.i.i ]
end_hunk_7
begin_hunk_8_@_ZL22set_input_kq_mask_implIfLb1EEvRK22args_set_input_kq_maskPT_:bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.dm = getelementptr inbounds nuw i8, ptr %25, i64 48 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %25, i64 40 ; 3 uses
  %i.dr = icmp sgt i64 %i.ae, 0
  %i.ds = trunc i64 %i.ae to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dv = icmp sgt i64 %i.aa, 0
  %i.dw = sdiv i32 %i.y, 2
  %i.dx = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 2 uses
  br label %bb.d

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i:             ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i ] ; 4 uses
  %niter1884 = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter1884.next.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i ]
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !336
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !110
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !110
  %i.ef = load i32, ptr %i.ec, align 4, !tbaa !110
  %i.eg = tail call i32 @llvm.smin.i32(i32 %i.ee, i32 %i.ef)
  store i32 %i.eg, ptr %i.ec, align 4, !tbaa !110
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.i
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !336
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !110
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.i.i.i
  %i.en = load i32, ptr %i.em, align 4, !tbaa !110
  %i.eo = load i32, ptr %i.el, align 4, !tbaa !110
  %i.ep = tail call i32 @llvm.smin.i32(i32 %i.en, i32 %i.eo)
  store i32 %i.ep, ptr %i.el, align 4, !tbaa !110
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter1884.next.1 = add i64 %niter1884, 2       ; 2 uses
  %niter1884.ncmp.1 = icmp eq i64 %niter1884.next.1, %unroll_iter1883
  br i1 %niter1884.ncmp.1, label %.preheader.i.i.i.loopexit.unr-lcssa, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i, !llvm.loop !876

bb.d:                                             ; preds = %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i, %.lr.ph129.i.i.i
  %.081128.i.i.i = phi i32 [ 0, %.lr.ph129.i.i.i ], [ %i.fp, %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  store ptr %i.dh, ptr %24, align 8, !tbaa !437
  store i64 1, ptr %i.di, align 8, !tbaa !438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dk, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  store ptr %i.dm, ptr %25, align 8, !tbaa !392
  store i64 1, ptr %i.dn, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dp, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false)
  br i1 %i.dr, label %.lr.ph126.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i

.lr.ph126.i.i.i:                                  ; preds = %bb.d
  %i.eq = mul i32 %.081128.i.i.i, %i.ds
  br label %bb.h

._crit_edge127.i.i.i:                             ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.do, align 8, !tbaa !401 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %._crit_edge127.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.er, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i, %._crit_edge127.i.i.i ] ; 4 uses
  %i.er = load ptr, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !157 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !275
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ey) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i, i64 noundef 40) #31
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !38

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i
  %.pre199.i.i = load ptr, ptr %25, align 8, !tbaa !392
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i: ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i.i, %._crit_edge127.i.i.i, %bb.d
  %i.ez = phi ptr [ %.pre199.i.i, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i.i ], [ %i.iy, %._crit_edge127.i.i.i ], [ %i.dm, %bb.d ]
  %i.fa = load i64, ptr %i.dn, align 8, !tbaa !393
  %i.fb = shl i64 %i.fa, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ez, i8 0, i64 %i.fb, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, i8 0, i64 16, i1 false)
  %i.fc = load ptr, ptr %25, align 8, !tbaa !392  ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.dm
  br i1 %i.fd, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  %i.fe = load i64, ptr %i.dn, align 8, !tbaa !393
  %i.ff = shl i64 %i.fe, 3
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #31
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i: ; preds = %bb.f, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  %i.fg = load ptr, ptr %i.dj, align 8, !tbaa !439 ; 2 uses
  %.not5.i.i.i.i92.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not5.i.i.i.i92.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i93.i.i.i

.lr.ph.i.i.i.i93.i.i.i:                           ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i, %.lr.ph.i.i.i.i93.i.i.i
  %.06.i.i.i.i94.i.i.i = phi ptr [ %i.fh, %.lr.ph.i.i.i.i93.i.i.i ], [ %i.fg, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i ] ; 2 uses
  %i.fh = load ptr, ptr %.06.i.i.i.i94.i.i.i, align 8, !tbaa !157 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i94.i.i.i, i64 noundef 16) #31
  %.not.i.i.i.i95.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i95.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i93.i.i.i, !llvm.loop !41

_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i93.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i
  %i.fi = load ptr, ptr %24, align 8, !tbaa !437
  %i.fj = load i64, ptr %i.di, align 8, !tbaa !438
  %i.fk = shl i64 %i.fj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fi, i8 0, i64 %i.fk, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  %i.fl = load ptr, ptr %24, align 8, !tbaa !437  ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.dh
  br i1 %i.fm, label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  %i.fn = load i64, ptr %i.di, align 8, !tbaa !438
  %i.fo = shl i64 %i.fn, 3
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #31
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i

_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i: ; preds = %bb.g, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.fp = add i32 %.081128.i.i.i, 1               ; 2 uses
  %i.fq = zext i32 %i.fp to i64
  %i.fr = icmp sgt i64 %i.ac, %i.fq
  br i1 %i.fr, label %bb.d, label %_ZL22set_input_kq_mask_implIfLb1ELb1ELb1ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i, !llvm.loop !877

bb.h:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph126.i.i.i
  %i.fs = phi i64 [ 0, %.lr.ph126.i.i.i ], [ %i.ix, %._crit_edge.i.i.i ] ; 3 uses
  %i.ft = phi ptr [ %i.dm, %.lr.ph126.i.i.i ], [ %i.iy, %._crit_edge.i.i.i ] ; 3 uses
  %.078124.i.i.i = phi i32 [ 0, %.lr.ph126.i.i.i ], [ %i.jq, %._crit_edge.i.i.i ] ; 2 uses
  %i.fu = add i32 %.078124.i.i.i, %i.eq           ; 3 uses
  %i.fv = load ptr, ptr %i.k, align 8, !tbaa !327 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 56
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !363
  %i.fy = zext i32 %i.fu to i64                   ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !336
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !110
  %.fr131.i.i.i = freeze i32 %i.gb                ; 5 uses
  %i.gc = sext i32 %.fr131.i.i.i to i64           ; 6 uses
  %i.gd = load ptr, ptr %i.w, align 8, !tbaa !120
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.gc
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !110
  %i.gg = zext i32 %i.gf to i64                   ; 3 uses
  %i.gh = load ptr, ptr %i.dt, align 8, !tbaa !153
  %i.gi = load ptr, ptr %i.u, align 8, !tbaa !123 ; 2 uses
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = sdiv exact i64 %i.gl, 12440             ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.gm, %i.gg
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.101, i64 noundef %i.gg, i64 noundef %i.gm) #29
          to label %.noexc.i.i.i unwind label %bb.y

.noexc.i.i.i:                                     ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.gn = getelementptr inbounds nuw [12440 x i8], ptr %i.gi, i64 %i.gg ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !366 ; 3 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.fy
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !110 ; 7 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !312 ; 2 uses
  %i.gu = shl i32 %i.gt, 1
  %i.gv = add i32 %i.gu, %i.fu
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !110
  %i.gz = add i32 %i.gt, %i.fu
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !110 ; 2 uses
  %i.hd = mul nsw i64 %i.aa, %i.fy
  %i.he = load i64, ptr %i.dn, align 8, !tbaa !393 ; 3 uses
  %i.hf = urem i64 %i.gc, %i.he                   ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.hf
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i96.i.i.i = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i.i96.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !157 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !110
  %i.hl = icmp eq i32 %.fr131.i.i.i, %i.hk
  br i1 %i.hl, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i, label %.lr.ph.i.i.i.i97.i.i.i

bb.l:                                             ; preds = %bb.m
  %i.hm = icmp eq i32 %.fr131.i.i.i, %i.hp
  br i1 %i.hm, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i, label %.lr.ph.i.i.i.i97.i.i.i, !llvm.loop !37

.lr.ph.i.i.i.i97.i.i.i:                           ; preds = %bb.k, %bb.l
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.hn, %bb.l ], [ %i.hi, %bb.k ]
  %i.hn = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !157 ; 3 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i97.i.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !110 ; 2 uses
  %i.hq = sext i32 %i.hp to i64
  %i.hr = urem i64 %i.hq, %i.he
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.hr, %i.hf
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.l, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !37

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.m
  br label %.loopexit.i.i.i.i.i, !llvm.loop !37

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i97.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  store ptr %25, ptr %23, align 8, !tbaa !397
  %i.hs = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc98.i.i.i unwind label %bb.z ; 9 uses

.noexc98.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i
  store ptr null, ptr %i.hs, align 8, !tbaa !157
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store i32 %.fr131.i.i.i, ptr %i.ht, align 8, !tbaa !399
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hu, i8 0, i64 24, i1 false)
  store ptr %i.hs, ptr %i.du, align 8, !tbaa !400
  %i.hv = load i64, ptr %i.dq, align 8, !tbaa !431
  %i.hw = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i64 noundef %i.he, i64 noundef %i.fs, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.x ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc98.i.i.i
  %i.hx = extractvalue { i8, i64 } %i.hw, 0
  %i.hy = trunc i8 %i.hx to i1
  br i1 %i.hy, label %bb.n, label %bb.s

bb.n:                                             ; preds = %.noexc.i.i
  %i.hz = extractvalue { i8, i64 } %i.hw, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %25, i64 noundef %i.hz)
          to label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  %i.ic = call ptr @__cxa_begin_catch(ptr %i.ib) #30 ; 0 uses
  store i64 %i.hv, ptr %i.dq, align 8, !tbaa !431
  invoke void @__cxa_rethrow() #29
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  call void @__clang_call_terminate(ptr %i.if) #33
  unreachable

bb.r:                                             ; preds = %bb.o
  unreachable

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i: ; preds = %bb.n
  %i.ig = load i64, ptr %i.dn, align 8, !tbaa !393
  %i.ih = urem i64 %i.gc, %i.ig
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i, %.noexc.i.i
  %.0.i.i.i = phi i64 [ %i.ih, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i ], [ %i.hf, %.noexc.i.i ]
  %i.ii = load ptr, ptr %25, align 8, !tbaa !392  ; 3 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %.0.i.i.i ; 3 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !156 ; 2 uses
  %.not.i.i46.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.i46.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !157
  store ptr %i.il, ptr %i.hs, align 8, !tbaa !157
  %i.im = load ptr, ptr %i.ij, align 8, !tbaa !156
  store ptr %i.hs, ptr %i.im, align 8, !tbaa !157
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.in = load ptr, ptr %i.do, align 8, !tbaa !401 ; 3 uses
  store ptr %i.in, ptr %i.hs, align 8, !tbaa !157
  store ptr %i.hs, ptr %i.do, align 8, !tbaa !401
  %.not11.i.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not11.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load i64, ptr %i.dn, align 8, !tbaa !393
  %i.iq = load i32, ptr %i.io, align 4, !tbaa !110
  %i.ir = sext i32 %i.iq to i64
  %i.is = urem i64 %i.ir, %i.ip
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.is
  store ptr %i.hs, ptr %i.it, align 8, !tbaa !156
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store ptr %i.do, ptr %i.ij, align 8, !tbaa !156
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i: ; preds = %bb.w, %bb.t
  %i.iu = load i64, ptr %i.dx, align 8, !tbaa !440
  %i.iv = add i64 %i.iu, 1                        ; 2 uses
  store i64 %i.iv, ptr %i.dx, align 8, !tbaa !440
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i

bb.x:                                             ; preds = %.noexc98.i.i.i
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.x, %bb.p
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.iw, %bb.x ], [ %i.id, %bb.p ]
  call void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %.body.i.i.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i: ; preds = %bb.l, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i, %bb.k
  %i.ix = phi i64 [ %i.fs, %bb.k ], [ %i.iv, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i ], [ %i.fs, %bb.l ]
  %i.iy = phi ptr [ %i.ft, %bb.k ], [ %i.ii, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i ], [ %i.ft, %bb.l ] ; 2 uses
  br i1 %i.dv, label %.lr.ph119.i.i.i, label %._crit_edge.i.i.i

.lr.ph119.i.i.i:                                  ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gn, i64 56
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !126 ; 2 uses
  %i.jb = icmp ugt i32 %.fr131.i.i.i, 255
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gn, i64 128
  %i.jd = lshr i64 %i.gc, 6
  %i.je = and i64 %i.gc, 63
  %i.jf = shl nuw i64 1, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.gn, i64 80
  %i.jh = getelementptr [4 x i8], ptr %1, i64 %i.hd ; 2 uses
  br i1 %i.jb, label %.lr.ph119.split.us.i.i.i, label %.lr.ph119.split.i.i.i

.lr.ph119.split.us.i.i.i:                         ; preds = %.lr.ph119.i.i.i, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i
  %i.ji = phi i64 [ %i.jo, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i ], [ 0, %.lr.ph119.i.i.i ] ; 2 uses
  %.0118.us.i.i.i = phi i32 [ %i.jn, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i ], [ 0, %.lr.ph119.i.i.i ]
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.ji
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !110
  %i.jl = icmp eq i32 %i.jk, -1
  br i1 %i.jl, label %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i, label %.split.us.i.i.i

_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i: ; preds = %.lr.ph119.split.us.i.i.i
  %i.jm = getelementptr [4 x i8], ptr %i.jh, i64 %i.ji
  store float -inf, ptr %i.jm, align 4, !tbaa !263
  %i.jn = add i32 %.0118.us.i.i.i, 1              ; 2 uses
  %i.jo = zext i32 %i.jn to i64                   ; 2 uses
  %i.jp = icmp samesign ugt i64 %i.aa, %i.jo
  br i1 %i.jp, label %.lr.ph119.split.us.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !878

._crit_edge.i.i.i:                                ; preds = %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.i.i.i, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i
  %i.jq = add i32 %.078124.i.i.i, 1               ; 2 uses
  %i.jr = zext i32 %i.jq to i64
  %i.js = icmp sgt i64 %i.ae, %i.jr
  br i1 %i.js, label %bb.h, label %._crit_edge127.i.i.i, !llvm.loop !879

bb.y:                                             ; preds = %bb.i
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.z:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.lr.ph119.split.i.i.i:                            ; preds = %.lr.ph119.i.i.i, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.i.i.i
  %indvars.iv148.i.i.i = phi i64 [ %indvars.iv.next149.i.i.i, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.i.i.i ], [ 0, %.lr.ph119.i.i.i ] ; 5 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv148.i.i.i
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !110 ; 7 uses
  %i.jx = icmp eq i32 %i.jw, -1
end_hunk_8
begin_hunk_9_@_ZL22set_input_kq_mask_implIfLb1EEvRK22args_set_input_kq_maskPT_:bb.a
  %i.adw = tail call i32 @llvm.smin.i32(i32 %i.adu, i32 %i.adv)
  store i32 %i.adw, ptr %i.ads, align 4, !tbaa !110
  br label %.preheader.i.i93.i

.preheader.i.i93.i:                               ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i89.i.epil.preheader, %.preheader.i.i93.i.loopexit.unr-lcssa, %vector.ph1550
  %i.adx = icmp sgt i64 %i.ac, 0
  br i1 %i.adx, label %.lr.ph112.i.i.i, label %_ZL22set_input_kq_mask_implIfLb1ELb1ELb0ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i

.lr.ph112.i.i.i:                                  ; preds = %.preheader.i.i93.i
  %i.ady = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.aec = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.aed = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 4 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 6 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 3 uses
  %i.aei = icmp sgt i64 %i.ae, 0
  %i.aej = trunc i64 %i.ae to i32
  %i.aek = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ael = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.aem = icmp sgt i64 %i.aa, 0
  %i.aen = sdiv i32 %i.y, 2
  %i.aeo = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  br label %bb.da

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i89.i:           ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i89.i, %.lr.ph.i.i87.i.new
  %indvars.iv.i.i90.i = phi i64 [ 0, %.lr.ph.i.i87.i.new ], [ %indvars.iv.next.i.i91.i.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i89.i ] ; 4 uses
  %niter1874 = phi i64 [ 0, %.lr.ph.i.i87.i.new ], [ %niter1874.next.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i89.i ]
  %i.aep = getelementptr inbounds nuw [8 x i8], ptr %i.adk, i64 %indvars.iv.i.i90.i
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !336
  %i.aer = load i32, ptr %i.aeq, align 4, !tbaa !110
  %i.aes = sext i32 %i.aer to i64
  %i.aet = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.aes ; 2 uses
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.adm, i64 %indvars.iv.i.i90.i
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !110
  %i.aew = load i32, ptr %i.aet, align 4, !tbaa !110
  %i.aex = tail call i32 @llvm.smin.i32(i32 %i.aev, i32 %i.aew)
  store i32 %i.aex, ptr %i.aet, align 4, !tbaa !110
  %indvars.iv.next.i.i91.i = or disjoint i64 %indvars.iv.i.i90.i, 1 ; 2 uses
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %i.adk, i64 %indvars.iv.next.i.i91.i
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !336
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !110
  %i.afb = sext i32 %i.afa to i64
  %i.afc = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.afb ; 2 uses
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.adm, i64 %indvars.iv.next.i.i91.i
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !110
  %i.aff = load i32, ptr %i.afc, align 4, !tbaa !110
  %i.afg = tail call i32 @llvm.smin.i32(i32 %i.afe, i32 %i.aff)
  store i32 %i.afg, ptr %i.afc, align 4, !tbaa !110
  %indvars.iv.next.i.i91.i.1 = add nuw nsw i64 %indvars.iv.i.i90.i, 2 ; 2 uses
  %niter1874.next.1 = add i64 %niter1874, 2       ; 2 uses
  %niter1874.ncmp.1 = icmp eq i64 %niter1874.next.1, %unroll_iter1873
  br i1 %niter1874.ncmp.1, label %.preheader.i.i93.i.loopexit.unr-lcssa, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i89.i, !llvm.loop !884

bb.da:                                            ; preds = %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i97.i, %.lr.ph112.i.i.i
  %.066111.i.i.i = phi i32 [ 0, %.lr.ph112.i.i.i ], [ %i.agg, %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i97.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  store ptr %i.ady, ptr %18, align 8, !tbaa !437
  store i64 1, ptr %i.adz, align 8, !tbaa !438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aea, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aeb, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aec, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  store ptr %i.aed, ptr %19, align 8, !tbaa !392
  store i64 1, ptr %i.aee, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aef, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aeg, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aeh, i8 0, i64 16, i1 false)
  br i1 %i.aei, label %.lr.ph109.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i94.i

.lr.ph109.i.i.i:                                  ; preds = %bb.da
  %i.afh = mul i32 %.066111.i.i.i, %i.aej
  br label %bb.de

._crit_edge110.i.i.i:                             ; preds = %._crit_edge.i.i113.i
  %.pre.i.i114.i = load ptr, ptr %i.aef, align 8, !tbaa !401 ; 2 uses
  %.not5.i.i.i.i.i.i115.i = icmp eq ptr %.pre.i.i114.i, null
  br i1 %.not5.i.i.i.i.i.i115.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i94.i, label %.lr.ph.i.i.i.i.i.i116.i

.lr.ph.i.i.i.i.i.i116.i:                          ; preds = %._crit_edge110.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i119.i
  %.06.i.i.i.i.i.i117.i = phi ptr [ %i.afi, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i119.i ], [ %.pre.i.i114.i, %._crit_edge110.i.i.i ] ; 4 uses
  %i.afi = load ptr, ptr %.06.i.i.i.i.i.i117.i, align 8, !tbaa !157 ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i117.i, i64 16
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i118.i = icmp eq ptr %i.afk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i118.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i119.i, label %bb.db

bb.db:                                            ; preds = %.lr.ph.i.i.i.i.i.i116.i
  %i.afl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i117.i, i64 32
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !275
  %i.afn = ptrtoint ptr %i.afm to i64
  %i.afo = ptrtoint ptr %i.afk to i64
  %i.afp = sub i64 %i.afn, %i.afo
  call void @_ZdlPvm(ptr noundef nonnull %i.afk, i64 noundef %i.afp) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i119.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i119.i: ; preds = %bb.db, %.lr.ph.i.i.i.i.i.i116.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i117.i, i64 noundef 40) #31
  %.not.i.i.i.i.i.i120.i = icmp eq ptr %i.afi, null
  br i1 %.not.i.i.i.i.i.i120.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i121.i, label %.lr.ph.i.i.i.i.i.i116.i, !llvm.loop !38

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i121.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i119.i
  %.pre198.i122.i = load ptr, ptr %19, align 8, !tbaa !392
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i94.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i94.i: ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i121.i, %._crit_edge110.i.i.i, %bb.da
  %i.afq = phi ptr [ %.pre198.i122.i, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i121.i ], [ %i.aje, %._crit_edge110.i.i.i ], [ %i.aed, %bb.da ]
  %i.afr = load i64, ptr %i.aee, align 8, !tbaa !393
  %i.afs = shl i64 %i.afr, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.afq, i8 0, i64 %i.afs, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aef, i8 0, i64 16, i1 false)
  %i.aft = load ptr, ptr %19, align 8, !tbaa !392 ; 2 uses
  %i.afu = icmp eq ptr %i.aft, %i.aed
  br i1 %i.afu, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i95.i, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i94.i
  %i.afv = load i64, ptr %i.aee, align 8, !tbaa !393
  %i.afw = shl i64 %i.afv, 3
  call void @_ZdlPvm(ptr noundef %i.aft, i64 noundef %i.afw) #31
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i95.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i95.i: ; preds = %bb.dc, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i94.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  %i.afx = load ptr, ptr %i.aea, align 8, !tbaa !439 ; 2 uses
  %.not5.i.i.i.i76.i.i.i = icmp eq ptr %i.afx, null
  br i1 %.not5.i.i.i.i76.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i96.i, label %.lr.ph.i.i.i.i77.i.i.i

.lr.ph.i.i.i.i77.i.i.i:                           ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i95.i, %.lr.ph.i.i.i.i77.i.i.i
  %.06.i.i.i.i78.i.i.i = phi ptr [ %i.afy, %.lr.ph.i.i.i.i77.i.i.i ], [ %i.afx, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i95.i ] ; 2 uses
  %i.afy = load ptr, ptr %.06.i.i.i.i78.i.i.i, align 8, !tbaa !157 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i78.i.i.i, i64 noundef 16) #31
  %.not.i.i.i.i79.i.i.i = icmp eq ptr %i.afy, null
  br i1 %.not.i.i.i.i79.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i96.i, label %.lr.ph.i.i.i.i77.i.i.i, !llvm.loop !41

_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i96.i: ; preds = %.lr.ph.i.i.i.i77.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i95.i
  %i.afz = load ptr, ptr %18, align 8, !tbaa !437
  %i.aga = load i64, ptr %i.adz, align 8, !tbaa !438
  %i.agb = shl i64 %i.aga, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.afz, i8 0, i64 %i.agb, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aea, i8 0, i64 16, i1 false)
  %i.agc = load ptr, ptr %18, align 8, !tbaa !437 ; 2 uses
  %i.agd = icmp eq ptr %i.agc, %i.ady
  br i1 %i.agd, label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i97.i, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i96.i
  %i.age = load i64, ptr %i.adz, align 8, !tbaa !438
  %i.agf = shl i64 %i.age, 3
  call void @_ZdlPvm(ptr noundef %i.agc, i64 noundef %i.agf) #31
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i97.i

_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i97.i: ; preds = %bb.dd, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  %i.agg = add i32 %.066111.i.i.i, 1              ; 2 uses
  %i.agh = zext i32 %i.agg to i64
  %i.agi = icmp sgt i64 %i.ac, %i.agh
  br i1 %i.agi, label %bb.da, label %_ZL22set_input_kq_mask_implIfLb1ELb1ELb0ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i, !llvm.loop !885

bb.de:                                            ; preds = %._crit_edge.i.i113.i, %.lr.ph109.i.i.i
  %i.agj = phi i64 [ 0, %.lr.ph109.i.i.i ], [ %i.ajd, %._crit_edge.i.i113.i ] ; 3 uses
  %i.agk = phi ptr [ %i.aed, %.lr.ph109.i.i.i ], [ %i.aje, %._crit_edge.i.i113.i ] ; 3 uses
  %.064107.i.i.i = phi i32 [ 0, %.lr.ph109.i.i.i ], [ %i.ajv, %._crit_edge.i.i113.i ] ; 2 uses
  %i.agl = add i32 %.064107.i.i.i, %i.afh
  %i.agm = load ptr, ptr %i.k, align 8, !tbaa !327 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 56
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !363
  %i.agp = zext i32 %i.agl to i64                 ; 3 uses
  %i.agq = getelementptr inbounds nuw [8 x i8], ptr %i.ago, i64 %i.agp
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !336
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !110
  %.fr114.i.i.i = freeze i32 %i.ags               ; 5 uses
  %i.agt = sext i32 %.fr114.i.i.i to i64          ; 6 uses
  %i.agu = load ptr, ptr %i.w, align 8, !tbaa !120
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %i.agt
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !110
  %i.agx = zext i32 %i.agw to i64                 ; 3 uses
  %i.agy = load ptr, ptr %i.aek, align 8, !tbaa !153
  %i.agz = load ptr, ptr %i.u, align 8, !tbaa !123 ; 2 uses
  %i.aha = ptrtoint ptr %i.agy to i64
  %i.ahb = ptrtoint ptr %i.agz to i64
  %i.ahc = sub i64 %i.aha, %i.ahb
  %i.ahd = sdiv exact i64 %i.ahc, 12440           ; 2 uses
  %.not.i.i.i.i98.i = icmp ugt i64 %i.ahd, %i.agx
  br i1 %.not.i.i.i.i98.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.101, i64 noundef %i.agx, i64 noundef %i.ahd) #29
          to label %.noexc.i.i101.i unwind label %bb.dv

.noexc.i.i101.i:                                  ; preds = %bb.df
  unreachable

bb.dg:                                            ; preds = %bb.de
  %i.ahe = getelementptr inbounds nuw [12440 x i8], ptr %i.agz, i64 %i.agx ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agm, i64 40
  %i.ahg = load ptr, ptr %i.ahf, align 8, !tbaa !366
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %i.agp
  %i.ahi = load i32, ptr %i.ahh, align 4, !tbaa !110 ; 6 uses
  %i.ahj = mul nsw i64 %i.aa, %i.agp
  %i.ahk = load i64, ptr %i.aee, align 8, !tbaa !393 ; 3 uses
  %i.ahl = urem i64 %i.agt, %i.ahk                ; 3 uses
  %i.ahm = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %i.ahl
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i80.i.i.i = icmp eq ptr %i.ahn, null
  br i1 %.not.i.i.i.i80.i.i.i, label %.loopexit.i.i.i.i106.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !157 ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 8
  %i.ahq = load i32, ptr %i.ahp, align 4, !tbaa !110
  %i.ahr = icmp eq i32 %.fr114.i.i.i, %i.ahq
  br i1 %i.ahr, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i112.i, label %.lr.ph.i.i.i.i81.i.i.i

bb.di:                                            ; preds = %bb.dj
  %i.ahs = icmp eq i32 %.fr114.i.i.i, %i.ahv
  br i1 %i.ahs, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i112.i, label %.lr.ph.i.i.i.i81.i.i.i, !llvm.loop !37

.lr.ph.i.i.i.i81.i.i.i:                           ; preds = %bb.dh, %bb.di
  %.020.i.i.i.i.i.i102.i = phi ptr [ %i.aht, %bb.di ], [ %i.aho, %bb.dh ]
  %i.aht = load ptr, ptr %.020.i.i.i.i.i.i102.i, align 8, !tbaa !157 ; 3 uses
  %.not18.i.i.i.i.i.i103.i = icmp eq ptr %i.aht, null
  br i1 %.not18.i.i.i.i.i.i103.i, label %.loopexit.i.i.i.i106.i, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph.i.i.i.i81.i.i.i
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !110 ; 2 uses
  %i.ahw = sext i32 %i.ahv to i64
  %i.ahx = urem i64 %i.ahw, %i.ahk
  %.not19.i.i.i.i.i.i104.i = icmp eq i64 %i.ahx, %i.ahl
  br i1 %.not19.i.i.i.i.i.i104.i, label %bb.di, label %..loopexit_crit_edge21.i.i.i.i.i.i105.i, !llvm.loop !37

..loopexit_crit_edge21.i.i.i.i.i.i105.i:          ; preds = %bb.dj
  br label %.loopexit.i.i.i.i106.i, !llvm.loop !37

.loopexit.i.i.i.i106.i:                           ; preds = %.lr.ph.i.i.i.i81.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i105.i, %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  store ptr %19, ptr %17, align 8, !tbaa !397
  %i.ahy = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc82.i.i.i unwind label %bb.dw ; 9 uses

.noexc82.i.i.i:                                   ; preds = %.loopexit.i.i.i.i106.i
  store ptr null, ptr %i.ahy, align 8, !tbaa !157
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 8
  store i32 %.fr114.i.i.i, ptr %i.ahz, align 8, !tbaa !399
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahy, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aia, i8 0, i64 24, i1 false)
  store ptr %i.ahy, ptr %i.ael, align 8, !tbaa !400
  %i.aib = load i64, ptr %i.aeh, align 8, !tbaa !431
  %i.aic = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aeg, i64 noundef %i.ahk, i64 noundef %i.agj, i64 noundef 1)
          to label %.noexc.i109.i unwind label %bb.du ; 2 uses

.noexc.i109.i:                                    ; preds = %.noexc82.i.i.i
  %i.aid = extractvalue { i8, i64 } %i.aic, 0
  %i.aie = trunc i8 %i.aid to i1
  br i1 %i.aie, label %bb.dk, label %bb.dp

bb.dk:                                            ; preds = %.noexc.i109.i
  %i.aif = extractvalue { i8, i64 } %i.aic, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %19, i64 noundef %i.aif)
          to label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i130.i unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.aig = landingpad { ptr, i32 }
          catch ptr null
  %i.aih = extractvalue { ptr, i32 } %i.aig, 0
  %i.aii = call ptr @__cxa_begin_catch(ptr %i.aih) #30 ; 0 uses
  store i64 %i.aib, ptr %i.aeh, align 8, !tbaa !431
  invoke void @__cxa_rethrow() #29
          to label %bb.do unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.aij = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i107.i unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.aik = landingpad { ptr, i32 }
          catch ptr null
  %i.ail = extractvalue { ptr, i32 } %i.aik, 0
  call void @__clang_call_terminate(ptr %i.ail) #33
  unreachable

bb.do:                                            ; preds = %bb.dl
  unreachable

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i130.i: ; preds = %bb.dk
  %i.aim = load i64, ptr %i.aee, align 8, !tbaa !393
  %i.ain = urem i64 %i.agt, %i.aim
  br label %bb.dp

bb.dp:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i130.i, %.noexc.i109.i
  %.0.i.i110.i = phi i64 [ %i.ain, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i130.i ], [ %i.ahl, %.noexc.i109.i ]
  %i.aio = load ptr, ptr %19, align 8, !tbaa !392 ; 3 uses
  %i.aip = getelementptr inbounds nuw [8 x i8], ptr %i.aio, i64 %.0.i.i110.i ; 3 uses
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !156 ; 2 uses
  %.not.i.i45.i.i = icmp eq ptr %i.aiq, null
  br i1 %.not.i.i45.i.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !157
  store ptr %i.air, ptr %i.ahy, align 8, !tbaa !157
  %i.ais = load ptr, ptr %i.aip, align 8, !tbaa !156
  store ptr %i.ahy, ptr %i.ais, align 8, !tbaa !157
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i111.i

bb.dr:                                            ; preds = %bb.dp
  %i.ait = load ptr, ptr %i.aef, align 8, !tbaa !401 ; 3 uses
  store ptr %i.ait, ptr %i.ahy, align 8, !tbaa !157
  store ptr %i.ahy, ptr %i.aef, align 8, !tbaa !401
  %.not11.i.i.i129.i = icmp eq ptr %i.ait, null
  br i1 %.not11.i.i.i129.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 8
  %i.aiv = load i64, ptr %i.aee, align 8, !tbaa !393
  %i.aiw = load i32, ptr %i.aiu, align 4, !tbaa !110
  %i.aix = sext i32 %i.aiw to i64
  %i.aiy = urem i64 %i.aix, %i.aiv
  %i.aiz = getelementptr inbounds nuw [8 x i8], ptr %i.aio, i64 %i.aiy
  store ptr %i.ahy, ptr %i.aiz, align 8, !tbaa !156
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  store ptr %i.aef, ptr %i.aip, align 8, !tbaa !156
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i111.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i111.i: ; preds = %bb.dt, %bb.dq
  %i.aja = load i64, ptr %i.aeo, align 8, !tbaa !440
  %i.ajb = add i64 %i.aja, 1                      ; 2 uses
  store i64 %i.ajb, ptr %i.aeo, align 8, !tbaa !440
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i112.i

bb.du:                                            ; preds = %.noexc82.i.i.i
  %i.ajc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i107.i

.body.i107.i:                                     ; preds = %bb.du, %bb.dm
  %eh.lpad-body.i108.i = phi { ptr, i32 } [ %i.ajc, %bb.du ], [ %i.aij, %bb.dm ]
  call void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %.body.i.i99.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i112.i: ; preds = %bb.di, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i111.i, %bb.dh
  %i.ajd = phi i64 [ %i.agj, %bb.dh ], [ %i.ajb, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i111.i ], [ %i.agj, %bb.di ]
  %i.aje = phi ptr [ %i.agk, %bb.dh ], [ %i.aio, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i111.i ], [ %i.agk, %bb.di ] ; 2 uses
  br i1 %i.aem, label %.lr.ph102.i.i.i, label %._crit_edge.i.i113.i

.lr.ph102.i.i.i:                                  ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i112.i
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 56
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !126 ; 2 uses
  %i.ajh = icmp ugt i32 %.fr114.i.i.i, 255
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ahe, i64 128
  %i.ajj = lshr i64 %i.agt, 6
  %i.ajk = and i64 %i.agt, 63
  %i.ajl = shl nuw i64 1, %i.ajk
  %i.ajm = getelementptr [4 x i8], ptr %1, i64 %i.ahj ; 2 uses
  br i1 %i.ajh, label %.lr.ph102.split.us.i.i.i, label %.lr.ph102.split.i.i.i

.lr.ph102.split.us.i.i.i:                         ; preds = %.lr.ph102.i.i.i, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.thread.us.i.i.i
  %i.ajn = phi i64 [ %i.ajt, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.thread.us.i.i.i ], [ 0, %.lr.ph102.i.i.i ] ; 2 uses
  %.0101.us.i.i.i = phi i32 [ %i.ajs, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.thread.us.i.i.i ], [ 0, %.lr.ph102.i.i.i ]
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %i.ajn
  %i.ajp = load i32, ptr %i.ajo, align 4, !tbaa !110
  %i.ajq = icmp eq i32 %i.ajp, -1
  br i1 %i.ajq, label %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.thread.us.i.i.i, label %.split.us.i.i128.i

_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.thread.us.i.i.i: ; preds = %.lr.ph102.split.us.i.i.i
  %i.ajr = getelementptr [4 x i8], ptr %i.ajm, i64 %i.ajn
  store float -inf, ptr %i.ajr, align 4, !tbaa !263
  %i.ajs = add i32 %.0101.us.i.i.i, 1             ; 2 uses
  %i.ajt = zext i32 %i.ajs to i64                 ; 2 uses
  %i.aju = icmp samesign ugt i64 %i.aa, %i.ajt
  br i1 %i.aju, label %.lr.ph102.split.us.i.i.i, label %._crit_edge.i.i113.i, !llvm.loop !886

._crit_edge.i.i113.i:                             ; preds = %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.thread.i.i.i, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.thread.us.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i112.i
  %i.ajv = add i32 %.064107.i.i.i, 1              ; 2 uses
  %i.ajw = zext i32 %i.ajv to i64
  %i.ajx = icmp sgt i64 %i.ae, %i.ajw
  br i1 %i.ajx, label %bb.de, label %._crit_edge110.i.i.i, !llvm.loop !887

bb.dv:                                            ; preds = %bb.df
  %i.ajy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i99.i

bb.dw:                                            ; preds = %.loopexit.i.i.i.i106.i
  %i.ajz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i99.i

.lr.ph102.split.i.i.i:                            ; preds = %.lr.ph102.i.i.i, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.thread.i.i.i
  %indvars.iv131.i.i.i = phi i64 [ %indvars.iv.next132.i.i.i, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.thread.i.i.i ], [ 0, %.lr.ph102.i.i.i ] ; 4 uses
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %indvars.iv131.i.i.i
  %i.akb = load i32, ptr %i.aka, align 4, !tbaa !110 ; 6 uses
  %i.akc = icmp eq i32 %i.akb, -1
  br i1 %i.akc, label %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.thread.i.i.i, label %bb.dx
end_hunk_9
begin_hunk_10_@_ZL22set_input_kq_mask_implIfLb1EEvRK22args_set_input_kq_maskPT_:bb.a
  %i.bdg = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.bdi = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.bdj = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.bdk = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 4 uses
  %i.bdl = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  %i.bdm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.bdn = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.bdo = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  %i.bdp = icmp sgt i64 %i.bac, 0
  %i.bdq = trunc i64 %i.bac to i32
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bds = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bdt = icmp sgt i64 %i.azy, 0
  %i.bdu = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  br label %bb.gu

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i137:          ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i137, %.lr.ph.i.i.i135.new
  %indvars.iv.i.i.i138 = phi i64 [ 0, %.lr.ph.i.i.i135.new ], [ %indvars.iv.next.i.i.i139.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i137 ] ; 4 uses
  %niter1904 = phi i64 [ 0, %.lr.ph.i.i.i135.new ], [ %niter1904.next.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i137 ]
  %i.bdv = getelementptr inbounds nuw [8 x i8], ptr %i.bcr, i64 %indvars.iv.i.i.i138
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !336
  %i.bdx = load i32, ptr %i.bdw, align 4, !tbaa !110
  %i.bdy = sext i32 %i.bdx to i64
  %i.bdz = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bdy ; 2 uses
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %i.bct, i64 %indvars.iv.i.i.i138
  %i.beb = load i32, ptr %i.bea, align 4, !tbaa !110
  %i.bec = load i32, ptr %i.bdz, align 4, !tbaa !110
  %i.bed = tail call i32 @llvm.smin.i32(i32 %i.beb, i32 %i.bec)
  store i32 %i.bed, ptr %i.bdz, align 4, !tbaa !110
  %indvars.iv.next.i.i.i139 = or disjoint i64 %indvars.iv.i.i.i138, 1 ; 2 uses
  %i.bee = getelementptr inbounds nuw [8 x i8], ptr %i.bcr, i64 %indvars.iv.next.i.i.i139
  %i.bef = load ptr, ptr %i.bee, align 8, !tbaa !336
  %i.beg = load i32, ptr %i.bef, align 4, !tbaa !110
  %i.beh = sext i32 %i.beg to i64
  %i.bei = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.beh ; 2 uses
  %i.bej = getelementptr inbounds nuw [4 x i8], ptr %i.bct, i64 %indvars.iv.next.i.i.i139
  %i.bek = load i32, ptr %i.bej, align 4, !tbaa !110
  %i.bel = load i32, ptr %i.bei, align 4, !tbaa !110
  %i.bem = tail call i32 @llvm.smin.i32(i32 %i.bek, i32 %i.bel)
  store i32 %i.bem, ptr %i.bei, align 4, !tbaa !110
  %indvars.iv.next.i.i.i139.1 = add nuw nsw i64 %indvars.iv.i.i.i138, 2 ; 2 uses
  %niter1904.next.1 = add i64 %niter1904, 2       ; 2 uses
  %niter1904.ncmp.1 = icmp eq i64 %niter1904.next.1, %unroll_iter1903
  br i1 %niter1904.ncmp.1, label %.preheader.i.i.i141.loopexit.unr-lcssa, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i137, !llvm.loop !892

bb.gu:                                            ; preds = %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i145, %.lr.ph121.i.i.i
  %.075120.i.i.i = phi i32 [ 0, %.lr.ph121.i.i.i ], [ %i.bfm, %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i145 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  store ptr %i.bdf, ptr %12, align 8, !tbaa !437
  store i64 1, ptr %i.bdg, align 8, !tbaa !438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdh, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bdi, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdj, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  store ptr %i.bdk, ptr %13, align 8, !tbaa !392
  store i64 1, ptr %i.bdl, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bdn, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdo, i8 0, i64 16, i1 false)
  br i1 %i.bdp, label %.lr.ph118.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i142

.lr.ph118.i.i.i:                                  ; preds = %bb.gu
  %i.ben = mul i32 %.075120.i.i.i, %i.bdq
  br label %bb.gy

._crit_edge119.i.i.i:                             ; preds = %._crit_edge.i.i.i161
  %.pre.i.i.i162 = load ptr, ptr %i.bdm, align 8, !tbaa !401 ; 2 uses
  %.not5.i.i.i.i.i.i.i163 = icmp eq ptr %.pre.i.i.i162, null
  br i1 %.not5.i.i.i.i.i.i.i163, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i142, label %.lr.ph.i.i.i.i.i.i.i164

.lr.ph.i.i.i.i.i.i.i164:                          ; preds = %._crit_edge119.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i167
  %.06.i.i.i.i.i.i.i165 = phi ptr [ %i.beo, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i167 ], [ %.pre.i.i.i162, %._crit_edge119.i.i.i ] ; 4 uses
  %i.beo = load ptr, ptr %.06.i.i.i.i.i.i.i165, align 8, !tbaa !157 ; 2 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i165, i64 16
  %i.beq = load ptr, ptr %i.bep, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i166 = icmp eq ptr %i.beq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i166, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i167, label %bb.gv

bb.gv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i164
  %i.ber = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i165, i64 32
  %i.bes = load ptr, ptr %i.ber, align 8, !tbaa !275
  %i.bet = ptrtoint ptr %i.bes to i64
  %i.beu = ptrtoint ptr %i.beq to i64
  %i.bev = sub i64 %i.bet, %i.beu
  call void @_ZdlPvm(ptr noundef nonnull %i.beq, i64 noundef %i.bev) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i167

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i167: ; preds = %bb.gv, %.lr.ph.i.i.i.i.i.i.i164
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i165, i64 noundef 40) #31
  %.not.i.i.i.i.i.i.i168 = icmp eq ptr %i.beo, null
  br i1 %.not.i.i.i.i.i.i.i168, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i.i169, label %.lr.ph.i.i.i.i.i.i.i164, !llvm.loop !38

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i.i169: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i167
  %.pre196.i.i = load ptr, ptr %13, align 8, !tbaa !392
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i142

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i142: ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i.i169, %._crit_edge119.i.i.i, %bb.gu
  %i.bew = phi ptr [ %.pre196.i.i, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i.i169 ], [ %i.biv, %._crit_edge119.i.i.i ], [ %i.bdk, %bb.gu ]
  %i.bex = load i64, ptr %i.bdl, align 8, !tbaa !393
  %i.bey = shl i64 %i.bex, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bew, i8 0, i64 %i.bey, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdm, i8 0, i64 16, i1 false)
  %i.bez = load ptr, ptr %13, align 8, !tbaa !392 ; 2 uses
  %i.bfa = icmp eq ptr %i.bez, %i.bdk
  br i1 %i.bfa, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i143, label %bb.gw

bb.gw:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i142
  %i.bfb = load i64, ptr %i.bdl, align 8, !tbaa !393
  %i.bfc = shl i64 %i.bfb, 3
  call void @_ZdlPvm(ptr noundef %i.bez, i64 noundef %i.bfc) #31
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i143

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i143: ; preds = %bb.gw, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.bfd = load ptr, ptr %i.bdh, align 8, !tbaa !439 ; 2 uses
  %.not5.i.i.i.i85.i.i.i = icmp eq ptr %i.bfd, null
  br i1 %.not5.i.i.i.i85.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i144, label %.lr.ph.i.i.i.i86.i.i.i

.lr.ph.i.i.i.i86.i.i.i:                           ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i143, %.lr.ph.i.i.i.i86.i.i.i
  %.06.i.i.i.i87.i.i.i = phi ptr [ %i.bfe, %.lr.ph.i.i.i.i86.i.i.i ], [ %i.bfd, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i143 ] ; 2 uses
  %i.bfe = load ptr, ptr %.06.i.i.i.i87.i.i.i, align 8, !tbaa !157 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i87.i.i.i, i64 noundef 16) #31
  %.not.i.i.i.i88.i.i.i = icmp eq ptr %i.bfe, null
  br i1 %.not.i.i.i.i88.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i144, label %.lr.ph.i.i.i.i86.i.i.i, !llvm.loop !41

_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i144: ; preds = %.lr.ph.i.i.i.i86.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i143
  %i.bff = load ptr, ptr %12, align 8, !tbaa !437
  %i.bfg = load i64, ptr %i.bdg, align 8, !tbaa !438
  %i.bfh = shl i64 %i.bfg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bff, i8 0, i64 %i.bfh, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdh, i8 0, i64 16, i1 false)
  %i.bfi = load ptr, ptr %12, align 8, !tbaa !437 ; 2 uses
  %i.bfj = icmp eq ptr %i.bfi, %i.bdf
  br i1 %i.bfj, label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i145, label %bb.gx

bb.gx:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i144
  %i.bfk = load i64, ptr %i.bdg, align 8, !tbaa !438
  %i.bfl = shl i64 %i.bfk, 3
  call void @_ZdlPvm(ptr noundef %i.bfi, i64 noundef %i.bfl) #31
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i145

_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i145: ; preds = %bb.gx, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.bfm = add i32 %.075120.i.i.i, 1              ; 2 uses
  %i.bfn = zext i32 %i.bfm to i64
  %i.bfo = icmp sgt i64 %i.baa, %i.bfn
  br i1 %i.bfo, label %bb.gu, label %_ZL22set_input_kq_mask_implIfLb1ELb0ELb1ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i, !llvm.loop !893

bb.gy:                                            ; preds = %._crit_edge.i.i.i161, %.lr.ph118.i.i.i
  %i.bfp = phi i64 [ 0, %.lr.ph118.i.i.i ], [ %i.biu, %._crit_edge.i.i.i161 ] ; 3 uses
  %i.bfq = phi ptr [ %i.bdk, %.lr.ph118.i.i.i ], [ %i.biv, %._crit_edge.i.i.i161 ] ; 3 uses
  %.073116.i.i.i = phi i32 [ 0, %.lr.ph118.i.i.i ], [ %i.bjn, %._crit_edge.i.i.i161 ] ; 2 uses
  %i.bfr = add i32 %.073116.i.i.i, %i.ben         ; 3 uses
  %i.bfs = load ptr, ptr %i.k, align 8, !tbaa !327 ; 3 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfs, i64 56
  %i.bfu = load ptr, ptr %i.bft, align 8, !tbaa !363
  %i.bfv = zext i32 %i.bfr to i64                 ; 3 uses
  %i.bfw = getelementptr inbounds nuw [8 x i8], ptr %i.bfu, i64 %i.bfv
  %i.bfx = load ptr, ptr %i.bfw, align 8, !tbaa !336
  %i.bfy = load i32, ptr %i.bfx, align 4, !tbaa !110
  %.fr123.i.i.i = freeze i32 %i.bfy               ; 5 uses
  %i.bfz = sext i32 %.fr123.i.i.i to i64          ; 6 uses
  %i.bga = load ptr, ptr %i.w, align 8, !tbaa !120
  %i.bgb = getelementptr inbounds nuw [4 x i8], ptr %i.bga, i64 %i.bfz
  %i.bgc = load i32, ptr %i.bgb, align 4, !tbaa !110
  %i.bgd = zext i32 %i.bgc to i64                 ; 3 uses
  %i.bge = load ptr, ptr %i.bdr, align 8, !tbaa !153
  %i.bgf = load ptr, ptr %i.u, align 8, !tbaa !123 ; 2 uses
  %i.bgg = ptrtoint ptr %i.bge to i64
  %i.bgh = ptrtoint ptr %i.bgf to i64
  %i.bgi = sub i64 %i.bgg, %i.bgh
  %i.bgj = sdiv exact i64 %i.bgi, 12440           ; 2 uses
  %.not.i.i.i.i.i146 = icmp ugt i64 %i.bgj, %i.bgd
  br i1 %.not.i.i.i.i.i146, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.101, i64 noundef %i.bgd, i64 noundef %i.bgj) #29
          to label %.noexc.i.i.i149 unwind label %bb.hp

.noexc.i.i.i149:                                  ; preds = %bb.gz
  unreachable

bb.ha:                                            ; preds = %bb.gy
  %i.bgk = getelementptr inbounds nuw [12440 x i8], ptr %i.bgf, i64 %i.bgd ; 3 uses
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bfs, i64 40
  %i.bgm = load ptr, ptr %i.bgl, align 8, !tbaa !366 ; 3 uses
  %i.bgn = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %i.bfv
  %i.bgo = load i32, ptr %i.bgn, align 4, !tbaa !110 ; 3 uses
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bfs, i64 4
  %i.bgq = load i32, ptr %i.bgp, align 4, !tbaa !312 ; 2 uses
  %i.bgr = shl i32 %i.bgq, 1
  %i.bgs = add i32 %i.bgr, %i.bfr
  %i.bgt = zext i32 %i.bgs to i64
  %i.bgu = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %i.bgt
  %i.bgv = load i32, ptr %i.bgu, align 4, !tbaa !110
  %i.bgw = add i32 %i.bgq, %i.bfr
  %i.bgx = zext i32 %i.bgw to i64
  %i.bgy = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %i.bgx
  %i.bgz = load i32, ptr %i.bgy, align 4, !tbaa !110 ; 2 uses
  %i.bha = mul nsw i64 %i.azy, %i.bfv
  %i.bhb = load i64, ptr %i.bdl, align 8, !tbaa !393 ; 3 uses
  %i.bhc = urem i64 %i.bfz, %i.bhb                ; 3 uses
  %i.bhd = getelementptr inbounds nuw [8 x i8], ptr %i.bfq, i64 %i.bhc
  %i.bhe = load ptr, ptr %i.bhd, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i89.i.i.i = icmp eq ptr %i.bhe, null
  br i1 %.not.i.i.i.i89.i.i.i, label %.loopexit.i.i.i.i.i154, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.bhf = load ptr, ptr %i.bhe, align 8, !tbaa !157 ; 2 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhf, i64 8
  %i.bhh = load i32, ptr %i.bhg, align 4, !tbaa !110
  %i.bhi = icmp eq i32 %.fr123.i.i.i, %i.bhh
  br i1 %i.bhi, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i160, label %.lr.ph.i.i.i.i90.i.i.i

bb.hc:                                            ; preds = %bb.hd
  %i.bhj = icmp eq i32 %.fr123.i.i.i, %i.bhm
  br i1 %i.bhj, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i160, label %.lr.ph.i.i.i.i90.i.i.i, !llvm.loop !37

.lr.ph.i.i.i.i90.i.i.i:                           ; preds = %bb.hb, %bb.hc
  %.020.i.i.i.i.i.i.i150 = phi ptr [ %i.bhk, %bb.hc ], [ %i.bhf, %bb.hb ]
  %i.bhk = load ptr, ptr %.020.i.i.i.i.i.i.i150, align 8, !tbaa !157 ; 3 uses
  %.not18.i.i.i.i.i.i.i151 = icmp eq ptr %i.bhk, null
  br i1 %.not18.i.i.i.i.i.i.i151, label %.loopexit.i.i.i.i.i154, label %bb.hd

bb.hd:                                            ; preds = %.lr.ph.i.i.i.i90.i.i.i
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhk, i64 8
  %i.bhm = load i32, ptr %i.bhl, align 4, !tbaa !110 ; 2 uses
  %i.bhn = sext i32 %i.bhm to i64
  %i.bho = urem i64 %i.bhn, %i.bhb
  %.not19.i.i.i.i.i.i.i152 = icmp eq i64 %i.bho, %i.bhc
  br i1 %.not19.i.i.i.i.i.i.i152, label %bb.hc, label %..loopexit_crit_edge21.i.i.i.i.i.i.i153, !llvm.loop !37

..loopexit_crit_edge21.i.i.i.i.i.i.i153:          ; preds = %bb.hd
  br label %.loopexit.i.i.i.i.i154, !llvm.loop !37

.loopexit.i.i.i.i.i154:                           ; preds = %.lr.ph.i.i.i.i90.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i.i153, %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store ptr %13, ptr %11, align 8, !tbaa !397
  %i.bhp = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc91.i.i.i unwind label %bb.hq ; 9 uses

.noexc91.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i154
  store ptr null, ptr %i.bhp, align 8, !tbaa !157
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 8
  store i32 %.fr123.i.i.i, ptr %i.bhq, align 8, !tbaa !399
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhp, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bhr, i8 0, i64 24, i1 false)
  store ptr %i.bhp, ptr %i.bds, align 8, !tbaa !400
  %i.bhs = load i64, ptr %i.bdo, align 8, !tbaa !431
  %i.bht = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bdn, i64 noundef %i.bhb, i64 noundef %i.bfp, i64 noundef 1)
          to label %.noexc.i.i157 unwind label %bb.ho ; 2 uses

.noexc.i.i157:                                    ; preds = %.noexc91.i.i.i
  %i.bhu = extractvalue { i8, i64 } %i.bht, 0
  %i.bhv = trunc i8 %i.bhu to i1
  br i1 %i.bhv, label %bb.he, label %bb.hj

bb.he:                                            ; preds = %.noexc.i.i157
  %i.bhw = extractvalue { i8, i64 } %i.bht, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %13, i64 noundef %i.bhw)
          to label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i177 unwind label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.bhx = landingpad { ptr, i32 }
          catch ptr null
  %i.bhy = extractvalue { ptr, i32 } %i.bhx, 0
  %i.bhz = call ptr @__cxa_begin_catch(ptr %i.bhy) #30 ; 0 uses
  store i64 %i.bhs, ptr %i.bdo, align 8, !tbaa !431
  invoke void @__cxa_rethrow() #29
          to label %bb.hi unwind label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.bia = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i155 unwind label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.bib = landingpad { ptr, i32 }
          catch ptr null
  %i.bic = extractvalue { ptr, i32 } %i.bib, 0
  call void @__clang_call_terminate(ptr %i.bic) #33
  unreachable

bb.hi:                                            ; preds = %bb.hf
  unreachable

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i177: ; preds = %bb.he
  %i.bid = load i64, ptr %i.bdl, align 8, !tbaa !393
  %i.bie = urem i64 %i.bfz, %i.bid
  br label %bb.hj

bb.hj:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i177, %.noexc.i.i157
  %.0.i.i.i158 = phi i64 [ %i.bie, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i177 ], [ %i.bhc, %.noexc.i.i157 ]
  %i.bif = load ptr, ptr %13, align 8, !tbaa !392 ; 3 uses
  %i.big = getelementptr inbounds nuw [8 x i8], ptr %i.bif, i64 %.0.i.i.i158 ; 3 uses
  %i.bih = load ptr, ptr %i.big, align 8, !tbaa !156 ; 2 uses
  %.not.i.i43.i.i = icmp eq ptr %i.bih, null
  br i1 %.not.i.i43.i.i, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.bii = load ptr, ptr %i.bih, align 8, !tbaa !157
  store ptr %i.bii, ptr %i.bhp, align 8, !tbaa !157
  %i.bij = load ptr, ptr %i.big, align 8, !tbaa !156
  store ptr %i.bhp, ptr %i.bij, align 8, !tbaa !157
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i159

bb.hl:                                            ; preds = %bb.hj
  %i.bik = load ptr, ptr %i.bdm, align 8, !tbaa !401 ; 3 uses
  store ptr %i.bik, ptr %i.bhp, align 8, !tbaa !157
  store ptr %i.bhp, ptr %i.bdm, align 8, !tbaa !401
  %.not11.i.i.i.i176 = icmp eq ptr %i.bik, null
  br i1 %.not11.i.i.i.i176, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bik, i64 8
  %i.bim = load i64, ptr %i.bdl, align 8, !tbaa !393
  %i.bin = load i32, ptr %i.bil, align 4, !tbaa !110
  %i.bio = sext i32 %i.bin to i64
  %i.bip = urem i64 %i.bio, %i.bim
  %i.biq = getelementptr inbounds nuw [8 x i8], ptr %i.bif, i64 %i.bip
  store ptr %i.bhp, ptr %i.biq, align 8, !tbaa !156
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  store ptr %i.bdm, ptr %i.big, align 8, !tbaa !156
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i159

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i159: ; preds = %bb.hn, %bb.hk
  %i.bir = load i64, ptr %i.bdu, align 8, !tbaa !440
  %i.bis = add i64 %i.bir, 1                      ; 2 uses
  store i64 %i.bis, ptr %i.bdu, align 8, !tbaa !440
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i160

bb.ho:                                            ; preds = %.noexc91.i.i.i
  %i.bit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i155

.body.i.i155:                                     ; preds = %bb.ho, %bb.hg
  %eh.lpad-body.i.i156 = phi { ptr, i32 } [ %i.bit, %bb.ho ], [ %i.bia, %bb.hg ]
  call void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %.body.i.i.i147

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i160: ; preds = %bb.hc, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i159, %bb.hb
  %i.biu = phi i64 [ %i.bfp, %bb.hb ], [ %i.bis, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i159 ], [ %i.bfp, %bb.hc ]
  %i.biv = phi ptr [ %i.bfq, %bb.hb ], [ %i.bif, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i159 ], [ %i.bfq, %bb.hc ] ; 2 uses
  br i1 %i.bdt, label %.lr.ph111.i.i.i, label %._crit_edge.i.i.i161

.lr.ph111.i.i.i:                                  ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i160
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bgk, i64 56
  %i.bix = load ptr, ptr %i.biw, align 8, !tbaa !126 ; 2 uses
  %i.biy = icmp ugt i32 %.fr123.i.i.i, 255
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bgk, i64 128
  %i.bja = lshr i64 %i.bfz, 6
  %i.bjb = and i64 %i.bfz, 63
  %i.bjc = shl nuw i64 1, %i.bjb
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bgk, i64 80
  %i.bje = getelementptr [4 x i8], ptr %1, i64 %i.bha ; 2 uses
  br i1 %i.biy, label %.lr.ph111.split.us.i.i.i, label %.lr.ph111.split.i.i.i

.lr.ph111.split.us.i.i.i:                         ; preds = %.lr.ph111.i.i.i, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i175
  %i.bjf = phi i64 [ %i.bjl, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i175 ], [ 0, %.lr.ph111.i.i.i ] ; 2 uses
  %.0110.us.i.i.i = phi i32 [ %i.bjk, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i175 ], [ 0, %.lr.ph111.i.i.i ]
  %i.bjg = getelementptr inbounds nuw [4 x i8], ptr %i.bix, i64 %i.bjf
  %i.bjh = load i32, ptr %i.bjg, align 4, !tbaa !110
  %i.bji = icmp eq i32 %i.bjh, -1
  br i1 %i.bji, label %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i175, label %.split.us.i.i.i174

_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i175: ; preds = %.lr.ph111.split.us.i.i.i
  %i.bjj = getelementptr [4 x i8], ptr %i.bje, i64 %i.bjf
  store float -inf, ptr %i.bjj, align 4, !tbaa !263
  %i.bjk = add i32 %.0110.us.i.i.i, 1             ; 2 uses
  %i.bjl = zext i32 %i.bjk to i64                 ; 2 uses
  %i.bjm = icmp samesign ugt i64 %i.azy, %i.bjl
  br i1 %i.bjm, label %.lr.ph111.split.us.i.i.i, label %._crit_edge.i.i.i161, !llvm.loop !894

._crit_edge.i.i.i161:                             ; preds = %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.i.i.i171, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.us.i.i.i175, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i160
  %i.bjn = add i32 %.073116.i.i.i, 1              ; 2 uses
  %i.bjo = zext i32 %i.bjn to i64
  %i.bjp = icmp sgt i64 %i.bac, %i.bjo
  br i1 %i.bjp, label %bb.gy, label %._crit_edge119.i.i.i, !llvm.loop !895

bb.hp:                                            ; preds = %bb.gz
  %i.bjq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i147

bb.hq:                                            ; preds = %.loopexit.i.i.i.i.i154
  %i.bjr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i147

.lr.ph111.split.i.i.i:                            ; preds = %.lr.ph111.i.i.i, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.i.i.i171
  %indvars.iv140.i.i.i = phi i64 [ %indvars.iv.next141.i.i.i, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread.i.i.i171 ], [ 0, %.lr.ph111.i.i.i ] ; 5 uses
  %i.bjs = getelementptr inbounds nuw [4 x i8], ptr %i.bix, i64 %indvars.iv140.i.i.i
  %i.bjt = load i32, ptr %i.bjs, align 4, !tbaa !110 ; 4 uses
  %i.bju = icmp eq i32 %i.bjt, -1
end_hunk_10
begin_hunk_11_@_ZL22set_input_kq_mask_implIfLb1EEvRK22args_set_input_kq_maskPT_:bb.a
  %i.cdv = load i32, ptr %i.cds, align 4, !tbaa !110
  %i.cdw = tail call i32 @llvm.smin.i32(i32 %i.cdu, i32 %i.cdv)
  store i32 %i.cdw, ptr %i.cds, align 4, !tbaa !110
  br label %.preheader.i.i89.i

.preheader.i.i89.i:                               ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i85.i.epil.preheader, %.preheader.i.i89.i.loopexit.unr-lcssa, %vector.ph1570
  %i.cdx = icmp sgt i64 %i.cat, 0
  br i1 %i.cdx, label %.lr.ph105.i.i.i, label %_ZL22set_input_kq_mask_implIfLb1ELb0ELb0ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i

.lr.ph105.i.i.i:                                  ; preds = %.preheader.i.i89.i
  %i.cdy = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.cdz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.cea = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ceb = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cec = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ced = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.cee = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.cef = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.ceg = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ceh = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.cei = icmp sgt i64 %i.cav, 0
  %i.cej = trunc i64 %i.cav to i32
  %i.cek = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cel = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cem = icmp sgt i64 %i.car, 0
  %i.cen = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  br label %bb.kl

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i85.i:           ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i85.i, %.lr.ph.i.i83.i.new
  %indvars.iv.i.i86.i = phi i64 [ 0, %.lr.ph.i.i83.i.new ], [ %indvars.iv.next.i.i87.i.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i85.i ] ; 4 uses
  %niter1894 = phi i64 [ 0, %.lr.ph.i.i83.i.new ], [ %niter1894.next.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i85.i ]
  %i.ceo = getelementptr inbounds nuw [8 x i8], ptr %i.cdk, i64 %indvars.iv.i.i86.i
  %i.cep = load ptr, ptr %i.ceo, align 8, !tbaa !336
  %i.ceq = load i32, ptr %i.cep, align 4, !tbaa !110
  %i.cer = sext i32 %i.ceq to i64
  %i.ces = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cer ; 2 uses
  %i.cet = getelementptr inbounds nuw [4 x i8], ptr %i.cdm, i64 %indvars.iv.i.i86.i
  %i.ceu = load i32, ptr %i.cet, align 4, !tbaa !110
  %i.cev = load i32, ptr %i.ces, align 4, !tbaa !110
  %i.cew = tail call i32 @llvm.smin.i32(i32 %i.ceu, i32 %i.cev)
  store i32 %i.cew, ptr %i.ces, align 4, !tbaa !110
  %indvars.iv.next.i.i87.i = or disjoint i64 %indvars.iv.i.i86.i, 1 ; 2 uses
  %i.cex = getelementptr inbounds nuw [8 x i8], ptr %i.cdk, i64 %indvars.iv.next.i.i87.i
  %i.cey = load ptr, ptr %i.cex, align 8, !tbaa !336
  %i.cez = load i32, ptr %i.cey, align 4, !tbaa !110
  %i.cfa = sext i32 %i.cez to i64
  %i.cfb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cfa ; 2 uses
  %i.cfc = getelementptr inbounds nuw [4 x i8], ptr %i.cdm, i64 %indvars.iv.next.i.i87.i
  %i.cfd = load i32, ptr %i.cfc, align 4, !tbaa !110
  %i.cfe = load i32, ptr %i.cfb, align 4, !tbaa !110
  %i.cff = tail call i32 @llvm.smin.i32(i32 %i.cfd, i32 %i.cfe)
  store i32 %i.cff, ptr %i.cfb, align 4, !tbaa !110
  %indvars.iv.next.i.i87.i.1 = add nuw nsw i64 %indvars.iv.i.i86.i, 2 ; 2 uses
  %niter1894.next.1 = add i64 %niter1894, 2       ; 2 uses
  %niter1894.ncmp.1 = icmp eq i64 %niter1894.next.1, %unroll_iter1893
  br i1 %niter1894.ncmp.1, label %.preheader.i.i89.i.loopexit.unr-lcssa, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i85.i, !llvm.loop !900

bb.kl:                                            ; preds = %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i93.i, %.lr.ph105.i.i.i
  %.060104.i.i.i = phi i32 [ 0, %.lr.ph105.i.i.i ], [ %i.cgf, %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i93.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.cdy, ptr %6, align 8, !tbaa !437
  store i64 1, ptr %i.cdz, align 8, !tbaa !438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cea, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ceb, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cec, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr %i.ced, ptr %7, align 8, !tbaa !392
  store i64 1, ptr %i.cee, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cef, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ceg, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ceh, i8 0, i64 16, i1 false)
  br i1 %i.cei, label %.lr.ph102.i.i.i51, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i90.i

.lr.ph102.i.i.i51:                                ; preds = %bb.kl
  %i.cfg = mul i32 %.060104.i.i.i, %i.cej
  br label %bb.kp

._crit_edge103.i.i.i:                             ; preds = %._crit_edge.i.i109.i
  %.pre.i.i110.i = load ptr, ptr %i.cef, align 8, !tbaa !401 ; 2 uses
  %.not5.i.i.i.i.i.i111.i = icmp eq ptr %.pre.i.i110.i, null
  br i1 %.not5.i.i.i.i.i.i111.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i90.i, label %.lr.ph.i.i.i.i.i.i112.i

.lr.ph.i.i.i.i.i.i112.i:                          ; preds = %._crit_edge103.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i115.i
  %.06.i.i.i.i.i.i113.i = phi ptr [ %i.cfh, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i115.i ], [ %.pre.i.i110.i, %._crit_edge103.i.i.i ] ; 4 uses
  %i.cfh = load ptr, ptr %.06.i.i.i.i.i.i113.i, align 8, !tbaa !157 ; 2 uses
  %i.cfi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i113.i, i64 16
  %i.cfj = load ptr, ptr %i.cfi, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i114.i = icmp eq ptr %i.cfj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i114.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i115.i, label %bb.km

bb.km:                                            ; preds = %.lr.ph.i.i.i.i.i.i112.i
  %i.cfk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i113.i, i64 32
  %i.cfl = load ptr, ptr %i.cfk, align 8, !tbaa !275
  %i.cfm = ptrtoint ptr %i.cfl to i64
  %i.cfn = ptrtoint ptr %i.cfj to i64
  %i.cfo = sub i64 %i.cfm, %i.cfn
  call void @_ZdlPvm(ptr noundef nonnull %i.cfj, i64 noundef %i.cfo) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i115.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i115.i: ; preds = %bb.km, %.lr.ph.i.i.i.i.i.i112.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i113.i, i64 noundef 40) #31
  %.not.i.i.i.i.i.i116.i = icmp eq ptr %i.cfh, null
  br i1 %.not.i.i.i.i.i.i116.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i117.i, label %.lr.ph.i.i.i.i.i.i112.i, !llvm.loop !38

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i117.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i115.i
  %.pre194.i.i = load ptr, ptr %7, align 8, !tbaa !392
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i90.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i90.i: ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i117.i, %._crit_edge103.i.i.i, %bb.kl
  %i.cfp = phi ptr [ %.pre194.i.i, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i117.i ], [ %i.cjd, %._crit_edge103.i.i.i ], [ %i.ced, %bb.kl ]
  %i.cfq = load i64, ptr %i.cee, align 8, !tbaa !393
  %i.cfr = shl i64 %i.cfq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cfp, i8 0, i64 %i.cfr, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cef, i8 0, i64 16, i1 false)
  %i.cfs = load ptr, ptr %7, align 8, !tbaa !392  ; 2 uses
  %i.cft = icmp eq ptr %i.cfs, %i.ced
  br i1 %i.cft, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i91.i, label %bb.kn

bb.kn:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i90.i
  %i.cfu = load i64, ptr %i.cee, align 8, !tbaa !393
  %i.cfv = shl i64 %i.cfu, 3
  call void @_ZdlPvm(ptr noundef %i.cfs, i64 noundef %i.cfv) #31
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i91.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i91.i: ; preds = %bb.kn, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i90.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.cfw = load ptr, ptr %i.cea, align 8, !tbaa !439 ; 2 uses
  %.not5.i.i.i.i70.i.i.i = icmp eq ptr %i.cfw, null
  br i1 %.not5.i.i.i.i70.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i92.i, label %.lr.ph.i.i.i.i71.i.i.i

.lr.ph.i.i.i.i71.i.i.i:                           ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i91.i, %.lr.ph.i.i.i.i71.i.i.i
  %.06.i.i.i.i72.i.i.i = phi ptr [ %i.cfx, %.lr.ph.i.i.i.i71.i.i.i ], [ %i.cfw, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i91.i ] ; 2 uses
  %i.cfx = load ptr, ptr %.06.i.i.i.i72.i.i.i, align 8, !tbaa !157 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i72.i.i.i, i64 noundef 16) #31
  %.not.i.i.i.i73.i.i.i = icmp eq ptr %i.cfx, null
  br i1 %.not.i.i.i.i73.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i92.i, label %.lr.ph.i.i.i.i71.i.i.i, !llvm.loop !41

_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i92.i: ; preds = %.lr.ph.i.i.i.i71.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i91.i
  %i.cfy = load ptr, ptr %6, align 8, !tbaa !437
  %i.cfz = load i64, ptr %i.cdz, align 8, !tbaa !438
  %i.cga = shl i64 %i.cfz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cfy, i8 0, i64 %i.cga, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cea, i8 0, i64 16, i1 false)
  %i.cgb = load ptr, ptr %6, align 8, !tbaa !437  ; 2 uses
  %i.cgc = icmp eq ptr %i.cgb, %i.cdy
  br i1 %i.cgc, label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i93.i, label %bb.ko

bb.ko:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i92.i
  %i.cgd = load i64, ptr %i.cdz, align 8, !tbaa !438
  %i.cge = shl i64 %i.cgd, 3
  call void @_ZdlPvm(ptr noundef %i.cgb, i64 noundef %i.cge) #31
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i93.i

_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i93.i: ; preds = %bb.ko, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i92.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cgf = add i32 %.060104.i.i.i, 1              ; 2 uses
  %i.cgg = zext i32 %i.cgf to i64
  %i.cgh = icmp sgt i64 %i.cat, %i.cgg
  br i1 %i.cgh, label %bb.kl, label %_ZL22set_input_kq_mask_implIfLb1ELb0ELb0ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i, !llvm.loop !901

bb.kp:                                            ; preds = %._crit_edge.i.i109.i, %.lr.ph102.i.i.i51
  %i.cgi = phi i64 [ 0, %.lr.ph102.i.i.i51 ], [ %i.cjc, %._crit_edge.i.i109.i ] ; 3 uses
  %i.cgj = phi ptr [ %i.ced, %.lr.ph102.i.i.i51 ], [ %i.cjd, %._crit_edge.i.i109.i ] ; 3 uses
  %.059100.i.i.i = phi i32 [ 0, %.lr.ph102.i.i.i51 ], [ %i.cju, %._crit_edge.i.i109.i ] ; 2 uses
  %i.cgk = add i32 %.059100.i.i.i, %i.cfg
  %i.cgl = load ptr, ptr %i.k, align 8, !tbaa !327 ; 2 uses
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.cgl, i64 56
  %i.cgn = load ptr, ptr %i.cgm, align 8, !tbaa !363
  %i.cgo = zext i32 %i.cgk to i64                 ; 3 uses
  %i.cgp = getelementptr inbounds nuw [8 x i8], ptr %i.cgn, i64 %i.cgo
  %i.cgq = load ptr, ptr %i.cgp, align 8, !tbaa !336
  %i.cgr = load i32, ptr %i.cgq, align 4, !tbaa !110
  %.fr107.i.i.i = freeze i32 %i.cgr               ; 5 uses
  %i.cgs = sext i32 %.fr107.i.i.i to i64          ; 6 uses
  %i.cgt = load ptr, ptr %i.w, align 8, !tbaa !120
  %i.cgu = getelementptr inbounds nuw [4 x i8], ptr %i.cgt, i64 %i.cgs
  %i.cgv = load i32, ptr %i.cgu, align 4, !tbaa !110
  %i.cgw = zext i32 %i.cgv to i64                 ; 3 uses
  %i.cgx = load ptr, ptr %i.cek, align 8, !tbaa !153
  %i.cgy = load ptr, ptr %i.u, align 8, !tbaa !123 ; 2 uses
  %i.cgz = ptrtoint ptr %i.cgx to i64
  %i.cha = ptrtoint ptr %i.cgy to i64
  %i.chb = sub i64 %i.cgz, %i.cha
  %i.chc = sdiv exact i64 %i.chb, 12440           ; 2 uses
  %.not.i.i.i.i94.i = icmp ugt i64 %i.chc, %i.cgw
  br i1 %.not.i.i.i.i94.i, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.101, i64 noundef %i.cgw, i64 noundef %i.chc) #29
          to label %.noexc.i.i97.i unwind label %bb.lh

.noexc.i.i97.i:                                   ; preds = %bb.kq
  unreachable

bb.kr:                                            ; preds = %bb.kp
  %i.chd = getelementptr inbounds nuw [12440 x i8], ptr %i.cgy, i64 %i.cgw ; 2 uses
  %i.che = getelementptr inbounds nuw i8, ptr %i.cgl, i64 40
  %i.chf = load ptr, ptr %i.che, align 8, !tbaa !366
  %i.chg = getelementptr inbounds nuw [4 x i8], ptr %i.chf, i64 %i.cgo
  %i.chh = load i32, ptr %i.chg, align 4, !tbaa !110 ; 2 uses
  %i.chi = mul nsw i64 %i.car, %i.cgo
  %i.chj = load i64, ptr %i.cee, align 8, !tbaa !393 ; 3 uses
  %i.chk = urem i64 %i.cgs, %i.chj                ; 3 uses
  %i.chl = getelementptr inbounds nuw [8 x i8], ptr %i.cgj, i64 %i.chk
  %i.chm = load ptr, ptr %i.chl, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i74.i.i.i = icmp eq ptr %i.chm, null
  br i1 %.not.i.i.i.i74.i.i.i, label %.loopexit.i.i.i.i102.i, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.chn = load ptr, ptr %i.chm, align 8, !tbaa !157 ; 2 uses
  %i.cho = getelementptr inbounds nuw i8, ptr %i.chn, i64 8
  %i.chp = load i32, ptr %i.cho, align 4, !tbaa !110
  %i.chq = icmp eq i32 %.fr107.i.i.i, %i.chp
  br i1 %i.chq, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i108.i, label %.lr.ph.i.i.i.i75.i.i.i

bb.kt:                                            ; preds = %bb.ku
  %i.chr = icmp eq i32 %.fr107.i.i.i, %i.chu
  br i1 %i.chr, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i108.i, label %.lr.ph.i.i.i.i75.i.i.i, !llvm.loop !37

.lr.ph.i.i.i.i75.i.i.i:                           ; preds = %bb.ks, %bb.kt
  %.020.i.i.i.i.i.i98.i = phi ptr [ %i.chs, %bb.kt ], [ %i.chn, %bb.ks ]
  %i.chs = load ptr, ptr %.020.i.i.i.i.i.i98.i, align 8, !tbaa !157 ; 3 uses
  %.not18.i.i.i.i.i.i99.i = icmp eq ptr %i.chs, null
  br i1 %.not18.i.i.i.i.i.i99.i, label %.loopexit.i.i.i.i102.i, label %bb.ku

bb.ku:                                            ; preds = %.lr.ph.i.i.i.i75.i.i.i
  %i.cht = getelementptr inbounds nuw i8, ptr %i.chs, i64 8
  %i.chu = load i32, ptr %i.cht, align 4, !tbaa !110 ; 2 uses
  %i.chv = sext i32 %i.chu to i64
  %i.chw = urem i64 %i.chv, %i.chj
  %.not19.i.i.i.i.i.i100.i = icmp eq i64 %i.chw, %i.chk
  br i1 %.not19.i.i.i.i.i.i100.i, label %bb.kt, label %..loopexit_crit_edge21.i.i.i.i.i.i101.i, !llvm.loop !37

..loopexit_crit_edge21.i.i.i.i.i.i101.i:          ; preds = %bb.ku
  br label %.loopexit.i.i.i.i102.i, !llvm.loop !37

.loopexit.i.i.i.i102.i:                           ; preds = %.lr.ph.i.i.i.i75.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i101.i, %bb.kr
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %7, ptr %5, align 8, !tbaa !397
  %i.chx = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc76.i.i.i unwind label %bb.li ; 9 uses

.noexc76.i.i.i:                                   ; preds = %.loopexit.i.i.i.i102.i
  store ptr null, ptr %i.chx, align 8, !tbaa !157
  %i.chy = getelementptr inbounds nuw i8, ptr %i.chx, i64 8
  store i32 %.fr107.i.i.i, ptr %i.chy, align 8, !tbaa !399
  %i.chz = getelementptr inbounds nuw i8, ptr %i.chx, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.chz, i8 0, i64 24, i1 false)
  store ptr %i.chx, ptr %i.cel, align 8, !tbaa !400
  %i.cia = load i64, ptr %i.ceh, align 8, !tbaa !431
  %i.cib = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ceg, i64 noundef %i.chj, i64 noundef %i.cgi, i64 noundef 1)
          to label %.noexc.i105.i unwind label %bb.lf ; 2 uses

.noexc.i105.i:                                    ; preds = %.noexc76.i.i.i
  %i.cic = extractvalue { i8, i64 } %i.cib, 0
  %i.cid = trunc i8 %i.cic to i1
  br i1 %i.cid, label %bb.kv, label %bb.la

bb.kv:                                            ; preds = %.noexc.i105.i
  %i.cie = extractvalue { i8, i64 } %i.cib, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %7, i64 noundef %i.cie)
          to label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i122.i unwind label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.cif = landingpad { ptr, i32 }
          catch ptr null
  %i.cig = extractvalue { ptr, i32 } %i.cif, 0
  %i.cih = call ptr @__cxa_begin_catch(ptr %i.cig) #30 ; 0 uses
  store i64 %i.cia, ptr %i.ceh, align 8, !tbaa !431
  invoke void @__cxa_rethrow() #29
          to label %bb.kz unwind label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.cii = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i103.i unwind label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.cij = landingpad { ptr, i32 }
          catch ptr null
  %i.cik = extractvalue { ptr, i32 } %i.cij, 0
  call void @__clang_call_terminate(ptr %i.cik) #33
  unreachable

bb.kz:                                            ; preds = %bb.kw
  unreachable

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i122.i: ; preds = %bb.kv
  %i.cil = load i64, ptr %i.cee, align 8, !tbaa !393
  %i.cim = urem i64 %i.cgs, %i.cil
  br label %bb.la

bb.la:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i122.i, %.noexc.i105.i
  %.0.i.i106.i = phi i64 [ %i.cim, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i122.i ], [ %i.chk, %.noexc.i105.i ]
  %i.cin = load ptr, ptr %7, align 8, !tbaa !392  ; 3 uses
  %i.cio = getelementptr inbounds nuw [8 x i8], ptr %i.cin, i64 %.0.i.i106.i ; 3 uses
  %i.cip = load ptr, ptr %i.cio, align 8, !tbaa !156 ; 2 uses
  %.not.i.i41.i.i = icmp eq ptr %i.cip, null
  br i1 %.not.i.i41.i.i, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.ciq = load ptr, ptr %i.cip, align 8, !tbaa !157
  store ptr %i.ciq, ptr %i.chx, align 8, !tbaa !157
  %i.cir = load ptr, ptr %i.cio, align 8, !tbaa !156
  store ptr %i.chx, ptr %i.cir, align 8, !tbaa !157
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i107.i

bb.lc:                                            ; preds = %bb.la
  %i.cis = load ptr, ptr %i.cef, align 8, !tbaa !401 ; 3 uses
  store ptr %i.cis, ptr %i.chx, align 8, !tbaa !157
  store ptr %i.chx, ptr %i.cef, align 8, !tbaa !401
  %.not11.i.i.i121.i = icmp eq ptr %i.cis, null
  br i1 %.not11.i.i.i121.i, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.cit = getelementptr inbounds nuw i8, ptr %i.cis, i64 8
  %i.ciu = load i64, ptr %i.cee, align 8, !tbaa !393
  %i.civ = load i32, ptr %i.cit, align 4, !tbaa !110
  %i.ciw = sext i32 %i.civ to i64
  %i.cix = urem i64 %i.ciw, %i.ciu
  %i.ciy = getelementptr inbounds nuw [8 x i8], ptr %i.cin, i64 %i.cix
  store ptr %i.chx, ptr %i.ciy, align 8, !tbaa !156
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.lc
  store ptr %i.cef, ptr %i.cio, align 8, !tbaa !156
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i107.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i107.i: ; preds = %bb.le, %bb.lb
  %i.ciz = load i64, ptr %i.cen, align 8, !tbaa !440
  %i.cja = add i64 %i.ciz, 1                      ; 2 uses
  store i64 %i.cja, ptr %i.cen, align 8, !tbaa !440
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i108.i

bb.lf:                                            ; preds = %.noexc76.i.i.i
  %i.cjb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i103.i

.body.i103.i:                                     ; preds = %bb.lf, %bb.kx
  %eh.lpad-body.i104.i = phi { ptr, i32 } [ %i.cjb, %bb.lf ], [ %i.cii, %bb.kx ]
  call void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.body.i.i95.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i108.i: ; preds = %bb.kt, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i107.i, %bb.ks
  %i.cjc = phi i64 [ %i.cgi, %bb.ks ], [ %i.cja, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i107.i ], [ %i.cgi, %bb.kt ]
  %i.cjd = phi ptr [ %i.cgj, %bb.ks ], [ %i.cin, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i107.i ], [ %i.cgj, %bb.kt ] ; 2 uses
  br i1 %i.cem, label %.lr.ph95.i.i.i, label %._crit_edge.i.i109.i

.lr.ph95.i.i.i:                                   ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i108.i
  %i.cje = getelementptr inbounds nuw i8, ptr %i.chd, i64 56
  %i.cjf = load ptr, ptr %i.cje, align 8, !tbaa !126 ; 2 uses
  %i.cjg = icmp ugt i32 %.fr107.i.i.i, 255
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.chd, i64 128
  %i.cji = lshr i64 %i.cgs, 6
  %i.cjj = and i64 %i.cgs, 63
  %i.cjk = shl nuw i64 1, %i.cjj
  %i.cjl = getelementptr [4 x i8], ptr %1, i64 %i.chi ; 2 uses
  br i1 %i.cjg, label %.lr.ph95.split.us.i.i.i, label %.lr.ph95.split.i.i.i

.lr.ph95.split.us.i.i.i:                          ; preds = %.lr.ph95.i.i.i, %bb.lg
  %i.cjm = phi i64 [ %i.cjs, %bb.lg ], [ 0, %.lr.ph95.i.i.i ] ; 2 uses
  %.094.us.i.i.i = phi i32 [ %i.cjr, %bb.lg ], [ 0, %.lr.ph95.i.i.i ]
  %i.cjn = getelementptr inbounds nuw [4 x i8], ptr %i.cjf, i64 %i.cjm
  %i.cjo = load i32, ptr %i.cjn, align 4, !tbaa !110
  %i.cjp = icmp eq i32 %i.cjo, -1
  br i1 %i.cjp, label %bb.lg, label %.split.us.i.i120.i

bb.lg:                                            ; preds = %.lr.ph95.split.us.i.i.i
  %i.cjq = getelementptr [4 x i8], ptr %i.cjl, i64 %i.cjm
  store float -inf, ptr %i.cjq, align 4, !tbaa !263
  %i.cjr = add i32 %.094.us.i.i.i, 1              ; 2 uses
  %i.cjs = zext i32 %i.cjr to i64                 ; 2 uses
  %i.cjt = icmp samesign ugt i64 %i.car, %i.cjs
  br i1 %i.cjt, label %.lr.ph95.split.us.i.i.i, label %._crit_edge.i.i109.i, !llvm.loop !902

._crit_edge.i.i109.i:                             ; preds = %bb.lm, %bb.lg, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i108.i
  %i.cju = add i32 %.059100.i.i.i, 1              ; 2 uses
  %i.cjv = zext i32 %i.cju to i64
  %i.cjw = icmp sgt i64 %i.cav, %i.cjv
  br i1 %i.cjw, label %bb.kp, label %._crit_edge103.i.i.i, !llvm.loop !903

bb.lh:                                            ; preds = %bb.kq
  %i.cjx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i95.i

bb.li:                                            ; preds = %.loopexit.i.i.i.i102.i
  %i.cjy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i95.i

.lr.ph95.split.i.i.i:                             ; preds = %.lr.ph95.i.i.i, %bb.lm
  %indvars.iv124.i.i.i = phi i64 [ %indvars.iv.next125.i.i.i, %bb.lm ], [ 0, %.lr.ph95.i.i.i ] ; 4 uses
  %i.cjz = getelementptr inbounds nuw [4 x i8], ptr %i.cjf, i64 %indvars.iv124.i.i.i
  %i.cka = load i32, ptr %i.cjz, align 4, !tbaa !110 ; 3 uses
  %i.ckb = icmp eq i32 %i.cka, -1
  br i1 %i.ckb, label %bb.lm, label %bb.lj
end_hunk_11
begin_hunk_12_@_ZL22set_input_kq_mask_implIfLb0EEvRK22args_set_input_kq_maskPT_:bb.a
  store i32 %i.df, ptr %i.db, align 4, !tbaa !110
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.epil.preheader, %.preheader.i.i.i.loopexit.unr-lcssa, %vector.ph1537
  %i.dg = icmp sgt i64 %i.ac, 0
  br i1 %i.dg, label %.lr.ph122.i.i.i, label %_ZL22set_input_kq_mask_implIfLb0ELb1ELb1ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i

.lr.ph122.i.i.i:                                  ; preds = %.preheader.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %24, i64 48 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.dm = getelementptr inbounds nuw i8, ptr %25, i64 48 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %25, i64 40 ; 3 uses
  %i.dr = icmp sgt i64 %i.ae, 0
  %i.ds = trunc i64 %i.ae to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dv = icmp sgt i64 %i.aa, 0
  %i.dw = sdiv i32 %i.y, 2                        ; 2 uses
  %i.dx = sub nsw i32 0, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 2 uses
  br label %bb.d

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i:             ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i ] ; 4 uses
  %niter1861 = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter1861.next.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !336
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !110
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.i.i
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !110
  %i.eg = load i32, ptr %i.ed, align 4, !tbaa !110
  %i.eh = tail call i32 @llvm.smin.i32(i32 %i.ef, i32 %i.eg)
  store i32 %i.eh, ptr %i.ed, align 4, !tbaa !110
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.i
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !336
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !110
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.i.i.i
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !110
  %i.ep = load i32, ptr %i.em, align 4, !tbaa !110
  %i.eq = tail call i32 @llvm.smin.i32(i32 %i.eo, i32 %i.ep)
  store i32 %i.eq, ptr %i.em, align 4, !tbaa !110
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter1861.next.1 = add i64 %niter1861, 2       ; 2 uses
  %niter1861.ncmp.1 = icmp eq i64 %niter1861.next.1, %unroll_iter1860
  br i1 %niter1861.ncmp.1, label %.preheader.i.i.i.loopexit.unr-lcssa, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i, !llvm.loop !908

bb.d:                                             ; preds = %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i, %.lr.ph122.i.i.i
  %.073121.i.i.i = phi i32 [ 0, %.lr.ph122.i.i.i ], [ %i.fq, %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  store ptr %i.dh, ptr %24, align 8, !tbaa !437
  store i64 1, ptr %i.di, align 8, !tbaa !438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dk, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  store ptr %i.dm, ptr %25, align 8, !tbaa !392
  store i64 1, ptr %i.dn, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dp, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false)
  br i1 %i.dr, label %.lr.ph119.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i

.lr.ph119.i.i.i:                                  ; preds = %bb.d
  %i.er = mul i32 %.073121.i.i.i, %i.ds
  br label %bb.h

._crit_edge120.i.i.i:                             ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.do, align 8, !tbaa !401 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %._crit_edge120.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.es, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i, %._crit_edge120.i.i.i ] ; 4 uses
  %i.es = load ptr, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !157 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !275
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ez) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i, i64 noundef 40) #31
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !38

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i
  %.pre199.i.i = load ptr, ptr %25, align 8, !tbaa !392
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i: ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i.i, %._crit_edge120.i.i.i, %bb.d
  %i.fa = phi ptr [ %.pre199.i.i, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i.i ], [ %i.io, %._crit_edge120.i.i.i ], [ %i.dm, %bb.d ]
  %i.fb = load i64, ptr %i.dn, align 8, !tbaa !393
  %i.fc = shl i64 %i.fb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fa, i8 0, i64 %i.fc, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, i8 0, i64 16, i1 false)
  %i.fd = load ptr, ptr %25, align 8, !tbaa !392  ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.dm
  br i1 %i.fe, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  %i.ff = load i64, ptr %i.dn, align 8, !tbaa !393
  %i.fg = shl i64 %i.ff, 3
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #31
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i: ; preds = %bb.f, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  %i.fh = load ptr, ptr %i.dj, align 8, !tbaa !439 ; 2 uses
  %.not5.i.i.i.i81.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not5.i.i.i.i81.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i82.i.i.i

.lr.ph.i.i.i.i82.i.i.i:                           ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i, %.lr.ph.i.i.i.i82.i.i.i
  %.06.i.i.i.i83.i.i.i = phi ptr [ %i.fi, %.lr.ph.i.i.i.i82.i.i.i ], [ %i.fh, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i ] ; 2 uses
  %i.fi = load ptr, ptr %.06.i.i.i.i83.i.i.i, align 8, !tbaa !157 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i83.i.i.i, i64 noundef 16) #31
  %.not.i.i.i.i84.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i84.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i82.i.i.i, !llvm.loop !41

_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i82.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i
  %i.fj = load ptr, ptr %24, align 8, !tbaa !437
  %i.fk = load i64, ptr %i.di, align 8, !tbaa !438
  %i.fl = shl i64 %i.fk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fj, i8 0, i64 %i.fl, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  %i.fm = load ptr, ptr %24, align 8, !tbaa !437  ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.dh
  br i1 %i.fn, label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  %i.fo = load i64, ptr %i.di, align 8, !tbaa !438
  %i.fp = shl i64 %i.fo, 3
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #31
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i

_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i: ; preds = %bb.g, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.fq = add i32 %.073121.i.i.i, 1               ; 2 uses
  %i.fr = zext i32 %i.fq to i64
  %i.fs = icmp sgt i64 %i.ac, %i.fr
  br i1 %i.fs, label %bb.d, label %_ZL22set_input_kq_mask_implIfLb0ELb1ELb1ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i, !llvm.loop !909

bb.h:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph119.i.i.i
  %i.ft = phi i64 [ 0, %.lr.ph119.i.i.i ], [ %i.in, %._crit_edge.i.i.i ] ; 3 uses
  %i.fu = phi ptr [ %i.dm, %.lr.ph119.i.i.i ], [ %i.io, %._crit_edge.i.i.i ] ; 3 uses
  %.071117.i.i.i = phi i32 [ 0, %.lr.ph119.i.i.i ], [ %i.jg, %._crit_edge.i.i.i ] ; 2 uses
  %i.fv = add i32 %.071117.i.i.i, %i.er
  %i.fw = load ptr, ptr %i.k, align 8, !tbaa !327 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 56
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !363
  %i.fz = zext i32 %i.fv to i64                   ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !336
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !110
  %.fr125.i.i.i = freeze i32 %i.gc                ; 5 uses
  %i.gd = sext i32 %.fr125.i.i.i to i64           ; 7 uses
  %i.ge = load ptr, ptr %i.w, align 8, !tbaa !120
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gd
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !110
  %i.gh = zext i32 %i.gg to i64                   ; 3 uses
  %i.gi = load ptr, ptr %i.dt, align 8, !tbaa !153
  %i.gj = load ptr, ptr %i.u, align 8, !tbaa !123 ; 2 uses
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = sdiv exact i64 %i.gm, 12440             ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.gn, %i.gh
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.101, i64 noundef %i.gh, i64 noundef %i.gn) #29
          to label %.noexc.i.i.i unwind label %bb.y

.noexc.i.i.i:                                     ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.go = getelementptr inbounds nuw [12440 x i8], ptr %i.gj, i64 %i.gh ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !366
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.fz
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !110 ; 5 uses
  %i.gt = mul nsw i64 %i.aa, %i.fz
  %i.gu = load i64, ptr %i.dn, align 8, !tbaa !393 ; 3 uses
  %i.gv = urem i64 %i.gd, %i.gu                   ; 3 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gv
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i85.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i85.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !157 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !110
  %i.hb = icmp eq i32 %.fr125.i.i.i, %i.ha
  br i1 %i.hb, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i, label %.lr.ph.i.i.i.i86.i.i.i

bb.l:                                             ; preds = %bb.m
  %i.hc = icmp eq i32 %.fr125.i.i.i, %i.hf
  br i1 %i.hc, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i, label %.lr.ph.i.i.i.i86.i.i.i, !llvm.loop !37

.lr.ph.i.i.i.i86.i.i.i:                           ; preds = %bb.k, %bb.l
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.hd, %bb.l ], [ %i.gy, %bb.k ]
  %i.hd = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !157 ; 3 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i86.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !110 ; 2 uses
  %i.hg = sext i32 %i.hf to i64
  %i.hh = urem i64 %i.hg, %i.gu
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.hh, %i.gv
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.l, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !37

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.m
  br label %.loopexit.i.i.i.i.i, !llvm.loop !37

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i86.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  store ptr %25, ptr %23, align 8, !tbaa !397
  %i.hi = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc87.i.i.i unwind label %bb.z ; 9 uses

.noexc87.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i
  store ptr null, ptr %i.hi, align 8, !tbaa !157
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store i32 %.fr125.i.i.i, ptr %i.hj, align 8, !tbaa !399
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, i8 0, i64 24, i1 false)
  store ptr %i.hi, ptr %i.du, align 8, !tbaa !400
  %i.hl = load i64, ptr %i.dq, align 8, !tbaa !431
  %i.hm = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i64 noundef %i.gu, i64 noundef %i.ft, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.x ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc87.i.i.i
  %i.hn = extractvalue { i8, i64 } %i.hm, 0
  %i.ho = trunc i8 %i.hn to i1
  br i1 %i.ho, label %bb.n, label %bb.s

bb.n:                                             ; preds = %.noexc.i.i
  %i.hp = extractvalue { i8, i64 } %i.hm, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %25, i64 noundef %i.hp)
          to label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hq = landingpad { ptr, i32 }
          catch ptr null
  %i.hr = extractvalue { ptr, i32 } %i.hq, 0
  %i.hs = call ptr @__cxa_begin_catch(ptr %i.hr) #30 ; 0 uses
  store i64 %i.hl, ptr %i.dq, align 8, !tbaa !431
  invoke void @__cxa_rethrow() #29
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #33
  unreachable

bb.r:                                             ; preds = %bb.o
  unreachable

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i: ; preds = %bb.n
  %i.hw = load i64, ptr %i.dn, align 8, !tbaa !393
  %i.hx = urem i64 %i.gd, %i.hw
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i, %.noexc.i.i
  %.0.i.i.i = phi i64 [ %i.hx, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i ], [ %i.gv, %.noexc.i.i ]
  %i.hy = load ptr, ptr %25, align 8, !tbaa !392  ; 3 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %.0.i.i.i ; 3 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !156 ; 2 uses
  %.not.i.i46.i.i = icmp eq ptr %i.ia, null
  br i1 %.not.i.i46.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !157
  store ptr %i.ib, ptr %i.hi, align 8, !tbaa !157
  %i.ic = load ptr, ptr %i.hz, align 8, !tbaa !156
  store ptr %i.hi, ptr %i.ic, align 8, !tbaa !157
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.id = load ptr, ptr %i.do, align 8, !tbaa !401 ; 3 uses
  store ptr %i.id, ptr %i.hi, align 8, !tbaa !157
  store ptr %i.hi, ptr %i.do, align 8, !tbaa !401
  %.not11.i.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not11.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load i64, ptr %i.dn, align 8, !tbaa !393
  %i.ig = load i32, ptr %i.ie, align 4, !tbaa !110
  %i.ih = sext i32 %i.ig to i64
  %i.ii = urem i64 %i.ih, %i.if
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.ii
  store ptr %i.hi, ptr %i.ij, align 8, !tbaa !156
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store ptr %i.do, ptr %i.hz, align 8, !tbaa !156
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i: ; preds = %bb.w, %bb.t
  %i.ik = load i64, ptr %i.dy, align 8, !tbaa !440
  %i.il = add i64 %i.ik, 1                        ; 2 uses
  store i64 %i.il, ptr %i.dy, align 8, !tbaa !440
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i

bb.x:                                             ; preds = %.noexc87.i.i.i
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.x, %bb.p
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.im, %bb.x ], [ %i.ht, %bb.p ]
  call void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %.body.i.i.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i: ; preds = %bb.l, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i, %bb.k
  %i.in = phi i64 [ %i.ft, %bb.k ], [ %i.il, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i ], [ %i.ft, %bb.l ]
  %i.io = phi ptr [ %i.fu, %bb.k ], [ %i.hy, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i ], [ %i.fu, %bb.l ] ; 2 uses
  br i1 %i.dv, label %.lr.ph112.i.i.i, label %._crit_edge.i.i.i

.lr.ph112.i.i.i:                                  ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !126 ; 2 uses
  %i.ir = icmp ugt i32 %.fr125.i.i.i, 255
  %i.is = getelementptr inbounds nuw i8, ptr %i.go, i64 128
  %i.it = lshr i64 %i.gd, 6
  %i.iu = and i64 %i.gd, 63
  %i.iv = shl nuw i64 1, %i.iu
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.gd
  %i.ix = getelementptr [4 x i8], ptr %1, i64 %i.gt ; 2 uses
  br i1 %i.ir, label %.lr.ph112.split.us.i.i.i, label %.lr.ph112.split.i.i.i

.lr.ph112.split.us.i.i.i:                         ; preds = %.lr.ph112.i.i.i, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i.i
  %i.iy = phi i64 [ %i.je, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i.i ], [ 0, %.lr.ph112.i.i.i ] ; 2 uses
  %.0111.us.i.i.i = phi i32 [ %i.jd, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i.i ], [ 0, %.lr.ph112.i.i.i ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !110
  %i.jb = icmp eq i32 %i.ja, -1
  br i1 %i.jb, label %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i.i, label %.split.us.i.i.i

_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i.i: ; preds = %.lr.ph112.split.us.i.i.i
  %i.jc = getelementptr [4 x i8], ptr %i.ix, i64 %i.iy
  store float -inf, ptr %i.jc, align 4, !tbaa !263
  %i.jd = add i32 %.0111.us.i.i.i, 1              ; 2 uses
  %i.je = zext i32 %i.jd to i64                   ; 2 uses
  %i.jf = icmp samesign ugt i64 %i.aa, %i.je
  br i1 %i.jf, label %.lr.ph112.split.us.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !910

._crit_edge.i.i.i:                                ; preds = %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.i.i.i, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i
  %i.jg = add i32 %.071117.i.i.i, 1               ; 2 uses
  %i.jh = zext i32 %i.jg to i64
  %i.ji = icmp sgt i64 %i.ae, %i.jh
  br i1 %i.ji, label %bb.h, label %._crit_edge120.i.i.i, !llvm.loop !911

bb.y:                                             ; preds = %bb.i
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.z:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.lr.ph112.split.i.i.i:                            ; preds = %.lr.ph112.i.i.i, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.i.i.i
  %indvars.iv142.i.i.i = phi i64 [ %indvars.iv.next143.i.i.i, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.i.i.i ], [ 0, %.lr.ph112.i.i.i ] ; 4 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv142.i.i.i
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !110 ; 6 uses
  %i.jn = icmp eq i32 %i.jm, -1
end_hunk_12
begin_hunk_13_@_ZL22set_input_kq_mask_implIfLb0EEvRK22args_set_input_kq_maskPT_:bb.a
  store i32 %i.acs, ptr %i.aco, align 4, !tbaa !110
  br label %.preheader.i.i108.i

.preheader.i.i108.i:                              ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i104.i.epil.preheader, %.preheader.i.i108.i.loopexit.unr-lcssa, %vector.ph1527
  %i.act = icmp sgt i64 %i.ac, 0
  br i1 %i.act, label %.lr.ph116.i.i.i, label %_ZL22set_input_kq_mask_implIfLb0ELb1ELb0ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i

.lr.ph116.i.i.i:                                  ; preds = %.preheader.i.i108.i
  %i.acu = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.acy = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.acz = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 4 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 6 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 3 uses
  %i.ade = icmp sgt i64 %i.ae, 0
  %i.adf = trunc i64 %i.ae to i32
  %i.adg = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.adh = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.adi = icmp sgt i64 %i.aa, 0
  %i.adj = sdiv i32 %i.y, 2                       ; 2 uses
  %i.adk = sub nsw i32 0, %i.adj
  %i.adl = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  br label %bb.cz

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i104.i:          ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i104.i, %.lr.ph.i.i102.i.new
  %indvars.iv.i.i105.i = phi i64 [ 0, %.lr.ph.i.i102.i.new ], [ %indvars.iv.next.i.i106.i.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i104.i ] ; 4 uses
  %niter1851 = phi i64 [ 0, %.lr.ph.i.i102.i.new ], [ %niter1851.next.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i104.i ]
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %i.acg, i64 %indvars.iv.i.i105.i
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !336
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !110
  %i.adp = sext i32 %i.ado to i64
  %i.adq = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.adp ; 2 uses
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %indvars.iv.i.i105.i
  %i.ads = load i32, ptr %i.adr, align 4, !tbaa !110
  %i.adt = load i32, ptr %i.adq, align 4, !tbaa !110
  %i.adu = tail call i32 @llvm.smin.i32(i32 %i.ads, i32 %i.adt)
  store i32 %i.adu, ptr %i.adq, align 4, !tbaa !110
  %indvars.iv.next.i.i106.i = or disjoint i64 %indvars.iv.i.i105.i, 1 ; 2 uses
  %i.adv = getelementptr inbounds nuw [8 x i8], ptr %i.acg, i64 %indvars.iv.next.i.i106.i
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !336
  %i.adx = load i32, ptr %i.adw, align 4, !tbaa !110
  %i.ady = sext i32 %i.adx to i64
  %i.adz = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ady ; 2 uses
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %indvars.iv.next.i.i106.i
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !110
  %i.aec = load i32, ptr %i.adz, align 4, !tbaa !110
  %i.aed = tail call i32 @llvm.smin.i32(i32 %i.aeb, i32 %i.aec)
  store i32 %i.aed, ptr %i.adz, align 4, !tbaa !110
  %indvars.iv.next.i.i106.i.1 = add nuw nsw i64 %indvars.iv.i.i105.i, 2 ; 2 uses
  %niter1851.next.1 = add i64 %niter1851, 2       ; 2 uses
  %niter1851.ncmp.1 = icmp eq i64 %niter1851.next.1, %unroll_iter1850
  br i1 %niter1851.ncmp.1, label %.preheader.i.i108.i.loopexit.unr-lcssa, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i104.i, !llvm.loop !916

bb.cz:                                            ; preds = %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i112.i, %.lr.ph116.i.i.i
  %.067115.i.i.i = phi i32 [ 0, %.lr.ph116.i.i.i ], [ %i.afd, %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i112.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  store ptr %i.acu, ptr %18, align 8, !tbaa !437
  store i64 1, ptr %i.acv, align 8, !tbaa !438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.acw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.acx, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.acy, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  store ptr %i.acz, ptr %19, align 8, !tbaa !392
  store i64 1, ptr %i.ada, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.adb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.adc, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.add, i8 0, i64 16, i1 false)
  br i1 %i.ade, label %.lr.ph113.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i

.lr.ph113.i.i.i:                                  ; preds = %bb.cz
  %i.aee = mul i32 %.067115.i.i.i, %i.adf
  br label %bb.dd

._crit_edge114.i.i.i:                             ; preds = %._crit_edge.i.i129.i
  %.pre.i.i130.i = load ptr, ptr %i.adb, align 8, !tbaa !401 ; 2 uses
  %.not5.i.i.i.i.i.i131.i = icmp eq ptr %.pre.i.i130.i, null
  br i1 %.not5.i.i.i.i.i.i131.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i, label %.lr.ph.i.i.i.i.i.i132.i

.lr.ph.i.i.i.i.i.i132.i:                          ; preds = %._crit_edge114.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i135.i
  %.06.i.i.i.i.i.i133.i = phi ptr [ %i.aef, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i135.i ], [ %.pre.i.i130.i, %._crit_edge114.i.i.i ] ; 4 uses
  %i.aef = load ptr, ptr %.06.i.i.i.i.i.i133.i, align 8, !tbaa !157 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i133.i, i64 16
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i134.i = icmp eq ptr %i.aeh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i134.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i135.i, label %bb.da

bb.da:                                            ; preds = %.lr.ph.i.i.i.i.i.i132.i
  %i.aei = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i133.i, i64 32
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !275
  %i.aek = ptrtoint ptr %i.aej to i64
  %i.ael = ptrtoint ptr %i.aeh to i64
  %i.aem = sub i64 %i.aek, %i.ael
  call void @_ZdlPvm(ptr noundef nonnull %i.aeh, i64 noundef %i.aem) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i135.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i135.i: ; preds = %bb.da, %.lr.ph.i.i.i.i.i.i132.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i133.i, i64 noundef 40) #31
  %.not.i.i.i.i.i.i136.i = icmp eq ptr %i.aef, null
  br i1 %.not.i.i.i.i.i.i136.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i137.i, label %.lr.ph.i.i.i.i.i.i132.i, !llvm.loop !38

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i137.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i135.i
  %.pre199.i138.i = load ptr, ptr %19, align 8, !tbaa !392
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i: ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i137.i, %._crit_edge114.i.i.i, %bb.cz
  %i.aen = phi ptr [ %.pre199.i138.i, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i137.i ], [ %i.aib, %._crit_edge114.i.i.i ], [ %i.acz, %bb.cz ]
  %i.aeo = load i64, ptr %i.ada, align 8, !tbaa !393
  %i.aep = shl i64 %i.aeo, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aen, i8 0, i64 %i.aep, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.adb, i8 0, i64 16, i1 false)
  %i.aeq = load ptr, ptr %19, align 8, !tbaa !392 ; 2 uses
  %i.aer = icmp eq ptr %i.aeq, %i.acz
  br i1 %i.aer, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i110.i, label %bb.db

bb.db:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i
  %i.aes = load i64, ptr %i.ada, align 8, !tbaa !393
  %i.aet = shl i64 %i.aes, 3
  call void @_ZdlPvm(ptr noundef %i.aeq, i64 noundef %i.aet) #31
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i110.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i110.i: ; preds = %bb.db, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  %i.aeu = load ptr, ptr %i.acw, align 8, !tbaa !439 ; 2 uses
  %.not5.i.i.i.i75.i.i.i = icmp eq ptr %i.aeu, null
  br i1 %.not5.i.i.i.i75.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i111.i, label %.lr.ph.i.i.i.i76.i.i.i

.lr.ph.i.i.i.i76.i.i.i:                           ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i110.i, %.lr.ph.i.i.i.i76.i.i.i
  %.06.i.i.i.i77.i.i.i = phi ptr [ %i.aev, %.lr.ph.i.i.i.i76.i.i.i ], [ %i.aeu, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i110.i ] ; 2 uses
  %i.aev = load ptr, ptr %.06.i.i.i.i77.i.i.i, align 8, !tbaa !157 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i77.i.i.i, i64 noundef 16) #31
  %.not.i.i.i.i78.i.i.i = icmp eq ptr %i.aev, null
  br i1 %.not.i.i.i.i78.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i111.i, label %.lr.ph.i.i.i.i76.i.i.i, !llvm.loop !41

_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i111.i: ; preds = %.lr.ph.i.i.i.i76.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i110.i
  %i.aew = load ptr, ptr %18, align 8, !tbaa !437
  %i.aex = load i64, ptr %i.acv, align 8, !tbaa !438
  %i.aey = shl i64 %i.aex, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aew, i8 0, i64 %i.aey, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.acw, i8 0, i64 16, i1 false)
  %i.aez = load ptr, ptr %18, align 8, !tbaa !437 ; 2 uses
  %i.afa = icmp eq ptr %i.aez, %i.acu
  br i1 %i.afa, label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i112.i, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i111.i
  %i.afb = load i64, ptr %i.acv, align 8, !tbaa !438
  %i.afc = shl i64 %i.afb, 3
  call void @_ZdlPvm(ptr noundef %i.aez, i64 noundef %i.afc) #31
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i112.i

_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i112.i: ; preds = %bb.dc, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i111.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  %i.afd = add i32 %.067115.i.i.i, 1              ; 2 uses
  %i.afe = zext i32 %i.afd to i64
  %i.aff = icmp sgt i64 %i.ac, %i.afe
  br i1 %i.aff, label %bb.cz, label %_ZL22set_input_kq_mask_implIfLb0ELb1ELb0ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i, !llvm.loop !917

bb.dd:                                            ; preds = %._crit_edge.i.i129.i, %.lr.ph113.i.i.i
  %i.afg = phi i64 [ 0, %.lr.ph113.i.i.i ], [ %i.aia, %._crit_edge.i.i129.i ] ; 3 uses
  %i.afh = phi ptr [ %i.acz, %.lr.ph113.i.i.i ], [ %i.aib, %._crit_edge.i.i129.i ] ; 3 uses
  %.065111.i.i.i = phi i32 [ 0, %.lr.ph113.i.i.i ], [ %i.ait, %._crit_edge.i.i129.i ] ; 2 uses
  %i.afi = add i32 %.065111.i.i.i, %i.aee
  %i.afj = load ptr, ptr %i.k, align 8, !tbaa !327 ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 56
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !363
  %i.afm = zext i32 %i.afi to i64                 ; 3 uses
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr %i.afl, i64 %i.afm
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !336
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !110
  %.fr119.i.i.i = freeze i32 %i.afp               ; 5 uses
  %i.afq = sext i32 %.fr119.i.i.i to i64          ; 7 uses
  %i.afr = load ptr, ptr %i.w, align 8, !tbaa !120
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.afr, i64 %i.afq
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !110
  %i.afu = zext i32 %i.aft to i64                 ; 3 uses
  %i.afv = load ptr, ptr %i.adg, align 8, !tbaa !153
  %i.afw = load ptr, ptr %i.u, align 8, !tbaa !123 ; 2 uses
  %i.afx = ptrtoint ptr %i.afv to i64
  %i.afy = ptrtoint ptr %i.afw to i64
  %i.afz = sub i64 %i.afx, %i.afy
  %i.aga = sdiv exact i64 %i.afz, 12440           ; 2 uses
  %.not.i.i.i.i113.i = icmp ugt i64 %i.aga, %i.afu
  br i1 %.not.i.i.i.i113.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.101, i64 noundef %i.afu, i64 noundef %i.aga) #29
          to label %.noexc.i.i116.i unwind label %bb.du

.noexc.i.i116.i:                                  ; preds = %bb.de
  unreachable

bb.df:                                            ; preds = %bb.dd
  %i.agb = getelementptr inbounds nuw [12440 x i8], ptr %i.afw, i64 %i.afu ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afj, i64 40
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !366
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %i.agd, i64 %i.afm
  %i.agf = load i32, ptr %i.age, align 4, !tbaa !110 ; 5 uses
  %i.agg = mul nsw i64 %i.aa, %i.afm
  %i.agh = load i64, ptr %i.ada, align 8, !tbaa !393 ; 3 uses
  %i.agi = urem i64 %i.afq, %i.agh                ; 3 uses
  %i.agj = getelementptr inbounds nuw [8 x i8], ptr %i.afh, i64 %i.agi
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i79.i.i.i = icmp eq ptr %i.agk, null
  br i1 %.not.i.i.i.i79.i.i.i, label %.loopexit.i.i.i.i121.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !157 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 8
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !110
  %i.ago = icmp eq i32 %.fr119.i.i.i, %i.agn
  br i1 %i.ago, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i128.i, label %.lr.ph.i.i.i.i80.i.i.i

bb.dh:                                            ; preds = %bb.di
  %i.agp = icmp eq i32 %.fr119.i.i.i, %i.ags
  br i1 %i.agp, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i128.i, label %.lr.ph.i.i.i.i80.i.i.i, !llvm.loop !37

.lr.ph.i.i.i.i80.i.i.i:                           ; preds = %bb.dg, %bb.dh
  %.020.i.i.i.i.i.i117.i = phi ptr [ %i.agq, %bb.dh ], [ %i.agl, %bb.dg ]
  %i.agq = load ptr, ptr %.020.i.i.i.i.i.i117.i, align 8, !tbaa !157 ; 3 uses
  %.not18.i.i.i.i.i.i118.i = icmp eq ptr %i.agq, null
  br i1 %.not18.i.i.i.i.i.i118.i, label %.loopexit.i.i.i.i121.i, label %bb.di

bb.di:                                            ; preds = %.lr.ph.i.i.i.i80.i.i.i
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 8
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !110 ; 2 uses
  %i.agt = sext i32 %i.ags to i64
  %i.agu = urem i64 %i.agt, %i.agh
  %.not19.i.i.i.i.i.i119.i = icmp eq i64 %i.agu, %i.agi
  br i1 %.not19.i.i.i.i.i.i119.i, label %bb.dh, label %..loopexit_crit_edge21.i.i.i.i.i.i120.i, !llvm.loop !37

..loopexit_crit_edge21.i.i.i.i.i.i120.i:          ; preds = %bb.di
  br label %.loopexit.i.i.i.i121.i, !llvm.loop !37

.loopexit.i.i.i.i121.i:                           ; preds = %.lr.ph.i.i.i.i80.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i120.i, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  store ptr %19, ptr %17, align 8, !tbaa !397
  %i.agv = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc81.i.i.i unwind label %bb.dv ; 9 uses

.noexc81.i.i.i:                                   ; preds = %.loopexit.i.i.i.i121.i
  store ptr null, ptr %i.agv, align 8, !tbaa !157
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 8
  store i32 %.fr119.i.i.i, ptr %i.agw, align 8, !tbaa !399
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agv, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.agx, i8 0, i64 24, i1 false)
  store ptr %i.agv, ptr %i.adh, align 8, !tbaa !400
  %i.agy = load i64, ptr %i.add, align 8, !tbaa !431
  %i.agz = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.adc, i64 noundef %i.agh, i64 noundef %i.afg, i64 noundef 1)
          to label %.noexc.i124.i unwind label %bb.dt ; 2 uses

.noexc.i124.i:                                    ; preds = %.noexc81.i.i.i
  %i.aha = extractvalue { i8, i64 } %i.agz, 0
  %i.ahb = trunc i8 %i.aha to i1
  br i1 %i.ahb, label %bb.dj, label %bb.do

bb.dj:                                            ; preds = %.noexc.i124.i
  %i.ahc = extractvalue { i8, i64 } %i.agz, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %19, i64 noundef %i.ahc)
          to label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i149.i unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ahd = landingpad { ptr, i32 }
          catch ptr null
  %i.ahe = extractvalue { ptr, i32 } %i.ahd, 0
  %i.ahf = call ptr @__cxa_begin_catch(ptr %i.ahe) #30 ; 0 uses
  store i64 %i.agy, ptr %i.add, align 8, !tbaa !431
  invoke void @__cxa_rethrow() #29
          to label %bb.dn unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ahg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i122.i unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ahh = landingpad { ptr, i32 }
          catch ptr null
  %i.ahi = extractvalue { ptr, i32 } %i.ahh, 0
  call void @__clang_call_terminate(ptr %i.ahi) #33
  unreachable

bb.dn:                                            ; preds = %bb.dk
  unreachable

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i149.i: ; preds = %bb.dj
  %i.ahj = load i64, ptr %i.ada, align 8, !tbaa !393
  %i.ahk = urem i64 %i.afq, %i.ahj
  br label %bb.do

bb.do:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i149.i, %.noexc.i124.i
  %.0.i.i125.i = phi i64 [ %i.ahk, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i149.i ], [ %i.agi, %.noexc.i124.i ]
  %i.ahl = load ptr, ptr %19, align 8, !tbaa !392 ; 3 uses
  %i.ahm = getelementptr inbounds nuw [8 x i8], ptr %i.ahl, i64 %.0.i.i125.i ; 3 uses
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !156 ; 2 uses
  %.not.i.i46.i126.i = icmp eq ptr %i.ahn, null
  br i1 %.not.i.i46.i126.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !157
  store ptr %i.aho, ptr %i.agv, align 8, !tbaa !157
  %i.ahp = load ptr, ptr %i.ahm, align 8, !tbaa !156
  store ptr %i.agv, ptr %i.ahp, align 8, !tbaa !157
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i127.i

bb.dq:                                            ; preds = %bb.do
  %i.ahq = load ptr, ptr %i.adb, align 8, !tbaa !401 ; 3 uses
  store ptr %i.ahq, ptr %i.agv, align 8, !tbaa !157
  store ptr %i.agv, ptr %i.adb, align 8, !tbaa !401
  %.not11.i.i.i148.i = icmp eq ptr %i.ahq, null
  br i1 %.not11.i.i.i148.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8
  %i.ahs = load i64, ptr %i.ada, align 8, !tbaa !393
  %i.aht = load i32, ptr %i.ahr, align 4, !tbaa !110
  %i.ahu = sext i32 %i.aht to i64
  %i.ahv = urem i64 %i.ahu, %i.ahs
  %i.ahw = getelementptr inbounds nuw [8 x i8], ptr %i.ahl, i64 %i.ahv
  store ptr %i.agv, ptr %i.ahw, align 8, !tbaa !156
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  store ptr %i.adb, ptr %i.ahm, align 8, !tbaa !156
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i127.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i127.i: ; preds = %bb.ds, %bb.dp
  %i.ahx = load i64, ptr %i.adl, align 8, !tbaa !440
  %i.ahy = add i64 %i.ahx, 1                      ; 2 uses
  store i64 %i.ahy, ptr %i.adl, align 8, !tbaa !440
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i128.i

bb.dt:                                            ; preds = %.noexc81.i.i.i
  %i.ahz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i122.i

.body.i122.i:                                     ; preds = %bb.dt, %bb.dl
  %eh.lpad-body.i123.i = phi { ptr, i32 } [ %i.ahz, %bb.dt ], [ %i.ahg, %bb.dl ]
  call void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %.body.i.i114.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i128.i: ; preds = %bb.dh, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i127.i, %bb.dg
  %i.aia = phi i64 [ %i.afg, %bb.dg ], [ %i.ahy, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i127.i ], [ %i.afg, %bb.dh ]
  %i.aib = phi ptr [ %i.afh, %bb.dg ], [ %i.ahl, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i127.i ], [ %i.afh, %bb.dh ] ; 2 uses
  br i1 %i.adi, label %.lr.ph106.i.i.i, label %._crit_edge.i.i129.i

.lr.ph106.i.i.i:                                  ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i128.i
  %i.aic = getelementptr inbounds nuw i8, ptr %i.agb, i64 56
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !126 ; 2 uses
  %i.aie = icmp ugt i32 %.fr119.i.i.i, 255
  %i.aif = getelementptr inbounds nuw i8, ptr %i.agb, i64 128
  %i.aig = lshr i64 %i.afq, 6
  %i.aih = and i64 %i.afq, 63
  %i.aii = shl nuw i64 1, %i.aih
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.afq
  %i.aik = getelementptr [4 x i8], ptr %1, i64 %i.agg ; 2 uses
  br i1 %i.aie, label %.lr.ph106.split.us.i.i.i, label %.lr.ph106.split.i.i.i

.lr.ph106.split.us.i.i.i:                         ; preds = %.lr.ph106.i.i.i, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i147.i
  %i.ail = phi i64 [ %i.air, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i147.i ], [ 0, %.lr.ph106.i.i.i ] ; 2 uses
  %.0105.us.i.i.i = phi i32 [ %i.aiq, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i147.i ], [ 0, %.lr.ph106.i.i.i ]
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %i.ail
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !110
  %i.aio = icmp eq i32 %i.ain, -1
  br i1 %i.aio, label %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i147.i, label %.split.us.i.i146.i

_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i147.i: ; preds = %.lr.ph106.split.us.i.i.i
  %i.aip = getelementptr [4 x i8], ptr %i.aik, i64 %i.ail
  store float -inf, ptr %i.aip, align 4, !tbaa !263
  %i.aiq = add i32 %.0105.us.i.i.i, 1             ; 2 uses
  %i.air = zext i32 %i.aiq to i64                 ; 2 uses
  %i.ais = icmp samesign ugt i64 %i.aa, %i.air
  br i1 %i.ais, label %.lr.ph106.split.us.i.i.i, label %._crit_edge.i.i129.i, !llvm.loop !918

._crit_edge.i.i129.i:                             ; preds = %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.i.i142.i, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us.i.i147.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i128.i
  %i.ait = add i32 %.065111.i.i.i, 1              ; 2 uses
  %i.aiu = zext i32 %i.ait to i64
  %i.aiv = icmp sgt i64 %i.ae, %i.aiu
  br i1 %i.aiv, label %bb.dd, label %._crit_edge114.i.i.i, !llvm.loop !919

bb.du:                                            ; preds = %bb.de
  %i.aiw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i114.i

bb.dv:                                            ; preds = %.loopexit.i.i.i.i121.i
  %i.aix = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i114.i

.lr.ph106.split.i.i.i:                            ; preds = %.lr.ph106.i.i.i, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.i.i142.i
  %indvars.iv136.i.i.i = phi i64 [ %indvars.iv.next137.i.i.i, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.i.i142.i ], [ 0, %.lr.ph106.i.i.i ] ; 4 uses
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %indvars.iv136.i.i.i
  %i.aiz = load i32, ptr %i.aiy, align 4, !tbaa !110 ; 6 uses
  %i.aja = icmp eq i32 %i.aiz, -1
end_hunk_13
begin_hunk_14_@_ZL22set_input_kq_mask_implIfLb0EEvRK22args_set_input_kq_maskPT_:bb.a
  %i.bck = load i32, ptr %i.bch, align 4, !tbaa !110
  %i.bcl = tail call i32 @llvm.smin.i32(i32 %i.bcj, i32 %i.bck)
  store i32 %i.bcl, ptr %i.bch, align 4, !tbaa !110
  br label %.preheader.i.i.i136

.preheader.i.i.i136:                              ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i132.epil.preheader, %.preheader.i.i.i136.loopexit.unr-lcssa, %vector.ph1557
  %i.bcm = icmp sgt i64 %i.azi, 0
  br i1 %i.bcm, label %.lr.ph107.i.i.i, label %_ZL22set_input_kq_mask_implIfLb0ELb0ELb1ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i

.lr.ph107.i.i.i:                                  ; preds = %.preheader.i.i.i136
  %i.bcn = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.bcr = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.bcs = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 4 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.bcv = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.bcw = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  %i.bcx = icmp sgt i64 %i.azk, 0
  %i.bcy = trunc i64 %i.azk to i32
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bda = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bdb = icmp sgt i64 %i.azg, 0
  %i.bdc = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  br label %bb.gw

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i132:          ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i132, %.lr.ph.i.i.i130.new
  %indvars.iv.i.i.i133 = phi i64 [ 0, %.lr.ph.i.i.i130.new ], [ %indvars.iv.next.i.i.i134.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i132 ] ; 4 uses
  %niter1881 = phi i64 [ 0, %.lr.ph.i.i.i130.new ], [ %niter1881.next.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i132 ]
  %i.bdd = getelementptr inbounds nuw [8 x i8], ptr %i.bbz, i64 %indvars.iv.i.i.i133
  %i.bde = load ptr, ptr %i.bdd, align 8, !tbaa !336
  %i.bdf = load i32, ptr %i.bde, align 4, !tbaa !110
  %i.bdg = sext i32 %i.bdf to i64
  %i.bdh = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bdg ; 2 uses
  %i.bdi = getelementptr inbounds nuw [4 x i8], ptr %i.bcb, i64 %indvars.iv.i.i.i133
  %i.bdj = load i32, ptr %i.bdi, align 4, !tbaa !110
  %i.bdk = load i32, ptr %i.bdh, align 4, !tbaa !110
  %i.bdl = tail call i32 @llvm.smin.i32(i32 %i.bdj, i32 %i.bdk)
  store i32 %i.bdl, ptr %i.bdh, align 4, !tbaa !110
  %indvars.iv.next.i.i.i134 = or disjoint i64 %indvars.iv.i.i.i133, 1 ; 2 uses
  %i.bdm = getelementptr inbounds nuw [8 x i8], ptr %i.bbz, i64 %indvars.iv.next.i.i.i134
  %i.bdn = load ptr, ptr %i.bdm, align 8, !tbaa !336
  %i.bdo = load i32, ptr %i.bdn, align 4, !tbaa !110
  %i.bdp = sext i32 %i.bdo to i64
  %i.bdq = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bdp ; 2 uses
  %i.bdr = getelementptr inbounds nuw [4 x i8], ptr %i.bcb, i64 %indvars.iv.next.i.i.i134
  %i.bds = load i32, ptr %i.bdr, align 4, !tbaa !110
  %i.bdt = load i32, ptr %i.bdq, align 4, !tbaa !110
  %i.bdu = tail call i32 @llvm.smin.i32(i32 %i.bds, i32 %i.bdt)
  store i32 %i.bdu, ptr %i.bdq, align 4, !tbaa !110
  %indvars.iv.next.i.i.i134.1 = add nuw nsw i64 %indvars.iv.i.i.i133, 2 ; 2 uses
  %niter1881.next.1 = add i64 %niter1881, 2       ; 2 uses
  %niter1881.ncmp.1 = icmp eq i64 %niter1881.next.1, %unroll_iter1880
  br i1 %niter1881.ncmp.1, label %.preheader.i.i.i136.loopexit.unr-lcssa, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i132, !llvm.loop !924

bb.gw:                                            ; preds = %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i140, %.lr.ph107.i.i.i
  %.064106.i.i.i = phi i32 [ 0, %.lr.ph107.i.i.i ], [ %i.beu, %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i140 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  store ptr %i.bcn, ptr %12, align 8, !tbaa !437
  store i64 1, ptr %i.bco, align 8, !tbaa !438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bcp, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bcq, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bcr, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  store ptr %i.bcs, ptr %13, align 8, !tbaa !392
  store i64 1, ptr %i.bct, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bcu, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bcv, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bcw, i8 0, i64 16, i1 false)
  br i1 %i.bcx, label %.lr.ph104.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i137

.lr.ph104.i.i.i:                                  ; preds = %bb.gw
  %i.bdv = mul i32 %.064106.i.i.i, %i.bcy
  br label %bb.ha

._crit_edge105.i.i.i:                             ; preds = %._crit_edge.i.i.i156
  %.pre.i.i.i157 = load ptr, ptr %i.bcu, align 8, !tbaa !401 ; 2 uses
  %.not5.i.i.i.i.i.i.i158 = icmp eq ptr %.pre.i.i.i157, null
  br i1 %.not5.i.i.i.i.i.i.i158, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i137, label %.lr.ph.i.i.i.i.i.i.i159

.lr.ph.i.i.i.i.i.i.i159:                          ; preds = %._crit_edge105.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i162
  %.06.i.i.i.i.i.i.i160 = phi ptr [ %i.bdw, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i162 ], [ %.pre.i.i.i157, %._crit_edge105.i.i.i ] ; 4 uses
  %i.bdw = load ptr, ptr %.06.i.i.i.i.i.i.i160, align 8, !tbaa !157 ; 2 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i160, i64 16
  %i.bdy = load ptr, ptr %i.bdx, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i161 = icmp eq ptr %i.bdy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i161, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i162, label %bb.gx

bb.gx:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i159
  %i.bdz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i160, i64 32
  %i.bea = load ptr, ptr %i.bdz, align 8, !tbaa !275
  %i.beb = ptrtoint ptr %i.bea to i64
  %i.bec = ptrtoint ptr %i.bdy to i64
  %i.bed = sub i64 %i.beb, %i.bec
  call void @_ZdlPvm(ptr noundef nonnull %i.bdy, i64 noundef %i.bed) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i162

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i162: ; preds = %bb.gx, %.lr.ph.i.i.i.i.i.i.i159
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i160, i64 noundef 40) #31
  %.not.i.i.i.i.i.i.i163 = icmp eq ptr %i.bdw, null
  br i1 %.not.i.i.i.i.i.i.i163, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i.i164, label %.lr.ph.i.i.i.i.i.i.i159, !llvm.loop !38

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i.i164: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i162
  %.pre194.i.i = load ptr, ptr %13, align 8, !tbaa !392
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i137

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i137: ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i.i164, %._crit_edge105.i.i.i, %bb.gw
  %i.bee = phi ptr [ %.pre194.i.i, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i.i164 ], [ %i.bhs, %._crit_edge105.i.i.i ], [ %i.bcs, %bb.gw ]
  %i.bef = load i64, ptr %i.bct, align 8, !tbaa !393
  %i.beg = shl i64 %i.bef, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bee, i8 0, i64 %i.beg, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bcu, i8 0, i64 16, i1 false)
  %i.beh = load ptr, ptr %13, align 8, !tbaa !392 ; 2 uses
  %i.bei = icmp eq ptr %i.beh, %i.bcs
  br i1 %i.bei, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i138, label %bb.gy

bb.gy:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i137
  %i.bej = load i64, ptr %i.bct, align 8, !tbaa !393
  %i.bek = shl i64 %i.bej, 3
  call void @_ZdlPvm(ptr noundef %i.beh, i64 noundef %i.bek) #31
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i138

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i138: ; preds = %bb.gy, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.bel = load ptr, ptr %i.bcp, align 8, !tbaa !439 ; 2 uses
  %.not5.i.i.i.i72.i.i.i = icmp eq ptr %i.bel, null
  br i1 %.not5.i.i.i.i72.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i139, label %.lr.ph.i.i.i.i73.i.i.i

.lr.ph.i.i.i.i73.i.i.i:                           ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i138, %.lr.ph.i.i.i.i73.i.i.i
  %.06.i.i.i.i74.i.i.i = phi ptr [ %i.bem, %.lr.ph.i.i.i.i73.i.i.i ], [ %i.bel, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i138 ] ; 2 uses
  %i.bem = load ptr, ptr %.06.i.i.i.i74.i.i.i, align 8, !tbaa !157 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i74.i.i.i, i64 noundef 16) #31
  %.not.i.i.i.i75.i.i.i = icmp eq ptr %i.bem, null
  br i1 %.not.i.i.i.i75.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i139, label %.lr.ph.i.i.i.i73.i.i.i, !llvm.loop !41

_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i139: ; preds = %.lr.ph.i.i.i.i73.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i.i138
  %i.ben = load ptr, ptr %12, align 8, !tbaa !437
  %i.beo = load i64, ptr %i.bco, align 8, !tbaa !438
  %i.bep = shl i64 %i.beo, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ben, i8 0, i64 %i.bep, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bcp, i8 0, i64 16, i1 false)
  %i.beq = load ptr, ptr %12, align 8, !tbaa !437 ; 2 uses
  %i.ber = icmp eq ptr %i.beq, %i.bcn
  br i1 %i.ber, label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i140, label %bb.gz

bb.gz:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i139
  %i.bes = load i64, ptr %i.bco, align 8, !tbaa !438
  %i.bet = shl i64 %i.bes, 3
  call void @_ZdlPvm(ptr noundef %i.beq, i64 noundef %i.bet) #31
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i140

_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i.i140: ; preds = %bb.gz, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.beu = add i32 %.064106.i.i.i, 1              ; 2 uses
  %i.bev = zext i32 %i.beu to i64
  %i.bew = icmp sgt i64 %i.azi, %i.bev
  br i1 %i.bew, label %bb.gw, label %_ZL22set_input_kq_mask_implIfLb0ELb0ELb1ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i, !llvm.loop !925

bb.ha:                                            ; preds = %._crit_edge.i.i.i156, %.lr.ph104.i.i.i
  %i.bex = phi i64 [ 0, %.lr.ph104.i.i.i ], [ %i.bhr, %._crit_edge.i.i.i156 ] ; 3 uses
  %i.bey = phi ptr [ %i.bcs, %.lr.ph104.i.i.i ], [ %i.bhs, %._crit_edge.i.i.i156 ] ; 3 uses
  %.063102.i.i.i = phi i32 [ 0, %.lr.ph104.i.i.i ], [ %i.bij, %._crit_edge.i.i.i156 ] ; 2 uses
  %i.bez = add i32 %.063102.i.i.i, %i.bdv
  %i.bfa = load ptr, ptr %i.k, align 8, !tbaa !327 ; 2 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bfa, i64 56
  %i.bfc = load ptr, ptr %i.bfb, align 8, !tbaa !363
  %i.bfd = zext i32 %i.bez to i64                 ; 3 uses
  %i.bfe = getelementptr inbounds nuw [8 x i8], ptr %i.bfc, i64 %i.bfd
  %i.bff = load ptr, ptr %i.bfe, align 8, !tbaa !336
  %i.bfg = load i32, ptr %i.bff, align 4, !tbaa !110
  %.fr110.i.i.i = freeze i32 %i.bfg               ; 5 uses
  %i.bfh = sext i32 %.fr110.i.i.i to i64          ; 6 uses
  %i.bfi = load ptr, ptr %i.w, align 8, !tbaa !120
  %i.bfj = getelementptr inbounds nuw [4 x i8], ptr %i.bfi, i64 %i.bfh
  %i.bfk = load i32, ptr %i.bfj, align 4, !tbaa !110
  %i.bfl = zext i32 %i.bfk to i64                 ; 3 uses
  %i.bfm = load ptr, ptr %i.bcz, align 8, !tbaa !153
  %i.bfn = load ptr, ptr %i.u, align 8, !tbaa !123 ; 2 uses
  %i.bfo = ptrtoint ptr %i.bfm to i64
  %i.bfp = ptrtoint ptr %i.bfn to i64
  %i.bfq = sub i64 %i.bfo, %i.bfp
  %i.bfr = sdiv exact i64 %i.bfq, 12440           ; 2 uses
  %.not.i.i.i.i.i141 = icmp ugt i64 %i.bfr, %i.bfl
  br i1 %.not.i.i.i.i.i141, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.101, i64 noundef %i.bfl, i64 noundef %i.bfr) #29
          to label %.noexc.i.i.i144 unwind label %bb.hs

.noexc.i.i.i144:                                  ; preds = %bb.hb
  unreachable

bb.hc:                                            ; preds = %bb.ha
  %i.bfs = getelementptr inbounds nuw [12440 x i8], ptr %i.bfn, i64 %i.bfl ; 2 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfa, i64 40
  %i.bfu = load ptr, ptr %i.bft, align 8, !tbaa !366
  %i.bfv = getelementptr inbounds nuw [4 x i8], ptr %i.bfu, i64 %i.bfd
  %i.bfw = load i32, ptr %i.bfv, align 4, !tbaa !110
  %i.bfx = mul nsw i64 %i.azg, %i.bfd
  %i.bfy = load i64, ptr %i.bct, align 8, !tbaa !393 ; 3 uses
  %i.bfz = urem i64 %i.bfh, %i.bfy                ; 3 uses
  %i.bga = getelementptr inbounds nuw [8 x i8], ptr %i.bey, i64 %i.bfz
  %i.bgb = load ptr, ptr %i.bga, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i76.i.i.i = icmp eq ptr %i.bgb, null
  br i1 %.not.i.i.i.i76.i.i.i, label %.loopexit.i.i.i.i.i149, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.bgc = load ptr, ptr %i.bgb, align 8, !tbaa !157 ; 2 uses
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bgc, i64 8
  %i.bge = load i32, ptr %i.bgd, align 4, !tbaa !110
  %i.bgf = icmp eq i32 %.fr110.i.i.i, %i.bge
  br i1 %i.bgf, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i155, label %.lr.ph.i.i.i.i77.i.i.i

bb.he:                                            ; preds = %bb.hf
  %i.bgg = icmp eq i32 %.fr110.i.i.i, %i.bgj
  br i1 %i.bgg, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i155, label %.lr.ph.i.i.i.i77.i.i.i, !llvm.loop !37

.lr.ph.i.i.i.i77.i.i.i:                           ; preds = %bb.hd, %bb.he
  %.020.i.i.i.i.i.i.i145 = phi ptr [ %i.bgh, %bb.he ], [ %i.bgc, %bb.hd ]
  %i.bgh = load ptr, ptr %.020.i.i.i.i.i.i.i145, align 8, !tbaa !157 ; 3 uses
  %.not18.i.i.i.i.i.i.i146 = icmp eq ptr %i.bgh, null
  br i1 %.not18.i.i.i.i.i.i.i146, label %.loopexit.i.i.i.i.i149, label %bb.hf

bb.hf:                                            ; preds = %.lr.ph.i.i.i.i77.i.i.i
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bgh, i64 8
  %i.bgj = load i32, ptr %i.bgi, align 4, !tbaa !110 ; 2 uses
  %i.bgk = sext i32 %i.bgj to i64
  %i.bgl = urem i64 %i.bgk, %i.bfy
  %.not19.i.i.i.i.i.i.i147 = icmp eq i64 %i.bgl, %i.bfz
  br i1 %.not19.i.i.i.i.i.i.i147, label %bb.he, label %..loopexit_crit_edge21.i.i.i.i.i.i.i148, !llvm.loop !37

..loopexit_crit_edge21.i.i.i.i.i.i.i148:          ; preds = %bb.hf
  br label %.loopexit.i.i.i.i.i149, !llvm.loop !37

.loopexit.i.i.i.i.i149:                           ; preds = %.lr.ph.i.i.i.i77.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i.i148, %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store ptr %13, ptr %11, align 8, !tbaa !397
  %i.bgm = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc78.i.i.i unwind label %bb.ht ; 9 uses

.noexc78.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i149
  store ptr null, ptr %i.bgm, align 8, !tbaa !157
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 8
  store i32 %.fr110.i.i.i, ptr %i.bgn, align 8, !tbaa !399
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgm, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bgo, i8 0, i64 24, i1 false)
  store ptr %i.bgm, ptr %i.bda, align 8, !tbaa !400
  %i.bgp = load i64, ptr %i.bcw, align 8, !tbaa !431
  %i.bgq = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bcv, i64 noundef %i.bfy, i64 noundef %i.bex, i64 noundef 1)
          to label %.noexc.i.i152 unwind label %bb.hq ; 2 uses

.noexc.i.i152:                                    ; preds = %.noexc78.i.i.i
  %i.bgr = extractvalue { i8, i64 } %i.bgq, 0
  %i.bgs = trunc i8 %i.bgr to i1
  br i1 %i.bgs, label %bb.hg, label %bb.hl

bb.hg:                                            ; preds = %.noexc.i.i152
  %i.bgt = extractvalue { i8, i64 } %i.bgq, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %13, i64 noundef %i.bgt)
          to label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i169 unwind label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.bgu = landingpad { ptr, i32 }
          catch ptr null
  %i.bgv = extractvalue { ptr, i32 } %i.bgu, 0
  %i.bgw = call ptr @__cxa_begin_catch(ptr %i.bgv) #30 ; 0 uses
  store i64 %i.bgp, ptr %i.bcw, align 8, !tbaa !431
  invoke void @__cxa_rethrow() #29
          to label %bb.hk unwind label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.bgx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i150 unwind label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.bgy = landingpad { ptr, i32 }
          catch ptr null
  %i.bgz = extractvalue { ptr, i32 } %i.bgy, 0
  call void @__clang_call_terminate(ptr %i.bgz) #33
  unreachable

bb.hk:                                            ; preds = %bb.hh
  unreachable

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i169: ; preds = %bb.hg
  %i.bha = load i64, ptr %i.bct, align 8, !tbaa !393
  %i.bhb = urem i64 %i.bfh, %i.bha
  br label %bb.hl

bb.hl:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i169, %.noexc.i.i152
  %.0.i.i.i153 = phi i64 [ %i.bhb, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i169 ], [ %i.bfz, %.noexc.i.i152 ]
  %i.bhc = load ptr, ptr %13, align 8, !tbaa !392 ; 3 uses
  %i.bhd = getelementptr inbounds nuw [8 x i8], ptr %i.bhc, i64 %.0.i.i.i153 ; 3 uses
  %i.bhe = load ptr, ptr %i.bhd, align 8, !tbaa !156 ; 2 uses
  %.not.i.i41.i.i = icmp eq ptr %i.bhe, null
  br i1 %.not.i.i41.i.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.bhf = load ptr, ptr %i.bhe, align 8, !tbaa !157
  store ptr %i.bhf, ptr %i.bgm, align 8, !tbaa !157
  %i.bhg = load ptr, ptr %i.bhd, align 8, !tbaa !156
  store ptr %i.bgm, ptr %i.bhg, align 8, !tbaa !157
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i154

bb.hn:                                            ; preds = %bb.hl
  %i.bhh = load ptr, ptr %i.bcu, align 8, !tbaa !401 ; 3 uses
  store ptr %i.bhh, ptr %i.bgm, align 8, !tbaa !157
  store ptr %i.bgm, ptr %i.bcu, align 8, !tbaa !401
  %.not11.i.i.i.i168 = icmp eq ptr %i.bhh, null
  br i1 %.not11.i.i.i.i168, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhh, i64 8
  %i.bhj = load i64, ptr %i.bct, align 8, !tbaa !393
  %i.bhk = load i32, ptr %i.bhi, align 4, !tbaa !110
  %i.bhl = sext i32 %i.bhk to i64
  %i.bhm = urem i64 %i.bhl, %i.bhj
  %i.bhn = getelementptr inbounds nuw [8 x i8], ptr %i.bhc, i64 %i.bhm
  store ptr %i.bgm, ptr %i.bhn, align 8, !tbaa !156
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  store ptr %i.bcu, ptr %i.bhd, align 8, !tbaa !156
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i154

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i154: ; preds = %bb.hp, %bb.hm
  %i.bho = load i64, ptr %i.bdc, align 8, !tbaa !440
  %i.bhp = add i64 %i.bho, 1                      ; 2 uses
  store i64 %i.bhp, ptr %i.bdc, align 8, !tbaa !440
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i155

bb.hq:                                            ; preds = %.noexc78.i.i.i
  %i.bhq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i150

.body.i.i150:                                     ; preds = %bb.hq, %bb.hi
  %eh.lpad-body.i.i151 = phi { ptr, i32 } [ %i.bhq, %bb.hq ], [ %i.bgx, %bb.hi ]
  call void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %.body.i.i.i142

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i155: ; preds = %bb.he, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i154, %bb.hd
  %i.bhr = phi i64 [ %i.bex, %bb.hd ], [ %i.bhp, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i154 ], [ %i.bex, %bb.he ]
  %i.bhs = phi ptr [ %i.bey, %bb.hd ], [ %i.bhc, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i.i154 ], [ %i.bey, %bb.he ] ; 2 uses
  br i1 %i.bdb, label %.lr.ph97.i.i.i, label %._crit_edge.i.i.i156

.lr.ph97.i.i.i:                                   ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i155
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bfs, i64 56
  %i.bhu = load ptr, ptr %i.bht, align 8, !tbaa !126 ; 2 uses
  %i.bhv = icmp ugt i32 %.fr110.i.i.i, 255
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bfs, i64 128
  %i.bhx = lshr i64 %i.bfh, 6
  %i.bhy = and i64 %i.bfh, 63
  %i.bhz = shl nuw i64 1, %i.bhy
  %i.bia = getelementptr [4 x i8], ptr %1, i64 %i.bfx ; 2 uses
  br i1 %i.bhv, label %.lr.ph97.split.us.i.i.i, label %.lr.ph97.split.i.i.i

.lr.ph97.split.us.i.i.i:                          ; preds = %.lr.ph97.i.i.i, %bb.hr
  %i.bib = phi i64 [ %i.bih, %bb.hr ], [ 0, %.lr.ph97.i.i.i ] ; 2 uses
  %.096.us.i.i.i = phi i32 [ %i.big, %bb.hr ], [ 0, %.lr.ph97.i.i.i ]
  %i.bic = getelementptr inbounds nuw [4 x i8], ptr %i.bhu, i64 %i.bib
  %i.bid = load i32, ptr %i.bic, align 4, !tbaa !110
  %i.bie = icmp eq i32 %i.bid, -1
  br i1 %i.bie, label %bb.hr, label %.split.us.i.i.i167

bb.hr:                                            ; preds = %.lr.ph97.split.us.i.i.i
  %i.bif = getelementptr [4 x i8], ptr %i.bia, i64 %i.bib
  store float -inf, ptr %i.bif, align 4, !tbaa !263
  %i.big = add i32 %.096.us.i.i.i, 1              ; 2 uses
  %i.bih = zext i32 %i.big to i64                 ; 2 uses
  %i.bii = icmp samesign ugt i64 %i.azg, %i.bih
  br i1 %i.bii, label %.lr.ph97.split.us.i.i.i, label %._crit_edge.i.i.i156, !llvm.loop !926

._crit_edge.i.i.i156:                             ; preds = %bb.hx, %bb.hr, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i.i155
  %i.bij = add i32 %.063102.i.i.i, 1              ; 2 uses
  %i.bik = zext i32 %i.bij to i64
  %i.bil = icmp sgt i64 %i.azk, %i.bik
  br i1 %i.bil, label %bb.ha, label %._crit_edge105.i.i.i, !llvm.loop !927

bb.hs:                                            ; preds = %bb.hb
  %i.bim = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i142

bb.ht:                                            ; preds = %.loopexit.i.i.i.i.i149
  %i.bin = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i142

.lr.ph97.split.i.i.i:                             ; preds = %.lr.ph97.i.i.i, %bb.hx
  %indvars.iv127.i.i.i = phi i64 [ %indvars.iv.next128.i.i.i, %bb.hx ], [ 0, %.lr.ph97.i.i.i ] ; 4 uses
  %i.bio = getelementptr inbounds nuw [4 x i8], ptr %i.bhu, i64 %indvars.iv127.i.i.i
  %i.bip = load i32, ptr %i.bio, align 4, !tbaa !110 ; 2 uses
  %i.biq = icmp eq i32 %i.bip, -1
  br i1 %i.biq, label %bb.hx, label %bb.hu
end_hunk_14
begin_hunk_15_@_ZL22set_input_kq_mask_implIfLb0EEvRK22args_set_input_kq_maskPT_:bb.a
  %i.cbg = load i32, ptr %i.cbd, align 4, !tbaa !110
  %i.cbh = tail call i32 @llvm.smin.i32(i32 %i.cbf, i32 %i.cbg)
  store i32 %i.cbh, ptr %i.cbd, align 4, !tbaa !110
  br label %.preheader.i.i106.i

.preheader.i.i106.i:                              ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i102.i.epil.preheader, %.preheader.i.i106.i.loopexit.unr-lcssa, %vector.ph1547
  %i.cbi = icmp sgt i64 %i.bye, 0
  br i1 %i.cbi, label %.lr.ph101.i.i.i, label %_ZL22set_input_kq_mask_implIfLb0ELb0ELb0ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i

.lr.ph101.i.i.i:                                  ; preds = %.preheader.i.i106.i
  %i.cbj = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.cbk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.cbl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.cbm = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cbn = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cbo = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.cbp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.cbq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.cbr = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.cbs = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.cbt = icmp sgt i64 %i.byg, 0
  %i.cbu = trunc i64 %i.byg to i32
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cbw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cbx = icmp sgt i64 %i.byc, 0
  %i.cby = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  br label %bb.kj

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i102.i:          ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i102.i, %.lr.ph.i.i100.i.new
  %indvars.iv.i.i103.i = phi i64 [ 0, %.lr.ph.i.i100.i.new ], [ %indvars.iv.next.i.i104.i.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i102.i ] ; 4 uses
  %niter1871 = phi i64 [ 0, %.lr.ph.i.i100.i.new ], [ %niter1871.next.1, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i102.i ]
  %i.cbz = getelementptr inbounds nuw [8 x i8], ptr %i.cav, i64 %indvars.iv.i.i103.i
  %i.cca = load ptr, ptr %i.cbz, align 8, !tbaa !336
  %i.ccb = load i32, ptr %i.cca, align 4, !tbaa !110
  %i.ccc = sext i32 %i.ccb to i64
  %i.ccd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ccc ; 2 uses
  %i.cce = getelementptr inbounds nuw [4 x i8], ptr %i.cax, i64 %indvars.iv.i.i103.i
  %i.ccf = load i32, ptr %i.cce, align 4, !tbaa !110
  %i.ccg = load i32, ptr %i.ccd, align 4, !tbaa !110
  %i.cch = tail call i32 @llvm.smin.i32(i32 %i.ccf, i32 %i.ccg)
  store i32 %i.cch, ptr %i.ccd, align 4, !tbaa !110
  %indvars.iv.next.i.i104.i = or disjoint i64 %indvars.iv.i.i103.i, 1 ; 2 uses
  %i.cci = getelementptr inbounds nuw [8 x i8], ptr %i.cav, i64 %indvars.iv.next.i.i104.i
  %i.ccj = load ptr, ptr %i.cci, align 8, !tbaa !336
  %i.cck = load i32, ptr %i.ccj, align 4, !tbaa !110
  %i.ccl = sext i32 %i.cck to i64
  %i.ccm = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ccl ; 2 uses
  %i.ccn = getelementptr inbounds nuw [4 x i8], ptr %i.cax, i64 %indvars.iv.next.i.i104.i
  %i.cco = load i32, ptr %i.ccn, align 4, !tbaa !110
  %i.ccp = load i32, ptr %i.ccm, align 4, !tbaa !110
  %i.ccq = tail call i32 @llvm.smin.i32(i32 %i.cco, i32 %i.ccp)
  store i32 %i.ccq, ptr %i.ccm, align 4, !tbaa !110
  %indvars.iv.next.i.i104.i.1 = add nuw nsw i64 %indvars.iv.i.i103.i, 2 ; 2 uses
  %niter1871.next.1 = add i64 %niter1871, 2       ; 2 uses
  %niter1871.ncmp.1 = icmp eq i64 %niter1871.next.1, %unroll_iter1870
  br i1 %niter1871.ncmp.1, label %.preheader.i.i106.i.loopexit.unr-lcssa, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i102.i, !llvm.loop !932

bb.kj:                                            ; preds = %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i110.i, %.lr.ph101.i.i.i
  %.058100.i.i.i = phi i32 [ 0, %.lr.ph101.i.i.i ], [ %i.cdq, %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i110.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.cbj, ptr %6, align 8, !tbaa !437
  store i64 1, ptr %i.cbk, align 8, !tbaa !438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cbl, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cbm, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cbn, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr %i.cbo, ptr %7, align 8, !tbaa !392
  store i64 1, ptr %i.cbp, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cbq, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cbr, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cbs, i8 0, i64 16, i1 false)
  br i1 %i.cbt, label %.lr.ph98.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i107.i

.lr.ph98.i.i.i:                                   ; preds = %bb.kj
  %i.ccr = mul i32 %.058100.i.i.i, %i.cbu
  br label %bb.kn

._crit_edge99.i.i.i:                              ; preds = %._crit_edge.i.i127.i
  %.pre.i.i128.i = load ptr, ptr %i.cbq, align 8, !tbaa !401 ; 2 uses
  %.not5.i.i.i.i.i.i129.i = icmp eq ptr %.pre.i.i128.i, null
  br i1 %.not5.i.i.i.i.i.i129.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i107.i, label %.lr.ph.i.i.i.i.i.i130.i

.lr.ph.i.i.i.i.i.i130.i:                          ; preds = %._crit_edge99.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i133.i
  %.06.i.i.i.i.i.i131.i = phi ptr [ %i.ccs, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i133.i ], [ %.pre.i.i128.i, %._crit_edge99.i.i.i ] ; 4 uses
  %i.ccs = load ptr, ptr %.06.i.i.i.i.i.i131.i, align 8, !tbaa !157 ; 2 uses
  %i.cct = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i131.i, i64 16
  %i.ccu = load ptr, ptr %i.cct, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i132.i = icmp eq ptr %i.ccu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i132.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i133.i, label %bb.kk

bb.kk:                                            ; preds = %.lr.ph.i.i.i.i.i.i130.i
  %i.ccv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i131.i, i64 32
  %i.ccw = load ptr, ptr %i.ccv, align 8, !tbaa !275
  %i.ccx = ptrtoint ptr %i.ccw to i64
  %i.ccy = ptrtoint ptr %i.ccu to i64
  %i.ccz = sub i64 %i.ccx, %i.ccy
  call void @_ZdlPvm(ptr noundef nonnull %i.ccu, i64 noundef %i.ccz) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i133.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i133.i: ; preds = %bb.kk, %.lr.ph.i.i.i.i.i.i130.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i131.i, i64 noundef 40) #31
  %.not.i.i.i.i.i.i134.i = icmp eq ptr %i.ccs, null
  br i1 %.not.i.i.i.i.i.i134.i, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i135.i, label %.lr.ph.i.i.i.i.i.i130.i, !llvm.loop !38

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i135.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i133.i
  %.pre194.i136.i = load ptr, ptr %7, align 8, !tbaa !392
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i107.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i107.i: ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i135.i, %._crit_edge99.i.i.i, %bb.kj
  %i.cda = phi ptr [ %.pre194.i136.i, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit.i135.i ], [ %i.cgo, %._crit_edge99.i.i.i ], [ %i.cbo, %bb.kj ]
  %i.cdb = load i64, ptr %i.cbp, align 8, !tbaa !393
  %i.cdc = shl i64 %i.cdb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cda, i8 0, i64 %i.cdc, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cbq, i8 0, i64 16, i1 false)
  %i.cdd = load ptr, ptr %7, align 8, !tbaa !392  ; 2 uses
  %i.cde = icmp eq ptr %i.cdd, %i.cbo
  br i1 %i.cde, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i108.i, label %bb.kl

bb.kl:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i107.i
  %i.cdf = load i64, ptr %i.cbp, align 8, !tbaa !393
  %i.cdg = shl i64 %i.cdf, 3
  call void @_ZdlPvm(ptr noundef %i.cdd, i64 noundef %i.cdg) #31
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i108.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i108.i: ; preds = %bb.kl, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i107.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.cdh = load ptr, ptr %i.cbl, align 8, !tbaa !439 ; 2 uses
  %.not5.i.i.i.i66.i.i.i = icmp eq ptr %i.cdh, null
  br i1 %.not5.i.i.i.i66.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i, label %.lr.ph.i.i.i.i67.i.i.i

.lr.ph.i.i.i.i67.i.i.i:                           ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i108.i, %.lr.ph.i.i.i.i67.i.i.i
  %.06.i.i.i.i68.i.i.i = phi ptr [ %i.cdi, %.lr.ph.i.i.i.i67.i.i.i ], [ %i.cdh, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i108.i ] ; 2 uses
  %i.cdi = load ptr, ptr %.06.i.i.i.i68.i.i.i, align 8, !tbaa !157 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i68.i.i.i, i64 noundef 16) #31
  %.not.i.i.i.i69.i.i.i = icmp eq ptr %i.cdi, null
  br i1 %.not.i.i.i.i69.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i, label %.lr.ph.i.i.i.i67.i.i.i, !llvm.loop !41

_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i: ; preds = %.lr.ph.i.i.i.i67.i.i.i, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit.i.i108.i
  %i.cdj = load ptr, ptr %6, align 8, !tbaa !437
  %i.cdk = load i64, ptr %i.cbk, align 8, !tbaa !438
  %i.cdl = shl i64 %i.cdk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cdj, i8 0, i64 %i.cdl, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cbl, i8 0, i64 16, i1 false)
  %i.cdm = load ptr, ptr %6, align 8, !tbaa !437  ; 2 uses
  %i.cdn = icmp eq ptr %i.cdm, %i.cbj
  br i1 %i.cdn, label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i110.i, label %bb.km

bb.km:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i
  %i.cdo = load i64, ptr %i.cbk, align 8, !tbaa !438
  %i.cdp = shl i64 %i.cdo, 3
  call void @_ZdlPvm(ptr noundef %i.cdm, i64 noundef %i.cdp) #31
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i110.i

_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit.i.i110.i: ; preds = %bb.km, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i109.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cdq = add i32 %.058100.i.i.i, 1              ; 2 uses
  %i.cdr = zext i32 %i.cdq to i64
  %i.cds = icmp sgt i64 %i.bye, %i.cdr
  br i1 %i.cds, label %bb.kj, label %_ZL22set_input_kq_mask_implIfLb0ELb0ELb0ELb1EEvRK22args_set_input_kq_maskPT_.exit.i.i, !llvm.loop !933

bb.kn:                                            ; preds = %._crit_edge.i.i127.i, %.lr.ph98.i.i.i
  %i.cdt = phi i64 [ 0, %.lr.ph98.i.i.i ], [ %i.cgn, %._crit_edge.i.i127.i ] ; 3 uses
  %i.cdu = phi ptr [ %i.cbo, %.lr.ph98.i.i.i ], [ %i.cgo, %._crit_edge.i.i127.i ] ; 3 uses
  %.05796.i.i.i = phi i32 [ 0, %.lr.ph98.i.i.i ], [ %i.chf, %._crit_edge.i.i127.i ] ; 2 uses
  %i.cdv = add i32 %.05796.i.i.i, %i.ccr
  %i.cdw = load ptr, ptr %i.k, align 8, !tbaa !327 ; 2 uses
  %i.cdx = getelementptr inbounds nuw i8, ptr %i.cdw, i64 56
  %i.cdy = load ptr, ptr %i.cdx, align 8, !tbaa !363
  %i.cdz = zext i32 %i.cdv to i64                 ; 3 uses
  %i.cea = getelementptr inbounds nuw [8 x i8], ptr %i.cdy, i64 %i.cdz
  %i.ceb = load ptr, ptr %i.cea, align 8, !tbaa !336
  %i.cec = load i32, ptr %i.ceb, align 4, !tbaa !110
  %.fr104.i.i.i = freeze i32 %i.cec               ; 5 uses
  %i.ced = sext i32 %.fr104.i.i.i to i64          ; 6 uses
  %i.cee = load ptr, ptr %i.w, align 8, !tbaa !120
  %i.cef = getelementptr inbounds nuw [4 x i8], ptr %i.cee, i64 %i.ced
  %i.ceg = load i32, ptr %i.cef, align 4, !tbaa !110
  %i.ceh = zext i32 %i.ceg to i64                 ; 3 uses
  %i.cei = load ptr, ptr %i.cbv, align 8, !tbaa !153
  %i.cej = load ptr, ptr %i.u, align 8, !tbaa !123 ; 2 uses
  %i.cek = ptrtoint ptr %i.cei to i64
  %i.cel = ptrtoint ptr %i.cej to i64
  %i.cem = sub i64 %i.cek, %i.cel
  %i.cen = sdiv exact i64 %i.cem, 12440           ; 2 uses
  %.not.i.i.i.i111.i = icmp ugt i64 %i.cen, %i.ceh
  br i1 %.not.i.i.i.i111.i, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.101, i64 noundef %i.ceh, i64 noundef %i.cen) #29
          to label %.noexc.i.i114.i unwind label %bb.lf

.noexc.i.i114.i:                                  ; preds = %bb.ko
  unreachable

bb.kp:                                            ; preds = %bb.kn
  %i.ceo = getelementptr inbounds nuw [12440 x i8], ptr %i.cej, i64 %i.ceh ; 2 uses
  %i.cep = getelementptr inbounds nuw i8, ptr %i.cdw, i64 40
  %i.ceq = load ptr, ptr %i.cep, align 8, !tbaa !366
  %i.cer = getelementptr inbounds nuw [4 x i8], ptr %i.ceq, i64 %i.cdz
  %i.ces = load i32, ptr %i.cer, align 4, !tbaa !110
  %i.cet = mul nsw i64 %i.byc, %i.cdz
  %i.ceu = load i64, ptr %i.cbp, align 8, !tbaa !393 ; 3 uses
  %i.cev = urem i64 %i.ced, %i.ceu                ; 3 uses
  %i.cew = getelementptr inbounds nuw [8 x i8], ptr %i.cdu, i64 %i.cev
  %i.cex = load ptr, ptr %i.cew, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i70.i.i.i = icmp eq ptr %i.cex, null
  br i1 %.not.i.i.i.i70.i.i.i, label %.loopexit.i.i.i.i119.i, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.cey = load ptr, ptr %i.cex, align 8, !tbaa !157 ; 2 uses
  %i.cez = getelementptr inbounds nuw i8, ptr %i.cey, i64 8
  %i.cfa = load i32, ptr %i.cez, align 4, !tbaa !110
  %i.cfb = icmp eq i32 %.fr104.i.i.i, %i.cfa
  br i1 %i.cfb, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i126.i, label %.lr.ph.i.i.i.i71.i.i.i

bb.kr:                                            ; preds = %bb.ks
  %i.cfc = icmp eq i32 %.fr104.i.i.i, %i.cff
  br i1 %i.cfc, label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i126.i, label %.lr.ph.i.i.i.i71.i.i.i, !llvm.loop !37

.lr.ph.i.i.i.i71.i.i.i:                           ; preds = %bb.kq, %bb.kr
  %.020.i.i.i.i.i.i115.i = phi ptr [ %i.cfd, %bb.kr ], [ %i.cey, %bb.kq ]
  %i.cfd = load ptr, ptr %.020.i.i.i.i.i.i115.i, align 8, !tbaa !157 ; 3 uses
  %.not18.i.i.i.i.i.i116.i = icmp eq ptr %i.cfd, null
  br i1 %.not18.i.i.i.i.i.i116.i, label %.loopexit.i.i.i.i119.i, label %bb.ks

bb.ks:                                            ; preds = %.lr.ph.i.i.i.i71.i.i.i
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.cfd, i64 8
  %i.cff = load i32, ptr %i.cfe, align 4, !tbaa !110 ; 2 uses
  %i.cfg = sext i32 %i.cff to i64
  %i.cfh = urem i64 %i.cfg, %i.ceu
  %.not19.i.i.i.i.i.i117.i = icmp eq i64 %i.cfh, %i.cev
  br i1 %.not19.i.i.i.i.i.i117.i, label %bb.kr, label %..loopexit_crit_edge21.i.i.i.i.i.i118.i, !llvm.loop !37

..loopexit_crit_edge21.i.i.i.i.i.i118.i:          ; preds = %bb.ks
  br label %.loopexit.i.i.i.i119.i, !llvm.loop !37

.loopexit.i.i.i.i119.i:                           ; preds = %.lr.ph.i.i.i.i71.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i118.i, %bb.kp
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %7, ptr %5, align 8, !tbaa !397
  %i.cfi = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc72.i.i.i unwind label %bb.lg ; 9 uses

.noexc72.i.i.i:                                   ; preds = %.loopexit.i.i.i.i119.i
  store ptr null, ptr %i.cfi, align 8, !tbaa !157
  %i.cfj = getelementptr inbounds nuw i8, ptr %i.cfi, i64 8
  store i32 %.fr104.i.i.i, ptr %i.cfj, align 8, !tbaa !399
  %i.cfk = getelementptr inbounds nuw i8, ptr %i.cfi, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cfk, i8 0, i64 24, i1 false)
  store ptr %i.cfi, ptr %i.cbw, align 8, !tbaa !400
  %i.cfl = load i64, ptr %i.cbs, align 8, !tbaa !431
  %i.cfm = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.cbr, i64 noundef %i.ceu, i64 noundef %i.cdt, i64 noundef 1)
          to label %.noexc.i122.i unwind label %bb.ld ; 2 uses

.noexc.i122.i:                                    ; preds = %.noexc72.i.i.i
  %i.cfn = extractvalue { i8, i64 } %i.cfm, 0
  %i.cfo = trunc i8 %i.cfn to i1
  br i1 %i.cfo, label %bb.kt, label %bb.ky

bb.kt:                                            ; preds = %.noexc.i122.i
  %i.cfp = extractvalue { i8, i64 } %i.cfm, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %7, i64 noundef %i.cfp)
          to label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i141.i unwind label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.cfq = landingpad { ptr, i32 }
          catch ptr null
  %i.cfr = extractvalue { ptr, i32 } %i.cfq, 0
  %i.cfs = call ptr @__cxa_begin_catch(ptr %i.cfr) #30 ; 0 uses
  store i64 %i.cfl, ptr %i.cbs, align 8, !tbaa !431
  invoke void @__cxa_rethrow() #29
          to label %bb.kx unwind label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.cft = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i120.i unwind label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.cfu = landingpad { ptr, i32 }
          catch ptr null
  %i.cfv = extractvalue { ptr, i32 } %i.cfu, 0
  call void @__clang_call_terminate(ptr %i.cfv) #33
  unreachable

bb.kx:                                            ; preds = %bb.ku
  unreachable

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i141.i: ; preds = %bb.kt
  %i.cfw = load i64, ptr %i.cbp, align 8, !tbaa !393
  %i.cfx = urem i64 %i.ced, %i.cfw
  br label %bb.ky

bb.ky:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i141.i, %.noexc.i122.i
  %.0.i.i123.i = phi i64 [ %i.cfx, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i141.i ], [ %i.cev, %.noexc.i122.i ]
  %i.cfy = load ptr, ptr %7, align 8, !tbaa !392  ; 3 uses
  %i.cfz = getelementptr inbounds nuw [8 x i8], ptr %i.cfy, i64 %.0.i.i123.i ; 3 uses
  %i.cga = load ptr, ptr %i.cfz, align 8, !tbaa !156 ; 2 uses
  %.not.i.i41.i124.i = icmp eq ptr %i.cga, null
  br i1 %.not.i.i41.i124.i, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.cgb = load ptr, ptr %i.cga, align 8, !tbaa !157
  store ptr %i.cgb, ptr %i.cfi, align 8, !tbaa !157
  %i.cgc = load ptr, ptr %i.cfz, align 8, !tbaa !156
  store ptr %i.cfi, ptr %i.cgc, align 8, !tbaa !157
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i125.i

bb.la:                                            ; preds = %bb.ky
  %i.cgd = load ptr, ptr %i.cbq, align 8, !tbaa !401 ; 3 uses
  store ptr %i.cgd, ptr %i.cfi, align 8, !tbaa !157
  store ptr %i.cfi, ptr %i.cbq, align 8, !tbaa !401
  %.not11.i.i.i140.i = icmp eq ptr %i.cgd, null
  br i1 %.not11.i.i.i140.i, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.cge = getelementptr inbounds nuw i8, ptr %i.cgd, i64 8
  %i.cgf = load i64, ptr %i.cbp, align 8, !tbaa !393
  %i.cgg = load i32, ptr %i.cge, align 4, !tbaa !110
  %i.cgh = sext i32 %i.cgg to i64
  %i.cgi = urem i64 %i.cgh, %i.cgf
  %i.cgj = getelementptr inbounds nuw [8 x i8], ptr %i.cfy, i64 %i.cgi
  store ptr %i.cfi, ptr %i.cgj, align 8, !tbaa !156
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %bb.la
  store ptr %i.cbq, ptr %i.cfz, align 8, !tbaa !156
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i125.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i125.i: ; preds = %bb.lc, %bb.kz
  %i.cgk = load i64, ptr %i.cby, align 8, !tbaa !440
  %i.cgl = add i64 %i.cgk, 1                      ; 2 uses
  store i64 %i.cgl, ptr %i.cby, align 8, !tbaa !440
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i126.i

bb.ld:                                            ; preds = %.noexc72.i.i.i
  %i.cgm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i120.i

.body.i120.i:                                     ; preds = %bb.ld, %bb.kv
  %eh.lpad-body.i121.i = phi { ptr, i32 } [ %i.cgm, %bb.ld ], [ %i.cft, %bb.kv ]
  call void @_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.body.i.i112.i

_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i126.i: ; preds = %bb.kr, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i125.i, %bb.kq
  %i.cgn = phi i64 [ %i.cdt, %bb.kq ], [ %i.cgl, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i125.i ], [ %i.cdt, %bb.kr ]
  %i.cgo = phi ptr [ %i.cdu, %bb.kq ], [ %i.cfy, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIjSaIjEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i.i125.i ], [ %i.cdu, %bb.kr ] ; 2 uses
  br i1 %i.cbx, label %.lr.ph91.i.i.i, label %._crit_edge.i.i127.i

.lr.ph91.i.i.i:                                   ; preds = %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i126.i
  %i.cgp = getelementptr inbounds nuw i8, ptr %i.ceo, i64 56
  %i.cgq = load ptr, ptr %i.cgp, align 8, !tbaa !126 ; 2 uses
  %i.cgr = icmp ugt i32 %.fr104.i.i.i, 255
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.ceo, i64 128
  %i.cgt = lshr i64 %i.ced, 6
  %i.cgu = and i64 %i.ced, 63
  %i.cgv = shl nuw i64 1, %i.cgu
  %i.cgw = getelementptr [4 x i8], ptr %1, i64 %i.cet ; 2 uses
  br i1 %i.cgr, label %.lr.ph91.split.us.i.i.i, label %.lr.ph91.split.i.i.i

.lr.ph91.split.us.i.i.i:                          ; preds = %.lr.ph91.i.i.i, %bb.le
  %i.cgx = phi i64 [ %i.chd, %bb.le ], [ 0, %.lr.ph91.i.i.i ] ; 2 uses
  %.090.us.i.i.i = phi i32 [ %i.chc, %bb.le ], [ 0, %.lr.ph91.i.i.i ]
  %i.cgy = getelementptr inbounds nuw [4 x i8], ptr %i.cgq, i64 %i.cgx
  %i.cgz = load i32, ptr %i.cgy, align 4, !tbaa !110
  %i.cha = icmp eq i32 %i.cgz, -1
  br i1 %i.cha, label %bb.le, label %.split.us.i.i139.i

bb.le:                                            ; preds = %.lr.ph91.split.us.i.i.i
  %i.chb = getelementptr [4 x i8], ptr %i.cgw, i64 %i.cgx
  store float -inf, ptr %i.chb, align 4, !tbaa !263
  %i.chc = add i32 %.090.us.i.i.i, 1              ; 2 uses
  %i.chd = zext i32 %i.chc to i64                 ; 2 uses
  %i.che = icmp samesign ugt i64 %i.byc, %i.chd
  br i1 %i.che, label %.lr.ph91.split.us.i.i.i, label %._crit_edge.i.i127.i, !llvm.loop !934

._crit_edge.i.i127.i:                             ; preds = %bb.lk, %bb.le, %_ZNSt13unordered_mapIiSt6vectorIjSaIjEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit.i.i126.i
  %i.chf = add i32 %.05796.i.i.i, 1               ; 2 uses
  %i.chg = zext i32 %i.chf to i64
  %i.chh = icmp sgt i64 %i.byg, %i.chg
  br i1 %i.chh, label %bb.kn, label %._crit_edge99.i.i.i, !llvm.loop !935

bb.lf:                                            ; preds = %bb.ko
  %i.chi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i112.i

bb.lg:                                            ; preds = %.loopexit.i.i.i.i119.i
  %i.chj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i112.i

.lr.ph91.split.i.i.i:                             ; preds = %.lr.ph91.i.i.i, %bb.lk
  %indvars.iv121.i.i.i = phi i64 [ %indvars.iv.next122.i.i.i, %bb.lk ], [ 0, %.lr.ph91.i.i.i ] ; 4 uses
  %i.chk = getelementptr inbounds nuw [4 x i8], ptr %i.cgq, i64 %indvars.iv121.i.i.i
  %i.chl = load i32, ptr %i.chk, align 4, !tbaa !110 ; 2 uses
  %i.chm = icmp eq i32 %i.chl, -1
  br i1 %i.chm, label %bb.lk, label %bb.lh
end_hunk_15
