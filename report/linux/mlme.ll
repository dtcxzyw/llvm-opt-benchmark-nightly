Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/mlme?download=true
inline.NumInlined: 873
inline.NumDeleted: 250
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumUnrolled: 51
begin_hunk_0_@ieee80211_add_link_elems:bb.a
  store i16 %.0267, ptr %i.ja, align 1
  %i.jb = getelementptr i8, ptr %9, i64 1044      ; 2 uses
  %i.jc = load i16, ptr %i.jb, align 4
  %.not66.i = icmp eq i16 %i.jc, 0
  br i1 %.not66.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jd = load i16, ptr %i.is, align 1
  %i.je = or i16 %i.jd, 1024
  store i16 %i.je, ptr %i.is, align 1
  %i.jf = load i8, ptr %i.it, align 1
  %i.jg = add i8 %i.jf, 2
  store i8 %i.jg, ptr %i.it, align 1
  %i.jh = call ptr @skb_put(ptr noundef nonnull %1, i32 noundef 2) #19
  %i.ji = load i16, ptr %i.jb, align 4
  store i16 %i.ji, ptr %i.jh, align 1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.jj = getelementptr i8, ptr %1, i64 112       ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.jl = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.jn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.cw
  %indvars.iv284 = phi i64 [ 0, %bb.bs ], [ %indvars.iv.next285, %bb.cw ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.jr = getelementptr [64 x i8], ptr %9, i64 %indvars.iv284 ; 4 uses
  %i.js = load ptr, ptr %i.jr, align 8
  %.not67.i = icmp eq ptr %i.js, null
  br i1 %.not67.i, label %bb.cw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jt = load i8, ptr %i.ib, align 1
  %i.ju = sext i8 %i.jt to i64
  %i.jv = icmp eq i64 %indvars.iv284, %i.ju
  br i1 %i.jv, label %bb.cw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jw = getelementptr i8, ptr %i.jr, i64 40
  %i.jx = load ptr, ptr %i.jw, align 8            ; 3 uses
  %i.jy = getelementptr i8, ptr %i.jr, i64 32
  %i.jz = load i64, ptr %i.jy, align 8            ; 2 uses
  %i.ka = call ptr @skb_put(ptr noundef nonnull %1, i32 noundef 1) #19
  store i8 0, ptr %i.ka, align 1
  %i.kb = call ptr @skb_put(ptr noundef nonnull %1, i32 noundef 1) #19, !inline_history !396
  %i.kc = trunc nuw nsw i64 %indvars.iv284 to i32
  %i.kd = trunc i64 %indvars.iv284 to i16
  %i.ke = or disjoint i16 %i.kd, 48
  %i.kf = call ptr @skb_put(ptr noundef nonnull %1, i32 noundef 2) #19
  store i16 %i.ke, ptr %i.kf, align 1
  %i.kg = call ptr @skb_put(ptr noundef nonnull %1, i32 noundef 1) #19
  store i8 7, ptr %i.kg, align 1
  %i.kh = getelementptr i8, ptr %i.jr, i64 8
  %i.ki = call ptr @skb_put(ptr noundef nonnull %1, i32 noundef 6) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(6) %i.ki, ptr noundef readonly align 8 dereferenceable(6) %i.kh, i64 6, i1 false)
  %i.kj = call ptr @skb_put(ptr noundef nonnull %1, i32 noundef 2) #19, !inline_history !396
  %i.kk = call fastcc i64 @ieee80211_add_link_elems(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef %3, ptr noundef %i.jx, i64 noundef %i.jz, i32 noundef %i.kc, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef %9) #22, !inline_history !396, !srcloc !402 ; 2 uses
  %.not68.i = icmp eq ptr %i.jx, null
  br i1 %.not68.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kl = getelementptr i8, ptr %i.jx, i64 %i.kk
  %i.km = sub i64 %i.jz, %i.kk                    ; 2 uses
  %i.kn = trunc i64 %i.km to i32
  %i.ko = call ptr @skb_put(ptr noundef nonnull %1, i32 noundef %i.kn) #19
  %i.kp = and i64 %i.km, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ko, ptr readonly align 1 %i.kl, i64 %i.kp, i1 false)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.kq = load i16, ptr %i.a, align 2
  store i16 %i.kq, ptr %i.kj, align 1
  %i.kr = load i32, ptr %i.jj, align 8            ; 2 uses
  %i.ks = call ptr @skb_put(ptr noundef nonnull %1, i32 noundef 1) #19
  store i8 -1, ptr %i.ks, align 1
  %i.kt = call ptr @skb_put(ptr noundef nonnull %1, i32 noundef 1) #19
  %i.ku = call ptr @skb_put(ptr noundef nonnull %1, i32 noundef 1) #19
  store i8 56, ptr %i.ku, align 1
  br label %bb.by

