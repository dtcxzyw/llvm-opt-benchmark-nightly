Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/mlme?download=true
inline.NumInlined: 873
inline.NumDeleted: 250
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumUnrolled: 51
begin_hunk_0_@ieee80211_sta_process_chanswitch:bb.a
  br i1 %.not.i.i41.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jp = getelementptr i8, ptr %i.jo, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = call i32 @__SCT__tp_func_drv_return_int(ptr noundef %i.jq, ptr noundef %i.hr, i32 noundef %.032.i) #19 ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !22
  %i.js = getelementptr i8, ptr %i.jn, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.js, ptr elementtype(i64) %i.js) #20, !srcloc !23
  br label %drv_pre_channel_switch.exit

drv_pre_channel_switch.exit:                      ; preds = %bb.bh, %cpumask_test_cpu.exit.i.i40.i, %bb.bk
  %.not = icmp eq i32 %.032.i, 0
  br i1 %.not, label %drv_pre_channel_switch.exit.thread, label %drv_pre_channel_switch.exit.thread187

drv_pre_channel_switch.exit.thread187:            ; preds = %.critedge.i, %drv_pre_channel_switch.exit
  %i.jt = load ptr, ptr %0, align 8               ; 2 uses
  %i.ju = getelementptr i8, ptr %i.jt, i64 7160
  %.val164 = load i16, ptr %i.ju, align 8
  %.not199 = icmp eq i16 %.val164, 0
  %i.jv = getelementptr i8, ptr %i.jt, i64 1880   ; 2 uses
  br i1 %.not199, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %drv_pre_channel_switch.exit.thread187
  %i.jw = load i32, ptr %i.g, align 8
  %i.jx = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.234, ptr noundef %i.jv, i32 noundef %i.jw) #21 ; 0 uses
  br label %bb.bz

bb.bm:                                            ; preds = %drv_pre_channel_switch.exit.thread187
  %i.jy = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %i.jv) #21 ; 0 uses
  br label %bb.bz

drv_pre_channel_switch.exit.thread:               ; preds = %ieee80211_vif_link_active.exit.i, %.split.i, %drv_pre_channel_switch.exit
  %i.jz = getelementptr i8, ptr %0, i64 632
  %i.ka = getelementptr i8, ptr %0, i64 744
  %i.kb = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) %i.ka, ptr noundef nonnull align 8 dereferenceable(48) %i.kb, i64 48, i1 false)
  %i.kc = getelementptr i8, ptr %0, i64 136       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) %i.kc, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  %i.kd = getelementptr i8, ptr %0, i64 608
  %i.ke = getelementptr i8, ptr %0, i64 184       ; 2 uses
  store ptr null, ptr %i.ke, align 8
  %i.kf = load i32, ptr %i.kd, align 8
  %i.kg = icmp ult i32 %i.kf, 5
  br i1 %i.kg, label %ieee80211_set_chanreq_ap.exit, label %bb.bn

bb.bn:                                            ; preds = %drv_pre_channel_switch.exit.thread
  %i.kh = getelementptr i8, ptr %i.a, i64 7240
  %i.ki = load i32, ptr %i.kh, align 8
  %i.kj = and i32 %i.ki, 32
  %.not.i176 = icmp eq i32 %i.kj, 0
  br i1 %.not.i176, label %bb.bo, label %ieee80211_set_chanreq_ap.exit

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) %i.ke, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.kb, i64 48, i1 false)
  br label %ieee80211_set_chanreq_ap.exit

ieee80211_set_chanreq_ap.exit:                    ; preds = %drv_pre_channel_switch.exit.thread, %bb.bn, %bb.bo
  %.not157 = icmp eq ptr %spec.select, null
  br i1 %.not157, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %ieee80211_set_chanreq_ap.exit
  %i.kk = getelementptr i8, ptr %spec.select, i64 48
  %i.kl = load i32, ptr %i.kk, align 8
  %i.km = call i32 @ieee80211_link_reserve_chanctx(ptr noundef %0, ptr noundef %i.kc, i32 noundef %i.kl, i1 noundef zeroext false) #19 ; 3 uses
  %.not158 = icmp eq i32 %i.km, 0
  br i1 %.not158, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kn = load ptr, ptr %0, align 8               ; 2 uses
  %i.ko = getelementptr i8, ptr %i.kn, i64 7160
  %.val = load i16, ptr %i.ko, align 8
  %.not197 = icmp eq i16 %.val, 0
  %i.kp = getelementptr i8, ptr %i.kn, i64 1880   ; 2 uses
  br i1 %.not197, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kq = load i32, ptr %i.g, align 8
  %i.kr = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, ptr noundef %i.kp, i32 noundef %i.kq, i32 noundef %i.km) #21 ; 0 uses
  br label %bb.bz

bb.bs:                                            ; preds = %bb.bq
  %i.ks = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.237, ptr noundef %i.kp, i32 noundef %i.km) #21 ; 0 uses
  br label %bb.bz

bb.bt:                                            ; preds = %bb.bp, %ieee80211_set_chanreq_ap.exit
  %i.kt = load ptr, ptr %i.an, align 8
  %i.ku = getelementptr i8, ptr %i.kt, i64 1128
  store i8 1, ptr %i.ku, align 8
  %i.kv = getelementptr i8, ptr %0, i64 905
  store i8 0, ptr %i.kv, align 1
  %i.kw = getelementptr i8, ptr %0, i64 960
  store i8 0, ptr %i.kw, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.ky = load i8, ptr %i.kx, align 8             ; 2 uses
  %i.kz = icmp ne i8 %i.ky, 0
  %i.la = getelementptr i8, ptr %0, i64 906
  %i.lb = zext i1 %i.kz to i8
  store i8 %i.lb, ptr %i.la, align 2
  %.not159 = icmp eq i8 %i.ky, 0
  br i1 %.not159, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @ieee80211_vif_block_queues_csa(ptr noundef %i.a) #19
  %.pre = load i8, ptr %i.kx, align 8
  %i.lc = icmp ne i8 %.pre, 0
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ld = phi i1 [ %i.lc, %bb.bu ], [ false, %bb.bt ]
  %i.le = getelementptr i8, ptr %i.a, i64 1848
  %i.lf = load ptr, ptr %i.le, align 8
  %i.lg = load i32, ptr %i.g, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 105 ; 2 uses
  %i.li = load i8, ptr %i.lh, align 1
  call void @cfg80211_ch_switch_started_notify(ptr noundef %i.lf, ptr noundef nonnull %6, i32 noundef %i.lg, i8 noundef zeroext %i.li, i1 noundef zeroext %i.ld) #19
  %i.lj = call i64 @ktime_get_with_offset(i32 noundef 1) #19
  %i.lk = load i8, ptr %i.lh, align 1
  %i.ll = call i8 @llvm.umax.i8(i8 %i.lk, i8 1)
  %i.lm = zext i8 %i.ll to i64
  %i.ln = add nuw nsw i64 %i.lm, 4294967295
  %i.lo = load ptr, ptr %i.an, align 8
  %i.lp = getelementptr i8, ptr %i.lo, i64 50
  %i.lq = load i16, ptr %i.lp, align 2
  %i.lr = zext i16 %i.lq to i64
  %i.ls = shl nuw nsw i64 %i.lr, 10
  %i.lt = mul nuw nsw i64 %i.ls, %i.ln
  %i.lu = and i64 %i.lt, 4398046510080
  %i.lv = mul nuw nsw i64 %i.lu, 1000             ; 2 uses
  %i.lw = add i64 %i.lv, %i.lj
  %i.lx = getelementptr i8, ptr %0, i64 896
  store i64 %i.lw, ptr %i.lx, align 8
  %i.ly = load i32, ptr %i.g, align 8             ; 2 uses
  %.val.i177 = load i16, ptr %i.gt, align 8
  %.not.i178 = icmp eq i16 %.val.i177, 0
  br i1 %.not.i178, label %ieee80211_vif_link_active.exit180, label %.split190

.split190:                                        ; preds = %bb.bv
  %i.lz = getelementptr i8, ptr %i.a, i64 7162
  %i.ma = load i16, ptr %i.lz, align 2
  %i.mb = zext i16 %i.ma to i64
  %i.mc = zext nneg i32 %i.ly to i64
  %i.md = shl nuw i64 1, %i.mc
  %i.me = and i64 %i.md, %i.mb
  %.not198 = icmp eq i64 %i.me, 0
  br i1 %.not198, label %bb.by, label %bb.bw

