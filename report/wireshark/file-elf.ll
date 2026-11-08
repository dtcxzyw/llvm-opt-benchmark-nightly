Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/file-elf?download=true
inline.NumInlined: 58
inline.NumDeleted: 10
begin_hunk_0_@dissect_elf:bb.a
  %i.acg = load i32, ptr @ett_symbol_table_info, align 4
  %i.ach = call ptr @proto_item_add_subtree(ptr noundef %i.acf, i32 noundef %i.acg) ; 2 uses
  %i.aci = load i32, ptr @hf_elf_symbol_table_info_bind, align 4
  %i.acj = call ptr @proto_tree_add_item(ptr noundef %i.ach, i32 noundef %i.aci, ptr noundef %0, i32 noundef %i.aaq, i32 noundef 1, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.ack = load i32, ptr @hf_elf_symbol_table_info_type, align 4
  %i.acl = call ptr @proto_tree_add_item(ptr noundef %i.ach, i32 noundef %i.ack, ptr noundef %0, i32 noundef %i.aaq, i32 noundef 1, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.acm = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.aaq)
  %i.acn = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.aaq)
  %i.aco = add i32 %.18691090, 5
  %i.acp = load i32, ptr @hf_elf_symbol_table_other, align 4
  %i.acq = call ptr @proto_tree_add_item(ptr noundef %i.aad, i32 noundef %i.acp, ptr noundef %0, i32 noundef %i.aco, i32 noundef 1, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.acr = add i32 %.18691090, 6
  %i.acs = load i32, ptr @hf_elf_symbol_table_shndx, align 4
  %i.act = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.aad, i32 noundef %i.acs, ptr noundef %0, i32 noundef %i.acr, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %.0900, ptr noundef nonnull %i.a) ; 2 uses
  %i.acu = load i16, ptr %i.a, align 2            ; 3 uses
  %.not137.i = icmp ugt i16 %i.acu, %i.aag
  br i1 %.not137.i, label %bb.fs, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.acv = load ptr, ptr %i.eb, align 8
  %i.acw = zext i16 %i.acu to i64
  %i.acx = mul nuw nsw i64 %i.acw, %i.kf
  %i.acy = add nuw nsw i64 %i.acx, %.0897         ; 2 uses
  %i.acz = icmp ult i64 %i.acy, 2147483648
  br i1 %i.acz, label %value_guard.exit.i143.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.679, ptr noundef @.str.680, i32 noundef 768, ptr noundef @.str.681, ptr noundef @.str.682) #6
  unreachable

value_guard.exit.i143.i:                          ; preds = %bb.fn
  %i.ada = trunc nuw nsw i64 %i.acy to i32
  %i.adb = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.ada, i32 noundef range(i32 -2147483648, 1) %.0900)
  %i.adc = zext i32 %i.adb to i64
  %i.add = add i64 %.1893, %i.adc                 ; 2 uses
  %i.ade = icmp ult i64 %i.add, 2147483648
  br i1 %i.ade, label %get_section_name_offset.exit146.i, label %bb.fp

bb.fp:                                            ; preds = %value_guard.exit.i143.i
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.679, ptr noundef @.str.680, i32 noundef 768, ptr noundef @.str.681, ptr noundef @.str.682) #6
  unreachable

get_section_name_offset.exit146.i:                ; preds = %value_guard.exit.i143.i
  %i.adf = trunc nuw nsw i64 %i.add to i32
  %i.adg = call ptr @tvb_get_stringz_enc(ptr noundef %i.acv, ptr noundef %0, i32 noundef %i.adf, ptr noundef null, i32 noundef 0) ; 3 uses
  %.not138.i = icmp eq ptr %i.adg, null
  br i1 %.not138.i, label %bb.ft, label %bb.fq