bb.by:                                            ; preds = %.critedge4.i, %bb.bx
  %indvars.iv.i252 = phi i64 [ 0, %bb.bx ], [ %indvars.iv.next.i258, %.critedge4.i ] ; 2 uses
  %.070.i = phi i8 [ 0, %bb.bx ], [ %.1.i254, %.critedge4.i ] ; 3 uses
  %.04969.i = phi ptr [ null, %bb.bx ], [ %.3.i257, %.critedge4.i ] ; 4 uses
  %.05367.i = phi i1 [ false, %bb.bx ], [ %.154.i, %.critedge4.i ] ; 8 uses
  %i.kv = getelementptr [2 x i8], ptr %8, i64 %indvars.iv.i252
  %i.kw = load i16, ptr %i.kv, align 2            ; 11 uses
  %.not57.i = icmp eq i16 %i.kw, 0
  br i1 %.not57.i, label %.critedge.i260, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kx = trunc nuw i8 %.070.i to i1              ; 2 uses
  %i.ky = icmp ult i16 %i.kw, 256                 ; 2 uses
  %i.kz = and i1 %i.ky, %i.kx
  br i1 %i.kz, label %.thread.i, label %bb.ca, !prof !16

.thread.i:                                        ; preds = %bb.bz
  call void asm sideeffect "2262: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2262b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2262) #20, !srcloc !403
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 2373, i32 2305, i64 16) #20, !srcloc !404
  call void asm sideeffect "2263: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2263b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2263) #20, !srcloc !405
  br label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %or.cond.not.i = or i1 %i.ky, %i.kx
  br i1 %or.cond.not.i, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.not.i253 = icmp eq ptr %.04969.i, null
  br i1 %.not.i253, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.la = call ptr @skb_put(ptr noundef nonnull %1, i32 noundef 1) #19
  store i8 0, ptr %i.la, align 1
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.ca, %.thread.i
  %.150.i = phi ptr [ %.04969.i, %bb.ca ], [ null, %bb.cc ], [ null, %bb.cb ], [ %.04969.i, %.thread.i ] ; 10 uses
  %.1.i254 = phi i8 [ %.070.i, %bb.ca ], [ 1, %bb.cc ], [ 1, %bb.cb ], [ 1, %.thread.i ] ; 2 uses
  %i.lb = load i16, ptr %i.b, align 16            ; 2 uses
  %.not59.i = icmp eq i16 %i.lb, 0
  br i1 %.not59.i, label %.critedge61.i, label %bb.cq

bb.ce:                                            ; preds = %bb.cq
  %i.lc = load i16, ptr %i.jk, align 2            ; 2 uses
  %.not59.1.i = icmp eq i16 %i.lc, 0
  br i1 %.not59.1.i, label %.critedge61.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ld = icmp eq i16 %i.kw, %i.lc
  br i1 %i.ld, label %.critedge4.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.le = load i16, ptr %i.jl, align 4            ; 2 uses
  %.not59.2.i = icmp eq i16 %i.le, 0
  br i1 %.not59.2.i, label %.critedge61.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lf = icmp eq i16 %i.kw, %i.le
  br i1 %i.lf, label %.critedge4.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lg = load i16, ptr %i.jm, align 2            ; 2 uses
  %.not59.3.i = icmp eq i16 %i.lg, 0
  br i1 %.not59.3.i, label %.critedge61.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lh = icmp eq i16 %i.kw, %i.lg
  br i1 %i.lh, label %.critedge4.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.li = load i16, ptr %i.jn, align 8            ; 2 uses
  %.not59.4.i = icmp eq i16 %i.li, 0
  br i1 %.not59.4.i, label %.critedge61.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lj = icmp eq i16 %i.kw, %i.li
  br i1 %i.lj, label %.critedge4.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lk = load i16, ptr %i.jo, align 2            ; 2 uses
  %.not59.5.i = icmp eq i16 %i.lk, 0
  br i1 %.not59.5.i, label %.critedge61.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ll = icmp eq i16 %i.kw, %i.lk
  br i1 %i.ll, label %.critedge4.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lm = load i16, ptr %i.jp, align 4            ; 2 uses
  %.not59.6.i = icmp eq i16 %i.lm, 0
  br i1 %.not59.6.i, label %.critedge61.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ln = icmp eq i16 %i.kw, %i.lm
  %i.lo = load i16, ptr %i.jq, align 2
  %i.lp = icmp eq i16 %i.kw, %i.lo
  %or.cond276 = select i1 %i.ln, i1 true, i1 %i.lp
  br i1 %or.cond276, label %.critedge4.i, label %.critedge61.i