ieee80211_vif_link_active.exit180:                ; preds = %bb.bv
  %i.mf = icmp eq i32 %i.ly, 0
  br i1 %i.mf, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %.split190, %ieee80211_vif_link_active.exit180
  %i.mg = getelementptr i8, ptr %i.c, i64 464
  %i.mh = load ptr, ptr %i.mg, align 8
  %i.mi = getelementptr i8, ptr %i.mh, i64 440
  %i.mj = load ptr, ptr %i.mi, align 8
  %.not160 = icmp eq ptr %i.mj, null
  br i1 %.not160, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call fastcc void @drv_channel_switch(ptr noundef %i.c, ptr noundef %i.a, ptr noundef nonnull %7) #22, !srcloc !361
  br label %.critedge163

bb.by:                                            ; preds = %.split190, %bb.bw, %ieee80211_vif_link_active.exit180
  %i.mk = load ptr, ptr %i.cs, align 8
  call void @wiphy_hrtimer_work_queue(ptr noundef %i.mk, ptr noundef %i.jz, i64 noundef %i.lv) #19
  br label %.critedge163

bb.bz:                                            ; preds = %bb.br, %bb.bs, %bb.bl, %bb.bm, %bb.aw, %bb.ax, %bb.at, %bb.au, %bb.aa, %bb.ab, %bb.w, %bb.x, %bb.e
  %i.ml = getelementptr i8, ptr %0, i64 1056
  %i.mm = load ptr, ptr %i.ml, align 8
  %i.mn = getelementptr i8, ptr %i.mm, i64 1128
  store i8 1, ptr %i.mn, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.mp = load i8, ptr %i.mo, align 8
  %i.mq = icmp ne i8 %i.mp, 0
  %i.mr = getelementptr i8, ptr %0, i64 906
  %i.ms = zext i1 %i.mq to i8
  store i8 %i.ms, ptr %i.mr, align 2
  %i.mt = load ptr, ptr %i.b, align 8
  %i.mu = getelementptr i8, ptr %i.mt, i64 80
  %i.mv = load ptr, ptr %i.mu, align 8
  %i.mw = getelementptr i8, ptr %i.a, i64 2672
  call void @wiphy_work_queue(ptr noundef %i.mv, ptr noundef %i.mw) #19
  br label %.critedge163

.critedge163:                                     ; preds = %.split, %bb.c, %bb.al, %bb.s, %bb.t, %bb.p, %bb.q, %bb.m, %ieee80211_vif_link_active.exit, %bb.f, %bb.f, %bb.e, %bb.bz, %bb.by, %bb.bx, %bb.ap, %bb.n, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ieee80211_process_neg_ttlm_req(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.ieee80211_elems_parse_params, align 8 ; 11 uses
  %i.a = alloca [2 x i8], align 2                 ; 6 uses
  %4 = alloca %struct.ieee80211_neg_ttlm, align 8 ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i16 0, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %4, i8 0, i64 34, i1 false)
  %i.b = getelementptr i8, ptr %0, i64 7160       ; 18 uses
  %.val = load i16, ptr %i.b, align 8
  %.not90 = icmp eq i16 %.val, 0
  %.sink86.i.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 18 ; 5 uses
  %.sink86.i.sroa.gep49 = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 6 uses
  %.sink87.i.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 5 uses
  %.sink87.i.sroa.gep51 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 6 uses
  %.sink88.i.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 22 ; 5 uses
  %.sink88.i.sroa.gep53 = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 6 uses
  %.sink89.i.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %.sink89.i.sroa.gep55 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %.sink90.i.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 5 uses
  %.sink90.i.sroa.gep57 = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 6 uses
  %.sink91.i.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 5 uses
  %.sink91.i.sroa.gep59 = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 6 uses
  br i1 %.not90, label %ieee80211_send_neg_ttlm_res.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 26
  %i.d = load i8, ptr %i.c, align 2
  %i.e = add nsw i64 %2, -27
  %i.f = getelementptr i8, ptr %1, i64 27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i32 6, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.f, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.e, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 -48, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 25
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.k, i8 0, i64 31, i1 false)
  store i32 -1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 0, ptr %i.m, align 4
  %i.n = call ptr @ieee802_11_parse_elems_full(ptr noundef nonnull %3) #19 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %ieee80211_parse_neg_ttlm.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.n, i64 768
  %i.p = load i8, ptr %i.o, align 8               ; 4 uses
  %.not110 = icmp eq i8 %i.p, 0
  br i1 %.not110, label %ieee80211_parse_neg_ttlm.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.q = getelementptr i8, ptr %i.n, i64 480
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 14 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 30 ; 5 uses
  %.not46 = icmp eq i8 %i.p, 1
  %5 = zext i8 %i.p to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.bv
  %6 = phi i16 [ 0, %.lr.ph ], [ %17, %bb.bv ]    ; 2 uses
  %7 = phi i16 [ 0, %.lr.ph ], [ %18, %bb.bv ]    ; 2 uses
  %8 = phi i16 [ 0, %.lr.ph ], [ %19, %bb.bv ]    ; 2 uses
  %9 = phi i16 [ 0, %.lr.ph ], [ %20, %bb.bv ]    ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bv ] ; 3 uses
  %i.u = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8              ; 5 uses
  %i.w = getelementptr i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 1
  %i.y = load i8, ptr %i.v, align 1
  %.fr.i = freeze i8 %i.y                         ; 2 uses
  %i.z = zext i8 %.fr.i to i32                    ; 3 uses
  %i.aa = and i32 %i.z, 24
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.d, label %ieee80211_parse_neg_ttlm.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ab = and i32 %i.z, 4
  %.not55.i = icmp eq i32 %i.ab, 0
  br i1 %.not55.i, label %bb.e, label %ieee80211_parse_neg_ttlm.exit.thread75

ieee80211_parse_neg_ttlm.exit.thread75:           ; preds = %bb.d
  %i.ac = load i16, ptr %i.b, align 8             ; 19 uses
  store i16 %i.ac, ptr %4, align 8
  store i16 %i.ac, ptr %i.r, align 8
  store i16 %i.ac, ptr %.sink86.i.sroa.gep49, align 2
  store i16 %i.ac, ptr %.sink86.i.sroa.gep, align 2
  store i16 %i.ac, ptr %.sink87.i.sroa.gep51, align 4
  store i16 %i.ac, ptr %.sink87.i.sroa.gep, align 4
  store i16 %i.ac, ptr %.sink88.i.sroa.gep53, align 2
  store i16 %i.ac, ptr %.sink88.i.sroa.gep, align 2
  store i16 %i.ac, ptr %.sink89.i.sroa.gep55, align 8
  store i16 %i.ac, ptr %.sink89.i.sroa.gep, align 8
  store i16 %i.ac, ptr %.sink90.i.sroa.gep57, align 2
  store i16 %i.ac, ptr %.sink90.i.sroa.gep, align 2
  store i16 %i.ac, ptr %.sink91.i.sroa.gep59, align 4
  store i16 %i.ac, ptr %.sink91.i.sroa.gep, align 4
  store i16 %i.ac, ptr %i.s, align 2
  store i16 %i.ac, ptr %i.t, align 2
  store i8 2, ptr %i.w, align 1
  br label %ieee80211_parse_neg_ttlm.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = and i8 %.fr.i, 3                        ; 18 uses
  store i8 %i.ad, ptr %i.w, align 1
  %switch.not.i = icmp eq i8 %i.ad, 3
  br i1 %switch.not.i, label %ieee80211_parse_neg_ttlm.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i8, ptr %i.x, align 1              ; 3 uses
  %i.af = getelementptr i8, ptr %i.v, i64 2       ; 4 uses
  %i.ag = and i32 %i.z, 32
  %.not59.not.i = icmp eq i32 %i.ag, 0
  %i.ah = zext i8 %i.ae to i64                    ; 13 uses
  %i.ai = and i64 %i.ah, 1
  %.not60.us.i = icmp eq i64 %i.ai, 0             ; 2 uses
  br i1 %.not59.not.i, label %.split.us.preheader.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.f
  br i1 %.not60.us.i, label %bb.ao, label %ieee80211_get_ttlm.exit.i

.split.us.preheader.i:                            ; preds = %bb.f
  br i1 %.not60.us.i, label %bb.h, label %ieee80211_get_ttlm.exit.us.i

ieee80211_get_ttlm.exit.us.i:                     ; preds = %.split.us.preheader.i
  %.val.i.us.i = load i16, ptr %i.af, align 1     ; 2 uses
  %.not61.us.i = icmp eq i16 %.val.i.us.i, 0
  br i1 %.not61.us.i, label %ieee80211_parse_neg_ttlm.exit.thread, label %bb.g