bb.fq:                                            ; preds = %get_section_name_offset.exit146.i
  %i.adh = load i8, ptr %i.adg, align 1
  %.not139.i = icmp eq i8 %i.adh, 0
  br i1 %.not139.i, label %bb.ft, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.adi = load i16, ptr %i.a, align 2
  %i.adj = zext i16 %i.adi to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.act, ptr noundef @.str.691, i32 noundef %i.adj, ptr noundef nonnull %i.adg)
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fm
  %i.adk = zext i16 %i.acu to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.act, ptr noundef @.str.692, i32 noundef %i.adk)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr, %bb.fq, %get_section_name_offset.exit146.i
  %i.adl = add i32 %.18691090, 8
  %i.adm = load i32, ptr @hf_elf64_symbol_table_value, align 4
  %i.adn = call ptr @proto_tree_add_item(ptr noundef %i.aad, i32 noundef %i.adm, ptr noundef %0, i32 noundef %i.adl, i32 noundef 8, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.ado = add i32 %.18691090, 16
  %i.adp = load i32, ptr @hf_elf64_symbol_table_size, align 4
  %i.adq = call ptr @proto_tree_add_item(ptr noundef %i.aad, i32 noundef %i.adp, ptr noundef %0, i32 noundef %i.ado, i32 noundef 8, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  br label %dissect_symbol_table.exit

dissect_symbol_table.exit:                        ; preds = %get_section_name_offset.exit.i, %bb.fj, %bb.fk, %bb.fl, %bb.ft
  %.sink.i = phi i32 [ 24, %bb.ft ], [ 16, %get_section_name_offset.exit.i ], [ 16, %bb.fj ], [ 16, %bb.fk ], [ 16, %bb.fl ]
  %.0128.i = phi ptr [ %i.acf, %bb.ft ], [ %i.aay, %get_section_name_offset.exit.i ], [ %i.aay, %bb.fj ], [ %i.aay, %bb.fk ], [ %i.aay, %bb.fl ]
  %.0127.in.i = phi i8 [ %i.acm, %bb.ft ], [ %i.abf, %get_section_name_offset.exit.i ], [ %i.abf, %bb.fj ], [ %i.abf, %bb.fk ], [ %i.abf, %bb.fl ]
  %.0.in.i = phi i8 [ %i.acn, %bb.ft ], [ %i.abg, %get_section_name_offset.exit.i ], [ %i.abg, %bb.fj ], [ %i.abg, %bb.fk ], [ %i.abg, %bb.fl ]
  %i.adr = add i32 %.sink.i, %.18691090           ; 2 uses
  %.0.i976 = and i8 %.0.in.i, 15
  %.0127.i = lshr i8 %.0127.in.i, 4
  %i.ads = zext nneg i8 %.0127.i to i32           ; 2 uses
  %i.adt = call ptr @val_to_str_const(i32 noundef %i.ads, ptr noundef @symbol_table_info_bind_vals, ptr noundef @.str.657)
  %i.adu = zext nneg i8 %.0.i976 to i32           ; 2 uses
  %i.adv = call ptr @val_to_str_ext_const(i32 noundef %i.adu, ptr noundef @symbol_table_info_type_vals_ext, ptr noundef @.str.657)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0128.i, ptr noundef @.str.693, ptr noundef %i.adt, ptr noundef %i.adv)
  %i.adw = call ptr @val_to_str_const(i32 noundef %i.ads, ptr noundef @symbol_table_info_bind_vals, ptr noundef @.str.657)
  %i.adx = call ptr @val_to_str_ext_const(i32 noundef %i.adu, ptr noundef @symbol_table_info_type_vals_ext, ptr noundef @.str.657)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aae, ptr noundef @.str.693, ptr noundef %i.adw, ptr noundef %i.adx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.ady = mul nuw nsw i64 %indvars.iv1154, %.0867
  %i.adz = add nuw i64 %i.ady, %.1891
  %i.aea = trunc i64 %i.adz to i32
  %.not934 = icmp eq i32 %i.adr, %i.aea
  br i1 %.not934, label %value_guard.exit972, label %bb.fu

bb.fu:                                            ; preds = %dissect_symbol_table.exit
  %i.aeb = load ptr, ptr %i.k, align 8
  %i.aec = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.aeb, ptr noundef @ei_invalid_entry_size) ; 0 uses
  br label %value_guard.exit972