bb.cq:                                            ; preds = %bb.cd
  %i.lq = icmp eq i16 %i.kw, %i.lb
  br i1 %i.lq, label %.critedge4.i, label %bb.ce

.critedge61.i:                                    ; preds = %bb.cp, %bb.co, %bb.cm, %bb.ck, %bb.ci, %bb.cg, %bb.ce, %bb.cd
  %.not60.i = icmp eq ptr %.150.i, null
  br i1 %.not60.i, label %bb.cr, label %.critedge61._crit_edge.i

.critedge61._crit_edge.i:                         ; preds = %.critedge61.i
  %.pre.i255 = load i8, ptr %.150.i, align 1
  %i.lr = add i8 %.pre.i255, 1
  br label %bb.cs

bb.cr:                                            ; preds = %.critedge61.i
  %i.ls = call ptr @skb_put(ptr noundef nonnull %1, i32 noundef 1) #19
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.critedge61._crit_edge.i
  %i.lt = phi i8 [ %i.lr, %.critedge61._crit_edge.i ], [ 1, %bb.cr ]
  %.2.i256 = phi ptr [ %.150.i, %.critedge61._crit_edge.i ], [ %i.ls, %bb.cr ] ; 2 uses
  store i8 %i.lt, ptr %.2.i256, align 1
  %i.lu = trunc i16 %i.kw to i8
  %i.lv = call ptr @skb_put(ptr noundef nonnull %1, i32 noundef 1) #19
  store i8 %i.lu, ptr %i.lv, align 1
  br label %.critedge4.i

.critedge4.i:                                     ; preds = %bb.cs, %bb.cq, %bb.cp, %bb.cn, %bb.cl, %bb.cj, %bb.ch, %bb.cf
  %.154.i = phi i1 [ true, %bb.cs ], [ %.05367.i, %bb.cq ], [ %.05367.i, %bb.cp ], [ %.05367.i, %bb.cn ], [ %.05367.i, %bb.cl ], [ %.05367.i, %bb.cj ], [ %.05367.i, %bb.ch ], [ %.05367.i, %bb.cf ] ; 2 uses
  %.3.i257 = phi ptr [ %.2.i256, %bb.cs ], [ %.150.i, %bb.cq ], [ %.150.i, %bb.cp ], [ %.150.i, %bb.cn ], [ %.150.i, %bb.cl ], [ %.150.i, %bb.cj ], [ %.150.i, %bb.ch ], [ %.150.i, %bb.cf ] ; 2 uses
  %indvars.iv.next.i258 = add nuw nsw i64 %indvars.iv.i252, 1 ; 2 uses
  %exitcond.not.i259 = icmp eq i64 %indvars.iv.next.i258, 8
  br i1 %exitcond.not.i259, label %.critedge.i260, label %bb.by, !llvm.loop !397

.critedge.i260:                                   ; preds = %.critedge4.i, %bb.by
  %.053.lcssa.i = phi i1 [ %.154.i, %.critedge4.i ], [ %.05367.i, %bb.by ] ; 2 uses
  %.049.lcssa.i = phi ptr [ %.3.i257, %.critedge4.i ], [ %.04969.i, %bb.by ]
  %.0.lcssa.i = phi i8 [ %.1.i254, %.critedge4.i ], [ %.070.i, %bb.by ]
  %.not62.i = xor i1 %.053.lcssa.i, true
  %i.lw = trunc nuw i8 %.0.lcssa.i to i1
  %i.lx = icmp ne ptr %.049.lcssa.i, null
  %or.cond6.i = select i1 %i.lw, i1 %i.lx, i1 false
  %or.cond.i261 = select i1 %.not62.i, i1 true, i1 %or.cond6.i
  br i1 %or.cond.i261, label %bb.ct, label %.thread65.i

.thread65.i:                                      ; preds = %.critedge.i260
  %i.ly = call ptr @skb_put(ptr noundef nonnull %1, i32 noundef 1) #19
  store i8 0, ptr %i.ly, align 1
  br label %bb.cv

bb.ct:                                            ; preds = %.critedge.i260
  br i1 %.053.lcssa.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @skb_trim(ptr noundef nonnull %1, i32 noundef %i.kr) #19
  br label %ieee80211_add_non_inheritance_elem.exit

