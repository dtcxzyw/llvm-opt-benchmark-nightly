Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-etch?download=true
inline.NumInlined: 30
inline.NumDeleted: 14
begin_hunk_0_@dissect_etch:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @tvb_memeql(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @etch_magic, i64 noundef 4)
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @tcp_dissect_pdus(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, i32 noundef 8, ptr noundef nonnull @get_etch_message_len, ptr noundef nonnull @dissect_etch_message, ptr noundef %3)
  %i.e = load i32, ptr @gbl_pdu_counter, align 4  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = add nuw i32 %i.e, 1
  tail call void (ptr, i32, ptr, ...) @col_prepend_fstr(ptr noundef %i.h, i32 noundef 25, ptr noundef nonnull @.str.66, i32 noundef %i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @register_init_routine(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @etch_dissector_init() #3 {
bb.a:
  store i32 0, ptr @gbl_pdu_counter, align 4
  store i32 -1, ptr @gbl_old_frame_num, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_etch() #0 {
bb.a:
  %0 = alloca %struct._value_string, align 8      ; 6 uses
  %i.a = alloca [256 x i8], align 16              ; 10 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %.b = load i1, ptr @proto_reg_handoff_etch.etch_prefs_initialized, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @proto_etch, align 4
  tail call void @heur_dissector_add(ptr noundef nonnull @.str.44, ptr noundef nonnull @dissect_etch_heur, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %i.d, i32 noundef 1)
  %i.e = load ptr, ptr @etch_handle, align 8
  tail call void @dissector_add_for_decode_as_with_preference(ptr noundef nonnull @.str.47, ptr noundef %i.e)
  store i1 true, ptr @proto_reg_handoff_etch.etch_prefs_initialized, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr @gbl_keytab_folder, align 8 ; 6 uses
  %i.g = icmp eq ptr %i.f, null                   ; 2 uses
  %i.h = load ptr, ptr @gbl_current_keytab_folder, align 8 ; 3 uses
  %i.i = icmp eq ptr %i.h, null                   ; 2 uses
  %or.cond = select i1 %i.g, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(1) %i.h) #9
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.ab, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store ptr null, ptr %i.c, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store ptr null, ptr %i.c, align 8
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  tail call void @g_free(ptr noundef nonnull %i.h)
  store ptr null, ptr @gbl_current_keytab_folder, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = load ptr, ptr @gbl_symbols_vs_ext, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @value_string_ext_free(ptr noundef nonnull %i.k)
  store ptr null, ptr @gbl_symbols_vs_ext, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.l = load ptr, ptr @gbl_symbols_array, align 8 ; 4 uses
  %.not5.i.i = icmp eq ptr %i.l, null
  br i1 %.not5.i.i, label %gbl_symbols_free.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %i.o = load i32, ptr %i.n, align 8
  %.not7.i.i = icmp eq i32 %i.o, 0
  br i1 %.not7.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %bb.j ] ; 2 uses
  %i.p = getelementptr [16 x i8], ptr %i.m, i64 %indvars.iv.i.i
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @g_free(ptr noundef %i.r)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.s = load ptr, ptr @gbl_symbols_array, align 8 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = zext i32 %i.u to i64
  %i.w = icmp samesign ult i64 %indvars.iv.next.i.i, %i.v
  br i1 %i.w, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !7

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.j
  %.lcssa.i.i = phi ptr [ %i.l, %bb.j ], [ %i.s, %.lr.ph.i.i ]
  %i.x = tail call ptr @g_array_free(ptr noundef %.lcssa.i.i, i32 noundef 1) ; 0 uses
  store ptr null, ptr @gbl_symbols_array, align 8
  br label %gbl_symbols_free.exit.i

gbl_symbols_free.exit.i:                          ; preds = %._crit_edge.i.i, %bb.i
  br i1 %i.g, label %read_hashed_symbols_from_dir.exit, label %bb.k

bb.k:                                             ; preds = %gbl_symbols_free.exit.i
  %i.y = load i8, ptr %i.f, align 1
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %read_hashed_symbols_from_dir.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = call ptr @g_dir_open(ptr noundef nonnull %i.f, i32 noundef 0, ptr noundef nonnull %i.c) ; 4 uses
  %.not28.i = icmp eq ptr %i.aa, null
  br i1 %.not28.i, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = load ptr, ptr @gbl_symbols_array, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %gbl_symbols_new.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef 163, ptr noundef nonnull @.str.80) #11
  unreachable

gbl_symbols_new.exit.i:                           ; preds = %bb.m
  %i.ad = call ptr @g_array_new(i32 noundef 1, i32 noundef 1, i32 noundef 16)
  store ptr %i.ad, ptr @gbl_symbols_array, align 8
  %i.ae = call noalias ptr @g_strdup(ptr noundef nonnull %i.f)
  store ptr %i.ae, ptr @gbl_current_keytab_folder, align 8
  %i.af = call ptr @g_dir_read_name(ptr noundef nonnull %i.aa) ; 2 uses
  %.not2937.i = icmp eq ptr %i.af, null
  br i1 %.not2937.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %gbl_symbols_new.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.o