value_guard.exit972:                              ; preds = %dissect_symbol_table.exit, %bb.fu
  %indvars.iv.next1155 = add nuw i64 %indvars.iv1154, 1
  %.not988.not = icmp ugt i64 %i.zy, %indvars.iv1154
  br i1 %.not988.not, label %value_guard.exit973, label %.loopexit, !llvm.loop !12

value_guard.exit977:                              ; preds = %value_guard.exit977.preheader, %value_guard.exit977
  %.21086 = phi i32 [ %i.aei, %value_guard.exit977 ], [ %i.oq, %value_guard.exit977.preheader ] ; 4 uses
  %.28731085 = phi i32 [ %i.aej, %value_guard.exit977 ], [ 1, %value_guard.exit977.preheader ] ; 2 uses
  %i.aed = call i32 @tvb_strsize(ptr noundef %0, i32 noundef %.21086) ; 3 uses
  %i.aee = load i32, ptr @hf_elf_string, align 4
  %i.aef = call ptr @proto_tree_add_item(ptr noundef %i.ou, i32 noundef %i.aee, ptr noundef %0, i32 noundef %.21086, i32 noundef %i.aed, i32 noundef 0) ; 2 uses
  store ptr %i.aef, ptr %i.m, align 8
  %i.aeg = sub i32 %.21086, %i.oq
  %i.aeh = add i32 %i.aed, -1
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aef, ptr noundef @.str.670, i32 noundef %.28731085, i32 noundef %i.aeg, i32 noundef %i.aeh)
  %i.aei = add i32 %i.aed, %.21086                ; 2 uses
  %i.aej = add i32 %.28731085, 1
  %i.aek = icmp slt i32 %i.aei, %i.zw
  br i1 %i.aek, label %value_guard.exit977, label %.loopexit, !llvm.loop !13

bb.fv:                                            ; preds = %bb.ez
  %i.ael = icmp ugt i64 %.0867, 1
  br i1 %i.ael, label %value_guard.exit978.preheader, label %.loopexit

value_guard.exit978.preheader:                    ; preds = %bb.fv
  %i.aem = udiv i64 %.1889, %.0867
  %.not9321092 = icmp ugt i64 %.0867, %.1889
  br i1 %.not9321092, label %.loopexit, label %value_guard.exit980.preheader

value_guard.exit980.preheader:                    ; preds = %value_guard.exit978.preheader
  %i.aen = trunc nuw nsw i64 %.0867 to i32        ; 2 uses
  br label %value_guard.exit980

value_guard.exit980:                              ; preds = %value_guard.exit980.preheader, %value_guard.exit980
  %indvars.iv1157 = phi i64 [ 1, %value_guard.exit980.preheader ], [ %indvars.iv.next1158, %value_guard.exit980 ] ; 3 uses
  %.31094 = phi i32 [ %i.oq, %value_guard.exit980.preheader ], [ %i.aer, %value_guard.exit980 ] ; 2 uses
  %i.aeo = load i32, ptr @hf_elf_entry_bytes, align 4
  %i.aep = trunc nuw nsw i64 %indvars.iv1157 to i32
  %i.aeq = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %i.ou, i32 noundef %i.aeo, ptr noundef %0, i32 noundef %.31094, i32 noundef %i.aen, ptr noundef null, ptr noundef @.str.671, i32 noundef %i.aep) ; 0 uses
  %i.aer = add i32 %.31094, %i.aen
  %indvars.iv.next1158 = add nuw nsw i64 %indvars.iv1157, 1
  %.not932.not = icmp samesign ugt i64 %i.aem, %indvars.iv1157
  br i1 %.not932.not, label %value_guard.exit980, label %.loopexit, !llvm.loop !14