bb.cv:                                            ; preds = %bb.ct, %.thread65.i
  %i.lz = load i32, ptr %i.jj, align 8
  %i.ma = sub i32 %i.lz, %i.kr
  %i.mb = trunc i32 %i.ma to i8
  %i.mc = add i8 %i.mb, -2
  store i8 %i.mc, ptr %i.kt, align 1
  br label %ieee80211_add_non_inheritance_elem.exit

ieee80211_add_non_inheritance_elem.exit:          ; preds = %bb.cu, %bb.cv
  call void @ieee80211_fragment_element(ptr noundef nonnull %1, ptr noundef %i.kb, i8 noundef zeroext -2) #19, !inline_history !396
  br label %bb.cw

bb.cw:                                            ; preds = %ieee80211_add_non_inheritance_elem.exit, %bb.bu, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next285, 15
  br i1 %exitcond.not, label %bb.cx, label %bb.bt, !llvm.loop !398

bb.cx:                                            ; preds = %bb.cw
  call void @ieee80211_fragment_element(ptr noundef nonnull %1, ptr noundef %i.iq, i8 noundef zeroext -14) #19, !inline_history !396
  br label %ieee80211_assoc_add_ml_elem.exit

ieee80211_assoc_add_ml_elem.exit:                 ; preds = %bb.bi, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.cy

bb.cy:                                            ; preds = %ieee80211_assoc_add_ml_elem.exit, %.thread271
  %i.md = load i32, ptr %i.gy, align 8
  %i.me = icmp ugt i32 %i.md, 4
  br i1 %i.me, label %bb.cz, label %.thread274

bb.cz:                                            ; preds = %bb.cy
  %i.mf = call i32 @ieee80211_put_eht_cap(ptr noundef nonnull %1, ptr noundef %0, ptr noundef %i.af, ptr noundef %i.gy) #19 ; 0 uses
  %.pr273 = load i32, ptr %i.gy, align 8
  %i.mg = icmp ugt i32 %.pr273, 5
  br i1 %i.mg, label %bb.da, label %.thread274

bb.da:                                            ; preds = %bb.cz
  %i.mh = call i32 @ieee80211_put_uhr_cap(ptr noundef nonnull %1, ptr noundef %0, ptr noundef %i.af) #19 ; 0 uses
  br label %.thread274

.thread274:                                       ; preds = %bb.cy, %bb.da, %bb.cz
  %i.mi = load i32, ptr %i.ar, align 8
  %i.mj = icmp eq i32 %i.mi, 4
  br i1 %i.mj, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.thread274
  call void @ieee80211_add_aid_request_ie(ptr noundef %0, ptr noundef nonnull %1) #19
  %i.mk = getelementptr i8, ptr %i.af, i64 68
  call void @ieee80211_add_s1g_capab_ie(ptr noundef %0, ptr noundef %i.mk, ptr noundef nonnull %1) #19
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.thread274
  %.not223 = icmp eq ptr %.0.i, null
  br i1 %.not223, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ml = getelementptr i8, ptr %.0.i, i64 128
  %i.mm = load ptr, ptr %i.ml, align 8            ; 2 uses
  %.not224 = icmp eq ptr %i.mm, null
  br i1 %.not224, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.mn = getelementptr i8, ptr %.0.i, i64 136
  %i.mo = load i32, ptr %i.mn, align 8            ; 3 uses
  %.not225 = icmp eq i32 %i.mo, 0
  br i1 %.not225, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.mp = call ptr @skb_put(ptr noundef nonnull %1, i32 noundef %i.mo) #19
  %i.mq = zext i32 %i.mo to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mp, ptr nonnull readonly align 1 %i.mm, i64 %i.mq, i1 false)
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dd, %bb.dc
  ret i64 %.0.i249
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ieee80211_ie_split_vendor(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ieee80211_add_wmm_info_ie(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fils_encrypt_assoc_req(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare dso_local ptr @kmemdup_noprof(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @sta_info_get_bss(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ieee80211_put_he_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ieee80211_put_he_6ghz_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ieee80211_put_reg_conn(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ieee80211_put_eht_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ieee80211_put_uhr_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_add_aid_request_ie(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_add_s1g_capab_ie(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ieee80211_parse_bitrates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ieee80211_put_srates_elem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ieee80211_ie_split_ric(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_apply_htcap_overrides(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_ht_cap(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_apply_vhtcap_overrides(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_vht_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_fragment_element(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cfg80211_assoc_failure(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_check_fast_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__ieee80211_disconnect(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
end_hunk_0
