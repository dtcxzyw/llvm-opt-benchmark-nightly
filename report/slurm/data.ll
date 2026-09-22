Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/data?download=true
inline.NumInlined: 237
inline.NumDeleted: 20
begin_hunk_0_@_data_match_dict:bb.a
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ah = and i64 %i.ag, 256
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %_find_dict_match.exit, label %bb.i

bb.i:                                             ; preds = %data_key_get_const.exit
  %i.ai = tail call i32 @get_log_level() #14, !inline_history !37
  %i.aj = icmp sgt i32 %i.ai, 3
  br i1 %i.aj, label %bb.j, label %_find_dict_match.exit

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  br label %tailrecurse.i.i19

tailrecurse.i.i19:                                ; preds = %.preheader.i.i28, %bb.j
  %.tr.i.i20.in = phi ptr [ %i.ak, %bb.j ], [ %i.am, %.preheader.i.i28 ]
  %.tr.i.i20 = load i32, ptr %.tr.i.i20.in, align 4 ; 3 uses
  %i.al = icmp ult i32 %.tr.i.i20, 9
  br i1 %i.al, label %switch.lookup, label %.preheader.i.i28

bb.k:                                             ; preds = %.preheader.i.i28
  %indvars.iv.next.i.i30 = add nuw nsw i64 %indvars.iv.i.i29, 1 ; 2 uses
  %exitcond.not.i.i31 = icmp eq i64 %indvars.iv.next.i.i30, 8
  br i1 %exitcond.not.i.i31, label %_type_to_string.exit32, label %.preheader.i.i28, !llvm.loop !7

.preheader.i.i28:                                 ; preds = %tailrecurse.i.i19, %bb.k
  %indvars.iv.i.i29 = phi i64 [ %indvars.iv.next.i.i30, %bb.k ], [ 0, %tailrecurse.i.i19 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @type_map, i64 %indvars.iv.i.i29 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = icmp eq i32 %i.ao, %.tr.i.i20
  br i1 %i.ap, label %tailrecurse.i.i19, label %bb.k

switch.lookup:                                    ; preds = %tailrecurse.i.i19
  %i.aq = zext nneg i32 %.tr.i.i20 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.data_get_type_string, i64 %i.aq
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_type_to_string.exit32

_type_to_string.exit32:                           ; preds = %bb.k, %switch.lookup
  %.1.i.i21 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.69, %bb.k ]
  %i.ar = ptrtoint ptr %i.t to i64
  %i.as = select i1 %i.af, ptr @.str.101, ptr @.str.102
  %.not16.i = icmp eq ptr %.015.i, null
  br i1 %.not16.i, label %_type_to_string.exit, label %bb.l

bb.l:                                             ; preds = %_type_to_string.exit32
  %i.at = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %.preheader.i.i, %bb.l
  %.tr.i.i.in = phi ptr [ %i.at, %bb.l ], [ %i.av, %.preheader.i.i ]
  %.tr.i.i = load i32, ptr %.tr.i.i.in, align 4   ; 3 uses
  %i.au = icmp ult i32 %.tr.i.i, 9
  br i1 %i.au, label %switch.lookup105, label %.preheader.i.i

bb.m:                                             ; preds = %.preheader.i.i
  %indvars.iv.next.i.i17 = add nuw nsw i64 %indvars.iv.i.i16, 1 ; 2 uses
  %exitcond.not.i.i18 = icmp eq i64 %indvars.iv.next.i.i17, 8
  br i1 %exitcond.not.i.i18, label %_type_to_string.exit, label %.preheader.i.i, !llvm.loop !7

.preheader.i.i:                                   ; preds = %tailrecurse.i.i, %bb.m
  %indvars.iv.i.i16 = phi i64 [ %indvars.iv.next.i.i17, %bb.m ], [ 0, %tailrecurse.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr @type_map, i64 %indvars.iv.i.i16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = icmp eq i32 %i.ax, %.tr.i.i
  br i1 %i.ay, label %tailrecurse.i.i, label %bb.m

switch.lookup105:                                 ; preds = %tailrecurse.i.i
  %i.az = zext nneg i32 %.tr.i.i to i64
  %switch.gep106 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.data_get_type_string, i64 %i.az
  %switch.load107 = load ptr, ptr %switch.gep106, align 8
  br label %_type_to_string.exit

_type_to_string.exit:                             ; preds = %bb.m, %switch.lookup105, %_type_to_string.exit32
  %i.ba = phi ptr [ %switch.load107, %switch.lookup105 ], [ @.str.69, %_type_to_string.exit32 ], [ @.str.69, %bb.m ]
  %i.bb = ptrtoint ptr %.015.i to i64
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.100, ptr noundef %i.r, i64 noundef %i.o, ptr noundef nonnull %.1.i.i21, i64 noundef %i.ar, ptr noundef nonnull %i.as, ptr noundef %i.r, i64 noundef %i.p, ptr noundef nonnull %i.ba, i64 noundef %i.bb) #14, !inline_history !37
  br label %_find_dict_match.exit