.loopexit.sink.split:                             ; preds = %dissect_eh_frame_hdr.exit, %dissect_eh_frame.exit
  %i.aes = load ptr, ptr %i.k, align 8
  %i.aet = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.aes, ptr noundef @ei_invalid_segment_size) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %value_guard.exit977, %value_guard.exit972, %value_guard.exit980, %value_guard.exit968, %.loopexit.sink.split, %value_guard.exit977.preheader, %value_guard.exit972.preheader, %value_guard.exit978.preheader, %value_guard.exit968.preheader, %dissect_eh_frame.exit, %bb.ej, %bb.fv, %bb.fa, %dissect_eh_frame_hdr.exit, %bb.cb
  %.3885 = phi i64 [ %i.oj, %value_guard.exit980 ], [ %i.oj, %dissect_eh_frame.exit ], [ %i.oj, %value_guard.exit972 ], [ %i.oj, %dissect_eh_frame_hdr.exit ], [ %.28841104, %bb.cb ], [ %i.oj, %bb.ej ], [ %i.oj, %value_guard.exit968.preheader ], [ %i.oj, %bb.fa ], [ %i.oj, %value_guard.exit978.preheader ], [ %i.oj, %value_guard.exit972.preheader ], [ %i.oj, %bb.fv ], [ %i.oj, %value_guard.exit977.preheader ], [ %i.oj, %.loopexit.sink.split ], [ %i.oj, %value_guard.exit968 ], [ %i.oj, %value_guard.exit977 ] ; 2 uses
  %.5880 = phi i32 [ %i.oo, %value_guard.exit980 ], [ %i.oo, %dissect_eh_frame.exit ], [ %i.oo, %value_guard.exit972 ], [ %i.oo, %dissect_eh_frame_hdr.exit ], [ %.48791105, %bb.cb ], [ %i.oo, %bb.ej ], [ %i.oo, %value_guard.exit968.preheader ], [ %i.oo, %bb.fa ], [ %i.oo, %value_guard.exit978.preheader ], [ %i.oo, %value_guard.exit972.preheader ], [ %i.oo, %bb.fv ], [ %i.oo, %value_guard.exit977.preheader ], [ %i.oo, %.loopexit.sink.split ], [ %i.oo, %value_guard.exit968 ], [ %i.oo, %value_guard.exit977 ] ; 2 uses
  %.not927.wide = icmp eq i32 %i.ki, 0
  br i1 %.not927.wide, label %._crit_edge, label %bb.bd, !llvm.loop !15

._crit_edge:                                      ; preds = %.loopexit, %value_guard.exit947, %value_guard.exit951
  %.2884.lcssa = phi i64 [ %.0882.lcssa, %value_guard.exit951 ], [ %.0882.lcssa, %value_guard.exit947 ], [ %.3885, %.loopexit ] ; 3 uses
  %.4879.lcssa = phi i32 [ %.2877.lcssa, %value_guard.exit951 ], [ %.2877.lcssa, %value_guard.exit947 ], [ %.5880, %.loopexit ] ; 6 uses
  %i.aeu = load i32, ptr @ett_elf_info, align 4
  %i.aev = call ptr @proto_tree_add_subtree(ptr noundef %i.ac, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.aeu, ptr noundef nonnull %i.l, ptr noundef @.str.672) ; 5 uses
  %i.aew = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not.i981 = icmp eq ptr %i.aew, null
  br i1 %.not.i981, label %proto_item_set_generated.exit, label %bb.fw

