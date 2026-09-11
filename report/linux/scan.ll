Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/scan?download=true
inline.NumInlined: 366
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@cfg80211_gen_new_ie:bb.a
  %i.md = load i8, ptr %i.mc, align 1             ; 2 uses
  %i.me = zext i8 %i.md to i32                    ; 2 uses
  %i.mf = add nuw nsw i32 %i.me, 2
  %i.mg = zext nneg i32 %i.mf to i64
  %.not.i189 = icmp samesign ult i64 %i.mb, %i.mg
  br i1 %.not.i189, label %cfg80211_find_elem_match.exit194.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mh = load i8, ptr %.024.i188, align 1
  %i.mi = icmp ne i8 %i.mh, %i.lv
  %.not22.i190 = icmp samesign ugt i32 %.1, %i.me
  %or.cond.i191 = or i1 %.not22.i190, %i.mi
  br i1 %or.cond.i191, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mj = getelementptr i8, ptr %.024.i188, i64 2
  %bcmp.i192 = call i32 @bcmp(ptr %i.mj, ptr nonnull readonly %i.a, i64 %i.ma)
  %.not23.i193 = icmp eq i32 %bcmp.i192, 0
  br i1 %.not23.i193, label %cfg80211_find_elem_match.exit194, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.mk = getelementptr i8, ptr %.024.i188, i64 2
  %i.ml = zext i8 %i.md to i64
  %i.mm = getelementptr i8, ptr %i.mk, i64 %i.ml  ; 2 uses
  %i.mn = ptrtoint ptr %i.mm to i64
  %i.mo = sub i64 %i.lm, %i.mn                    ; 2 uses
  %i.mp = icmp sgt i64 %i.mo, 1
  br i1 %i.mp, label %bb.bp, label %cfg80211_find_elem_match.exit194.thread, !llvm.loop !4

cfg80211_find_elem_match.exit194:                 ; preds = %bb.br
  %.not116 = icmp eq ptr %.024.i188, null
  br i1 %.not116, label %cfg80211_find_elem_match.exit194.thread, label %bb.bz

cfg80211_find_elem_match.exit194.thread:          ; preds = %bb.bp, %bb.bs, %bb.bo, %cfg80211_find_elem_match.exit194
  %i.mq = icmp ult ptr %.1100329, %2
  br i1 %i.mq, label %.critedge70.i205, label %bb.bt

bb.bt:                                            ; preds = %cfg80211_find_elem_match.exit194.thread
  %i.mr = getelementptr i8, ptr %.1100329, i64 2  ; 3 uses
  %i.ms = icmp ugt ptr %i.mr, %i.lh
  %i.mt = getelementptr i8, ptr %i.mr, i64 %i.lt
  %i.mu = icmp ugt ptr %i.mt, %i.lh
  %or.cond418 = or i1 %i.ms, %i.mu
  br i1 %or.cond418, label %.critedge70.i205, label %.critedge68.i195, !prof !202

.critedge70.i205:                                 ; preds = %bb.bt, %cfg80211_find_elem_match.exit194.thread
  tail call void asm sideeffect "2241: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2241b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2241) #19, !srcloc !203
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 235, i32 2305, i64 16) #19, !srcloc !204
  tail call void asm sideeffect "2242: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2242b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2242) #19, !srcloc !205
  br label %cfg80211_copy_elem_with_frags.exit.thread

.critedge68.i195:                                 ; preds = %bb.bt
  %i.mv = ptrtoint ptr %.3327 to i64
  %i.mw = sub i64 %i.lp, %i.mv
  %i.mx = icmp sgt i64 %i.lu, %i.mw
  br i1 %i.mx, label %cfg80211_copy_elem_with_frags.exit.thread, label %bb.bu

