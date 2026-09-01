Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngread?download=true
inline.NumInlined: 35
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 16
begin_hunk_0_@png_image_read_direct:bb.a
  %i.m = and i8 %i.k, 4
  %.not10.i = icmp eq i8 %i.m, 0
  br i1 %.not10.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = or disjoint i32 %spec.select.i, 1
  br label %png_image_format.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 616
  %i.p = load i16, ptr %i.o, align 8, !tbaa !119, !alias.scope !180
  %.not11.i = icmp ne i16 %i.p, 0
  %i.q = zext i1 %.not11.i to i32
  %spec.select13.i = or disjoint i32 %i.q, %spec.select.i
  br label %png_image_format.exit

png_image_format.exit:                            ; preds = %bb.b, %bb.c
  %.1.i = phi i32 [ %i.n, %bb.b ], [ %spec.select13.i, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 624
  %i.s = load i8, ptr %i.r, align 8, !tbaa !34, !alias.scope !180
  %i.t = icmp eq i8 %i.s, 16
  %i.u = or i32 %.1.i, 4
  %spec.select14.i = select i1 %i.t, i32 %i.u, i32 %.1.i ; 5 uses
  %i.v = xor i32 %spec.select14.i, %i.h           ; 3 uses
  %i.w = and i32 %i.v, 2
  %.not205 = icmp eq i32 %i.w, 0
  br i1 %.not205, label %bb.h, label %bb.d

bb.d:                                             ; preds = %png_image_format.exit
  %i.x = and i32 %i.h, 2
  %.not206 = icmp eq i32 %i.x, 0
  br i1 %.not206, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @png_set_gray_to_rgb(ptr noundef nonnull %i.d) #13
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.y = and i32 %spec.select14.i, 1
  %.not207 = icmp eq i32 %i.y, 0
  tail call void @png_set_rgb_to_gray_fixed(ptr noundef nonnull %i.d, i32 noundef 1, i32 noundef -1, i32 noundef -1) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1196 = phi i1 [ true, %bb.e ], [ %.not207, %bb.f ]
  %i.z = and i32 %i.v, -3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %png_image_format.exit
  %.2197 = phi i1 [ %.1196, %bb.g ], [ true, %png_image_format.exit ]
  %.0184 = phi i32 [ %i.z, %bb.g ], [ %i.v, %png_image_format.exit ] ; 4 uses
  %i.aa = and i32 %spec.select14.i, 4
  %.not208 = icmp eq i32 %i.aa, 0
  br i1 %.not208, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !133
  %i.ad = and i32 %i.ac, 4
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0175 = phi i32 [ -1, %bb.j ], [ 100000, %bb.i ]
  tail call void @png_set_alpha_mode_fixed(ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef %.0175) #13
  %.not209 = trunc i32 %spec.select14.i to i1
  %. = and i32 %spec.select14.i, 1
  %.0183 = select i1 %.not.not, i32 -1, i32 100000 ; 2 uses
  %.1177 = select i1 %.not.not, i32 0, i32 %.
  %i.af = and i32 %.0184, 64
  %.not210 = icmp eq i32 %i.af, 0
  %i.ag = and i32 %.0184, -65
  %.2178 = select i1 %.not210, i32 %.1177, i32 2  ; 4 uses
  br i1 %.2197, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ah = tail call i32 @png_resolve_file_gamma(ptr noundef nonnull %i.d) #13
  %i.ai = call i32 @png_muldiv(ptr noundef nonnull %i.a, i32 noundef %.0183, i32 noundef %i.ah, i32 noundef 100000) #13
  %.not212 = icmp eq i32 %i.ai, 0
  br i1 %.not212, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !115
  %i.ak = call i32 @png_gamma_significant(i32 noundef %i.aj) #13
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.am = icmp eq i32 %.2178, 1                   ; 2 uses
  %spec.select = select i1 %i.am, i32 2, i32 1
  %spec.select239 = select i1 %i.am, i32 0, i32 %.2178
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.3198 = phi i32 [ %spec.select, %bb.n ], [ 0, %bb.m ]
  %.3179 = phi i32 [ %spec.select239, %bb.n ], [ %.2178, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.k
  %.4199 = phi i32 [ %.3198, %bb.o ], [ 0, %bb.k ] ; 3 uses
  %.4180 = phi i32 [ %.3179, %bb.o ], [ %.2178, %bb.k ] ; 5 uses
  %i.an = and i32 %.0184, 4
  %.not213 = icmp eq i32 %i.an, 0
  br i1 %.not213, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @png_set_expand_16(ptr noundef nonnull %i.d) #13
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @png_set_scale_16(ptr noundef nonnull %i.d) #13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 620
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !42
  %.not214 = icmp ne i8 %i.ap, 0
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aq = phi i1 [ false, %bb.r ], [ %.not214, %bb.s ]
  %i.ar = and i32 %.0184, -69
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  %.1194 = phi i1 [ %i.aq, %bb.t ], [ false, %bb.p ]
  %.2186 = phi i32 [ %i.ar, %bb.t ], [ %i.ag, %bb.p ] ; 8 uses
  %i.as = and i32 %.2186, 1
  %.not215 = icmp eq i32 %i.as, 0
  br i1 %.not215, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not209, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %.not218 = icmp eq i32 %.4199, 0
  br i1 %.not218, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  br i1 %.not.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @png_set_strip_alpha(ptr noundef nonnull %i.d) #13
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !145 ; 4 uses
  %.not219 = icmp eq ptr %i.au, null
  br i1 %.not219, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  store i8 0, ptr %1, align 2, !tbaa !155
  %i.av = load i8, ptr %i.au, align 1, !tbaa !148
  %i.aw = zext i8 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !160
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !146
  %i.ba = zext i8 %i.az to i16                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !161
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !149
  %i.be = zext i8 %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !163
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.ba, ptr %i.bg, align 2, !tbaa !162
  call void @png_set_background_fixed(ptr noundef nonnull %i.d, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.ac

bb.ab:                                            ; preds = %bb.v
  %.241 = select i1 %.not.not, i32 255, i32 65535
  %i.bh = and i32 %i.h, 32                        ; 2 uses
  %.not217 = icmp eq i32 %i.bh, 0
  %i.bi = and i32 %.2186, -97
  %.3187 = select i1 %.not217, i32 %.2186, i32 %i.bi
  %.lobit = lshr exact i32 %i.bh, 5
  %.0173 = xor i32 %.lobit, 1
  call void @png_set_add_alpha(ptr noundef nonnull %i.d, i32 noundef %.241, i32 noundef %.0173) #13
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.w, %bb.aa, %bb.y, %bb.ab
  %i.bj = phi i1 [ true, %bb.ab ], [ true, %bb.y ], [ true, %bb.aa ], [ true, %bb.w ], [ false, %bb.z ]
  %.5200 = phi i32 [ %.4199, %bb.ab ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 2, %bb.w ], [ 0, %bb.z ]
  %.4188 = phi i32 [ %.3187, %bb.ab ], [ %.2186, %bb.y ], [ %.2186, %bb.aa ], [ %.2186, %bb.w ], [ %.2186, %bb.z ]
  %.5181 = phi i32 [ %.4180, %bb.ab ], [ %.4180, %bb.y ], [ %.4180, %bb.aa ], [ %.4180, %bb.w ], [ 2, %bb.z ]
  %i.bk = and i32 %.4188, -2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.u
  %.1203 = phi i1 [ %i.bj, %bb.ac ], [ true, %bb.u ] ; 5 uses
  %.6201 = phi i32 [ %.5200, %bb.ac ], [ %.4199, %bb.u ] ; 2 uses
  %.5189 = phi i32 [ %i.bk, %bb.ac ], [ %.2186, %bb.u ] ; 3 uses
  %.6182 = phi i32 [ %.5181, %bb.ac ], [ %.4180, %bb.u ]
  call void @png_set_alpha_mode_fixed(ptr noundef nonnull %i.d, i32 noundef %.6182, i32 noundef %.0183) #13
  %i.bl = and i32 %.5189, 16
  %.not220 = icmp eq i32 %i.bl, 0
  br i1 %.not220, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bm = and i32 %i.h, 2
  %.not221 = icmp eq i32 %i.bm, 0
  br i1 %.not221, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @png_set_bgr(ptr noundef nonnull %i.d) #13
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.bn = and i32 %i.h, -19
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0166 = phi i32 [ %i.h, %bb.af ], [ %i.bn, %bb.ag ]
  %i.bo = and i32 %.5189, -17
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ad
  %.6190 = phi i32 [ %i.bo, %bb.ah ], [ %.5189, %bb.ad ] ; 3 uses
  %.1 = phi i32 [ %.0166, %bb.ah ], [ %i.h, %bb.ad ] ; 5 uses
  %i.bp = and i32 %.6190, 32
  %.not222 = icmp eq i32 %i.bp, 0
  br i1 %.not222, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bq = and i32 %.1, 1
  %.not223 = icmp eq i32 %i.bq, 0
  br i1 %.not223, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not224 = icmp eq i32 %.6201, 2
  br i1 %.not224, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @png_set_swap_alpha(ptr noundef nonnull %i.d) #13
  br label %bb.an

bb.am:                                            ; preds = %bb.aj
  %i.br = and i32 %.1, -34
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.al, %bb.am
  %.2 = phi i32 [ %.1, %bb.al ], [ %.1, %bb.ak ], [ %i.br, %bb.am ]
  %i.bs = and i32 %.6190, -33
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ai
  %.7 = phi i32 [ %i.bs, %bb.an ], [ %.6190, %bb.ai ]
  %.3 = phi i32 [ %.2, %bb.an ], [ %.1, %bb.ai ]  ; 4 uses
  br i1 %.not.not, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @png_set_swap(ptr noundef nonnull %i.d) #13
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.not225 = icmp eq i32 %.7, 0
  br i1 %.not225, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @png_error(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.54) #14
  unreachable

bb.as:                                            ; preds = %bb.aq
  call void @png_set_keep_unknown_chunks(ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef null, i32 noundef -1) #13
  call void @png_set_keep_unknown_chunks(ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef nonnull @png_image_skip_unused_chunks.chunks_to_process, i32 noundef 7) #13
  %i.bt = icmp ne i32 %.6201, 2                   ; 7 uses
  %or.cond = and i1 %.1203, %i.bt
  br i1 %or.cond, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.bu = call i32 @png_set_interlace_handling(ptr noundef nonnull %i.d) #13
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %.0191 = phi i32 [ %i.bu, %bb.at ], [ 0, %bb.as ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 304 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !26, !alias.scope !183, !noalias !186
  %i.bx = and i32 %i.bw, 64
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @png_read_start_row(ptr noundef nonnull %i.d) #13, !noalias !186
  call void @png_read_transform_info(ptr noundef nonnull %i.d, ptr noundef %i.f) #13
  br label %png_read_update_info.exit

bb.aw:                                            ; preds = %bb.au
  call void @png_app_error(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.3) #13, !noalias !186
  br label %png_read_update_info.exit

png_read_update_info.exit:                        ; preds = %bb.av, %bb.aw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 37
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !171 ; 2 uses
  %i.cb = and i8 %i.ca, 2
  %spec.select242 = zext nneg i8 %i.cb to i32     ; 3 uses
  %i.cc = and i8 %i.ca, 4
  %.not227 = icmp eq i8 %i.cc, 0
  br i1 %.not227, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %png_read_update_info.exit
  br i1 %.1203, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.cd = and i32 %.3, 1
  %i.ce = select i1 %i.bt, i32 1, i32 %i.cd
  %spec.select249 = or disjoint i32 %i.ce, %spec.select242
  br label %bb.bb

bb.az:                                            ; preds = %png_read_update_info.exit
  br i1 %.1203, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @png_error(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.55) #14
  unreachable

bb.bb:                                            ; preds = %bb.ay, %bb.az, %bb.ax
  %.1170 = phi i32 [ %spec.select242, %bb.az ], [ %spec.select249, %bb.ay ], [ %spec.select242, %bb.ax ]
  %i.cf = and i32 %.3, 64
  %spec.select245 = or i32 %.1170, %i.cf          ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !172
  %i.ci = icmp eq i8 %i.ch, 16
  %i.cj = or i32 %spec.select245, 4
  %.3172 = select i1 %i.ci, i32 %i.cj, i32 %spec.select245
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 308
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !43 ; 3 uses
  %i.cm = shl i32 %i.cl, 4
  %i.cn = and i32 %i.cm, 16
  %.4 = or i32 %i.cn, %.3172                      ; 2 uses
  %i.co = and i32 %.3, 32
  %.not232 = icmp eq i32 %i.co, 0
  %or.cond247 = select i1 %i.bt, i1 true, i1 %.not232
  %i.cp = or i32 %.4, 32                          ; 3 uses
  %.5 = select i1 %or.cond247, i32 %.4, i32 %i.cp ; 2 uses
  %i.cq = and i32 %i.cl, 131072
  %.not233 = icmp eq i32 %i.cq, 0
  br i1 %.not233, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.cr = and i32 %i.cl, 16777216
  %.not234 = icmp eq i32 %i.cr, 0
  br i1 %.not234, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cs = load i32, ptr %i.bv, align 8, !tbaa !26
  %i.ct = and i32 %i.cs, 128
  %i.cu = icmp ne i32 %i.ct, 0                    ; 2 uses
  %brmerge = or i1 %i.cu, %i.bt
  %.5.mux = select i1 %i.cu, i32 %.5, i32 %i.cp
  br i1 %brmerge, label %bb.bg, label %bb.bf

bb.be:                                            ; preds = %bb.bb
  br i1 %i.bt, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  call void @png_error(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.56) #14
  unreachable

bb.bg:                                            ; preds = %bb.bd, %bb.be, %bb.bc
  %.6 = phi i32 [ %.5, %bb.bc ], [ %.5.mux, %bb.bd ], [ %i.cp, %bb.be ]
  %.not235 = icmp eq i32 %.6, %.3
  br i1 %.not235, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @png_error(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.57) #14
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !142 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !143 ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %.lobit252 = lshr exact i32 %i.i, 2
  %i.da = zext nneg i32 %.lobit252 to i64
  %spec.select248 = shl nsw i64 %i.cz, %i.da      ; 3 uses
  %i.db = icmp slt i32 %i.cy, 0
  br i1 %i.db, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !139
  %i.de = add i32 %i.dd, -1
  %i.df = zext i32 %i.de to i64
  %i.dg = mul i64 %spec.select248, %i.df
  %i.dh = sub i64 0, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dh
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.0168 = phi ptr [ %i.di, %bb.bj ], [ %i.cw, %bb.bi ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %.0168, ptr %i.dj, align 8, !tbaa !174
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %spec.select248, ptr %i.dk, align 8, !tbaa !175
  %brmerge264.demorgan = and i1 %.1203, %i.bt
  %brmerge264 = xor i1 %brmerge264.demorgan, true
  %brmerge265 = select i1 %brmerge264, i1 true, i1 %.1194
  br i1 %brmerge265, label %.loopexit253.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.bk
  %i.dl = icmp sgt i32 %.0191, 0
  br i1 %i.dl, label %.lr.ph257, label %.loopexit253

.lr.ph257:                                        ; preds = %.preheader
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !139 ; 2 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %.loopexit253, label %.lr.ph257.split

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph257.split
  %i.dp = icmp samesign ugt i32 %.in, 1
  br i1 %i.dp, label %.lr.ph257.splitthread-pre-split, label %.loopexit253, !llvm.loop !188

.lr.ph257.splitthread-pre-split:                  ; preds = %.loopexit
  %.pr = load i32, ptr %i.dm, align 8, !tbaa !139
  br label %.lr.ph257.split

.lr.ph257.split:                                  ; preds = %.lr.ph257, %.lr.ph257.splitthread-pre-split
  %i.dq = phi i32 [ %.pr, %.lr.ph257.splitthread-pre-split ], [ %i.dn, %.lr.ph257 ] ; 2 uses
  %.in = phi i32 [ %i.dr, %.lr.ph257.splitthread-pre-split ], [ %.0191, %.lr.ph257 ] ; 2 uses
  %i.dr = add nsw i32 %.in, -1
  %.not238254 = icmp eq i32 %i.dq, 0
  br i1 %.not238254, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph257.split
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !174
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0256 = phi ptr [ %i.dt, %.lr.ph ], [ %i.ds, %.lr.ph.preheader ] ; 2 uses
  %.0164255 = phi i32 [ %i.du, %.lr.ph ], [ %i.dq, %.lr.ph.preheader ]
  call void @png_read_row(ptr noundef nonnull %i.d, ptr noundef %.0256, ptr noundef null)
  %i.dt = getelementptr inbounds i8, ptr %.0256, i64 %spec.select248
  %i.du = add i32 %.0164255, -1                   ; 2 uses
  %.not238 = icmp eq i32 %i.du, 0
  br i1 %.not238, label %.loopexit, label %.lr.ph, !llvm.loop !189

.loopexit253.sink.split:                          ; preds = %bb.bk
  %png_image_read_composite.mux = select i1 %i.bt, ptr @png_image_read_direct_scaled, ptr @png_image_read_background
  %png_image_read_composite.mux.mux = select i1 %.1203, ptr %png_image_read_composite.mux, ptr @png_image_read_composite
  %i.dv = call i64 @png_get_rowbytes(ptr noundef nonnull %i.d, ptr noundef nonnull %i.f) #13
  %i.dw = call noalias ptr @png_malloc(ptr noundef nonnull %i.d, i64 noundef %i.dv) #13 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !176
  %i.dy = call i32 @png_safe_execute(ptr noundef nonnull %i.b, ptr noundef nonnull %png_image_read_composite.mux.mux, ptr noundef nonnull %0) #13
  store ptr null, ptr %i.dx, align 8, !tbaa !176
  call void @png_free(ptr noundef nonnull %i.d, ptr noundef %i.dw) #13
  br label %.loopexit253

.loopexit253:                                     ; preds = %.loopexit, %.loopexit253.sink.split, %.lr.ph257, %.preheader
  %.0165 = phi i32 [ 1, %.preheader ], [ 1, %.lr.ph257 ], [ %i.dy, %.loopexit253.sink.split ], [ 1, %.loopexit ]
  ret i32 %.0165
}

declare void @png_image_free(ptr noundef) local_unnamed_addr #2

declare void @png_destroy_gamma_table(ptr noundef) local_unnamed_addr #2

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @png_safe_error(ptr noundef, ptr noundef) #3

declare void @png_safe_warning(ptr noundef, ptr noundef) #2

declare noalias ptr @png_create_info_struct(ptr noundef) local_unnamed_addr #2

declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @png_set_benign_errors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @png_create_colormap_entry(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 65536) %5, i32 noundef range(i32 1, 4) %6) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !140    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !120  ; 2 uses
  %i.d = and i32 %i.c, 4
  %i.e = icmp ne i32 %i.d, 0                      ; 6 uses
  %i.f = select i1 %i.e, i32 2, i32 1
  %i.g = and i32 %i.c, 2
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ne i32 %2, %3
  %i.j = icmp ne i32 %3, %4
  %i.k = or i1 %i.i, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ] ; 3 uses
  %i.m = icmp ugt i32 %1, 255
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !109
  tail call void @png_error(ptr noundef %i.o, ptr noundef nonnull @.str.48) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i32 %6, 3
  br i1 %i.p, label %bb.f, label %set_file_encoding.exit

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !190  ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %set_file_encoding.exit

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !109  ; 2 uses
  %i.v = tail call i32 @png_resolve_file_gamma(ptr noundef %i.u) #13 ; 5 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @png_error(ptr noundef %i.u, ptr noundef nonnull @.str.50) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.x = tail call i32 @png_gamma_significant(i32 noundef %i.v) #13
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %set_file_encoding.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = add i32 %i.v, -10000001
  %or.cond.i.i = icmp ult i32 %i.y, -9999001
  br i1 %or.cond.i.i, label %set_file_encoding.exit.thread189, label %png_gamma_not_sRGB.exit.i

png_gamma_not_sRGB.exit.i:                        ; preds = %bb.j
  %i.z = mul nuw nsw i32 %i.v, 11
  %i.aa = add nuw nsw i32 %i.z, 2
  %i.ab = udiv i32 %i.aa, 5
  %i.ac = tail call i32 @png_gamma_significant(i32 noundef %i.ab) #13
  %.not10.i = icmp eq i32 %i.ac, 0
  br i1 %.not10.i, label %set_file_encoding.exit.thread189, label %bb.k

bb.k:                                             ; preds = %png_gamma_not_sRGB.exit.i
  store i32 3, ptr %i.q, align 8, !tbaa !190
  %i.ad = tail call i32 @png_reciprocal(i32 noundef %i.v) #13
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !191
  %.pre = load i32, ptr %i.q, align 8, !tbaa !190
  br label %set_file_encoding.exit

set_file_encoding.exit.thread189:                 ; preds = %bb.j, %png_gamma_not_sRGB.exit.i
  store i32 1, ptr %i.q, align 8, !tbaa !190
  br label %bb.p

set_file_encoding.exit.thread:                    ; preds = %bb.i
  store i32 4, ptr %i.q, align 8, !tbaa !190
  br label %bb.o

set_file_encoding.exit:                           ; preds = %bb.f, %bb.k, %bb.e
  %.0141 = phi i32 [ %6, %bb.e ], [ %i.r, %bb.f ], [ %.pre, %bb.k ] ; 2 uses
  switch i32 %.0141, label %.thread178 [
    i32 3, label %bb.l
    i32 4, label %bb.o
    i32 1, label %bb.p
    i32 2, label %.thread
  ]

bb.l:                                             ; preds = %set_file_encoding.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !191 ; 3 uses
  %i.ah = mul i32 %2, 257
  %i.ai = tail call zeroext i16 @png_gamma_16bit_correct(i32 noundef %i.ah, i32 noundef %i.ag) #13
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = mul i32 %3, 257
  %i.al = tail call zeroext i16 @png_gamma_16bit_correct(i32 noundef %i.ak, i32 noundef %i.ag) #13
  %i.am = zext i16 %i.al to i32                   ; 2 uses
  %i.an = mul i32 %4, 257
  %i.ao = tail call zeroext i16 @png_gamma_16bit_correct(i32 noundef %i.an, i32 noundef %i.ag) #13
  %i.ap = zext i16 %i.ao to i32                   ; 2 uses
  %or.cond = or i1 %i.e, %i.l
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = mul nuw nsw i32 %5, 257
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.ar = mul nuw nsw i32 %i.aj, 255              ; 2 uses
  %i.as = lshr i32 %i.ar, 15
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !154
  %i.aw = zext i16 %i.av to i32
  %i.ax = and i32 %i.ar, 32767
  %i.ay = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.at
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !47
  %i.ba = zext i8 %i.az to i32
  %i.bb = mul nuw nsw i32 %i.ax, %i.ba
  %i.bc = lshr i32 %i.bb, 12
  %i.bd = add nuw nsw i32 %i.bc, %i.aw
  %i.be = lshr i32 %i.bd, 8
  %i.bf = and i32 %i.be, 255
  %i.bg = mul nuw nsw i32 %i.am, 255              ; 2 uses
  %i.bh = lshr i32 %i.bg, 15
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !154
  %i.bl = zext i16 %i.bk to i32
  %i.bm = and i32 %i.bg, 32767
  %i.bn = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.bi
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !47
  %i.bp = zext i8 %i.bo to i32
  %i.bq = mul nuw nsw i32 %i.bm, %i.bp
  %i.br = lshr i32 %i.bq, 12
  %i.bs = add nuw nsw i32 %i.br, %i.bl
  %i.bt = lshr i32 %i.bs, 8
  %i.bu = and i32 %i.bt, 255
  %i.bv = mul nuw nsw i32 %i.ap, 255              ; 2 uses
  %i.bw = lshr i32 %i.bv, 15
  %i.bx = zext nneg i32 %i.bw to i64              ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !154
  %i.ca = zext i16 %i.bz to i32
  %i.cb = and i32 %i.bv, 32767
  %i.cc = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.bx
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !47
  %i.ce = zext i8 %i.cd to i32
  %i.cf = mul nuw nsw i32 %i.cb, %i.ce
  %i.cg = lshr i32 %i.cf, 12
  %i.ch = add nuw nsw i32 %i.cg, %i.ca
  %i.ci = lshr i32 %i.ch, 8
  %i.cj = and i32 %i.ci, 255
  br label %.thread178

bb.o:                                             ; preds = %set_file_encoding.exit.thread, %set_file_encoding.exit
  %i.ck = mul i32 %2, 257
  %i.cl = mul i32 %3, 257
  %i.cm = mul i32 %4, 257
  %i.cn = mul nuw nsw i32 %5, 257
  br label %.thread

bb.p:                                             ; preds = %set_file_encoding.exit.thread189, %set_file_encoding.exit
  %or.cond3 = or i1 %i.e, %i.l
  br i1 %or.cond3, label %bb.q, label %.thread178

bb.q:                                             ; preds = %bb.p
  %i.co = zext i32 %2 to i64
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_table, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !154
  %i.cr = zext i16 %i.cq to i32
  %i.cs = zext i32 %3 to i64
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_table, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !154
  %i.cv = zext i16 %i.cu to i32
  %i.cw = zext i32 %4 to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_table, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !154
  %i.cz = zext i16 %i.cy to i32
  %i.da = mul nuw nsw i32 %5, 257
  br label %.thread

.thread:                                          ; preds = %set_file_encoding.exit, %bb.m, %bb.q, %bb.o
  %.1143173 = phi i32 [ %5, %set_file_encoding.exit ], [ %i.aq, %bb.m ], [ %i.da, %bb.q ], [ %i.cn, %bb.o ] ; 4 uses
  %.1147172 = phi i32 [ %4, %set_file_encoding.exit ], [ %i.ap, %bb.m ], [ %i.cz, %bb.q ], [ %i.cm, %bb.o ] ; 3 uses
  %.1151171 = phi i32 [ %3, %set_file_encoding.exit ], [ %i.am, %bb.m ], [ %i.cv, %bb.q ], [ %i.cl, %bb.o ] ; 3 uses
  %.1156170 = phi i32 [ %2, %set_file_encoding.exit ], [ %i.aj, %bb.m ], [ %i.cr, %bb.q ], [ %i.ck, %bb.o ] ; 3 uses
  br i1 %i.l, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.thread
  %i.db = mul i32 %.1156170, 6968
  %i.dc = mul i32 %.1151171, 23434
  %i.dd = mul i32 %.1147172, 2366
  %i.de = add i32 %i.dc, %i.dd
  %i.df = add i32 %i.de, %i.db                    ; 2 uses
  br i1 %i.e, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dg = add i32 %i.df, 16384
  %i.dh = lshr i32 %i.dg, 15                      ; 3 uses
  br label %.thread178

bb.t:                                             ; preds = %bb.r
  %i.di = add i32 %i.df, 128
  %i.dj = lshr i32 %i.di, 8
  %i.dk = mul nuw i32 %i.dj, 255
  %i.dl = add nuw i32 %i.dk, 64                   ; 2 uses
  %i.dm = lshr i32 %i.dl, 7
  %i.dn = lshr i32 %i.dl, 22
  %i.do = zext nneg i32 %i.dn to i64              ; 2 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !154
  %i.dr = zext i16 %i.dq to i32
  %i.ds = and i32 %i.dm, 32767
  %i.dt = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.do
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !47
  %i.dv = zext i8 %i.du to i32
  %i.dw = mul nuw nsw i32 %i.ds, %i.dv
  %i.dx = lshr i32 %i.dw, 12
  %i.dy = add nuw nsw i32 %i.dx, %i.dr
  %i.dz = lshr i32 %i.dy, 8
  %i.ea = and i32 %i.dz, 255                      ; 3 uses
  %i.eb = mul nuw i32 %.1143173, 255
  %i.ec = add nuw i32 %i.eb, 32895
  %i.ed = lshr i32 %i.ec, 16
  br label %.thread178

bb.u:                                             ; preds = %.thread
  br i1 %i.e, label %.thread178, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ee = mul i32 %.1156170, 255                  ; 2 uses
  %i.ef = lshr i32 %i.ee, 15
  %i.eg = zext nneg i32 %i.ef to i64              ; 2 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.eg
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !154
  %i.ej = zext i16 %i.ei to i32
  %i.ek = and i32 %i.ee, 32767
  %i.el = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.eg
  %i.em = load i8, ptr %i.el, align 1, !tbaa !47
  %i.en = zext i8 %i.em to i32
  %i.eo = mul nuw nsw i32 %i.ek, %i.en
  %i.ep = lshr i32 %i.eo, 12
  %i.eq = add nuw nsw i32 %i.ep, %i.ej
  %i.er = lshr i32 %i.eq, 8
  %i.es = and i32 %i.er, 255
  %i.et = mul i32 %.1151171, 255                  ; 2 uses
  %i.eu = lshr i32 %i.et, 15
  %i.ev = zext nneg i32 %i.eu to i64              ; 2 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !154
  %i.ey = zext i16 %i.ex to i32
  %i.ez = and i32 %i.et, 32767
  %i.fa = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.ev
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !47
  %i.fc = zext i8 %i.fb to i32
  %i.fd = mul nuw nsw i32 %i.ez, %i.fc
  %i.fe = lshr i32 %i.fd, 12
  %i.ff = add nuw nsw i32 %i.fe, %i.ey
  %i.fg = lshr i32 %i.ff, 8
  %i.fh = and i32 %i.fg, 255
  %i.fi = mul i32 %.1147172, 255                  ; 2 uses
  %i.fj = lshr i32 %i.fi, 15
  %i.fk = zext nneg i32 %i.fj to i64              ; 2 uses
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !154
  %i.fn = zext i16 %i.fm to i32
  %i.fo = and i32 %i.fi, 32767
  %i.fp = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.fk
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !47
  %i.fr = zext i8 %i.fq to i32
  %i.fs = mul nuw nsw i32 %i.fo, %i.fr
  %i.ft = lshr i32 %i.fs, 12
  %i.fu = add nuw nsw i32 %i.ft, %i.fn
  %i.fv = lshr i32 %i.fu, 8
  %i.fw = and i32 %i.fv, 255
  %i.fx = mul nuw i32 %.1143173, 255
  %i.fy = add nuw i32 %i.fx, 32895
  %i.fz = lshr i32 %i.fy, 16
  br label %.thread178

.thread178:                                       ; preds = %set_file_encoding.exit, %bb.n, %bb.p, %bb.s, %bb.t, %bb.v, %bb.u
  %.2157 = phi i32 [ %2, %set_file_encoding.exit ], [ %i.es, %bb.v ], [ %.1156170, %bb.u ], [ %i.dh, %bb.s ], [ %i.ea, %bb.t ], [ %i.bf, %bb.n ], [ %2, %bb.p ] ; 3 uses
  %.2152 = phi i32 [ %3, %set_file_encoding.exit ], [ %i.fh, %bb.v ], [ %.1151171, %bb.u ], [ %i.dh, %bb.s ], [ %i.ea, %bb.t ], [ %i.bu, %bb.n ], [ %3, %bb.p ] ; 6 uses
  %.2148 = phi i32 [ %4, %set_file_encoding.exit ], [ %i.fw, %bb.v ], [ %.1147172, %bb.u ], [ %i.dh, %bb.s ], [ %i.ea, %bb.t ], [ %i.cj, %bb.n ], [ %4, %bb.p ] ; 3 uses
  %.3145 = phi i32 [ %5, %set_file_encoding.exit ], [ %i.fz, %bb.v ], [ %.1143173, %bb.u ], [ %.1143173, %bb.s ], [ %i.ed, %bb.t ], [ %5, %bb.n ], [ %5, %bb.p ] ; 12 uses
  %.4 = phi i32 [ %.0141, %set_file_encoding.exit ], [ 1, %bb.v ], [ 2, %bb.u ], [ 2, %bb.s ], [ 1, %bb.t ], [ 1, %bb.n ], [ 1, %bb.p ]
  %.not = icmp eq i32 %.4, %i.f
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread178
  %i.ga = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !109
  tail call void @png_error(ptr noundef %i.gb, ptr noundef nonnull @.str.49) #14
  unreachable

bb.x:                                             ; preds = %.thread178
  %i.gc = load i32, ptr %i.b, align 4, !tbaa !120 ; 3 uses
  %i.gd = and i32 %i.gc, 33
  %spec.select = icmp eq i32 %i.gd, 33            ; 7 uses
  %i.ge = zext i1 %spec.select to i32             ; 4 uses
  %i.gf = lshr i32 %i.gc, 3
  %i.gg = and i32 %i.gf, 2                        ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !144 ; 2 uses
  %i.gj = and i32 %i.gc, 3
  %i.gk = add nuw nsw i32 %i.gj, 1                ; 3 uses
  %i.gl = mul nuw nsw i32 %i.gk, %1
  %i.gm = zext nneg i32 %i.gl to i64              ; 2 uses
  br i1 %i.e, label %bb.y, label %bb.aj

bb.y:                                             ; preds = %bb.x
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.gm ; 6 uses
  switch i32 %i.gk, label %default.unreachable187 [
    i32 4, label %bb.z
    i32 3, label %bb.aa
    i32 2, label %bb.ae
    i32 1, label %bb.af
  ]

bb.z:                                             ; preds = %bb.y
  %i.go = trunc i32 %.3145 to i16
  %i.gp = select i1 %spec.select, i64 0, i64 3
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.gp
  store i16 %i.go, ptr %i.gq, align 2, !tbaa !154
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gr = icmp samesign ult i32 %.3145, 65535
  br i1 %i.gr, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %.not164 = icmp eq i32 %.3145, 0
  br i1 %.not164, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gs = mul i32 %.3145, %.2148
  %i.gt = add i32 %i.gs, 32767
  %i.gu = udiv i32 %i.gt, 65535
  %i.gv = mul i32 %.3145, %.2152
  %i.gw = add i32 %i.gv, 32767
  %i.gx = udiv i32 %i.gw, 65535
  %i.gy = mul i32 %.3145, %.2157
  %i.gz = add i32 %i.gy, 32767
  %i.ha = udiv i32 %i.gz, 65535
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  %.3158 = phi i32 [ %i.ha, %bb.ac ], [ %.2157, %bb.aa ], [ 0, %bb.ab ]
  %.3153 = phi i32 [ %i.gx, %bb.ac ], [ %.2152, %bb.aa ], [ 0, %bb.ab ]
  %.3149 = phi i32 [ %i.gu, %bb.ac ], [ %.2148, %bb.aa ], [ 0, %bb.ab ]
  %i.hb = trunc i32 %.3149 to i16
  %i.hc = or disjoint i32 %i.gg, %i.ge            ; 2 uses
  %i.hd = xor i32 %i.hc, 2
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.he
  store i16 %i.hb, ptr %i.hf, align 2, !tbaa !154
  %i.hg = trunc i32 %.3153 to i16
  %i.hh = select i1 %spec.select, i64 2, i64 1
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.hh
  store i16 %i.hg, ptr %i.hi, align 2, !tbaa !154
  %i.hj = trunc i32 %.3158 to i16
  %i.hk = zext nneg i32 %i.hc to i64
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.hk
  store i16 %i.hj, ptr %i.hl, align 2, !tbaa !154
  br label %bb.ao

bb.ae:                                            ; preds = %bb.y
  %i.hm = trunc i32 %.3145 to i16
  %i.hn = xor i32 %i.ge, 1
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.ho
  store i16 %i.hm, ptr %i.hp, align 2, !tbaa !154
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.y
  %i.hq = icmp samesign ult i32 %.3145, 65535
  br i1 %i.hq, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %.not163 = icmp eq i32 %.3145, 0
  br i1 %.not163, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hr = mul i32 %.3145, %.2152
  %i.hs = add i32 %i.hr, 32767
  %i.ht = udiv i32 %i.hs, 65535
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %.4154 = phi i32 [ %i.ht, %bb.ah ], [ %.2152, %bb.af ], [ 0, %bb.ag ]
  %i.hu = trunc i32 %.4154 to i16
  %i.hv = zext i1 %spec.select to i64
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.hv
  store i16 %i.hu, ptr %i.hw, align 2, !tbaa !154
  br label %bb.ao

default.unreachable187:                           ; preds = %bb.aj, %bb.y
  unreachable

bb.aj:                                            ; preds = %bb.x
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gm ; 6 uses
  switch i32 %i.gk, label %default.unreachable187 [
    i32 4, label %bb.ak
    i32 3, label %bb.al
    i32 2, label %bb.am
    i32 1, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.hy = trunc i32 %.3145 to i8
  %i.hz = select i1 %spec.select, i64 0, i64 3
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hz
  store i8 %i.hy, ptr %i.ia, align 1, !tbaa !47
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ib = trunc i32 %.2148 to i8
  %i.ic = or disjoint i32 %i.gg, %i.ge            ; 2 uses
  %i.id = xor i32 %i.ic, 2
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ie
  store i8 %i.ib, ptr %i.if, align 1, !tbaa !47
  %i.ig = trunc i32 %.2152 to i8
  %i.ih = select i1 %spec.select, i64 2, i64 1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ih
  store i8 %i.ig, ptr %i.ii, align 1, !tbaa !47
  %i.ij = trunc i32 %.2157 to i8
  %i.ik = zext nneg i32 %i.ic to i64
end_hunk_0
begin_hunk_1_@png_image_read_background:bb.a
bb.p:                                             ; preds = %bb.o
  %i.av = shl nuw nsw i32 1, %i.ai
  %i.aw = xor i32 %i.al, 1
  %i.ax = lshr i32 %.0191234, 1
  %i.ay = sub nsw i32 3, %i.ax
  %i.az = shl nuw nsw i32 %i.aw, %i.ay
  %i.ba = and i32 %i.az, 7
  %i.bb = icmp samesign ugt i32 %.0191234, 2
  %i.bc = add nsw i32 %.0191234, -1
  %i.bd = ashr i32 %i.bc, 1
  %i.be = lshr i32 8, %i.bd
  %i.bf = select i1 %i.bb, i32 %i.be, i32 8
  %i.bg = zext nneg i32 %i.aq to i64
  %i.bh = zext nneg i32 %i.av to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p
  %.0189 = phi i64 [ %i.bg, %bb.p ], [ 0, %bb.n ] ; 4 uses
  %.0188 = phi i64 [ %i.bh, %bb.p ], [ 1, %bb.n ] ; 2 uses
  %.0187 = phi i32 [ %i.bf, %bb.p ], [ 1, %bb.n ] ; 2 uses
  %.0185 = phi i32 [ %i.ba, %bb.p ], [ 0, %bb.n ] ; 4 uses
  %i.bi = load ptr, ptr %i.ab, align 8, !tbaa !145 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %.preheader, label %bb.v

.preheader:                                       ; preds = %bb.q
  %i.bk = icmp ult i32 %.0185, %i.g
  br i1 %i.bk, label %.lr.ph233.preheader, label %.loopexit

.lr.ph233.preheader:                              ; preds = %.preheader
  %i.bl = icmp samesign ult i64 %.0189, %i.ad
  br label %.lr.ph233

.lr.ph233:                                        ; preds = %.lr.ph233.preheader, %._crit_edge231
  %.1186232 = phi i32 [ %i.da, %._crit_edge231 ], [ %.0185, %.lr.ph233.preheader ] ; 2 uses
  %i.bm = load ptr, ptr %i.ac, align 8, !tbaa !176 ; 2 uses
  %i.bn = zext i32 %.1186232 to i64
  %i.bo = mul nsw i64 %i.aa, %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.y, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ad
  tail call void @png_read_row(ptr noundef nonnull %i.c, ptr noundef %i.bm, ptr noundef null)
  br i1 %i.bl, label %.lr.ph230.preheader, label %._crit_edge231

.lr.ph230.preheader:                              ; preds = %.lr.ph233
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.0189
  br label %.lr.ph230

.lr.ph230:                                        ; preds = %.lr.ph230.preheader, %bb.u
  %.0183228 = phi ptr [ %i.cy, %bb.u ], [ %i.br, %.lr.ph230.preheader ] ; 3 uses
  %.0184227 = phi ptr [ %i.cx, %bb.u ], [ %i.bm, %.lr.ph230.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0184227, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !47  ; 3 uses
  %i.bu = zext i8 %i.bt to i32                    ; 2 uses
  %.not205 = icmp eq i8 %i.bt, 0
  br i1 %.not205, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph230
  %i.bv = load i8, ptr %.0184227, align 1, !tbaa !47 ; 2 uses
  %.not206 = icmp eq i8 %i.bt, -1
  br i1 %.not206, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_table, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !154
  %i.bz = zext i16 %i.by to i32
  %i.ca = mul nuw nsw i32 %i.bz, %i.bu
  %i.cb = load i8, ptr %.0183228, align 1, !tbaa !47
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_table, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !154
  %i.cf = zext i16 %i.ce to i32
  %i.cg = xor i32 %i.bu, 255
  %i.ch = mul nuw nsw i32 %i.cg, %i.cf
  %i.ci = add nuw nsw i32 %i.ch, %i.ca            ; 2 uses
  %i.cj = lshr i32 %i.ci, 15
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !154
  %i.cn = zext i16 %i.cm to i32
  %i.co = and i32 %i.ci, 32767
  %i.cp = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.ck
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !47
  %i.cr = zext i8 %i.cq to i32
  %i.cs = mul nuw nsw i32 %i.co, %i.cr
  %i.ct = lshr i32 %i.cs, 12
  %i.cu = add nuw nsw i32 %i.ct, %i.cn
  %i.cv = lshr i32 %i.cu, 8
  %i.cw = trunc i32 %i.cv to i8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0182 = phi i8 [ %i.cw, %bb.s ], [ %i.bv, %bb.r ]
  store i8 %.0182, ptr %.0183228, align 1, !tbaa !47
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph230
  %i.cx = getelementptr inbounds nuw i8, ptr %.0184227, i64 2
  %i.cy = getelementptr inbounds nuw i8, ptr %.0183228, i64 %.0188 ; 2 uses
  %i.cz = icmp ult ptr %i.cy, %i.bq
  br i1 %i.cz, label %.lr.ph230, label %._crit_edge231, !llvm.loop !204

._crit_edge231:                                   ; preds = %bb.u, %.lr.ph233
  %i.da = add i32 %.1186232, %.0187               ; 2 uses
  %i.db = icmp ult i32 %i.da, %i.g
  br i1 %i.db, label %.lr.ph233, label %.loopexit, !llvm.loop !205

bb.v:                                             ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !146 ; 2 uses
  %i.de = icmp ult i32 %.0185, %i.g
  br i1 %i.de, label %.lr.ph226, label %.loopexit

.lr.ph226:                                        ; preds = %bb.v
  %i.df = zext i8 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_table, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !154
  %i.di = zext i16 %i.dh to i32
  %i.dj = icmp samesign ult i64 %.0189, %i.ad
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph226, %._crit_edge
  %.2224 = phi i32 [ %.0185, %.lr.ph226 ], [ %i.et, %._crit_edge ] ; 2 uses
  %i.dk = load ptr, ptr %i.ac, align 8, !tbaa !176 ; 2 uses
  %i.dl = zext i32 %.2224 to i64
  %i.dm = mul nsw i64 %i.aa, %i.dl
  %i.dn = getelementptr inbounds i8, ptr %i.y, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ad
  tail call void @png_read_row(ptr noundef nonnull %i.c, ptr noundef %i.dk, ptr noundef null)
  br i1 %i.dj, label %.lr.ph223.preheader, label %._crit_edge

.lr.ph223.preheader:                              ; preds = %bb.w
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.0189
  br label %.lr.ph223

.lr.ph223:                                        ; preds = %.lr.ph223.preheader, %bb.z
  %.0180222 = phi ptr [ %i.er, %bb.z ], [ %i.dp, %.lr.ph223.preheader ] ; 2 uses
  %.0181221 = phi ptr [ %i.eq, %bb.z ], [ %i.dk, %.lr.ph223.preheader ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0181221, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !47  ; 3 uses
  %i.ds = zext i8 %i.dr to i32                    ; 2 uses
  %.not203 = icmp eq i8 %i.dr, 0
  br i1 %.not203, label %bb.z, label %bb.x

bb.x:                                             ; preds = %.lr.ph223
  %i.dt = load i8, ptr %.0181221, align 1, !tbaa !47 ; 2 uses
  %.not204 = icmp eq i8 %i.dr, -1
  br i1 %.not204, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_table, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !154
  %i.dx = zext i16 %i.dw to i32
  %i.dy = mul nuw nsw i32 %i.dx, %i.ds
  %i.dz = xor i32 %i.ds, 255
  %i.ea = mul nuw nsw i32 %i.dz, %i.di
  %i.eb = add nuw nsw i32 %i.dy, %i.ea            ; 2 uses
  %i.ec = lshr i32 %i.eb, 15
  %i.ed = zext nneg i32 %i.ec to i64              ; 2 uses
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !154
  %i.eg = zext i16 %i.ef to i32
  %i.eh = and i32 %i.eb, 32767
  %i.ei = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.ed
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !47
  %i.ek = zext i8 %i.ej to i32
  %i.el = mul nuw nsw i32 %i.eh, %i.ek
  %i.em = lshr i32 %i.el, 12
  %i.en = add nuw nsw i32 %i.em, %i.eg
  %i.eo = lshr i32 %i.en, 8
  %i.ep = trunc i32 %i.eo to i8
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph223, %bb.x, %bb.y
  %storemerge = phi i8 [ %i.dt, %bb.x ], [ %i.ep, %bb.y ], [ %i.dd, %.lr.ph223 ]
  store i8 %storemerge, ptr %.0180222, align 1, !tbaa !47
  %i.eq = getelementptr inbounds nuw i8, ptr %.0181221, i64 2
  %i.er = getelementptr inbounds nuw i8, ptr %.0180222, i64 %.0188 ; 2 uses
  %i.es = icmp ult ptr %i.er, %i.do
  br i1 %i.es, label %.lr.ph223, label %._crit_edge, !llvm.loop !206

._crit_edge:                                      ; preds = %bb.z, %bb.w
  %i.et = add i32 %.2224, %.0187                  ; 2 uses
  %i.eu = icmp ult i32 %i.et, %i.g
  br i1 %i.eu, label %bb.w, label %.loopexit, !llvm.loop !207

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge231, %bb.v, %.preheader, %bb.o
  %i.ev = add nuw nsw i32 %.0191234, 1            ; 2 uses
  %exitcond241.not = icmp eq i32 %i.ev, %.0190
  br i1 %exitcond241.not, label %.loopexit211, label %bb.n, !llvm.loop !208

bb.aa:                                            ; preds = %bb.l
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !174 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !175
  %i.fa = sdiv i64 %i.ez, 2                       ; 2 uses
  %i.fb = trunc i32 %.fr236 to i1
  %i.fc = add nuw nsw i32 %i.r, 1                 ; 4 uses
  %i.fd = and i32 %.fr236, 33
  %or.cond208.not = icmp eq i32 %i.fd, 33         ; 2 uses
  %i.fe = shl i32 %i.i, %i.r
  %i.ff = zext i32 %i.fe to i64                   ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.fh = zext i1 %or.cond208.not to i64          ; 2 uses
  %1 = xor i1 %or.cond208.not, true
  %i.fi = zext i1 %1 to i64
  br i1 %i.fb, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.aa, %.loopexit212.us
  %.1192219.us = phi i32 [ %i.go, %.loopexit212.us ], [ 0, %bb.aa ] ; 8 uses
  %i.fj = load i8, ptr %i.t, align 4, !tbaa !42
  %i.fk = icmp eq i8 %i.fj, 1
  br i1 %i.fk, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.split.us
  %i.fl = icmp samesign ugt i32 %.1192219.us, 1
  %i.fm = sub nuw nsw i32 7, %.1192219.us
  %i.fn = lshr i32 %i.fm, 1                       ; 2 uses
  %i.fo = select i1 %i.fl, i32 %i.fn, i32 3       ; 2 uses
  %notmask.us = shl nsw i32 -1, %i.fo
  %i.fp = xor i32 %notmask.us, -1
  %i.fq = and i32 %.1192219.us, 1                 ; 2 uses
  %i.fr = add nuw nsw i32 %.1192219.us, 1
  %i.fs = lshr i32 %i.fr, 1
  %i.ft = sub nsw i32 3, %i.fs
  %i.fu = shl nuw nsw i32 %i.fq, %i.ft
  %i.fv = and i32 %i.fu, 7                        ; 2 uses
  %i.fw = add i32 %i.i, %i.fp
  %i.fx = sub i32 %i.fw, %i.fv
  %i.fy = lshr i32 %i.fx, %i.fo
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %.loopexit212.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ga = shl nuw nsw i32 %i.fv, %i.r
  %i.gb = shl nuw nsw i32 %i.fc, %i.fn
  %i.gc = xor i32 %i.fq, 1
  %i.gd = lshr i32 %.1192219.us, 1
  %i.ge = sub nsw i32 3, %i.gd
  %i.gf = shl nuw nsw i32 %i.gc, %i.ge
  %i.gg = and i32 %i.gf, 7
  %i.gh = icmp samesign ugt i32 %.1192219.us, 2
  %i.gi = add nsw i32 %.1192219.us, -1
  %i.gj = ashr i32 %i.gi, 1
  %i.gk = lshr i32 8, %i.gj
  %i.gl = select i1 %i.gh, i32 %i.gk, i32 8
  %i.gm = zext nneg i32 %i.ga to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.split.us
  %.0177.us = phi i64 [ %i.gm, %bb.ac ], [ 0, %.split.us ] ; 2 uses
  %.0176.us = phi i32 [ %i.gb, %bb.ac ], [ %i.fc, %.split.us ]
  %.0175.us = phi i32 [ %i.gl, %bb.ac ], [ 1, %.split.us ]
  %.0174.us = phi i32 [ %i.gg, %bb.ac ], [ 0, %.split.us ] ; 2 uses
  %i.gn = icmp ult i32 %.0174.us, %i.g
  br i1 %i.gn, label %.lr.ph218.us, label %.loopexit212.us

.loopexit212.us:                                  ; preds = %._crit_edge.split.us.us.us, %bb.ad, %bb.ab
  %i.go = add nuw nsw i32 %.1192219.us, 1         ; 2 uses
  %exitcond240.not = icmp eq i32 %i.go, %.0190
  br i1 %exitcond240.not, label %.loopexit211, label %.split.us, !llvm.loop !209

.lr.ph218.us:                                     ; preds = %bb.ad
  %i.gp = zext nneg i32 %.0176.us to i64
  %.pre242 = load ptr, ptr %i.fg, align 8, !tbaa !176
  %i.gq = icmp samesign ult i64 %.0177.us, %i.ff
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.split.us.us.us, %.lr.ph218.us
  %i.gr = phi ptr [ %.pre242, %.lr.ph218.us ], [ %i.gw, %._crit_edge.split.us.us.us ]
  %.1216.us.us = phi i32 [ %.0174.us, %.lr.ph218.us ], [ %i.gy, %._crit_edge.split.us.us.us ] ; 2 uses
  %i.gs = zext i32 %.1216.us.us to i64
  %i.gt = mul nsw i64 %i.fa, %i.gs
  %i.gu = getelementptr inbounds [2 x i8], ptr %i.ex, i64 %i.gt ; 2 uses
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %i.ff
  tail call void @png_read_row(ptr noundef nonnull %i.c, ptr noundef %i.gr, ptr noundef null)
  %i.gw = load ptr, ptr %i.fg, align 8, !tbaa !176 ; 2 uses
  br i1 %i.gq, label %.lr.ph.us.us.preheader, label %._crit_edge.split.us.us.us

.lr.ph.us.us.preheader:                           ; preds = %bb.ae
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %.0177.us
  br label %.lr.ph.us.us

._crit_edge.split.us.us.us:                       ; preds = %bb.ah, %bb.ae
  %i.gy = add i32 %.1216.us.us, %.0175.us         ; 2 uses
  %i.gz = icmp ult i32 %i.gy, %i.g
  br i1 %i.gz, label %bb.ae, label %.loopexit212.us, !llvm.loop !210

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %bb.ah
  %.0172215.us.us.us = phi ptr [ %i.hm, %bb.ah ], [ %i.gx, %.lr.ph.us.us.preheader ] ; 3 uses
  %.0173214.us.us.us = phi ptr [ %i.hl, %bb.ah ], [ %i.gw, %.lr.ph.us.us.preheader ] ; 3 uses
  %i.ha = load i16, ptr %.0173214.us.us.us, align 2, !tbaa !154 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.0173214.us.us.us, i64 2
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !154 ; 3 uses
  switch i16 %i.hc, label %bb.ag [
    i16 0, label %bb.af
    i16 -1, label %bb.ah
  ]

bb.af:                                            ; preds = %.lr.ph.us.us
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.us.us
  %i.hd = zext i16 %i.hc to i32
  %i.he = zext i16 %i.ha to i32
  %i.hf = mul nuw i32 %i.hd, %i.he
  %i.hg = add nuw i32 %i.hf, 32767
  %i.hh = udiv i32 %i.hg, 65535
  %i.hi = trunc nuw i32 %i.hh to i16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.lr.ph.us.us
  %.0.us.us.us = phi i16 [ %i.hi, %bb.ag ], [ %i.ha, %.lr.ph.us.us ], [ 0, %bb.af ]
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %.0172215.us.us.us, i64 %i.fh
  store i16 %.0.us.us.us, ptr %i.hj, align 2, !tbaa !154
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %.0172215.us.us.us, i64 %i.fi
  store i16 %i.hc, ptr %i.hk, align 2, !tbaa !154
  %i.hl = getelementptr inbounds nuw i8, ptr %.0173214.us.us.us, i64 4
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %.0172215.us.us.us, i64 %i.gp ; 2 uses
  %i.hn = icmp ult ptr %i.hm, %i.gv
  br i1 %i.hn, label %.lr.ph.us.us, label %._crit_edge.split.us.us.us, !llvm.loop !211

.split:                                           ; preds = %bb.aa, %.loopexit212
  %.1192219 = phi i32 [ %i.jq, %.loopexit212 ], [ 0, %bb.aa ] ; 8 uses
  %i.ho = load i8, ptr %i.t, align 4, !tbaa !42
  %i.hp = icmp eq i8 %i.ho, 1
  br i1 %i.hp, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.split
  %i.hq = icmp samesign ugt i32 %.1192219, 1
  %i.hr = sub nuw nsw i32 7, %.1192219
  %i.hs = lshr i32 %i.hr, 1                       ; 2 uses
  %i.ht = select i1 %i.hq, i32 %i.hs, i32 3       ; 2 uses
  %notmask = shl nsw i32 -1, %i.ht
  %i.hu = xor i32 %notmask, -1
  %i.hv = and i32 %.1192219, 1                    ; 2 uses
  %i.hw = add nuw nsw i32 %.1192219, 1
  %i.hx = lshr i32 %i.hw, 1
  %i.hy = sub nsw i32 3, %i.hx
  %i.hz = shl nuw nsw i32 %i.hv, %i.hy
  %i.ia = and i32 %i.hz, 7                        ; 2 uses
  %i.ib = add i32 %i.i, %i.hu
  %i.ic = sub i32 %i.ib, %i.ia
  %i.id = lshr i32 %i.ic, %i.ht
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %.loopexit212, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.if = shl nuw nsw i32 %i.fc, %i.hs
  %i.ig = xor i32 %i.hv, 1
  %i.ih = lshr i32 %.1192219, 1
  %i.ii = sub nsw i32 3, %i.ih
  %i.ij = shl nuw nsw i32 %i.ig, %i.ii
  %i.ik = and i32 %i.ij, 7
  %i.il = icmp samesign ugt i32 %.1192219, 2
  %i.im = add nsw i32 %.1192219, -1
  %i.in = ashr i32 %i.im, 1
  %i.io = lshr i32 8, %i.in
  %i.ip = select i1 %i.il, i32 %i.io, i32 8
  %i.iq = zext nneg i32 %i.ia to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.split, %bb.aj
  %.0177 = phi i64 [ %i.iq, %bb.aj ], [ 0, %.split ] ; 2 uses
  %.0176 = phi i32 [ %i.if, %bb.aj ], [ %i.fc, %.split ]
  %.0175 = phi i32 [ %i.ip, %bb.aj ], [ 1, %.split ]
  %.0174 = phi i32 [ %i.ik, %bb.aj ], [ 0, %.split ] ; 2 uses
  %i.ir = icmp ult i32 %.0174, %i.g
  br i1 %i.ir, label %.lr.ph218, label %.loopexit212

.lr.ph218:                                        ; preds = %bb.ak
  %i.is = zext nneg i32 %.0176 to i64
  %.pre = load ptr, ptr %i.fg, align 8, !tbaa !176
  %i.it = icmp samesign ult i64 %.0177, %i.ff
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph218, %._crit_edge.split
  %i.iu = phi ptr [ %.pre, %.lr.ph218 ], [ %i.iz, %._crit_edge.split ]
  %.1216 = phi i32 [ %.0174, %.lr.ph218 ], [ %i.jo, %._crit_edge.split ] ; 2 uses
  %i.iv = zext i32 %.1216 to i64
  %i.iw = mul nsw i64 %i.fa, %i.iv
  %i.ix = getelementptr inbounds [2 x i8], ptr %i.ex, i64 %i.iw ; 2 uses
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.ix, i64 %i.ff
  tail call void @png_read_row(ptr noundef nonnull %i.c, ptr noundef %i.iu, ptr noundef null)
  %i.iz = load ptr, ptr %i.fg, align 8, !tbaa !176 ; 2 uses
  br i1 %i.it, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %bb.al
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.ix, i64 %.0177
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ao
  %.0172215 = phi ptr [ %i.jm, %bb.ao ], [ %i.ja, %.lr.ph.preheader ] ; 2 uses
  %.0173214 = phi ptr [ %i.jl, %bb.ao ], [ %i.iz, %.lr.ph.preheader ] ; 3 uses
  %i.jb = load i16, ptr %.0173214, align 2, !tbaa !154 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.0173214, i64 2
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !154 ; 2 uses
  switch i16 %i.jd, label %bb.am [
    i16 0, label %bb.an
    i16 -1, label %bb.ao
  ]

bb.am:                                            ; preds = %.lr.ph
  %i.je = zext i16 %i.jd to i32
  %i.jf = zext i16 %i.jb to i32
end_hunk_1