bb.o:                                             ; preds = %.critedge.i, %.lr.ph.i
  %i.ai = phi ptr [ %i.af, %.lr.ph.i ], [ %i.bk, %.critedge.i ] ; 3 uses
  %i.aj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #9 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 3
  br i1 %i.ak, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr i8, ptr %i.ai, i64 %i.aj
  %i.am = getelementptr i8, ptr %i.al, i64 -4
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = icmp ne i32 %i.an, 1752655150
  %i.ap = zext i1 %i.ao to i32
  %.not36.i = icmp eq i32 %i.ap, 0
  br i1 %.not36.i, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %bb.p
  %i.aq = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.76, ptr noundef nonnull %i.f, ptr noundef nonnull %i.ai) ; 2 uses
  %i.ar = call noalias ptr @fopen(ptr noundef readonly %i.aq, ptr noundef nonnull @.str.81) ; 4 uses
  %.not.i31.i = icmp eq ptr %i.ar, null
  br i1 %.not.i31.i, label %add_symbols_of_file.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.as = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 256, ptr noundef nonnull %i.ar)
  %.not1829.i.i = icmp eq ptr %i.as, null
  br i1 %.not1829.i.i, label %._crit_edge.i34.i, label %.lr.ph30.i.i

.lr.ph30.i.i:                                     ; preds = %bb.r, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.at = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #9 ; 3 uses
  %i.au = icmp ult i64 %i.at, 10
  br i1 %i.au, label %bb.w, label %.lr.ph.preheader.i.i, !llvm.loop !8

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph30.i.i
  %.023.i.i = add i64 %i.at, -1
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.critedge2.i.i, %.lr.ph.preheader.i.i
  %.026.i.i = phi i64 [ %.023.i.i, %.lr.ph.preheader.i.i ], [ %.0.i33.i, %.critedge2.i.i ] ; 3 uses
  %.0.in25.i.i = phi i64 [ %i.at, %.lr.ph.preheader.i.i ], [ %.026.i.i, %.critedge2.i.i ]
  %i.av = getelementptr i8, ptr %i.a, i64 %.026.i.i
  %i.aw = load i8, ptr %i.av, align 1
  switch i8 %i.aw, label %.critedge.i.i [
    i8 13, label %.critedge2.i.i
    i8 10, label %.critedge2.i.i
  ]

.critedge2.i.i:                                   ; preds = %.lr.ph.i32.i, %.lr.ph.i32.i
  %.0.i33.i = add i64 %.026.i.i, -1               ; 2 uses
  %.not19.i.i = icmp eq i64 %.0.i33.i, 0
  br i1 %.not19.i.i, label %.critedge.i.i, label %.lr.ph.i32.i, !llvm.loop !9

.critedge.i.i:                                    ; preds = %.critedge2.i.i, %.lr.ph.i32.i
  %.0.in.lcssa.ph.i.i = phi i64 [ %.0.in25.i.i, %.lr.ph.i32.i ], [ 1, %.critedge2.i.i ]
  %i.ax = getelementptr i8, ptr %i.a, i64 %.0.in.lcssa.ph.i.i
  store i8 0, ptr %i.ax, align 1
  %i.ay = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.82, ptr noundef nonnull %i.b) #10
  %.not20.i.i = icmp eq i32 %i.ay, 1
  br i1 %.not20.i.i, label %bb.s, label %bb.w, !llvm.loop !8

bb.s:                                             ; preds = %.critedge.i.i
  %i.az = call i64 @strcspn(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.83) #9
  %i.ba = getelementptr i8, ptr %i.a, i64 %i.az   ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1
  %.not21.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not21.i.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr i8, ptr %i.ba, i64 1      ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1
  %.not22.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not22.i.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = load i32, ptr %i.b, align 4
  %i.bf = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.84, ptr noundef %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  store i32 %i.be, ptr %0, align 8
  store i32 0, ptr %i.ag, align 4
  store ptr %i.bf, ptr %i.ah, align 8
  %i.bg = load ptr, ptr @gbl_symbols_array, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %bb.v, label %gbl_symbols_array_append.exit.i.i

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef 191, ptr noundef nonnull @.str.85) #11
  unreachable

gbl_symbols_array_append.exit.i.i:                ; preds = %bb.u
  %i.bh = call ptr @g_array_append_vals(ptr noundef nonnull %i.bg, ptr noundef nonnull %0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  br label %bb.w

bb.w:                                             ; preds = %gbl_symbols_array_append.exit.i.i, %bb.t, %bb.s, %.critedge.i.i, %.lr.ph30.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.bi = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 256, ptr noundef nonnull %i.ar)
  %.not18.i.i = icmp eq ptr %i.bi, null
  br i1 %.not18.i.i, label %._crit_edge.i34.i, label %.lr.ph30.i.i