_find_dict_match.exit:                            ; preds = %data_key_get_const.exit, %bb.i, %_type_to_string.exit
  br i1 %i.af, label %.thread.i, label %data_dict_for_each_const.exit

.thread.i:                                        ; preds = %_find_dict_match.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %.037.i, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not24.i = icmp eq ptr %i.bd, null
  br i1 %.not24.i, label %data_dict_for_each_const.exit, label %.lr.ph.i, !llvm.loop !1

data_dict_for_each_const.exit:                    ; preds = %.thread.i, %_find_dict_match.exit, %.preheader.preheader, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.b ], [ true, %.preheader.preheader ], [ %i.af, %_find_dict_match.exit ], [ %i.af, %.thread.i ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @_data_match_lists(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 65282
  br i1 %.not, label %bb.b, label %.split.us

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %.not30 = icmp eq i32 %i.d, 65282
  br i1 %.not30, label %bb.c, label %.split.us

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %.not31 = icmp eq i64 %i.h, %i.l
  br i1 %.not31, label %bb.d, label %.split.us

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %.fr59 = freeze ptr %i.n                        ; 3 uses
  %i.o = icmp eq ptr %.fr59, null
  br i1 %i.o, label %.split.us, label %.outer.split.lr.ph

.outer.split.lr.ph:                               ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  br i1 %2, label %.outer.split.us50, label %.outer.split

.outer.split.us50:                                ; preds = %.outer.split.lr.ph, %.outer.us
  %.0.ph48.us = phi ptr [ %.1.us, %.outer.us ], [ %i.q, %.outer.split.lr.ph ]
  %.023.ph47.us = phi ptr [ %.124.us, %.outer.us ], [ %.fr59, %.outer.split.lr.ph ] ; 3 uses
  %.025.ph46.us = phi i1 [ %.126.us, %.outer.us ], [ false, %.outer.split.lr.ph ]
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.outer.split.us50
  %.025.us52 = phi i1 [ false, %bb.f ], [ %.025.ph46.us, %.outer.split.us50 ]
  %.0.us53 = phi ptr [ null, %bb.f ], [ %.0.ph48.us, %.outer.split.us50 ] ; 4 uses
  br i1 %.025.us52, label %.split.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq ptr %.0.us53, null
  br i1 %i.r, label %bb.e, label %.split43.us54, !llvm.loop !38

.split43.us54:                                    ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.023.ph47.us, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0.us53, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call zeroext i1 @data_check_match(ptr noundef %i.t, ptr noundef %i.v, i1 noundef zeroext true) ; 3 uses
  br i1 %i.w, label %bb.g, label %.outer.us

bb.g:                                             ; preds = %.split43.us54
  %i.x = getelementptr inbounds nuw i8, ptr %.023.ph47.us, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.0.us53, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = freeze ptr %i.y
  br label %.outer.us

.outer.us:                                        ; preds = %bb.g, %.split43.us54
  %.124.us = phi ptr [ %i.ab, %bb.g ], [ %.023.ph47.us, %.split43.us54 ] ; 2 uses
  %.1.us = phi ptr [ %i.aa, %bb.g ], [ %.0.us53, %.split43.us54 ]
  %.126.us = xor i1 %i.w, true
  %i.ac = icmp eq ptr %.124.us, null
  br i1 %i.ac, label %.split.us, label %.outer.split.us50, !llvm.loop !38

.outer.split:                                     ; preds = %.outer.split.lr.ph, %.outer
  %.0.ph48 = phi ptr [ %.1, %.outer ], [ %i.q, %.outer.split.lr.ph ] ; 3 uses
  %.023.ph47 = phi ptr [ %.124, %.outer ], [ %.fr59, %.outer.split.lr.ph ] ; 3 uses
  %.025.ph46 = phi i1 [ %.126, %.outer ], [ false, %.outer.split.lr.ph ]
  br i1 %.025.ph46, label %.split.us, label %.split43.us

.split43.us:                                      ; preds = %.outer.split
  %i.ad = getelementptr inbounds nuw i8, ptr %.023.ph47, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.0.ph48, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call zeroext i1 @data_check_match(ptr noundef %i.ae, ptr noundef %i.ag, i1 noundef zeroext false) ; 3 uses
  br i1 %i.ah, label %bb.h, label %.outer

bb.h:                                             ; preds = %.split43.us
  %i.ai = getelementptr inbounds nuw i8, ptr %.023.ph47, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.ph48, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = freeze ptr %i.aj
  br label %.outer

.outer:                                           ; preds = %.split43.us, %bb.h
  %.124 = phi ptr [ %i.am, %bb.h ], [ %.023.ph47, %.split43.us ] ; 2 uses
  %.1 = phi ptr [ %i.al, %bb.h ], [ %.0.ph48, %.split43.us ]
  %.126 = xor i1 %i.ah, true
  %i.an = icmp eq ptr %.124, null
  br i1 %i.an, label %.split.us, label %.outer.split, !llvm.loop !38

.split.us:                                        ; preds = %.outer, %.outer.split, %.outer.us, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.027 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.e ], [ true, %bb.d ], [ %i.w, %.outer.us ], [ false, %.outer.split ], [ %i.ah, %.outer ]
  ret i1 %.027
}