bb.fw:                                            ; preds = %._crit_edge
  %i.aex = getelementptr i8, ptr %i.aew, i64 40
  %i.aey = load ptr, ptr %i.aex, align 8          ; 2 uses
  %.not5.i = icmp eq ptr %i.aey, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.aez = getelementptr i8, ptr %i.aey, i64 28   ; 2 uses
  %i.afa = load i32, ptr %i.aez, align 4
  %i.afb = or i32 %i.afa, 2
  store i32 %i.afb, ptr %i.aez, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %._crit_edge, %bb.fw, %bb.fx
  %i.afc = load i32, ptr @ett_elf_black_holes, align 4
  %i.afd = call ptr @proto_tree_add_subtree(ptr noundef %i.aev, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.afc, ptr noundef null, ptr noundef @.str.673) ; 2 uses
  %i.afe = load i32, ptr @ett_elf_overlapping, align 4
  %i.aff = call ptr @proto_tree_add_subtree(ptr noundef %i.aev, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.afe, ptr noundef null, ptr noundef @.str.674)
  %.not1122 = icmp eq i32 %.4879.lcssa, 0
  br i1 %.not1122, label %._crit_edge1118, label %.lr.ph1114.preheader

.lr.ph1114.preheader:                             ; preds = %proto_item_set_generated.exit
  %i.afg = zext i32 %.4879.lcssa to i64           ; 2 uses
  br label %.lr.ph1114

.preheader:                                       ; preds = %._crit_edge1112
  %.not1287 = icmp eq i32 %.4879.lcssa, 1
  br i1 %.not1287, label %._crit_edge1118, label %.lr.ph1117.preheader

.lr.ph1117.preheader:                             ; preds = %.preheader
  %wide.trip.count1178 = zext i32 %.4879.lcssa to i64
  %.pre1182 = load i64, ptr %i.eh, align 8
  br label %.lr.ph1117