bb.g:                                             ; preds = %ieee80211_get_ttlm.exit.us.i
  %i.aj = getelementptr i8, ptr %i.v, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.split.us.preheader.i
  %.1.us.i = phi ptr [ %i.aj, %bb.g ], [ %i.af, %.split.us.preheader.i ] ; 3 uses
  %.0.us.i = phi i16 [ %.val.i.us.i, %bb.g ], [ 0, %.split.us.preheader.i ] ; 8 uses
  switch i8 %i.ad, label %default.unreachable145 [
    i8 2, label %bb.k
    i8 0, label %bb.j
    i8 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  store i16 %.0.us.i, ptr %i.r, align 8
  br label %.split.us.1.i

bb.j:                                             ; preds = %bb.h
  store i16 %.0.us.i, ptr %4, align 8
  br label %.split.us.1.i

bb.k:                                             ; preds = %bb.h
  store i16 %.0.us.i, ptr %4, align 8
  store i16 %.0.us.i, ptr %i.r, align 8
  br label %.split.us.1.i

.split.us.1.i:                                    ; preds = %bb.k, %bb.j, %bb.i
  %10 = phi i16 [ %.0.us.i, %bb.k ], [ %8, %bb.j ], [ %.0.us.i, %bb.i ] ; 3 uses
  %11 = phi i16 [ %.0.us.i, %bb.k ], [ %.0.us.i, %bb.j ], [ %9, %bb.i ] ; 3 uses
  %i.ak = and i64 %i.ah, 2
  %.not60.us.1.i = icmp eq i64 %i.ak, 0
  br i1 %.not60.us.1.i, label %bb.m, label %ieee80211_get_ttlm.exit.us.1.i

ieee80211_get_ttlm.exit.us.1.i:                   ; preds = %.split.us.1.i
  %.val.i.us.1.i = load i16, ptr %.1.us.i, align 1 ; 2 uses
  %.not61.us.1.i = icmp eq i16 %.val.i.us.1.i, 0
  br i1 %.not61.us.1.i, label %ieee80211_parse_neg_ttlm.exit.thread, label %bb.l

bb.l:                                             ; preds = %ieee80211_get_ttlm.exit.us.1.i
  %i.al = getelementptr i8, ptr %.1.us.i, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.split.us.1.i
  %.1.us.1.i = phi ptr [ %i.al, %bb.l ], [ %.1.us.i, %.split.us.1.i ] ; 3 uses
  %.0.us.1.i = phi i16 [ %.val.i.us.1.i, %bb.l ], [ 0, %.split.us.1.i ] ; 2 uses
  switch i8 %i.ad, label %default.unreachable145 [
    i8 2, label %bb.o
    i8 0, label %bb.n
    i8 1, label %.split.us.2.i
  ]

bb.n:                                             ; preds = %bb.m
  br label %.split.us.2.i

bb.o:                                             ; preds = %bb.m
  store i16 %.0.us.1.i, ptr %.sink86.i.sroa.gep49, align 2
  br label %.split.us.2.i

.split.us.2.i:                                    ; preds = %bb.o, %bb.n, %bb.m
  %.sink80.i.sroa.phi = phi ptr [ %.sink86.i.sroa.gep, %bb.o ], [ %.sink86.i.sroa.gep49, %bb.n ], [ %.sink86.i.sroa.gep, %bb.m ]
  store i16 %.0.us.1.i, ptr %.sink80.i.sroa.phi, align 2
  %i.am = and i64 %i.ah, 4
  %.not60.us.2.i = icmp eq i64 %i.am, 0
  br i1 %.not60.us.2.i, label %bb.q, label %ieee80211_get_ttlm.exit.us.2.i

ieee80211_get_ttlm.exit.us.2.i:                   ; preds = %.split.us.2.i
  %.val.i.us.2.i = load i16, ptr %.1.us.1.i, align 1 ; 2 uses
  %.not61.us.2.i = icmp eq i16 %.val.i.us.2.i, 0
  br i1 %.not61.us.2.i, label %ieee80211_parse_neg_ttlm.exit.thread, label %bb.p

bb.p:                                             ; preds = %ieee80211_get_ttlm.exit.us.2.i
  %i.an = getelementptr i8, ptr %.1.us.1.i, i64 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.split.us.2.i
  %.1.us.2.i = phi ptr [ %i.an, %bb.p ], [ %.1.us.1.i, %.split.us.2.i ] ; 3 uses
  %.0.us.2.i = phi i16 [ %.val.i.us.2.i, %bb.p ], [ 0, %.split.us.2.i ] ; 2 uses
  switch i8 %i.ad, label %default.unreachable145 [
    i8 2, label %bb.s
    i8 0, label %bb.r
    i8 1, label %.split.us.3.i
  ]

bb.r:                                             ; preds = %bb.q
  br label %.split.us.3.i

bb.s:                                             ; preds = %bb.q
  store i16 %.0.us.2.i, ptr %.sink87.i.sroa.gep51, align 4
  br label %.split.us.3.i

.split.us.3.i:                                    ; preds = %bb.s, %bb.r, %bb.q
  %.sink81.i.sroa.phi = phi ptr [ %.sink87.i.sroa.gep, %bb.s ], [ %.sink87.i.sroa.gep51, %bb.r ], [ %.sink87.i.sroa.gep, %bb.q ]
  store i16 %.0.us.2.i, ptr %.sink81.i.sroa.phi, align 2
  %i.ao = and i64 %i.ah, 8
  %.not60.us.3.i = icmp eq i64 %i.ao, 0
  br i1 %.not60.us.3.i, label %bb.u, label %ieee80211_get_ttlm.exit.us.3.i

ieee80211_get_ttlm.exit.us.3.i:                   ; preds = %.split.us.3.i
  %.val.i.us.3.i = load i16, ptr %.1.us.2.i, align 1 ; 2 uses
  %.not61.us.3.i = icmp eq i16 %.val.i.us.3.i, 0
  br i1 %.not61.us.3.i, label %ieee80211_parse_neg_ttlm.exit.thread, label %bb.t

bb.t:                                             ; preds = %ieee80211_get_ttlm.exit.us.3.i
  %i.ap = getelementptr i8, ptr %.1.us.2.i, i64 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.split.us.3.i
  %.1.us.3.i = phi ptr [ %i.ap, %bb.t ], [ %.1.us.2.i, %.split.us.3.i ] ; 3 uses
  %.0.us.3.i = phi i16 [ %.val.i.us.3.i, %bb.t ], [ 0, %.split.us.3.i ] ; 2 uses
  switch i8 %i.ad, label %default.unreachable145 [
    i8 2, label %bb.w
    i8 0, label %bb.v
    i8 1, label %.split.us.4.i
  ]

bb.v:                                             ; preds = %bb.u
  br label %.split.us.4.i

bb.w:                                             ; preds = %bb.u
  store i16 %.0.us.3.i, ptr %.sink88.i.sroa.gep53, align 2
  br label %.split.us.4.i

.split.us.4.i:                                    ; preds = %bb.w, %bb.v, %bb.u
  %.sink82.i.sroa.phi = phi ptr [ %.sink88.i.sroa.gep, %bb.w ], [ %.sink88.i.sroa.gep53, %bb.v ], [ %.sink88.i.sroa.gep, %bb.u ]
  store i16 %.0.us.3.i, ptr %.sink82.i.sroa.phi, align 2
  %i.aq = and i64 %i.ah, 16
  %.not60.us.4.i = icmp eq i64 %i.aq, 0
  br i1 %.not60.us.4.i, label %bb.y, label %ieee80211_get_ttlm.exit.us.4.i

ieee80211_get_ttlm.exit.us.4.i:                   ; preds = %.split.us.4.i
  %.val.i.us.4.i = load i16, ptr %.1.us.3.i, align 1 ; 2 uses
  %.not61.us.4.i = icmp eq i16 %.val.i.us.4.i, 0
  br i1 %.not61.us.4.i, label %ieee80211_parse_neg_ttlm.exit.thread, label %bb.x

bb.x:                                             ; preds = %ieee80211_get_ttlm.exit.us.4.i
  %i.ar = getelementptr i8, ptr %.1.us.3.i, i64 2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.split.us.4.i
  %.1.us.4.i = phi ptr [ %i.ar, %bb.x ], [ %.1.us.3.i, %.split.us.4.i ] ; 3 uses
  %.0.us.4.i = phi i16 [ %.val.i.us.4.i, %bb.x ], [ 0, %.split.us.4.i ] ; 2 uses
  switch i8 %i.ad, label %default.unreachable145 [
    i8 2, label %bb.aa
    i8 0, label %bb.z
    i8 1, label %.split.us.5.i
  ]

bb.z:                                             ; preds = %bb.y
  br label %.split.us.5.i

bb.aa:                                            ; preds = %bb.y
  store i16 %.0.us.4.i, ptr %.sink89.i.sroa.gep55, align 8
  br label %.split.us.5.i

.split.us.5.i:                                    ; preds = %bb.aa, %bb.z, %bb.y
  %.sink83.i.sroa.phi = phi ptr [ %.sink89.i.sroa.gep, %bb.aa ], [ %.sink89.i.sroa.gep55, %bb.z ], [ %.sink89.i.sroa.gep, %bb.y ]
  store i16 %.0.us.4.i, ptr %.sink83.i.sroa.phi, align 2
  %i.as = and i64 %i.ah, 32
  %.not60.us.5.i = icmp eq i64 %i.as, 0
  br i1 %.not60.us.5.i, label %bb.ac, label %ieee80211_get_ttlm.exit.us.5.i

ieee80211_get_ttlm.exit.us.5.i:                   ; preds = %.split.us.5.i
  %.val.i.us.5.i = load i16, ptr %.1.us.4.i, align 1 ; 2 uses
  %.not61.us.5.i = icmp eq i16 %.val.i.us.5.i, 0
  br i1 %.not61.us.5.i, label %ieee80211_parse_neg_ttlm.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %ieee80211_get_ttlm.exit.us.5.i
  %i.at = getelementptr i8, ptr %.1.us.4.i, i64 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.split.us.5.i
  %.1.us.5.i = phi ptr [ %i.at, %bb.ab ], [ %.1.us.4.i, %.split.us.5.i ] ; 3 uses
  %.0.us.5.i = phi i16 [ %.val.i.us.5.i, %bb.ab ], [ 0, %.split.us.5.i ] ; 2 uses
  switch i8 %i.ad, label %default.unreachable145 [
    i8 2, label %bb.ae
    i8 0, label %bb.ad
    i8 1, label %.split.us.6.i
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %.split.us.6.i

bb.ae:                                            ; preds = %bb.ac
  store i16 %.0.us.5.i, ptr %.sink90.i.sroa.gep57, align 2
  br label %.split.us.6.i

.split.us.6.i:                                    ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sink84.i.sroa.phi = phi ptr [ %.sink90.i.sroa.gep, %bb.ae ], [ %.sink90.i.sroa.gep57, %bb.ad ], [ %.sink90.i.sroa.gep, %bb.ac ]
  store i16 %.0.us.5.i, ptr %.sink84.i.sroa.phi, align 2
  %i.au = and i64 %i.ah, 64
  %.not60.us.6.i = icmp eq i64 %i.au, 0
  br i1 %.not60.us.6.i, label %bb.ag, label %ieee80211_get_ttlm.exit.us.6.i

ieee80211_get_ttlm.exit.us.6.i:                   ; preds = %.split.us.6.i
  %.val.i.us.6.i = load i16, ptr %.1.us.5.i, align 1 ; 2 uses
  %.not61.us.6.i = icmp eq i16 %.val.i.us.6.i, 0
  br i1 %.not61.us.6.i, label %ieee80211_parse_neg_ttlm.exit.thread, label %bb.af

bb.af:                                            ; preds = %ieee80211_get_ttlm.exit.us.6.i
  %i.av = getelementptr i8, ptr %.1.us.5.i, i64 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.split.us.6.i
  %.1.us.6.i = phi ptr [ %i.av, %bb.af ], [ %.1.us.5.i, %.split.us.6.i ]
  %.0.us.6.i = phi i16 [ %.val.i.us.6.i, %bb.af ], [ 0, %.split.us.6.i ] ; 2 uses
  switch i8 %i.ad, label %default.unreachable145 [
    i8 2, label %bb.ai
    i8 0, label %bb.ah
    i8 1, label %.split.us.7.i
  ]

bb.ah:                                            ; preds = %bb.ag
  br label %.split.us.7.i

bb.ai:                                            ; preds = %bb.ag
  store i16 %.0.us.6.i, ptr %.sink91.i.sroa.gep59, align 4
  br label %.split.us.7.i

.split.us.7.i:                                    ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sink85.i.sroa.phi = phi ptr [ %.sink91.i.sroa.gep, %bb.ai ], [ %.sink91.i.sroa.gep59, %bb.ah ], [ %.sink91.i.sroa.gep, %bb.ag ]
  store i16 %.0.us.6.i, ptr %.sink85.i.sroa.phi, align 2
  %.not60.us.7.i = icmp sgt i8 %i.ae, -1
  br i1 %.not60.us.7.i, label %bb.aj, label %ieee80211_get_ttlm.exit.us.7.i

ieee80211_get_ttlm.exit.us.7.i:                   ; preds = %.split.us.7.i
  %.val.i.us.7.i = load i16, ptr %.1.us.6.i, align 1 ; 2 uses
  %.not61.us.7.i = icmp eq i16 %.val.i.us.7.i, 0
  br i1 %.not61.us.7.i, label %ieee80211_parse_neg_ttlm.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %ieee80211_get_ttlm.exit.us.7.i, %.split.us.7.i
  %.0.us.7.i = phi i16 [ 0, %.split.us.7.i ], [ %.val.i.us.7.i, %ieee80211_get_ttlm.exit.us.7.i ] ; 7 uses
  switch i8 %i.ad, label %default.unreachable145 [
    i8 2, label %bb.am
    i8 0, label %bb.al
    i8 1, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  store i16 %.0.us.7.i, ptr %i.t, align 2
  br label %bb.bv

bb.al:                                            ; preds = %bb.aj
  store i16 %.0.us.7.i, ptr %i.s, align 2
  br label %bb.bv

bb.am:                                            ; preds = %bb.aj
  store i16 %.0.us.7.i, ptr %i.s, align 2
  store i16 %.0.us.7.i, ptr %i.t, align 2
  br label %ieee80211_parse_neg_ttlm.exit

ieee80211_get_ttlm.exit.i:                        ; preds = %.split.preheader.i
  %i.aw = load i8, ptr %i.af, align 1             ; 2 uses
  %.not61.i = icmp eq i8 %i.aw, 0
  br i1 %.not61.i, label %ieee80211_parse_neg_ttlm.exit.thread, label %bb.an

bb.an:                                            ; preds = %ieee80211_get_ttlm.exit.i
  %i.ax = zext i8 %i.aw to i16
  %i.ay = getelementptr i8, ptr %i.v, i64 3
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.split.preheader.i
  %.1.i = phi ptr [ %i.ay, %bb.an ], [ %i.af, %.split.preheader.i ] ; 3 uses
  %.0.i = phi i16 [ %i.ax, %bb.an ], [ 0, %.split.preheader.i ] ; 8 uses
  switch i8 %i.ad, label %default.unreachable145 [
    i8 2, label %bb.ap
    i8 0, label %bb.aq
    i8 1, label %bb.ar
  ]

bb.ap:                                            ; preds = %bb.ao
  store i16 %.0.i, ptr %4, align 8
  store i16 %.0.i, ptr %i.r, align 8
  br label %.split.1.i

bb.aq:                                            ; preds = %bb.ao
  store i16 %.0.i, ptr %4, align 8
  br label %.split.1.i

bb.ar:                                            ; preds = %bb.ao
  store i16 %.0.i, ptr %i.r, align 8
  br label %.split.1.i

.split.1.i:                                       ; preds = %bb.ar, %bb.aq, %bb.ap
  %12 = phi i16 [ %.0.i, %bb.ar ], [ %8, %bb.aq ], [ %.0.i, %bb.ap ] ; 3 uses
  %13 = phi i16 [ %9, %bb.ar ], [ %.0.i, %bb.aq ], [ %.0.i, %bb.ap ] ; 3 uses
  %i.az = and i64 %i.ah, 2
  %.not60.1.i = icmp eq i64 %i.az, 0
  br i1 %.not60.1.i, label %bb.at, label %ieee80211_get_ttlm.exit.1.i

ieee80211_get_ttlm.exit.1.i:                      ; preds = %.split.1.i
  %i.ba = load i8, ptr %.1.i, align 1             ; 2 uses
  %.not61.1.i = icmp eq i8 %i.ba, 0
  br i1 %.not61.1.i, label %ieee80211_parse_neg_ttlm.exit.thread, label %bb.as

bb.as:                                            ; preds = %ieee80211_get_ttlm.exit.1.i
  %i.bb = zext i8 %i.ba to i16
  %i.bc = getelementptr i8, ptr %.1.i, i64 1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.split.1.i
  %.1.1.i = phi ptr [ %i.bc, %bb.as ], [ %.1.i, %.split.1.i ] ; 3 uses
  %.0.1.i = phi i16 [ %i.bb, %bb.as ], [ 0, %.split.1.i ] ; 2 uses
  switch i8 %i.ad, label %default.unreachable145 [
    i8 2, label %bb.av
    i8 0, label %bb.au
    i8 1, label %.split.2.i
  ]

bb.au:                                            ; preds = %bb.at
  br label %.split.2.i

bb.av:                                            ; preds = %bb.at
  store i16 %.0.1.i, ptr %.sink86.i.sroa.gep49, align 2
  br label %.split.2.i

.split.2.i:                                       ; preds = %bb.av, %bb.au, %bb.at
  %.sink86.i.sroa.phi = phi ptr [ %.sink86.i.sroa.gep, %bb.av ], [ %.sink86.i.sroa.gep49, %bb.au ], [ %.sink86.i.sroa.gep, %bb.at ]
  store i16 %.0.1.i, ptr %.sink86.i.sroa.phi, align 2
  %i.bd = and i64 %i.ah, 4
  %.not60.2.i = icmp eq i64 %i.bd, 0
  br i1 %.not60.2.i, label %bb.ax, label %ieee80211_get_ttlm.exit.2.i

ieee80211_get_ttlm.exit.2.i:                      ; preds = %.split.2.i
  %i.be = load i8, ptr %.1.1.i, align 1           ; 2 uses
  %.not61.2.i = icmp eq i8 %i.be, 0
  br i1 %.not61.2.i, label %ieee80211_parse_neg_ttlm.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %ieee80211_get_ttlm.exit.2.i
  %i.bf = zext i8 %i.be to i16
  %i.bg = getelementptr i8, ptr %.1.1.i, i64 1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.split.2.i
  %.1.2.i = phi ptr [ %i.bg, %bb.aw ], [ %.1.1.i, %.split.2.i ] ; 3 uses
  %.0.2.i = phi i16 [ %i.bf, %bb.aw ], [ 0, %.split.2.i ] ; 2 uses
  switch i8 %i.ad, label %default.unreachable145 [
    i8 2, label %bb.az
    i8 0, label %bb.ay
    i8 1, label %.split.3.i
  ]

bb.ay:                                            ; preds = %bb.ax
  br label %.split.3.i

bb.az:                                            ; preds = %bb.ax
  store i16 %.0.2.i, ptr %.sink87.i.sroa.gep51, align 4
  br label %.split.3.i

.split.3.i:                                       ; preds = %bb.az, %bb.ay, %bb.ax
  %.sink87.i.sroa.phi = phi ptr [ %.sink87.i.sroa.gep, %bb.az ], [ %.sink87.i.sroa.gep51, %bb.ay ], [ %.sink87.i.sroa.gep, %bb.ax ]
  store i16 %.0.2.i, ptr %.sink87.i.sroa.phi, align 2
  %i.bh = and i64 %i.ah, 8
  %.not60.3.i = icmp eq i64 %i.bh, 0
  br i1 %.not60.3.i, label %bb.bb, label %ieee80211_get_ttlm.exit.3.i

ieee80211_get_ttlm.exit.3.i:                      ; preds = %.split.3.i
  %i.bi = load i8, ptr %.1.2.i, align 1           ; 2 uses
  %.not61.3.i = icmp eq i8 %i.bi, 0
  br i1 %.not61.3.i, label %ieee80211_parse_neg_ttlm.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %ieee80211_get_ttlm.exit.3.i
  %i.bj = zext i8 %i.bi to i16
  %i.bk = getelementptr i8, ptr %.1.2.i, i64 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.split.3.i
  %.1.3.i = phi ptr [ %i.bk, %bb.ba ], [ %.1.2.i, %.split.3.i ] ; 3 uses
  %.0.3.i = phi i16 [ %i.bj, %bb.ba ], [ 0, %.split.3.i ] ; 2 uses
  switch i8 %i.ad, label %default.unreachable145 [
    i8 2, label %bb.bd
    i8 0, label %bb.bc
    i8 1, label %.split.4.i
  ]

bb.bc:                                            ; preds = %bb.bb
  br label %.split.4.i

bb.bd:                                            ; preds = %bb.bb
  store i16 %.0.3.i, ptr %.sink88.i.sroa.gep53, align 2
  br label %.split.4.i

.split.4.i:                                       ; preds = %bb.bd, %bb.bc, %bb.bb
  %.sink88.i.sroa.phi = phi ptr [ %.sink88.i.sroa.gep, %bb.bd ], [ %.sink88.i.sroa.gep53, %bb.bc ], [ %.sink88.i.sroa.gep, %bb.bb ]
  store i16 %.0.3.i, ptr %.sink88.i.sroa.phi, align 2
  %i.bl = and i64 %i.ah, 16
  %.not60.4.i = icmp eq i64 %i.bl, 0
  br i1 %.not60.4.i, label %bb.bf, label %ieee80211_get_ttlm.exit.4.i

ieee80211_get_ttlm.exit.4.i:                      ; preds = %.split.4.i
  %i.bm = load i8, ptr %.1.3.i, align 1           ; 2 uses
  %.not61.4.i = icmp eq i8 %i.bm, 0
  br i1 %.not61.4.i, label %ieee80211_parse_neg_ttlm.exit.thread, label %bb.be

bb.be:                                            ; preds = %ieee80211_get_ttlm.exit.4.i
  %i.bn = zext i8 %i.bm to i16
  %i.bo = getelementptr i8, ptr %.1.3.i, i64 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.split.4.i
  %.1.4.i = phi ptr [ %i.bo, %bb.be ], [ %.1.3.i, %.split.4.i ] ; 3 uses
  %.0.4.i = phi i16 [ %i.bn, %bb.be ], [ 0, %.split.4.i ] ; 2 uses
  switch i8 %i.ad, label %default.unreachable145 [
    i8 2, label %bb.bh
    i8 0, label %bb.bg
    i8 1, label %.split.5.i
  ]

bb.bg:                                            ; preds = %bb.bf
  br label %.split.5.i

bb.bh:                                            ; preds = %bb.bf
  store i16 %.0.4.i, ptr %.sink89.i.sroa.gep55, align 8
  br label %.split.5.i

.split.5.i:                                       ; preds = %bb.bh, %bb.bg, %bb.bf
  %.sink89.i.sroa.phi = phi ptr [ %.sink89.i.sroa.gep, %bb.bh ], [ %.sink89.i.sroa.gep55, %bb.bg ], [ %.sink89.i.sroa.gep, %bb.bf ]
  store i16 %.0.4.i, ptr %.sink89.i.sroa.phi, align 2
  %i.bp = and i64 %i.ah, 32
  %.not60.5.i = icmp eq i64 %i.bp, 0
  br i1 %.not60.5.i, label %bb.bj, label %ieee80211_get_ttlm.exit.5.i

ieee80211_get_ttlm.exit.5.i:                      ; preds = %.split.5.i
  %i.bq = load i8, ptr %.1.4.i, align 1           ; 2 uses
  %.not61.5.i = icmp eq i8 %i.bq, 0
  br i1 %.not61.5.i, label %ieee80211_parse_neg_ttlm.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %ieee80211_get_ttlm.exit.5.i
  %i.br = zext i8 %i.bq to i16
  %i.bs = getelementptr i8, ptr %.1.4.i, i64 1
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.split.5.i
  %.1.5.i = phi ptr [ %i.bs, %bb.bi ], [ %.1.4.i, %.split.5.i ] ; 3 uses
  %.0.5.i = phi i16 [ %i.br, %bb.bi ], [ 0, %.split.5.i ] ; 2 uses
  switch i8 %i.ad, label %default.unreachable145 [
    i8 2, label %bb.bl
    i8 0, label %bb.bk
    i8 1, label %.split.6.i
  ]

bb.bk:                                            ; preds = %bb.bj
  br label %.split.6.i

bb.bl:                                            ; preds = %bb.bj
  store i16 %.0.5.i, ptr %.sink90.i.sroa.gep57, align 2
  br label %.split.6.i

.split.6.i:                                       ; preds = %bb.bl, %bb.bk, %bb.bj
  %.sink90.i.sroa.phi = phi ptr [ %.sink90.i.sroa.gep, %bb.bl ], [ %.sink90.i.sroa.gep57, %bb.bk ], [ %.sink90.i.sroa.gep, %bb.bj ]
  store i16 %.0.5.i, ptr %.sink90.i.sroa.phi, align 2
  %i.bt = and i64 %i.ah, 64
  %.not60.6.i = icmp eq i64 %i.bt, 0
  br i1 %.not60.6.i, label %bb.bn, label %ieee80211_get_ttlm.exit.6.i

ieee80211_get_ttlm.exit.6.i:                      ; preds = %.split.6.i
  %i.bu = load i8, ptr %.1.5.i, align 1           ; 2 uses
  %.not61.6.i = icmp eq i8 %i.bu, 0
  br i1 %.not61.6.i, label %ieee80211_parse_neg_ttlm.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %ieee80211_get_ttlm.exit.6.i
  %i.bv = zext i8 %i.bu to i16
  %i.bw = getelementptr i8, ptr %.1.5.i, i64 1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.split.6.i
  %.1.6.i = phi ptr [ %i.bw, %bb.bm ], [ %.1.5.i, %.split.6.i ]
  %.0.6.i = phi i16 [ %i.bv, %bb.bm ], [ 0, %.split.6.i ] ; 2 uses
  switch i8 %i.ad, label %default.unreachable145 [
    i8 2, label %bb.bp
    i8 0, label %bb.bo
    i8 1, label %.split.7.i
  ]

bb.bo:                                            ; preds = %bb.bn
  br label %.split.7.i

bb.bp:                                            ; preds = %bb.bn
  store i16 %.0.6.i, ptr %.sink91.i.sroa.gep59, align 4
  br label %.split.7.i

.split.7.i:                                       ; preds = %bb.bp, %bb.bo, %bb.bn
  %.sink91.i.sroa.phi = phi ptr [ %.sink91.i.sroa.gep, %bb.bp ], [ %.sink91.i.sroa.gep59, %bb.bo ], [ %.sink91.i.sroa.gep, %bb.bn ]
  store i16 %.0.6.i, ptr %.sink91.i.sroa.phi, align 2
  %.not60.7.i = icmp sgt i8 %i.ae, -1
  br i1 %.not60.7.i, label %bb.br, label %ieee80211_get_ttlm.exit.7.i

ieee80211_get_ttlm.exit.7.i:                      ; preds = %.split.7.i
  %i.bx = load i8, ptr %.1.6.i, align 1           ; 2 uses
  %.not61.7.i = icmp eq i8 %i.bx, 0
  br i1 %.not61.7.i, label %ieee80211_parse_neg_ttlm.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %ieee80211_get_ttlm.exit.7.i
  %i.by = zext i8 %i.bx to i16
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.split.7.i
  %.0.7.i = phi i16 [ %i.by, %bb.bq ], [ 0, %.split.7.i ] ; 7 uses
  switch i8 %i.ad, label %default.unreachable145 [
    i8 2, label %bb.bu
    i8 0, label %bb.bt
    i8 1, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br
  store i16 %.0.7.i, ptr %i.t, align 2
  br label %bb.bv

bb.bt:                                            ; preds = %bb.br
  store i16 %.0.7.i, ptr %i.s, align 2
  br label %bb.bv

bb.bu:                                            ; preds = %bb.br
  store i16 %.0.7.i, ptr %i.s, align 2
  store i16 %.0.7.i, ptr %i.t, align 2
  br label %ieee80211_parse_neg_ttlm.exit

default.unreachable145:                           ; preds = %bb.br, %bb.bn, %bb.bj, %bb.bf, %bb.bb, %bb.ax, %bb.at, %bb.ao, %bb.aj, %bb.ag, %bb.ac, %bb.y, %bb.u, %bb.q, %bb.m, %bb.h
  unreachable

ieee80211_parse_neg_ttlm.exit:                    ; preds = %bb.am, %bb.bu, %ieee80211_parse_neg_ttlm.exit.thread75
  %14 = phi i16 [ %i.ac, %ieee80211_parse_neg_ttlm.exit.thread75 ], [ %.0.7.i, %bb.bu ], [ %.0.us.7.i, %bb.am ] ; 2 uses
  %15 = phi i16 [ %i.ac, %ieee80211_parse_neg_ttlm.exit.thread75 ], [ %12, %bb.bu ], [ %10, %bb.am ]
  %16 = phi i16 [ %i.ac, %ieee80211_parse_neg_ttlm.exit.thread75 ], [ %13, %bb.bu ], [ %11, %bb.am ]
  br i1 %.not46, label %bb.bv, label %ieee80211_parse_neg_ttlm.exit.thread

bb.bv:                                            ; preds = %bb.ak, %bb.al, %bb.bs, %bb.bt, %ieee80211_parse_neg_ttlm.exit
  %17 = phi i16 [ %14, %ieee80211_parse_neg_ttlm.exit ], [ %.0.us.7.i, %bb.ak ], [ %6, %bb.al ], [ %.0.7.i, %bb.bs ], [ %6, %bb.bt ] ; 3 uses
  %18 = phi i16 [ %14, %ieee80211_parse_neg_ttlm.exit ], [ %7, %bb.ak ], [ %.0.us.7.i, %bb.al ], [ %7, %bb.bs ], [ %.0.7.i, %bb.bt ] ; 3 uses
  %19 = phi i16 [ %15, %ieee80211_parse_neg_ttlm.exit ], [ %10, %bb.ak ], [ %10, %bb.al ], [ %12, %bb.bs ], [ %12, %bb.bt ] ; 3 uses
  %20 = phi i16 [ %16, %ieee80211_parse_neg_ttlm.exit ], [ %11, %bb.ak ], [ %11, %bb.al ], [ %13, %bb.bs ], [ %13, %bb.bt ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bz = icmp samesign ult i64 %indvars.iv.next, %5
  br i1 %i.bz, label %bb.c, label %._crit_edge, !llvm.loop !362

._crit_edge:                                      ; preds = %bb.bv
  switch i8 %i.p, label %bb.bx [
    i8 0, label %ieee80211_parse_neg_ttlm.exit.thread
    i8 2, label %bb.bw
  ]

bb.bw:                                            ; preds = %._crit_edge
  %i.ca = load i8, ptr %i.a, align 2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = icmp eq i8 %i.ca, %i.cc
  br i1 %i.cd, label %ieee80211_parse_neg_ttlm.exit.thread, label %bb.bx

bb.bx:                                            ; preds = %._crit_edge, %bb.bw
  %.not41 = icmp eq i16 %20, 0
  br i1 %.not41, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ce = zext i16 %20 to i32
  %i.cf = load i16, ptr %i.b, align 8
  %i.cg = zext i16 %i.cf to i32
  %i.ch = xor i32 %i.cg, -1
  %i.ci = and i32 %i.ch, %i.ce
  %.not42 = icmp eq i32 %i.ci, 0
  br i1 %.not42, label %bb.bz, label %ieee80211_parse_neg_ttlm.exit.thread

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.not43 = icmp eq i16 %19, 0
  br i1 %.not43, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.cj = zext i16 %19 to i32
  %i.ck = load i16, ptr %i.b, align 8
  %i.cl = zext i16 %i.ck to i32
  %i.cm = xor i32 %i.cl, -1
  %i.cn = and i32 %i.cm, %i.cj
  %.not44 = icmp eq i32 %i.cn, 0
  br i1 %.not44, label %bb.cb, label %ieee80211_parse_neg_ttlm.exit.thread

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %i.co = load i16, ptr %.sink86.i.sroa.gep49, align 2 ; 2 uses
  %.not41.1 = icmp eq i16 %i.co, 0
  br i1 %.not41.1, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.cp = zext i16 %i.co to i32
  %i.cq = load i16, ptr %i.b, align 8
  %i.cr = zext i16 %i.cq to i32
  %i.cs = xor i32 %i.cr, -1
  %i.ct = and i32 %i.cs, %i.cp
  %.not42.1 = icmp eq i32 %i.ct, 0
  br i1 %.not42.1, label %bb.cd, label %ieee80211_parse_neg_ttlm.exit.thread

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 18
  %i.cv = load i16, ptr %i.cu, align 2            ; 2 uses
  %.not43.1 = icmp eq i16 %i.cv, 0
  br i1 %.not43.1, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.cw = zext i16 %i.cv to i32
  %i.cx = load i16, ptr %i.b, align 8
  %i.cy = zext i16 %i.cx to i32
  %i.cz = xor i32 %i.cy, -1
  %i.da = and i32 %i.cz, %i.cw
  %.not44.1 = icmp eq i32 %i.da, 0
  br i1 %.not44.1, label %bb.cf, label %ieee80211_parse_neg_ttlm.exit.thread

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.db = load i16, ptr %.sink87.i.sroa.gep51, align 4 ; 2 uses
  %.not41.2 = icmp eq i16 %i.db, 0
  br i1 %.not41.2, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.dc = zext i16 %i.db to i32
  %i.dd = load i16, ptr %i.b, align 8
  %i.de = zext i16 %i.dd to i32
  %i.df = xor i32 %i.de, -1
  %i.dg = and i32 %i.df, %i.dc
  %.not42.2 = icmp eq i32 %i.dg, 0
  br i1 %.not42.2, label %bb.ch, label %ieee80211_parse_neg_ttlm.exit.thread

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.di = load i16, ptr %i.dh, align 4            ; 2 uses
  %.not43.2 = icmp eq i16 %i.di, 0
  br i1 %.not43.2, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.dj = zext i16 %i.di to i32
  %i.dk = load i16, ptr %i.b, align 8
  %i.dl = zext i16 %i.dk to i32
  %i.dm = xor i32 %i.dl, -1
  %i.dn = and i32 %i.dm, %i.dj
  %.not44.2 = icmp eq i32 %i.dn, 0
  br i1 %.not44.2, label %bb.cj, label %ieee80211_parse_neg_ttlm.exit.thread

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.do = load i16, ptr %.sink88.i.sroa.gep53, align 2 ; 2 uses
  %.not41.3 = icmp eq i16 %i.do, 0
  br i1 %.not41.3, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.dp = zext i16 %i.do to i32
  %i.dq = load i16, ptr %i.b, align 8
  %i.dr = zext i16 %i.dq to i32
  %i.ds = xor i32 %i.dr, -1
  %i.dt = and i32 %i.ds, %i.dp
  %.not42.3 = icmp eq i32 %i.dt, 0
  br i1 %.not42.3, label %bb.cl, label %ieee80211_parse_neg_ttlm.exit.thread

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.dv = load i16, ptr %i.du, align 2            ; 2 uses
  %.not43.3 = icmp eq i16 %i.dv, 0
  br i1 %.not43.3, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.dw = zext i16 %i.dv to i32
  %i.dx = load i16, ptr %i.b, align 8
  %i.dy = zext i16 %i.dx to i32
  %i.dz = xor i32 %i.dy, -1
  %i.ea = and i32 %i.dz, %i.dw
  %.not44.3 = icmp eq i32 %i.ea, 0
  br i1 %.not44.3, label %bb.cn, label %ieee80211_parse_neg_ttlm.exit.thread

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.eb = load i16, ptr %.sink89.i.sroa.gep55, align 8 ; 2 uses
  %.not41.4 = icmp eq i16 %i.eb, 0
  br i1 %.not41.4, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ec = zext i16 %i.eb to i32
  %i.ed = load i16, ptr %i.b, align 8
  %i.ee = zext i16 %i.ed to i32
  %i.ef = xor i32 %i.ee, -1
  %i.eg = and i32 %i.ef, %i.ec
  %.not42.4 = icmp eq i32 %i.eg, 0
  br i1 %.not42.4, label %bb.cp, label %ieee80211_parse_neg_ttlm.exit.thread

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ei = load i16, ptr %i.eh, align 8            ; 2 uses
  %.not43.4 = icmp eq i16 %i.ei, 0
  br i1 %.not43.4, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ej = zext i16 %i.ei to i32
  %i.ek = load i16, ptr %i.b, align 8
  %i.el = zext i16 %i.ek to i32
  %i.em = xor i32 %i.el, -1
  %i.en = and i32 %i.em, %i.ej
  %.not44.4 = icmp eq i32 %i.en, 0
  br i1 %.not44.4, label %bb.cr, label %ieee80211_parse_neg_ttlm.exit.thread

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.eo = load i16, ptr %.sink90.i.sroa.gep57, align 2 ; 2 uses
  %.not41.5 = icmp eq i16 %i.eo, 0
  br i1 %.not41.5, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ep = zext i16 %i.eo to i32
  %i.eq = load i16, ptr %i.b, align 8
  %i.er = zext i16 %i.eq to i32
  %i.es = xor i32 %i.er, -1
  %i.et = and i32 %i.es, %i.ep
  %.not42.5 = icmp eq i32 %i.et, 0
  br i1 %.not42.5, label %bb.ct, label %ieee80211_parse_neg_ttlm.exit.thread

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.ev = load i16, ptr %i.eu, align 2            ; 2 uses
  %.not43.5 = icmp eq i16 %i.ev, 0
  br i1 %.not43.5, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ew = zext i16 %i.ev to i32
  %i.ex = load i16, ptr %i.b, align 8
  %i.ey = zext i16 %i.ex to i32
  %i.ez = xor i32 %i.ey, -1
  %i.fa = and i32 %i.ez, %i.ew
  %.not44.5 = icmp eq i32 %i.fa, 0
  br i1 %.not44.5, label %bb.cv, label %ieee80211_parse_neg_ttlm.exit.thread

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.fb = load i16, ptr %.sink91.i.sroa.gep59, align 4 ; 2 uses
  %.not41.6 = icmp eq i16 %i.fb, 0
  br i1 %.not41.6, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.fc = zext i16 %i.fb to i32
  %i.fd = load i16, ptr %i.b, align 8
  %i.fe = zext i16 %i.fd to i32
  %i.ff = xor i32 %i.fe, -1
  %i.fg = and i32 %i.ff, %i.fc
  %.not42.6 = icmp eq i32 %i.fg, 0
  br i1 %.not42.6, label %bb.cx, label %ieee80211_parse_neg_ttlm.exit.thread

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.fi = load i16, ptr %i.fh, align 4            ; 2 uses
  %.not43.6 = icmp eq i16 %i.fi, 0
  br i1 %.not43.6, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.fj = zext i16 %i.fi to i32
  %i.fk = load i16, ptr %i.b, align 8
  %i.fl = zext i16 %i.fk to i32
  %i.fm = xor i32 %i.fl, -1
  %i.fn = and i32 %i.fm, %i.fj
  %.not44.6 = icmp eq i32 %i.fn, 0
  br i1 %.not44.6, label %bb.cz, label %ieee80211_parse_neg_ttlm.exit.thread

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.not41.7 = icmp eq i16 %18, 0
  br i1 %.not41.7, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.fo = zext i16 %18 to i32
  %i.fp = load i16, ptr %i.b, align 8
  %i.fq = zext i16 %i.fp to i32
  %i.fr = xor i32 %i.fq, -1
  %i.fs = and i32 %i.fr, %i.fo
  %.not42.7 = icmp eq i32 %i.fs, 0
  br i1 %.not42.7, label %bb.db, label %ieee80211_parse_neg_ttlm.exit.thread

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.not43.7 = icmp eq i16 %17, 0
  br i1 %.not43.7, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ft = zext i16 %17 to i32
  %i.fu = load i16, ptr %i.b, align 8
  %i.fv = zext i16 %i.fu to i32
  %i.fw = xor i32 %i.fv, -1
  %i.fx = and i32 %i.fw, %i.ft
  %.not44.7 = icmp eq i32 %i.fx, 0
  br i1 %.not44.7, label %bb.dd, label %ieee80211_parse_neg_ttlm.exit.thread

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.fy = getelementptr i8, ptr %0, i64 1856
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = call fastcc i32 @drv_can_neg_ttlm(ptr noundef %i.fz, ptr noundef %0, ptr noundef nonnull %4) #22, !srcloc !363 ; 2 uses
  %.not40 = icmp eq i32 %i.ga, 0
  br i1 %.not40, label %bb.de, label %ieee80211_parse_neg_ttlm.exit.thread

bb.de:                                            ; preds = %bb.dd
  call fastcc void @ieee80211_apply_neg_ttlm(ptr noundef %0, ptr noundef nonnull byval(%struct.ieee80211_neg_ttlm) align 8 %4) #22, !srcloc !364
  br label %ieee80211_parse_neg_ttlm.exit.thread

ieee80211_parse_neg_ttlm.exit.thread:             ; preds = %ieee80211_get_ttlm.exit.4.i, %ieee80211_get_ttlm.exit.6.i, %ieee80211_get_ttlm.exit.3.i, %ieee80211_get_ttlm.exit.7.i, %ieee80211_get_ttlm.exit.2.i, %ieee80211_get_ttlm.exit.1.i, %ieee80211_get_ttlm.exit.i, %ieee80211_get_ttlm.exit.5.i, %ieee80211_get_ttlm.exit.us.4.i, %ieee80211_get_ttlm.exit.us.6.i, %ieee80211_get_ttlm.exit.us.3.i, %ieee80211_get_ttlm.exit.us.7.i, %ieee80211_get_ttlm.exit.us.2.i, %ieee80211_get_ttlm.exit.us.1.i, %ieee80211_get_ttlm.exit.us.5.i, %ieee80211_get_ttlm.exit.us.i, %bb.c, %bb.e, %ieee80211_parse_neg_ttlm.exit, %.preheader, %bb.by, %bb.ca, %bb.cc, %bb.ce, %bb.cg, %bb.ci, %bb.ck, %bb.cm, %bb.co, %bb.cq, %bb.cs, %bb.cu, %bb.cw, %bb.cy, %bb.da, %bb.dc, %bb.bw, %._crit_edge, %bb.b, %bb.dd, %bb.de
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %._crit_edge ], [ 1, %bb.bw ], [ %i.ga, %bb.dd ], [ 0, %bb.de ], [ 1, %.preheader ], [ 1, %bb.by ], [ 1, %bb.dc ], [ 1, %bb.da ], [ 1, %bb.cy ], [ 1, %bb.cw ], [ 1, %bb.cu ], [ 1, %bb.cs ], [ 1, %bb.cq ], [ 1, %bb.co ], [ 1, %bb.cm ], [ 1, %bb.ck ], [ 1, %bb.ci ], [ 1, %bb.cg ], [ 1, %bb.ce ], [ 1, %bb.cc ], [ 1, %bb.ca ], [ 1, %ieee80211_parse_neg_ttlm.exit ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %ieee80211_get_ttlm.exit.us.i ], [ 1, %ieee80211_get_ttlm.exit.us.5.i ], [ 1, %ieee80211_get_ttlm.exit.us.1.i ], [ 1, %ieee80211_get_ttlm.exit.us.2.i ], [ 1, %ieee80211_get_ttlm.exit.us.7.i ], [ 1, %ieee80211_get_ttlm.exit.us.3.i ], [ 1, %ieee80211_get_ttlm.exit.us.6.i ], [ 1, %ieee80211_get_ttlm.exit.us.4.i ], [ 1, %ieee80211_get_ttlm.exit.5.i ], [ 1, %ieee80211_get_ttlm.exit.i ], [ 1, %ieee80211_get_ttlm.exit.1.i ], [ 1, %ieee80211_get_ttlm.exit.2.i ], [ 1, %ieee80211_get_ttlm.exit.7.i ], [ 1, %ieee80211_get_ttlm.exit.3.i ], [ 1, %ieee80211_get_ttlm.exit.6.i ], [ 1, %ieee80211_get_ttlm.exit.4.i ]
  call void @kfree(ptr noundef %i.n) #19
  %i.gb = getelementptr i8, ptr %0, i64 1856
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = getelementptr i8, ptr %i.gc, i64 1524   ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = add i32 %i.ge, 66
  %i.gg = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %i.gf, i32 noundef 2080) #19 ; 6 uses
  %.not.i47 = icmp eq ptr %i.gg, null
  br i1 %.not.i47, label %ieee80211_send_neg_ttlm_res.exit, label %bb.df

bb.df:                                            ; preds = %ieee80211_parse_neg_ttlm.exit.thread
  %i.gh = load i32, ptr %i.gd, align 4            ; 2 uses
  %i.gi = getelementptr i8, ptr %i.gg, i64 208    ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = sext i32 %i.gh to i64
  %i.gl = getelementptr i8, ptr %i.gj, i64 %i.gk
  store ptr %i.gl, ptr %i.gi, align 8
  %i.gm = getelementptr i8, ptr %i.gg, i64 188    ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = add i32 %i.gn, %i.gh
  store i32 %i.go, ptr %i.gm, align 4
  %i.gp = call noundef ptr @skb_put(ptr noundef nonnull %i.gg, i32 noundef 29) #19 ; 9 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.gq, i8 0, i64 27, i1 false)
  store i16 208, ptr %i.gp, align 2
  %i.gr = getelementptr i8, ptr %i.gp, i64 4
  %i.gs = getelementptr i8, ptr %0, i64 5154      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 dereferenceable(6) %i.gr, ptr noundef align 2 dereferenceable(6) %i.gs, i64 6, i1 false)
  %i.gt = getelementptr i8, ptr %i.gp, i64 10
  %i.gu = getelementptr i8, ptr %0, i64 7202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 dereferenceable(6) %i.gt, ptr noundef align 2 dereferenceable(6) %i.gu, i64 6, i1 false)
  %i.gv = getelementptr i8, ptr %i.gp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 dereferenceable(6) %i.gv, ptr noundef align 2 dereferenceable(6) %i.gs, i64 6, i1 false)
  %i.gw = getelementptr i8, ptr %i.gp, i64 24
  store i8 37, ptr %i.gw, align 2
  %i.gx = getelementptr i8, ptr %i.gp, i64 25
  store i8 1, ptr %i.gx, align 1
  %i.gy = getelementptr i8, ptr %i.gp, i64 26
  store i8 %i.d, ptr %i.gy, align 2
  switch i32 %.0, label %bb.dg [
    i32 1, label %bb.dj
    i32 0, label %bb.dh
    i32 2, label %bb.di
  ]