; Function Attrs: nounwind uwtable
define dso_local ptr @data_resolve_dict_path(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.dict_path_args_t, align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store i32 -1968687953, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %0, ptr %i.b, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %.not13 = icmp eq i32 %i.d, 65283
  br i1 %.not13, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @url_path_walk(ptr noundef %1, i1 noundef zeroext false, ptr noundef nonnull @_on_dict_path, ptr noundef nonnull %2) #14
  %.not14 = icmp eq i32 %i.e, 0
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.g = and i64 %i.f, 256
  %.not15 = icmp eq i64 %i.g, 0                   ; 2 uses
  br i1 %.not14, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  %i.i = load ptr, ptr %i.b, align 8
  call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef nonnull %1, i64 noundef %i.h, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.data_resolve_dict_path, ptr noundef nonnull %0, ptr noundef %i.i) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = load ptr, ptr %i.b, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef nonnull %1, i64 noundef %i.k, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.data_resolve_dict_path, ptr noundef nonnull %0) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a, %bb.b, %bb.f
  %.0 = phi ptr [ %i.j, %bb.f ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.h ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare i32 @url_path_walk(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @_on_dict_path(ptr noundef %0, i1 zeroext %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %.not = icmp eq i32 %i.d, 65283
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %.not19.i.i = icmp eq i64 %i.h, 0
  br i1 %.not19.i.i, label %data_key_get.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.021.i.i = load ptr, ptr %i.i, align 8         ; 2 uses
  %.not2022.i.i = icmp eq ptr %.021.i.i, null
  br i1 %.not2022.i.i, label %data_key_get.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.023.i.i = phi ptr [ %.0.i.i, %bb.d ], [ %.021.i.i, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @xstrcmp(ptr noundef %i.k, ptr noundef %0) #14
  %.not.i2.i = icmp eq i32 %i.l, 0
  br i1 %.not.i2.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8
  %.0.i.i = load ptr, ptr %i.m, align 8           ; 2 uses
  %.not20.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not20.i.i, label %data_key_get.exit, label %.lr.ph.i.i, !llvm.loop !2

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  br label %data_key_get.exit

data_key_get.exit:                                ; preds = %bb.d, %bb.b, %bb.c, %bb.e
  %.016.i.i = phi ptr [ null, %bb.c ], [ %i.o, %bb.e ], [ null, %bb.b ], [ null, %bb.d ] ; 2 uses
  store ptr %.016.i.i, ptr %i.a, align 8
  %.not7 = icmp eq ptr %.016.i.i, null
  %. = select i1 %.not7, i32 22, i32 0
  br label %bb.f

bb.f:                                             ; preds = %data_key_get.exit, %bb.a
  %.0 = phi i32 [ %., %data_key_get.exit ], [ 22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @data_resolve_dict_path_const(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.dict_path_const_args_t, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store i32 -2144848721, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %0, ptr %i.b, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %.not13 = icmp eq i32 %i.d, 65283
  br i1 %.not13, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @url_path_walk(ptr noundef %1, i1 noundef zeroext false, ptr noundef nonnull @_on_dict_path_const, ptr noundef nonnull %2) #14
  %.not14 = icmp eq i32 %i.e, 0
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.g = and i64 %i.f, 256
  %.not15 = icmp eq i64 %i.g, 0                   ; 2 uses
  br i1 %.not14, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  %i.i = load ptr, ptr %i.b, align 8
  call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef nonnull %1, i64 noundef %i.h, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.data_resolve_dict_path_const, ptr noundef nonnull %0, ptr noundef %i.i) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = load ptr, ptr %i.b, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef nonnull %1, i64 noundef %i.k, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.data_resolve_dict_path_const, ptr noundef nonnull %0) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a, %bb.b, %bb.f
  %.0 = phi ptr [ %i.j, %bb.f ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.h ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @_on_dict_path_const(ptr noundef %0, i1 zeroext %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %.not = icmp eq i32 %i.d, 65283
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not18.i = icmp eq ptr %0, null
  br i1 %.not18.i, label %data_key_get_const.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %.not20.i = icmp eq i64 %i.h, 0
  br i1 %.not20.i, label %data_key_get_const.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.024.i = load ptr, ptr %i.i, align 8           ; 2 uses
  %.not2125.i = icmp eq ptr %.024.i, null
  br i1 %.not2125.i, label %data_key_get_const.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
end_hunk_0