.lr.ph1114:                                       ; preds = %.lr.ph1114.preheader, %._crit_edge1112
  %indvars.iv1171 = phi i64 [ 0, %.lr.ph1114.preheader ], [ %indvars.iv.next1172, %._crit_edge1112 ] ; 2 uses
  %indvars.iv1166.a = phi i64 [ 1, %.lr.ph1114.preheader ], [ %indvars.iv.next1167, %._crit_edge1112 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.afh = getelementptr [24 x i8], ptr %i.eh, i64 %indvars.iv1171 ; 4 uses
  %indvars.iv.next1172 = add nuw nsw i64 %indvars.iv1171, 1 ; 3 uses
  %i.afi = icmp samesign ult i64 %indvars.iv.next1172, %i.afg
  br i1 %i.afi, label %.lr.ph1111.preheader, label %._crit_edge1112

.lr.ph1111.preheader:                             ; preds = %.lr.ph1114
  %.pre1181 = load i64, ptr %i.afh, align 8
  br label %.lr.ph1111

.lr.ph1111:                                       ; preds = %.lr.ph1111.preheader, %bb.fz
  %i.afj = phi i64 [ %.pre1181, %.lr.ph1111.preheader ], [ %i.afm, %bb.fz ] ; 2 uses
  %indvars.iv1168 = phi i64 [ %indvars.iv1166.a, %.lr.ph1111.preheader ], [ %indvars.iv.next1169, %bb.fz ] ; 2 uses
  %i.afk = getelementptr [24 x i8], ptr %i.eh, i64 %indvars.iv1168 ; 3 uses
  %i.afl = load i64, ptr %i.afk, align 8
  %.not930 = icmp ugt i64 %i.afj, %i.afl
  br i1 %.not930, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %.lr.ph1111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef align 8 dereferenceable(24) %i.afh, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.afh, ptr noundef align 8 dereferenceable(24) %i.afk, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.afk, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.pre1180 = load i64, ptr %i.afh, align 8
  br label %bb.fz

bb.fz:                                            ; preds = %.lr.ph1111, %bb.fy
  %i.afm = phi i64 [ %i.afj, %.lr.ph1111 ], [ %.pre1180, %bb.fy ]
  %indvars.iv.next1169 = add nuw nsw i64 %indvars.iv1168, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next1169 to i32
  %exitcond.not = icmp eq i32 %.4879.lcssa, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge1112, label %.lr.ph1111, !llvm.loop !16

._crit_edge1112:                                  ; preds = %bb.fz, %.lr.ph1114
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next1167 = add nuw nsw i64 %indvars.iv1166.a, 1
  %exitcond1174.not = icmp eq i64 %indvars.iv.next1172, %i.afg
  br i1 %exitcond1174.not, label %.preheader, label %.lr.ph1114, !llvm.loop !17

.lr.ph1117:                                       ; preds = %.lr.ph1117.preheader, %bb.gf
  %i.afn = phi i64 [ %.pre1182, %.lr.ph1117.preheader ], [ %i.aft, %bb.gf ]
  %indvars.iv1175 = phi i64 [ 1, %.lr.ph1117.preheader ], [ %indvars.iv.next1176, %bb.gf ] ; 3 uses
  %.48861115 = phi i64 [ %.2884.lcssa, %.lr.ph1117.preheader ], [ %.5887, %bb.gf ] ; 3 uses
  %i.afo = getelementptr [24 x i8], ptr %i.eh, i64 %indvars.iv1175 ; 3 uses
  %i.afp = getelementptr i8, ptr %i.afo, i64 -16
  %i.afq = load i64, ptr %i.afp, align 8
  %i.afr = add i64 %i.afq, %i.afn                 ; 5 uses
  %i.afs = getelementptr [24 x i8], ptr %i.eh, i64 %indvars.iv1175 ; 3 uses
  %i.aft = load i64, ptr %i.afs, align 8          ; 6 uses
  %i.afu = icmp ult i64 %i.afr, %i.aft
  br i1 %i.afu, label %bb.ga, label %bb.gc

bb.ga:                                            ; preds = %.lr.ph1117
  %i.afv = sub nuw i64 %i.aft, %i.afr             ; 2 uses
  %sext929 = shl i64 %i.afv, 32
  %i.afw = ashr exact i64 %sext929, 32
  %i.afx = sub i64 %i.aft, %i.afw                 ; 2 uses
  %i.afy = icmp ult i64 %i.afx, 2147483648
  br i1 %i.afy, label %value_guard.exit982, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.679, ptr noundef @.str.680, i32 noundef 768, ptr noundef @.str.681, ptr noundef @.str.682) #6
  unreachable

value_guard.exit982:                              ; preds = %bb.ga
  %i.afz = load i32, ptr @hf_elf_blackhole_size, align 4
  %i.aga = trunc i64 %i.afv to i32                ; 3 uses
  %i.agb = trunc nuw nsw i64 %i.afx to i32
  %i.agc = getelementptr i8, ptr %i.afo, i64 -8
  %i.agd = load ptr, ptr %i.agc, align 8
  %i.age = getelementptr i8, ptr %i.afs, i64 16
  %i.agf = load ptr, ptr %i.age, align 8
  %i.agg = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.afd, i32 noundef %i.afz, ptr noundef %0, i32 noundef %i.agb, i32 noundef 1, i32 noundef %i.aga, ptr noundef @.str.675, ptr noundef %i.agd, ptr noundef %i.agf, i32 noundef %i.aga)
  call void @proto_item_set_len(ptr noundef %i.agg, i32 noundef %i.aga)
  br label %bb.gf

bb.gc:                                            ; preds = %.lr.ph1117
  %i.agh = icmp ugt i64 %i.afr, %i.aft
  br i1 %i.agh, label %bb.gd, label %bb.gf

bb.gd:                                            ; preds = %bb.gc
  %i.agi = sub nuw i64 %i.afr, %i.aft             ; 2 uses
  %sext = shl i64 %i.agi, 32
  %i.agj = ashr exact i64 %sext, 32               ; 2 uses
  %i.agk = sub i64 %i.afr, %i.agj                 ; 2 uses
  %i.agl = icmp ult i64 %i.agk, 2147483648
  br i1 %i.agl, label %value_guard.exit983, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.679, ptr noundef @.str.680, i32 noundef 768, ptr noundef @.str.681, ptr noundef @.str.682) #6
  unreachable