bb.dg:                                            ; preds = %bb.df
  call void asm sideeffect "2391: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2391b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2391) #20, !srcloc !365
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 8612, i32 2305, i64 16) #20, !srcloc !366
  call void asm sideeffect "2392: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2392b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2392) #20, !srcloc !367
  br label %bb.dj

bb.dh:                                            ; preds = %bb.df
  br label %bb.dj

bb.di:                                            ; preds = %bb.df
  call fastcc void @ieee80211_neg_ttlm_add_suggested_map(ptr noundef %i.gg, ptr noundef nonnull readonly %4) #22, !srcloc !368
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg, %bb.df
  %.0.i48 = phi i16 [ 134, %bb.di ], [ 0, %bb.dh ], [ 133, %bb.dg ], [ 133, %bb.df ]
  %i.gz = getelementptr i8, ptr %i.gp, i64 27
  store i16 %.0.i48, ptr %i.gz, align 1
  call void @ieee80211_tx_skb_tid(ptr noundef %0, ptr noundef nonnull %i.gg, i32 noundef 7, i32 noundef -1) #19
  br label %ieee80211_send_neg_ttlm_res.exit

ieee80211_send_neg_ttlm_res.exit:                 ; preds = %bb.dj, %ieee80211_parse_neg_ttlm.exit.thread, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ieee80211_process_neg_ttlm_res(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 7160
  %.val = load i16, ptr %i.a, align 8
  %.not8 = icmp eq i16 %.val, 0
  br i1 %.not8, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 26
  %i.c = load i8, ptr %i.b, align 2
  %i.d = getelementptr i8, ptr %0, i64 3488
  %i.e = load i8, ptr %i.d, align 8
  %.not = icmp eq i8 %i.c, %i.e
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 1856
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %0, i64 3496
  tail call void @wiphy_delayed_work_cancel(ptr noundef %i.i, ptr noundef %i.j) #19
  %i.k = getelementptr i8, ptr %1, i64 27
  %i.l = load i16, ptr %i.k, align 1
  %.not7 = icmp eq i16 %i.l, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @__ieee80211_disconnect(ptr noundef %0) #22, !srcloc !369
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ieee80211_process_ttlm_teardown(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 7200
  %i.b = load i8, ptr %i.a, align 8, !range !25, !noundef !26
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 7168
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(34) %i.d, i8 0, i64 34, i1 false)
  %i.e = getelementptr i8, ptr %0, i64 7164
  %i.f = load i16, ptr %i.e, align 4
  %i.g = getelementptr i8, ptr %0, i64 7166       ; 2 uses
  %i.h = load i16, ptr %i.g, align 2
  %i.i = xor i16 %i.h, -1
  %i.j = and i16 %i.f, %i.i
  store i16 0, ptr %i.g, align 2
  %i.k = getelementptr i8, ptr %0, i64 7160
  %i.l = load i16, ptr %i.k, align 8
  %i.m = tail call i32 @ieee80211_vif_set_links(ptr noundef %0, i16 noundef zeroext %i.l, i16 noundef zeroext %i.j) #19 ; 0 uses
  tail call void @ieee80211_vif_cfg_change_notify(ptr noundef %0, i64 noundef 25769803776) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ieee80211_process_ml_reconf_resp(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.cfg80211_mlo_reconf_done_data, align 8 ; 37 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 1856
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %0, i64 3568       ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %3, i8 0, i64 264, i1 false)
  %i.f = getelementptr i8, ptr %0, i64 3650       ; 18 uses
  %i.g = load i16, ptr %i.f, align 2              ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 3648       ; 2 uses
  %i.i = load i16, ptr %i.h, align 8
  %i.j = or i16 %i.i, %i.g                        ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 7160       ; 2 uses
  %.val241 = load i16, ptr %i.k, align 8
  %i.l = icmp ne i16 %.val241, 0
  %i.m = icmp samesign ugt i64 %2, 27
  %or.cond.not = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond.not, label %bb.b, label %bb.ct

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %1, i64 26
  %i.o = load i8, ptr %i.n, align 2
  %i.p = getelementptr i8, ptr %0, i64 3652
  %i.q = load i8, ptr %i.p, align 4
  %i.r = icmp eq i8 %i.o, %i.q
  %i.s = icmp ne i16 %i.j, 0
  %or.cond3 = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond3, label %bb.c, label %bb.ct

bb.c:                                             ; preds = %bb.b
  %i.t = add nsw i64 %2, -28                      ; 3 uses
  %i.u = getelementptr i8, ptr %1, i64 27         ; 2 uses
  %i.v = load i8, ptr %i.u, align 1               ; 4 uses
  %i.w = zext i8 %i.v to i64
  %i.x = mul nuw nsw i64 %i.w, 3
  %i.y = icmp samesign ult i64 %i.t, %i.x
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr i8, ptr %0, i64 1880
  %i.aa = zext i8 %i.v to i32
end_hunk_0