bb.bu:                                            ; preds = %.critedge68.i195
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %.3327, ptr noundef align 1 %.1100329, i64 %i.lu, i1 false)
  %i.my = load i8, ptr %i.lr, align 1             ; 2 uses
  %i.mz = zext i8 %i.my to i64
  %i.na = getelementptr i8, ptr %.3327, i64 %i.mz
  %i.nb = getelementptr i8, ptr %i.na, i64 2      ; 3 uses
  %.not.i196 = icmp eq i8 %i.my, -1
  br i1 %.not.i196, label %bb.bv, label %cfg80211_copy_elem_with_frags.exit206

bb.bv:                                            ; preds = %bb.bu
  %i.nc = ptrtoint ptr %i.mr to i64
  %i.nd = sub i64 %.neg295, %i.nc                 ; 3 uses
  %i.ne = getelementptr i8, ptr %.1100329, i64 257 ; 2 uses
  %i.nf = getelementptr i8, ptr %i.ne, i64 %i.nd
  %i.ng = ptrtoint ptr %i.nf to i64
  %i.nh = icmp sgt i64 %i.nd, 1
  br i1 %i.nh, label %.lr.ph.i199, label %cfg80211_copy_elem_with_frags.exit206

.lr.ph.i199:                                      ; preds = %bb.bv, %bb.by
  %.15 = phi ptr [ %i.nu, %bb.by ], [ %i.nb, %bb.bv ] ; 5 uses
  %i.ni = phi i64 [ %i.nx, %bb.by ], [ %i.nd, %bb.bv ]
  %.05473.i200 = phi ptr [ %i.nv, %bb.by ], [ %i.ne, %bb.bv ] ; 4 uses
  %i.nj = getelementptr i8, ptr %.05473.i200, i64 1 ; 2 uses
  %i.nk = load i8, ptr %i.nj, align 1
  %i.nl = zext i8 %i.nk to i64
  %i.nm = add nuw nsw i64 %i.nl, 2                ; 3 uses
  %.not64.i201 = icmp samesign ult i64 %i.ni, %i.nm
  br i1 %.not64.i201, label %cfg80211_copy_elem_with_frags.exit206, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i199
  %i.nn = load i8, ptr %.05473.i200, align 1
  %.not65.i202 = icmp eq i8 %i.nn, -14
  br i1 %.not65.i202, label %bb.bx, label %cfg80211_copy_elem_with_frags.exit206

bb.bx:                                            ; preds = %bb.bw
  %i.no = ptrtoint ptr %.15 to i64
  %i.np = sub i64 %i.lp, %i.no
  %i.nq = icmp sgt i64 %i.nm, %i.np
  br i1 %i.nq, label %cfg80211_copy_elem_with_frags.exit.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %.15, ptr noundef align 1 %.05473.i200, i64 %i.nm, i1 false)
  %i.nr = load i8, ptr %i.nj, align 1             ; 2 uses
  %i.ns = zext i8 %i.nr to i64
  %i.nt = getelementptr i8, ptr %.15, i64 %i.ns
  %i.nu = getelementptr i8, ptr %i.nt, i64 2      ; 2 uses
  %.not66.i203 = icmp eq i8 %i.nr, -1
  %i.nv = getelementptr i8, ptr %.05473.i200, i64 257 ; 2 uses
  %i.nw = ptrtoint ptr %i.nv to i64
  %i.nx = sub i64 %i.ng, %i.nw                    ; 2 uses
  %i.ny = icmp sgt i64 %i.nx, 1
  %or.cond.i204 = and i1 %i.ny, %.not66.i203
  br i1 %or.cond.i204, label %.lr.ph.i199, label %cfg80211_copy_elem_with_frags.exit206, !llvm.loop !199