value_guard.exit983:                              ; preds = %bb.gd
  %i.agm = load i32, ptr @hf_elf_overlapping_size, align 4
  %i.agn = trunc i64 %i.agi to i32                ; 3 uses
  %i.ago = trunc nuw nsw i64 %i.agk to i32
  %i.agp = getelementptr i8, ptr %i.afo, i64 -8
  %i.agq = load ptr, ptr %i.agp, align 8
  %i.agr = getelementptr i8, ptr %i.afs, i64 16
  %i.ags = load ptr, ptr %i.agr, align 8
  %i.agt = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.aff, i32 noundef %i.agm, ptr noundef %0, i32 noundef %i.ago, i32 noundef 1, i32 noundef %i.agn, ptr noundef @.str.676, ptr noundef %i.agq, ptr noundef %i.ags, i32 noundef %i.agn)
  call void @proto_item_set_len(ptr noundef %i.agt, i32 noundef %i.agn)
  %i.agu = sub i64 %.48861115, %i.agj
  br label %bb.gf

bb.gf:                                            ; preds = %value_guard.exit982, %value_guard.exit983, %bb.gc
  %.5887 = phi i64 [ %.48861115, %value_guard.exit982 ], [ %i.agu, %value_guard.exit983 ], [ %.48861115, %bb.gc ] ; 2 uses
  %indvars.iv.next1176 = add nuw nsw i64 %indvars.iv1175, 1 ; 2 uses
  %exitcond1179.not = icmp eq i64 %indvars.iv.next1176, %wide.trip.count1178
  br i1 %exitcond1179.not, label %._crit_edge1118, label %.lr.ph1117, !llvm.loop !18

._crit_edge1118:                                  ; preds = %bb.gf, %proto_item_set_generated.exit, %.preheader
  %.4886.lcssa = phi i64 [ %.2884.lcssa, %.preheader ], [ %.2884.lcssa, %proto_item_set_generated.exit ], [ %.5887, %bb.gf ]
  %i.agv = add i32 %.4879.lcssa, -1
  %i.agw = zext i32 %i.agv to i64
  %i.agx = getelementptr [24 x i8], ptr %i.eh, i64 %i.agw ; 3 uses
  %i.agy = load i64, ptr %i.agx, align 8          ; 2 uses
  %i.agz = getelementptr i8, ptr %i.agx, i64 8
  %i.aha = load i64, ptr %i.agz, align 8          ; 2 uses
  %i.ahb = add i64 %i.aha, %i.agy                 ; 3 uses
  %i.ahc = call i32 @tvb_captured_length(ptr noundef %0)
  %i.ahd = zext i32 %i.ahc to i64
  %i.ahe = icmp ult i64 %i.ahb, %i.ahd
  br i1 %i.ahe, label %bb.gg, label %bb.gi

bb.gg:                                            ; preds = %._crit_edge1118
  %i.ahf = call i32 @tvb_captured_length(ptr noundef %0)
  %i.ahg = icmp samesign ult i64 %i.ahb, 2147483648
  br i1 %i.ahg, label %value_guard.exit984, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.679, ptr noundef @.str.680, i32 noundef 768, ptr noundef @.str.681, ptr noundef @.str.682) #6
  unreachable

