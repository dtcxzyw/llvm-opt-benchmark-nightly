Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-wireguard?download=true
inline.NumInlined: 92
inline.NumDeleted: 39
begin_hunk_0_@wg_key_uat_record_update_cb:bb.a
  %.0.i47 = phi i1 [ true, %decode_base64_key.exit ], [ false, %g_strdup_inline.exit ]
  ret i1 %.0.i47
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @wg_key_uat_record_free_cb(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @g_free(ptr noundef %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @wg_key_uat_apply() #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [45 x i8], align 16               ; 6 uses
  %0 = alloca %struct.wg_qqword, align 1          ; 4 uses
  %.b = load i1, ptr @wg_decryption_supported, align 1
  br i1 %.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @wg_static_keys, align 8   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @g_hash_table_new_full(ptr noundef nonnull @g_int_hash, ptr noundef nonnull @wg_pubkey_equal, ptr noundef null, ptr noundef nonnull @g_free)
  store ptr %i.d, ptr @wg_static_keys, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @g_hash_table_remove_all(ptr noundef nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = load ptr, ptr @wg_keylog_file, align 8   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %wg_keylog_reset.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  store ptr null, ptr @wg_keylog_file, align 8
  store ptr null, ptr @wg_keylog_last_ekey, align 8
  br label %wg_keylog_reset.exit

wg_keylog_reset.exit:                             ; preds = %bb.e, %bb.f
  %i.g = load i32, ptr @num_wg_key_records, align 4
  %.not9 = icmp eq i32 %i.g, 0
  br i1 %.not9, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %wg_keylog_reset.exit, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %wg_keylog_reset.exit ] ; 2 uses
  %i.h = load ptr, ptr @wg_key_records, align 8
  %i.i = getelementptr [16 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.l = call i64 @strlen(ptr noundef readonly %i.k) #18
  %.not.i6 = icmp eq i64 %i.l, 44
  br i1 %.not.i6, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(45) %i.b, ptr noundef readonly align 1 dereferenceable(45) %i.k, i64 noundef 45, i1 noundef false) #17
  %i.m = call ptr @g_base64_decode_inplace(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 0 uses
  %i.n = load i64, ptr %i.a, align 8
  %.not4.i = icmp eq i64 %i.n, 32
  br i1 %.not4.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 830, ptr noundef nonnull @.str.132) #21
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 noundef 32, i1 noundef false) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.o = load i32, ptr %i.i, align 8
  %i.p = icmp eq i32 %i.o, 1
  call fastcc void @wg_add_static_key(ptr noundef nonnull %0, i1 noundef zeroext %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i32, ptr @num_wg_key_records, align 4
  %i.r = zext i32 %i.q to i64
  %i.s = icmp samesign ult i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %.lr.ph, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %bb.i, %wg_keylog_reset.exit, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @wg_key_uat_reset() #0 {
bb.a:
  %i.a = load ptr, ptr @wg_static_keys, align 8   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_hash_table_destroy(ptr noundef nonnull %i.a)
  store ptr null, ptr @wg_static_keys, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_uat_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_filename_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @secrets_register_type(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @wg_keylog_process_lines(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %2 = alloca %struct.wg_qqword, align 1          ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [45 x i8], align 16               ; 6 uses
  %i.c = alloca [28 x i8], align 16               ; 12 uses
  %i.d = alloca [45 x i8], align 16               ; 7 uses
  %3 = alloca %struct.wg_qqword, align 1          ; 9 uses
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 %i.e       ; 6 uses
  %i.g = icmp ne ptr %0, null
  %i.h = icmp ult ptr %0, %i.f
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %.lr.ph97, label %._crit_edge

.lr.ph97:                                         ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoint ptr %i.f to i64                 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph97, %bb.w
  %.06696 = phi ptr [ %0, %.lr.ph97 ], [ %i.q, %bb.w ] ; 8 uses
  %i.l = ptrtoint ptr %.06696 to i64              ; 4 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = call ptr @memchr(ptr noundef nonnull %.06696, i32 noundef 10, i64 noundef %i.m) #18 ; 3 uses
  %.not = icmp eq ptr %i.n, null                  ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.l
  %i.q = getelementptr i8, ptr %i.n, i64 1        ; 2 uses
  %.167 = select i1 %.not, ptr null, ptr %i.q     ; 2 uses
  %.064 = select i1 %.not, i64 %i.m, i64 %i.p     ; 4 uses
  %i.r = icmp sgt i64 %.064, 0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %.06696, i64 %.064
  %i.t = getelementptr i8, ptr %i.s, i64 -1
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, 13
  %i.w = sext i1 %i.v to i64
  %spec.select = add nsw i64 %.064, %i.w
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.165 = phi i64 [ %.064, %bb.b ], [ %spec.select, %bb.c ]
  %i.x = icmp ult ptr %.06696, %i.f
  br i1 %i.x, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.y = getelementptr i8, ptr %.06696, i64 %i.j
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.e
  %i.z = sub i64 0, %i.l
  %scevgep101 = getelementptr i8, ptr %scevgep, i64 %i.z ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.06390 = phi ptr [ %i.ac, %bb.e ], [ %.06696, %.lr.ph.preheader ] ; 3 uses
  %i.aa = load i8, ptr %.06390, align 1
  %i.ab = icmp eq i8 %i.aa, 32
  br i1 %i.ab, label %bb.e, label %.critedge.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.ac = getelementptr i8, ptr %.06390, i64 1    ; 2 uses
  %exitcond.not = icmp eq ptr %i.ac, %scevgep101
  br i1 %exitcond.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !15

.critedge.loopexit:                               ; preds = %bb.e, %.lr.ph
  %.063.lcssa.ph = phi ptr [ %.06390, %.lr.ph ], [ %scevgep101, %bb.e ] ; 2 uses
  %.pre102 = ptrtoint ptr %.063.lcssa.ph to i64   ; 2 uses
  %.pre103 = sub i64 %i.k, %.pre102
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.d
  %.pre-phi104 = phi i64 [ %.pre103, %.critedge.loopexit ], [ %i.m, %bb.d ]
  %.pre-phi = phi i64 [ %.pre102, %.critedge.loopexit ], [ %i.l, %bb.d ]
  %.063.lcssa = phi ptr [ %.063.lcssa.ph, %.critedge.loopexit ], [ %.06696, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(45) %i.d, i8 0, i64 45, i1 false)
  %i.ad = call ptr @memchr(ptr noundef %.063.lcssa, i32 noundef 61, i64 noundef %.pre-phi104) #18 ; 4 uses
  %.not74 = icmp eq ptr %i.ad, null
  %.not75 = icmp eq ptr %.063.lcssa, %i.ad
  %or.cond84 = or i1 %.not74, %.not75
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %.pre-phi                ; 2 uses
  %.not7693 = icmp eq i64 %i.af, 0
  %or.cond99 = or i1 %or.cond84, %.not7693
  br i1 %or.cond99, label %.critedge2.thread.thread, label %.lr.ph95

.lr.ph95:                                         ; preds = %.critedge, %bb.f
  %.094 = phi i64 [ %i.ak, %bb.f ], [ %i.af, %.critedge ] ; 5 uses
  %i.ag = getelementptr i8, ptr %.063.lcssa, i64 %.094
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = icmp eq i8 %i.ai, 32
  br i1 %i.aj, label %bb.f, label %.critedge2

bb.f:                                             ; preds = %.lr.ph95
  %i.ak = add i64 %.094, -1                       ; 2 uses
  %.not76 = icmp eq i64 %i.ak, 0
  br i1 %.not76, label %.critedge2.thread.thread, label %.lr.ph95, !llvm.loop !16

.critedge2:                                       ; preds = %.lr.ph95
  %or.cond = icmp ult i64 %.094, 28
  br i1 %or.cond, label %bb.g, label %.critedge2.thread.thread

bb.g:                                             ; preds = %.critedge2
  %i.al = call ptr @__memcpy_chk(ptr noundef nonnull %i.c, ptr noundef %.063.lcssa, i64 noundef %.094, i64 noundef 28) #17, !alias.scope !25 ; 0 uses
  %i.am = getelementptr i8, ptr %i.c, i64 %.094
  store i8 0, ptr %i.am, align 1
  %.1116 = getelementptr i8, ptr %i.ad, i64 1     ; 3 uses
  %i.an = icmp ult ptr %.1116, %i.f
  br i1 %i.an, label %.lr.ph119, label %.critedge5

bb.h:                                             ; preds = %.lr.ph119
  %.1 = getelementptr i8, ptr %.1117, i64 1       ; 3 uses
  %i.ao = icmp ult ptr %.1, %i.f
  br i1 %i.ao, label %.lr.ph119, label %.critedge5, !llvm.loop !20

.lr.ph119:                                        ; preds = %bb.g, %bb.h
  %.1117 = phi ptr [ %.1, %bb.h ], [ %.1116, %bb.g ] ; 3 uses
  %i.ap = load i8, ptr %.1117, align 1
  %i.aq = icmp eq i8 %i.ap, 32
  br i1 %i.aq, label %bb.h, label %..critedge5_crit_edge120, !llvm.loop !20

..critedge5_crit_edge120:                         ; preds = %.lr.ph119
  br label %.critedge5, !llvm.loop !20

.critedge5:                                       ; preds = %bb.h, %..critedge5_crit_edge120, %bb.g
  %.1.lcssa = phi ptr [ %.1116, %bb.g ], [ %.1117, %..critedge5_crit_edge120 ], [ %.1, %bb.h ] ; 3 uses
  %i.ar = getelementptr i8, ptr %.06696, i64 %.165 ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %.1.lcssa to i64
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = icmp ne ptr %i.ar, %.1.lcssa
  %i.aw = icmp ult i64 %i.au, 45
  %or.cond7 = and i1 %i.av, %i.aw
  br i1 %or.cond7, label %.critedge2.thread, label %.critedge2.thread.thread

.critedge2.thread.thread:                         ; preds = %bb.f, %.critedge, %.critedge2, %.critedge5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  br label %bb.w

.critedge2.thread:                                ; preds = %.critedge5
  %i.ax = call ptr @__memcpy_chk(ptr noundef nonnull %i.d, ptr noundef %.1.lcssa, i64 noundef %i.au, i64 noundef 45) #17, !alias.scope !26 ; 0 uses
  %.pre = load i8, ptr %i.d, align 16
  %i.ay = icmp eq i8 %.pre, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  br i1 %i.ay, label %bb.w, label %bb.i, !llvm.loop !24

bb.i:                                             ; preds = %.critedge2.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.az = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.d) #18
  %.not.i = icmp eq i64 %i.az, 44
  br i1 %.not.i, label %bb.j, label %decode_base64_key.exit.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(45) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(45) %i.d, i64 noundef 45, i1 noundef false) #17
  %i.ba = call ptr @g_base64_decode_inplace(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 0 uses
  %i.bb = load i64, ptr %i.a, align 8
  %.not4.i = icmp eq i64 %i.bb, 32
  br i1 %.not4.i, label %bb.k, label %decode_base64_key.exit.thread

decode_base64_key.exit.thread:                    ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.w

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %3, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 noundef 32, i1 noundef false) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bc = load i128, ptr %i.c, align 16
  %i.bd = xor i128 %i.bc, 97461042174966590703024621745242066764
  %i.be = getelementptr i8, ptr %i.c, i64 9
  %i.bf = load i128, ptr %i.be, align 1
  %i.bg = xor i128 %i.bf, 463519878269329892645494098374117716
  %i.bh = or i128 %i.bd, %i.bg
  %i.bi = icmp ne i128 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %.not78 = icmp eq i32 %i.bj, 0
  br i1 %.not78, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call fastcc void @wg_add_static_key(ptr noundef nonnull %3, i1 noundef zeroext true)
  br label %bb.w

bb.m:                                             ; preds = %bb.k
  %i.bk = load i128, ptr %i.c, align 16
  %i.bl = xor i128 %i.bk, 113401695550294134766668237828954867026
  %i.bm = getelementptr i8, ptr %i.c, i64 9
  %i.bn = load i128, ptr %i.bm, align 1
  %i.bo = xor i128 %i.bn, 463519878266860296451361768626279489
  %i.bp = or i128 %i.bl, %i.bo
  %i.bq = icmp ne i128 %i.bp, 0
  %i.br = zext i1 %i.bq to i32
  %.not80 = icmp eq i32 %i.br, 0
  br i1 %.not80, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call fastcc void @wg_add_static_key(ptr noundef nonnull %3, i1 noundef zeroext false)
  br label %bb.w

bb.o:                                             ; preds = %bb.m
  %i.bs = load i128, ptr %i.c, align 16
  %i.bt = xor i128 %i.bs, 126672599035597098496903389268205064012
  %i.bu = getelementptr i8, ptr %i.c, i64 12
  %i.bv = load i128, ptr %i.bu, align 4
  %i.bw = xor i128 %i.bv, 463519878269329892645494098374705490
  %i.bx = or i128 %i.bt, %i.bw
  %i.by = icmp ne i128 %i.bx, 0
  %i.bz = zext i1 %i.by to i32
  %.not82 = icmp eq i32 %i.bz, 0
  br i1 %.not82, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %.b = load i1, ptr @wg_decryption_supported, align 1
  br i1 %.b, label %bb.q, label %wg_add_ephemeral_privkey.exit

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.ca = call i32 @crypto_scalarmult_curve25519_base(ptr noundef nonnull %2, ptr noundef nonnull %3)
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %priv_to_pub.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 299, ptr noundef nonnull @.str.110) #21
  unreachable

priv_to_pub.exit.i:                               ; preds = %bb.q
  %i.cc = load ptr, ptr @wg_ephemeral_keys, align 8
  %i.cd = call ptr @wmem_map_lookup(ptr noundef %i.cc, ptr noundef nonnull %2) ; 2 uses
  %.not.i85 = icmp eq ptr %i.cd, null
  br i1 %.not.i85, label %bb.s, label %bb.t

bb.s:                                             ; preds = %priv_to_pub.exit.i
  %i.ce = call ptr @wmem_file_scope()
  %i.cf = call noalias dereferenceable_or_null(72) ptr @wmem_alloc0(ptr noundef %i.ce, i64 noundef 72) #20 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.cg = getelementptr i8, ptr %i.cf, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(32) %i.cg, ptr noundef nonnull readonly align 1 dereferenceable(32) %3, i64 32, i1 false)
  %i.ch = getelementptr i8, ptr %i.cf, i64 63     ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = or i8 %i.ci, 64
  store i8 %i.cj, ptr %i.ch, align 1
  %i.ck = load ptr, ptr @wg_ephemeral_keys, align 8
  %i.cl = call ptr @wmem_map_insert(ptr noundef %i.ck, ptr noundef %i.cf, ptr noundef %i.cf) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %priv_to_pub.exit.i
  %.0.i86 = phi ptr [ %i.cd, %priv_to_pub.exit.i ], [ %i.cf, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %wg_add_ephemeral_privkey.exit

wg_add_ephemeral_privkey.exit:                    ; preds = %bb.p, %bb.t
  %.09.i = phi ptr [ %.0.i86, %bb.t ], [ null, %bb.p ]
  store ptr %.09.i, ptr @wg_keylog_last_ekey, align 8
  br label %bb.w

bb.u:                                             ; preds = %bb.o
  %i.cm = load i64, ptr %i.c, align 16
  %i.cn = xor i64 %i.cm, 4995126715597804112
  %i.co = getelementptr i8, ptr %i.c, i64 6
  %i.cp = load i64, ptr %i.co, align 2
  %i.cq = xor i64 %i.cp, 25127462950421842
  %i.cr = or i64 %i.cn, %i.cq
  %i.cs = icmp ne i64 %i.cr, 0
  %i.ct = zext i1 %i.cs to i32
  %i.cu = icmp eq i32 %i.ct, 0
  %i.cv = load ptr, ptr @wg_keylog_last_ekey, align 8 ; 2 uses
  %i.cw = icmp ne ptr %i.cv, null
  %or.cond9 = select i1 %i.cu, i1 %i.cw, i1 false
  br i1 %or.cond9, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cx = call ptr @wmem_file_scope()
  %i.cy = call noalias dereferenceable_or_null(40) ptr @wmem_alloc0(ptr noundef %i.cx, i64 noundef 40) #20 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(32) %i.cy, ptr noundef nonnull readonly align 1 dereferenceable(32) %3, i64 32, i1 false)
  %i.cz = getelementptr i8, ptr %i.cv, i64 64     ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr i8, ptr %i.cy, i64 32
  store ptr %i.da, ptr %i.db, align 8
  store ptr %i.cy, ptr %i.cz, align 8
  store ptr null, ptr @wg_keylog_last_ekey, align 8
  br label %bb.w

end_hunk_0