cfg80211_copy_elem_with_frags.exit206:            ; preds = %.lr.ph.i199, %bb.bw, %bb.by, %bb.bv, %bb.bu
  %.16 = phi ptr [ %i.nb, %bb.bu ], [ %i.nb, %bb.bv ], [ %.15, %bb.bw ], [ %i.nu, %bb.by ], [ %.15, %.lr.ph.i199 ] ; 2 uses
  %.not117 = icmp eq ptr %.16, %4
  br i1 %.not117, label %cfg80211_copy_elem_with_frags.exit.thread, label %cfg80211_copy_elem_with_frags.exit206._crit_edge

cfg80211_copy_elem_with_frags.exit206._crit_edge: ; preds = %cfg80211_copy_elem_with_frags.exit206
  %.pre350 = load i8, ptr %i.lr, align 1
  br label %bb.bz

bb.bz:                                            ; preds = %cfg80211_copy_elem_with_frags.exit206._crit_edge, %bb.bl, %bb.bl, %cfg80211_find_elem_match.exit194, %bb.bn, %bb.bm
  %i.nz = phi i8 [ %.pre350, %cfg80211_copy_elem_with_frags.exit206._crit_edge ], [ %i.ls, %cfg80211_find_elem_match.exit194 ], [ %i.ls, %bb.bl ], [ %i.ls, %bb.bl ], [ 0, %bb.bm ], [ %i.ls, %bb.bn ]
  %.4 = phi ptr [ %.16, %cfg80211_copy_elem_with_frags.exit206._crit_edge ], [ %.3327, %cfg80211_find_elem_match.exit194 ], [ %.3327, %bb.bl ], [ %.3327, %bb.bl ], [ %.3327, %bb.bm ], [ %.3327, %bb.bn ] ; 2 uses
  %i.oa = getelementptr i8, ptr %.1100329, i64 2
  %i.ob = zext i8 %i.nz to i64
  %i.oc = getelementptr i8, ptr %i.oa, i64 %i.ob  ; 2 uses
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = sub i64 %i.li, %i.od                    ; 2 uses
  %i.of = icmp sgt i64 %i.oe, 1
  br i1 %i.of, label %bb.bk, label %.critedge2, !llvm.loop !201

.critedge2:                                       ; preds = %bb.bk, %bb.bz, %.critedge
  %.3.lcssa = phi ptr [ %.0219.lcssa, %.critedge ], [ %.4, %bb.bz ], [ %.3327, %bb.bk ]
  %.pre-phi = ptrtoint ptr %4 to i64
  %i.og = ptrtoint ptr %.3.lcssa to i64
  %i.oh = sub i64 %i.og, %.pre-phi
  br label %cfg80211_copy_elem_with_frags.exit.thread