value_guard.exit984:                              ; preds = %bb.gg
  %i.ahh = load i32, ptr @hf_elf_blackhole_size, align 4
  %.neg = sub i64 %i.aha, %i.agy
  %.neg928 = trunc i64 %.neg to i32
  %i.ahi = add i32 %i.ahf, %.neg928               ; 3 uses
  %i.ahj = trunc nuw nsw i64 %i.ahb to i32
  %i.ahk = getelementptr i8, ptr %i.agx, i64 16
  %i.ahl = load ptr, ptr %i.ahk, align 8
  %i.ahm = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.afd, i32 noundef %i.ahh, ptr noundef %0, i32 noundef %i.ahj, i32 noundef 1, i32 noundef %i.ahi, ptr noundef @.str.677, ptr noundef %i.ahl, i32 noundef %i.ahi)
  call void @proto_item_set_len(ptr noundef %i.ahm, i32 noundef %i.ahi)
  br label %bb.gi

bb.gi:                                            ; preds = %value_guard.exit984, %._crit_edge1118
  %i.ahn = load i32, ptr @hf_elf_file_size, align 4
  %i.aho = call i32 @tvb_captured_length(ptr noundef %0)
  %i.ahp = call ptr @proto_tree_add_uint(ptr noundef %i.aev, i32 noundef %i.ahn, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.aho) ; 0 uses
  %i.ahq = load i32, ptr @hf_elf_header_segment_size, align 4
  %i.ahr = trunc i64 %.4886.lcssa to i32          ; 2 uses
  %i.ahs = call ptr @proto_tree_add_uint(ptr noundef %i.aev, i32 noundef %i.ahq, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ahr) ; 0 uses
  %i.aht = load i32, ptr @hf_elf_blackholes_size, align 4
  %i.ahu = call i32 @tvb_captured_length(ptr noundef %0)
  %i.ahv = sub i32 %i.ahu, %i.ahr
  %i.ahw = call ptr @proto_tree_add_uint(ptr noundef %i.aev, i32 noundef %i.aht, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ahv) ; 0 uses
  %i.ahx = getelementptr i8, ptr %1, i64 8        ; 2 uses
  %i.ahy = load ptr, ptr %i.ahx, align 8
  call void @col_clear(ptr noundef %i.ahy, i32 noundef 25)
  %i.ahz = load ptr, ptr %i.ahx, align 8
  call void @col_set_str(ptr noundef %i.ahz, i32 noundef 25, ptr noundef @.str.678)
  %i.aia = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.gj

bb.gj:                                            ; preds = %bb.b, %bb.a, %bb.gi
  %.0 = phi i32 [ %i.aia, %bb.gi ], [ 0, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_static_text_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_elf() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @elf_handle, align 8
  tail call void @dissector_add_string(ptr noundef @.str.310, ptr noundef @.str.311, ptr noundef %i.a)
  %i.b = load ptr, ptr @elf_handle, align 8
  tail call void @dissector_add_string(ptr noundef @.str.310, ptr noundef @.str.312, ptr noundef %i.b)
  %i.c = load ptr, ptr @elf_handle, align 8
  tail call void @dissector_add_string(ptr noundef @.str.310, ptr noundef @.str.313, ptr noundef %i.c)
  %i.d = load ptr, ptr @elf_handle, align 8
  tail call void @dissector_add_string(ptr noundef @.str.310, ptr noundef @.str.314, ptr noundef %i.d)
  %i.e = load ptr, ptr @elf_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.315, i32 noundef 1234, ptr noundef %i.e)
  %i.f = load i32, ptr @proto_elf, align 4
  tail call void @heur_dissector_add(ptr noundef @.str.316, ptr noundef @dissect_elf_heur, ptr noundef @.str.317, ptr noundef @.str.318, i32 noundef %i.f, i32 noundef 1)
  %i.g = load i32, ptr @proto_elf, align 4
  tail call void @heur_dissector_add(ptr noundef @.str.319, ptr noundef @dissect_elf_heur, ptr noundef @.str.320, ptr noundef @.str.321, i32 noundef %i.g, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @heur_dissector_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @dissect_elf_heur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @dissect_elf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr poison)
  %i.b = icmp sgt i32 %i.a, 0
  ret i1 %i.b
}

end_hunk_0