._crit_edge.i34.i:                                ; preds = %bb.w, %bb.r
  %i.bj = call i32 @fclose(ptr noundef nonnull %i.ar) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %add_symbols_of_file.exit.i

add_symbols_of_file.exit.i:                       ; preds = %._crit_edge.i34.i, %bb.q
  call void @g_free(ptr noundef %i.aq)
  br label %.critedge.i

.critedge.i:                                      ; preds = %add_symbols_of_file.exit.i, %bb.p, %bb.o
  %i.bk = call ptr @g_dir_read_name(ptr noundef nonnull %i.aa) ; 2 uses
  %.not29.i = icmp eq ptr %i.bk, null
  br i1 %.not29.i, label %._crit_edge.i, label %bb.o, !llvm.loop !10

._crit_edge.i:                                    ; preds = %.critedge.i, %gbl_symbols_new.exit.i
  call void @g_dir_close(ptr noundef nonnull %i.aa)
  %i.bl = load ptr, ptr @gbl_symbols_vs_ext, align 8
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef 212, ptr noundef nonnull @.str.86) #11
  unreachable

bb.y:                                             ; preds = %._crit_edge.i
  %i.bn = load ptr, ptr @gbl_symbols_array, align 8 ; 2 uses
  %.not.i35.i = icmp eq ptr %i.bn, null
  br i1 %.not.i35.i, label %bb.z, label %gbl_symbols_vs_ext_new.exit.i

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef 213, ptr noundef nonnull @.str.85) #11
  unreachable

gbl_symbols_vs_ext_new.exit.i:                    ; preds = %bb.y
  call void @g_array_sort(ptr noundef nonnull %i.bn, ptr noundef nonnull @gbl_symbols_compare_vs)
  %i.bo = call ptr @wmem_epan_scope()
  %i.bp = load ptr, ptr @gbl_symbols_array, align 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr i8, ptr %i.bp, i64 8
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = add i32 %i.bs, 1
  %i.bu = call ptr @value_string_ext_new(ptr noundef %i.bo, ptr noundef %i.bq, i32 noundef %i.bt, ptr noundef nonnull @.str.87)
  store ptr %i.bu, ptr @gbl_symbols_vs_ext, align 8
  br label %read_hashed_symbols_from_dir.exit

bb.aa:                                            ; preds = %bb.l
  %i.bv = load ptr, ptr %i.c, align 8
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.77, ptr noundef %i.bx)
  %i.by = load ptr, ptr %i.c, align 8
  call void @g_error_free(ptr noundef %i.by)
  br label %read_hashed_symbols_from_dir.exit

read_hashed_symbols_from_dir.exit:                ; preds = %gbl_symbols_free.exit.i, %bb.k, %gbl_symbols_vs_ext_new.exit.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.ab

bb.ab:                                            ; preds = %read_hashed_symbols_from_dir.exit, %bb.d
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_directory_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare void @heur_dissector_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dissect_etch_heur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.b = icmp ult i32 %i.a, 4
  br i1 %i.b, label %dissect_etch.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @tvb_memeql(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @etch_magic, i64 noundef 4)
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %dissect_etch.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @tcp_dissect_pdus(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, i32 noundef 8, ptr noundef nonnull @get_etch_message_len, ptr noundef nonnull @dissect_etch_message, ptr noundef %3)
  %i.e = load i32, ptr @gbl_pdu_counter, align 4  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %dissect_etch.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = add nuw i32 %i.e, 1
  tail call void (ptr, i32, ptr, ...) @col_prepend_fstr(ptr noundef %i.h, i32 noundef 25, ptr noundef nonnull @.str.66, i32 noundef %i.i)
  br label %dissect_etch.exit

dissect_etch.exit:                                ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.j = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.d ], [ true, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_for_decode_as_with_preference(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_memeql(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @tcp_dissect_pdus(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @get_etch_message_len(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = add i32 %2, 4
  %i.b = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.a)
  %i.c = add i32 %i.b, 8
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_etch_message(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp ne ptr %i.c, null
  %i.e = icmp ne ptr %2, null                     ; 2 uses
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 416
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr @wmem_strbuf_new(ptr noundef %i.g, ptr noundef nonnull @.str.70) ; 3 uses
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 9)
  switch i8 %i.i, label %get_column_info.exit [
    i8 -120, label %get_byte_length.exit.i
    i8 -122, label %get_byte_length.exit.i
  ]

get_byte_length.exit.i:                           ; preds = %bb.b, %bb.b
  %i.j = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 10)
  %i.k = load ptr, ptr @gbl_symbols_vs_ext, align 8
  %i.l = tail call ptr @try_val_to_str_ext(i32 noundef %i.j, ptr noundef %i.k) ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %get_column_info.exit, label %bb.c

bb.c:                                             ; preds = %get_byte_length.exit.i
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.h, ptr noundef nonnull @.str.71, ptr noundef nonnull %i.l)
end_hunk_0