cfg80211_copy_elem_with_frags.exit.thread:        ; preds = %.critedge68.i141, %.critedge68.i, %cfg80211_copy_elem_with_frags.exit152, %cfg80211_copy_elem_with_frags.exit, %bb.as, %.critedge68.i163, %cfg80211_copy_elem_with_frags.exit174, %bb.af, %bb.be, %.critedge68.i195, %cfg80211_copy_elem_with_frags.exit206, %bb.bx, %.critedge70.i205, %.critedge70.i173, %.critedge70.i151, %.critedge70.i, %.critedge2
  %.0102 = phi i64 [ 0, %.critedge70.i151 ], [ 0, %.critedge68.i195 ], [ %i.oh, %.critedge2 ], [ 0, %bb.af ], [ 0, %.critedge70.i205 ], [ 0, %bb.as ], [ 0, %bb.bx ], [ 0, %bb.be ], [ 0, %.critedge70.i173 ], [ 0, %.critedge70.i ], [ 0, %.critedge68.i163 ], [ 0, %cfg80211_copy_elem_with_frags.exit206 ], [ 0, %cfg80211_copy_elem_with_frags.exit174 ], [ 0, %cfg80211_copy_elem_with_frags.exit ], [ 0, %cfg80211_copy_elem_with_frags.exit152 ], [ 0, %.critedge68.i ], [ 0, %.critedge68.i141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i64 %.0102
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define internal fastcc zeroext range(i8 0, 4) i8 @cfg80211_rnr_info_for_mld_ap(ptr noundef %0, i64 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) unnamed_addr #9 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 %1
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = icmp sgt i64 %1, 1
  br i1 %i.c, label %.lr.ph69.i.preheader, label %cfg80211_iter_rnr.exit

.lr.ph69.i.preheader:                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 2
  %.not.i48 = icmp samesign ult i64 %1, %i.g
  br i1 %.not.i48, label %cfg80211_iter_rnr.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph69.i.preheader, %.lr.ph69.i.backedge
  %i.h = phi i64 [ %i.bh, %.lr.ph69.i.backedge ], [ %i.f, %.lr.ph69.i.preheader ]
  %i.i = phi i8 [ %i.bg, %.lr.ph69.i.backedge ], [ %i.e, %.lr.ph69.i.preheader ]
  %.04467.i49 = phi ptr [ %i.m, %.lr.ph69.i.backedge ], [ %0, %.lr.ph69.i.preheader ] ; 2 uses
  %i.j = load i8, ptr %.04467.i49, align 1
  %i.k = icmp eq i8 %i.j, -55
  %i.l = getelementptr i8, ptr %.04467.i49, i64 2 ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 %i.h     ; 4 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 4 uses
  br i1 %i.k, label %bb.b, label %._crit_edge._crit_edge.i

bb.b:                                             ; preds = %.lr.ph
  %i.o = icmp ugt i8 %i.i, 3
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.loopexit.i:                                      ; preds = %bb.g, %bb.e, %.split
  %.us-phi30 = getelementptr i8, ptr %i.x, i64 %i.aa ; 3 uses
  %i.p = ptrtoint ptr %.us-phi30 to i64
  %i.q = sub i64 %i.n, %i.p
  %i.r = icmp ugt i64 %i.q, 3
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

.lr.ph.i:                                         ; preds = %bb.b, %.loopexit.i
  %.04266.i = phi ptr [ %.us-phi30, %.loopexit.i ], [ %i.l, %bb.b ] ; 4 uses
  %i.s = load i8, ptr %.04266.i, align 1          ; 2 uses
  %i.t = lshr i8 %i.s, 4                          ; 3 uses
  %i.u = add nuw nsw i8 %i.t, 1
  %i.v = getelementptr i8, ptr %.04266.i, i64 1
  %i.w = load i8, ptr %i.v, align 1               ; 3 uses
  %i.x = getelementptr i8, ptr %.04266.i, i64 4   ; 4 uses
  %i.y = zext nneg i8 %i.u to i64
  %i.z = zext i8 %i.w to i64                      ; 3 uses
  %i.aa = mul nuw nsw i64 %i.y, %i.z              ; 2 uses
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.n, %i.ab
  %i.ad = icmp slt i64 %i.ac, %i.aa
  br i1 %i.ad, label %cfg80211_iter_rnr.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = and i8 %i.s, 3                          ; 2 uses
  %i.af = icmp eq i8 %i.ae, 0
  %i.ag = icmp ugt i8 %i.w, 15
  %or.cond.i = and i1 %i.af, %i.ag
  br i1 %or.cond.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.c, %bb.e
  %.04165.i.us = phi i8 [ %i.ao, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %.14364.i.us = phi ptr [ %i.an, %bb.e ], [ %i.x, %bb.c ] ; 4 uses
  %i.ah = getelementptr i8, ptr %.14364.i.us, i64 13
  %i.ai = load i8, ptr %i.ah, align 1
  %.not.i6.us = icmp eq i8 %2, %i.ai
  br i1 %.not.i6.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.split.us
  %i.aj = getelementptr i8, ptr %.14364.i.us, i64 14
  %i.ak = load i16, ptr %i.aj, align 1            ; 2 uses
  %i.al = trunc i16 %i.ak to i8
  %i.am = and i8 %i.al, 15
  %.not30.i.us = icmp eq i8 %3, %i.am
  br i1 %.not30.i.us, label %.critedge.loopexit.i.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d, %.split.us
  %i.an = getelementptr i8, ptr %.14364.i.us, i64 %i.z
  %i.ao = add nuw nsw i8 %.04165.i.us, 1
  %exitcond.not.i.us = icmp eq i8 %.04165.i.us, %i.t
  br i1 %exitcond.not.i.us, label %.loopexit.i, label %.split.us, !llvm.loop !2

.critedge.loopexit.i.split.us:                    ; preds = %bb.d
  %i.ap = getelementptr i8, ptr %.14364.i.us, i64 11
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = and i8 %i.aq, 12
  %i.as = icmp eq i8 %i.ar, 4
  %i.at = zext i1 %i.as to i8
  br label %.critedge.loopexit.i

.split:                                           ; preds = %bb.c
  %i.au = icmp eq i8 %i.ae, 1
  %i.av = icmp ugt i8 %i.w, 2
  %or.cond5.i = and i1 %i.au, %i.av
  br i1 %or.cond5.i, label %.split.split.us, label %.loopexit.i

.split.split.us:                                  ; preds = %.split, %bb.g
  %.04165.i.us31 = phi i8 [ %i.bc, %bb.g ], [ 0, %.split ] ; 2 uses
  %.14364.i.us32 = phi ptr [ %i.bb, %bb.g ], [ %i.x, %.split ] ; 3 uses
  %i.aw = load i8, ptr %.14364.i.us32, align 1
  %.not.i6.us33 = icmp eq i8 %2, %i.aw
  br i1 %.not.i6.us33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split.split.us
  %i.ax = getelementptr i8, ptr %.14364.i.us32, i64 1
  %i.ay = load i16, ptr %i.ax, align 1            ; 2 uses
  %i.az = trunc i16 %i.ay to i8
  %i.ba = and i8 %i.az, 15
  %.not30.i.us34 = icmp eq i8 %3, %i.ba
  br i1 %.not30.i.us34, label %.critedge.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %.split.split.us
  %i.bb = getelementptr i8, ptr %.14364.i.us32, i64 %i.z
  %i.bc = add nuw nsw i8 %.04165.i.us31, 1
  %exitcond.not.i.us35 = icmp eq i8 %.04165.i.us31, %i.t
  br i1 %exitcond.not.i.us35, label %.loopexit.i, label %.split.split.us, !llvm.loop !2

._crit_edge.i:                                    ; preds = %.loopexit.i, %bb.b
  %.042.lcssa.i = phi ptr [ %i.l, %bb.b ], [ %.us-phi30, %.loopexit.i ]
  %.not49.i = icmp eq ptr %.042.lcssa.i, %i.m
  %i.bd = sub i64 %i.b, %i.n                      ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 1
  %or.cond = and i1 %i.be, %.not49.i
  br i1 %or.cond, label %.lr.ph69.i.backedge, label %cfg80211_iter_rnr.exit

._crit_edge._crit_edge.i:                         ; preds = %.lr.ph
  %.old19 = sub i64 %i.b, %i.n                    ; 2 uses
  %.old20 = icmp sgt i64 %.old19, 1
  br i1 %.old20, label %.lr.ph69.i.backedge, label %cfg80211_iter_rnr.exit

.lr.ph69.i.backedge:                              ; preds = %._crit_edge._crit_edge.i, %._crit_edge.i
  %.be = phi i64 [ %.old19, %._crit_edge._crit_edge.i ], [ %i.bd, %._crit_edge.i ]
  %i.bf = getelementptr i8, ptr %i.m, i64 1
  %i.bg = load i8, ptr %i.bf, align 1             ; 2 uses
  %i.bh = zext i8 %i.bg to i64                    ; 2 uses
  %i.bi = add nuw nsw i64 %i.bh, 2
  %.not.i = icmp samesign ult i64 %.be, %i.bi
  br i1 %.not.i, label %cfg80211_iter_rnr.exit, label %.lr.ph, !llvm.loop !3

.critedge.loopexit.i:                             ; preds = %bb.f, %.critedge.loopexit.i.split.us
  %i.bj = phi i8 [ 3, %.critedge.loopexit.i.split.us ], [ 2, %bb.f ]
  %.us-phi28 = phi i16 [ %i.ak, %.critedge.loopexit.i.split.us ], [ %i.ay, %bb.f ]
  %.us-phi29 = phi i8 [ %i.at, %.critedge.loopexit.i.split.us ], [ 0, %bb.f ]
  %i.bk = lshr i16 %.us-phi28, 4
  %i.bl = trunc i16 %i.bk to i8
  br label %cfg80211_iter_rnr.exit

cfg80211_iter_rnr.exit:                           ; preds = %._crit_edge._crit_edge.i, %._crit_edge.i, %.lr.ph69.i.backedge, %.lr.ph.i, %.lr.ph69.i.preheader, %bb.a, %.critedge.loopexit.i
  %.sroa.0.5 = phi ptr [ null, %.lr.ph69.i.preheader ], [ %.04266.i, %.critedge.loopexit.i ], [ null, %bb.a ], [ null, %.lr.ph.i ], [ null, %.lr.ph69.i.backedge ], [ null, %._crit_edge.i ], [ null, %._crit_edge._crit_edge.i ]
  %.sroa.6.5 = phi i8 [ 0, %.lr.ph69.i.preheader ], [ %i.bl, %.critedge.loopexit.i ], [ 0, %bb.a ], [ 0, %.lr.ph.i ], [ 0, %.lr.ph69.i.backedge ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge._crit_edge.i ]
  %.sroa.87.5 = phi i8 [ 0, %.lr.ph69.i.preheader ], [ %i.bj, %.critedge.loopexit.i ], [ 0, %bb.a ], [ 0, %.lr.ph.i ], [ 0, %.lr.ph69.i.backedge ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge._crit_edge.i ]
  %.sroa.14.5 = phi i8 [ 0, %.lr.ph69.i.preheader ], [ %.us-phi29, %.critedge.loopexit.i ], [ 0, %bb.a ], [ 0, %.lr.ph.i ], [ 0, %.lr.ph69.i.backedge ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge._crit_edge.i ]
  store ptr %.sroa.0.5, ptr %4, align 8
  store i8 %.sroa.6.5, ptr %5, align 1
  store i8 %.sroa.14.5, ptr %6, align 1
  ret i8 %.sroa.87.5
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_chandef_to_operating_class(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_cfg80211_inform_bss_frame(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

attributes #0 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #10 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { noredzone nounwind "no-builtin-wcslen" }
attributes #17 = { noredzone "no-builtin-wcslen" }
attributes #18 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #19 = { nounwind }
attributes #20 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }

!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19}
!2 = distinct !{!2, !19}
!3 = distinct !{!3, !19}
!4 = distinct !{!4, !19}
!5 = distinct !{!5, !19}
!6 = distinct !{!6, !19}
!7 = distinct !{!7, !19}
!8 = distinct !{!8, !19}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 8, !"cf-protection-branch", i32 1}
!11 = !{i32 4, !"function_return_thunk_extern", i32 1}
!12 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!13 = !{i32 1, !"Code Model", i32 2}
!14 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!15 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!16 = !{i32 1, !"override-stack-alignment", i32 8}
!17 = !{i32 4, !"SkipRaxSetup", i32 1}
!18 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!22 = !{i64 2148698016, i64 2148698056, i64 2148698173, i64 2148698194, i64 2148698237, i64 2148698252, i64 2148698285, i64 2148698319, i64 2148698343}
!23 = !{i64 2148093277}
!24 = !{i64 2151654055}
!25 = !{i64 2151657357}
!26 = !{i64 2151657779}
!27 = !{i64 2151669561}
!28 = !{i64 2162141663}
!29 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!"auto-init"}
!33 = !{i64 13379}
!34 = !{i64 2161624341, i64 2161624216}
!35 = !{i64 2161624864, i64 2161625340, i64 2161625373, i64 2161625408, i64 2161625424, i64 2161626265, i64 2161626323, i64 2161626372, i64 2161626182, i64 2161625483, i64 2161625515}
!36 = !{i64 2168333117}
!37 = !{i64 45007}
!38 = !{i64 2169315622, i64 2169315492}
!39 = !{i64 2169316153, i64 2169317195, i64 2169317228, i64 2169317263, i64 2169317279, i64 2169318206, i64 2169318264, i64 2169318313, i64 2169318123, i64 2169317338, i64 2169317370, i64 2169317453}
!40 = !{i64 2169318618, i64 2169318489}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !20}
!43 = distinct !{!43, !19}
!44 = !{i64 29545}
!45 = !{i64 29734}
!46 = !{i64 30185}
!47 = !{i64 2169097730, i64 2169097600}
!48 = !{i64 2169098261, i64 2169099342, i64 2169099375, i64 2169099410, i64 2169099426, i64 2169100353, i64 2169100411, i64 2169100460, i64 2169100270, i64 2169099485, i64 2169099517, i64 2169099600}
!49 = !{i64 2169100768, i64 2169100639}
!50 = !{i64 2162172792}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, !19}
!57 = distinct !{!57, !19}
!58 = distinct !{!58, !19}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
!61 = !{i64 2161440223, i64 2161436037}
!62 = !{i64 2161440746, i64 2161441813, i64 2161441846, i64 2161441881, i64 2161441897, i64 2161442824, i64 2161442882, i64 2161442931, i64 2161442741, i64 2161441956, i64 2161441988, i64 2161442071}
!63 = !{i64 2161443233, i64 2161443109}
!64 = !{i64 2169215201, i64 2169215071}
!65 = !{i64 2169215732, i64 2169216774, i64 2169216807, i64 2169216842, i64 2169216858, i64 2169217785, i64 2169217843, i64 2169217892, i64 2169217702, i64 2169216917, i64 2169216949, i64 2169217032}
!66 = !{i64 2169218197, i64 2169218068}
!67 = !{i64 29063}
!68 = !{i64 31010}
!69 = !{i64 2159498803}
!70 = !{i64 2168152311}
!71 = !{i64 2169233838, i64 2169233708}
!72 = !{i64 2169234369, i64 2169235463, i64 2169235496, i64 2169235531, i64 2169235547, i64 2169236474, i64 2169236532, i64 2169236581, i64 2169236391, i64 2169235606, i64 2169235638, i64 2169235721}
!73 = !{i64 2169236886, i64 2169236757}
!74 = !{i64 2153322575}
!75 = distinct !{!75, !19}
!76 = distinct !{!76, !19}
!77 = !{i64 2168224573}
!78 = !{i64 2168188135}
!79 = distinct !{null}
!80 = !{i64 2164696988}
!81 = distinct !{!81, !19}
!82 = !{i64 2169292886, i64 2169292756}
!83 = !{i64 2169293417, i64 2169294470, i64 2169294503, i64 2169294538, i64 2169294554, i64 2169295481, i64 2169295539, i64 2169295588, i64 2169295398, i64 2169294613, i64 2169294645, i64 2169294728}
!84 = !{i64 2169295893, i64 2169295764}
!85 = distinct !{!85, !19}
!86 = !{i64 2168258697}
!87 = !{i64 55943}
!88 = distinct !{!88, !19}
!89 = distinct !{!89, !19}
!90 = distinct !{!90, !20}
!91 = distinct !{!91, !19}
!92 = distinct !{!92, !19}
!93 = !{i64 2169460984, i64 2169460854}
!94 = !{i64 2169461515, i64 2169462570, i64 2169462603, i64 2169462638, i64 2169462654, i64 2169463581, i64 2169463639, i64 2169463688, i64 2169463498, i64 2169462713, i64 2169462745, i64 2169462828}
!95 = !{i64 2169463993, i64 2169463864}
!96 = !{i64 2169468889, i64 2169468759}
!97 = !{i64 2169469420, i64 2169470491, i64 2169470524, i64 2169470559, i64 2169470575, i64 2169471502, i64 2169471560, i64 2169471609, i64 2169471419, i64 2169470634, i64 2169470666, i64 2169470749}
!98 = !{i64 2169471914, i64 2169471785}
!99 = !{i64 45642}
!100 = !{i64 2169494697}
!101 = !{i64 2169324301, i64 2169324171}
!102 = !{i64 2169324832, i64 2169325874, i64 2169325907, i64 2169325942, i64 2169325958, i64 2169326885, i64 2169326943, i64 2169326992, i64 2169326802, i64 2169326017, i64 2169326049, i64 2169326132}
!103 = !{i64 2169327297, i64 2169327168}
!104 = !{i64 2169337650, i64 2169337520}
!105 = !{i64 2169338181, i64 2169339245, i64 2169339278, i64 2169339313, i64 2169339329, i64 2169340256, i64 2169340314, i64 2169340363, i64 2169340173, i64 2169339388, i64 2169339420, i64 2169339503}
!106 = !{i64 2169340668, i64 2169340539}
!107 = !{i64 2169342046, i64 2169341916}
!108 = !{i64 2169342577, i64 2169343645, i64 2169343678, i64 2169343713, i64 2169343729, i64 2169344656, i64 2169344714, i64 2169344763, i64 2169344573, i64 2169343788, i64 2169343820, i64 2169343903}
!109 = !{i64 2169345068, i64 2169344939}
!110 = !{i64 2169355215}
!111 = !{i64 2169358318, i64 2169358345, i64 2169358754, i64 2169358787, i64 2169358822, i64 2169358838, i64 2169359679, i64 2169359737, i64 2169359786, i64 2169359596, i64 2169358897, i64 2169358929}
!112 = !{i64 2169356595}
!113 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!114 = !{i64 2169170406, i64 2169170276}
!115 = !{i64 2169170937, i64 2169171982, i64 2169172015, i64 2169172050, i64 2169172066, i64 2169172993, i64 2169173051, i64 2169173100, i64 2169172910, i64 2169172125, i64 2169172157, i64 2169172240}
!116 = !{i64 2169173404, i64 2169173275}
!117 = !{i64 14146}
!118 = !{i64 2169174657, i64 2169174527}
!119 = !{i64 2169175188, i64 2169176230, i64 2169176263, i64 2169176298, i64 2169176314, i64 2169177241, i64 2169177299, i64 2169177348, i64 2169177158, i64 2169176373, i64 2169176405, i64 2169176488}
!120 = !{i64 2169177652, i64 2169177523}
!121 = distinct !{!121, !19}
!122 = distinct !{!122, !19}
!123 = distinct !{!123, !19}
!124 = distinct !{!124, !19}
!125 = distinct !{!125, !19}
!126 = distinct !{!126, !19}
!127 = distinct !{!127, !19}
!128 = !{i64 87785}
!129 = !{i64 70167}
!130 = !{i64 2161291119, i64 2161290994}
!131 = !{i64 2161291642, i64 2161292681, i64 2161292714, i64 2161292749, i64 2161292765, i64 2161293692, i64 2161293750, i64 2161293799, i64 2161293609, i64 2161292824, i64 2161292856, i64 2161292939}
!132 = !{i64 2161294108, i64 2161293984}
!133 = !{i64 82958}
!134 = !{i64 86444}
!135 = distinct !{null}
end_hunk_0
