Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio_j2k?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dt_print_ext

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @opj_create_decompress(i32 noundef) local_unnamed_addr #3

declare i32 @opj_set_error_handler(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal void @error_callback(ptr noundef %0, ptr nofree noundef captures(none) %1) #5 {
bb.a:
  %i.a = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef %0) #15 ; 0 uses
  ret void
}

declare i32 @opj_codec_set_threads(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @opj_destroy_codec(ptr noundef) local_unnamed_addr #3

declare i32 @opj_setup_decoder(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @opj_stream_create_default_file_stream(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @opj_read_header(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @opj_stream_destroy(ptr noundef) local_unnamed_addr #3

declare void @opj_image_destroy(ptr noundef) local_unnamed_addr #3

declare i32 @opj_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @opj_end_decompress(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @color_sycc_to_rgb(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp ult i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 2, ptr %i.d, align 4, !tbaa !17
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 14 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !28
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %.thread27

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  switch i32 %i.j, label %.thread27 [
    i32 2, label %bb.e
    i32 1, label %bb.o
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.l = load i32, ptr %i.k, align 8, !tbaa !28
  %i.m = icmp eq i32 %i.l, 2
  br i1 %i.m, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !29
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.r = load i32, ptr %i.q, align 4, !tbaa !29
  %i.s = icmp eq i32 %i.r, 2
  br i1 %i.s, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 132
  %i.u = load i32, ptr %i.t, align 4, !tbaa !29
  %i.v = icmp eq i32 %i.u, 2
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @sycc420_to_rgb(ptr noundef %0)
  br label %bb.t

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.x = load i32, ptr %i.w, align 8, !tbaa !28
  %i.y = icmp eq i32 %i.x, 2
  br i1 %i.y, label %bb.k, label %.thread27

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !29
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.l, label %.thread27

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !29
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.m, label %.thread27

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 132
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !29
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.n, label %.thread27

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @sycc422_to_rgb(ptr noundef %0)
  br label %bb.t

bb.o:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !28
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.p, label %.thread27

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !29
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.q, label %.thread27

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !29
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.r, label %.thread27

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 132
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !29
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.s, label %.thread27

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @sycc444_to_rgb(ptr noundef %0)
  br label %bb.t

.thread27:                                        ; preds = %bb.d, %bb.j, %bb.k, %bb.l, %bb.m, %bb.c, %bb.r, %bb.q, %bb.p, %bb.o
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 557) #15
  br label %bb.u

bb.t:                                             ; preds = %bb.n, %bb.s, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.au, align 4, !tbaa !17
  br label %bb.u

bb.u:                                             ; preds = %.thread27, %bb.t, %bb.b
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_try_malloc0(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @dt_mipmap_cache_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @sycc420_to_rgb(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = add i32 %i.d, -1
  %i.f = shl nuw i32 1, %i.e                      ; 4 uses
  %notmask = shl nsw i32 -1, %i.d
  %i.g = xor i32 %notmask, -1                     ; 25 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !22   ; 5 uses
  %i.j = zext i32 %i.i to i64                     ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !23   ; 4 uses
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = mul nuw i64 %i.m, %i.j                   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25   ; 18 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25   ; 15 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25   ; 16 uses
  %i.u = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 27 uses
  %i.v = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 27 uses
  %i.w = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 27 uses
  %i.x = icmp ne ptr %i.u, null
  %i.y = icmp ne ptr %i.v, null
  %or.cond = and i1 %i.x, %i.y
  %i.z = icmp ne ptr %i.w, null
  %or.cond3 = and i1 %or.cond, %i.z
  br i1 %or.cond3, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.aa = icmp ne i32 %i.l, 0
  %i.ab = icmp ne i32 %i.i, 0
  %or.cond135 = and i1 %i.aa, %i.ab
  br i1 %or.cond135, label %.lr.ph.preheader, label %._crit_edge134.split

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ac = add nsw i64 %i.m, -1
  %i.ad = lshr i64 %i.ac, 1                       ; 3 uses
  %i.ae = mul i64 %i.ad, %i.j
  %i.af = add nsw i64 %i.j, -1
  %i.ag = lshr i64 %i.af, 1                       ; 3 uses
  %i.ah = shl i64 %i.ag, 3
  %i.ai = add i64 %i.ae, %i.ag
  %i.aj = shl i64 %i.ai, 3                        ; 2 uses
  %i.ak = or disjoint i64 %i.aj, 4                ; 3 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ak ; 15 uses
  %scevgep139 = getelementptr i8, ptr %i.u, i64 4 ; 15 uses
  %i.al = add i64 %i.aj, 8                        ; 4 uses
  %scevgep140 = getelementptr i8, ptr %i.u, i64 %i.al ; 15 uses
  %i.am = shl nuw nsw i64 %i.j, 2                 ; 5 uses
  %scevgep141 = getelementptr i8, ptr %i.u, i64 %i.am ; 15 uses
  %i.an = shl i64 %i.ad, 3
  %i.ao = or disjoint i64 %i.an, 4
  %i.ap = mul i64 %i.ao, %i.j
  %i.aq = add i64 %i.ap, %i.ah                    ; 2 uses
  %i.ar = add i64 %i.aq, 4                        ; 3 uses
  %scevgep142 = getelementptr i8, ptr %i.u, i64 %i.ar ; 15 uses
  %i.as = add nuw nsw i64 %i.am, 4                ; 3 uses
  %scevgep143 = getelementptr i8, ptr %i.u, i64 %i.as ; 15 uses
  %i.at = add i64 %i.aq, 8                        ; 4 uses
  %scevgep144 = getelementptr i8, ptr %i.u, i64 %i.at ; 15 uses
  %scevgep145 = getelementptr i8, ptr %i.v, i64 %i.ak ; 15 uses
  %scevgep144.a = getelementptr i8, ptr %i.v, i64 4 ; 15 uses
  %scevgep145.a = getelementptr i8, ptr %i.v, i64 %i.al ; 15 uses
  %scevgep148 = getelementptr i8, ptr %i.v, i64 %i.am ; 15 uses
  %scevgep149 = getelementptr i8, ptr %i.v, i64 %i.ar ; 15 uses
  %scevgep146 = getelementptr i8, ptr %i.v, i64 %i.as ; 15 uses
  %scevgep147 = getelementptr i8, ptr %i.v, i64 %i.at ; 15 uses
  %scevgep148.a = getelementptr i8, ptr %i.w, i64 %i.ak ; 15 uses
  %scevgep149.a = getelementptr i8, ptr %i.w, i64 4 ; 15 uses
  %scevgep150 = getelementptr i8, ptr %i.w, i64 %i.al ; 15 uses
  %scevgep151 = getelementptr i8, ptr %i.w, i64 %i.am ; 15 uses
  %scevgep152 = getelementptr i8, ptr %i.w, i64 %i.ar ; 15 uses
  %scevgep157 = getelementptr i8, ptr %i.w, i64 %i.as ; 15 uses
  %scevgep158 = getelementptr i8, ptr %i.w, i64 %i.at ; 15 uses
  %1 = mul i64 %i.ad, %i.j
  %2 = add i64 %1, %i.ag
  %3 = shl i64 %2, 2
  %4 = add i64 %3, 4                              ; 2 uses
  %scevgep153 = getelementptr i8, ptr %i.r, i64 %4 ; 12 uses
  %scevgep154 = getelementptr i8, ptr %i.t, i64 %4 ; 12 uses
  %scevgep155 = getelementptr i8, ptr %i.p, i64 %i.am ; 12 uses
  %scevgep156 = getelementptr i8, ptr %i.p, i64 %i.at ; 12 uses
  %scevgep157.a = getelementptr i8, ptr %i.p, i64 %i.al ; 12 uses
  %5 = add nsw i64 %i.j, -1
  %6 = lshr i64 %5, 1
  %i.au = add nuw i64 %6, 1                       ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 63
  %bound0 = icmp ult ptr %i.u, %scevgep140
  %bound1 = icmp ult ptr %scevgep139, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0164 = icmp ult ptr %i.u, %scevgep142
  %bound1165 = icmp ult ptr %scevgep141, %scevgep
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx = or i1 %found.conflict, %found.conflict166
  %bound0167 = icmp ult ptr %i.u, %scevgep144
  %bound1168 = icmp ult ptr %scevgep143, %scevgep
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx170 = or i1 %conflict.rdx, %found.conflict169
  %bound0171 = icmp ult ptr %i.u, %scevgep145
  %bound1172 = icmp ult ptr %i.v, %scevgep
  %found.conflict173 = and i1 %bound0171, %bound1172
  %conflict.rdx174 = or i1 %conflict.rdx170, %found.conflict173
  %bound0175 = icmp ult ptr %i.u, %scevgep145.a
  %bound1176 = icmp ult ptr %scevgep144.a, %scevgep
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx178 = or i1 %conflict.rdx174, %found.conflict177
  %bound0179 = icmp ult ptr %i.u, %scevgep149
  %bound1180 = icmp ult ptr %scevgep148, %scevgep
  %found.conflict181 = and i1 %bound0179, %bound1180
  %conflict.rdx182 = or i1 %conflict.rdx178, %found.conflict181
  %bound0183 = icmp ult ptr %i.u, %scevgep147
  %bound1184 = icmp ult ptr %scevgep146, %scevgep
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %i.u, %scevgep148.a
  %bound1188 = icmp ult ptr %i.w, %scevgep
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx190 = or i1 %conflict.rdx186, %found.conflict189
  %bound0191 = icmp ult ptr %i.u, %scevgep150
  %bound1192 = icmp ult ptr %scevgep149.a, %scevgep
  %found.conflict193 = and i1 %bound0191, %bound1192
  %conflict.rdx194 = or i1 %conflict.rdx190, %found.conflict193
  %bound0195 = icmp ult ptr %i.u, %scevgep152
  %bound1196 = icmp ult ptr %scevgep151, %scevgep
  %found.conflict197 = and i1 %bound0195, %bound1196
  %conflict.rdx198 = or i1 %conflict.rdx194, %found.conflict197
  %bound0199 = icmp ult ptr %i.u, %scevgep158
  %bound1200 = icmp ult ptr %scevgep157, %scevgep
  %found.conflict201 = and i1 %bound0199, %bound1200
  %conflict.rdx202 = or i1 %conflict.rdx198, %found.conflict201
  %bound0203 = icmp ult ptr %i.u, %scevgep153
  %bound1204 = icmp ult ptr %i.r, %scevgep
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx206 = or i1 %conflict.rdx202, %found.conflict205
  %bound0207 = icmp ult ptr %i.u, %scevgep154
  %bound1208 = icmp ult ptr %i.t, %scevgep
  %found.conflict209 = and i1 %bound0207, %bound1208
  %conflict.rdx210 = or i1 %conflict.rdx206, %found.conflict209
  %bound0211 = icmp ult ptr %i.u, %scevgep156
  %bound1212 = icmp ult ptr %scevgep155, %scevgep
  %found.conflict213 = and i1 %bound0211, %bound1212
  %conflict.rdx214 = or i1 %conflict.rdx210, %found.conflict213
  %bound0215 = icmp ult ptr %i.u, %scevgep157.a
  %bound1216 = icmp ult ptr %i.p, %scevgep
  %found.conflict217 = and i1 %bound0215, %bound1216
  %conflict.rdx218 = or i1 %conflict.rdx214, %found.conflict217
  %bound0219 = icmp ult ptr %scevgep139, %scevgep142
  %bound1220 = icmp ult ptr %scevgep141, %scevgep140
  %found.conflict221 = and i1 %bound0219, %bound1220
  %conflict.rdx222 = or i1 %conflict.rdx218, %found.conflict221
  %bound0223 = icmp ult ptr %scevgep139, %scevgep144
  %bound1224 = icmp ult ptr %scevgep143, %scevgep140
  %found.conflict225 = and i1 %bound0223, %bound1224
  %conflict.rdx226 = or i1 %conflict.rdx222, %found.conflict225
  %bound0227 = icmp ult ptr %scevgep139, %scevgep145
  %bound1228 = icmp ult ptr %i.v, %scevgep140
  %found.conflict229 = and i1 %bound0227, %bound1228
  %conflict.rdx230 = or i1 %conflict.rdx226, %found.conflict229
  %bound0231 = icmp ult ptr %scevgep139, %scevgep145.a
  %bound1232 = icmp ult ptr %scevgep144.a, %scevgep140
  %found.conflict233 = and i1 %bound0231, %bound1232
  %conflict.rdx234 = or i1 %conflict.rdx230, %found.conflict233
  %bound0235 = icmp ult ptr %scevgep139, %scevgep149
  %bound1236 = icmp ult ptr %scevgep148, %scevgep140
  %found.conflict237 = and i1 %bound0235, %bound1236
  %conflict.rdx238 = or i1 %conflict.rdx234, %found.conflict237
  %bound0239 = icmp ult ptr %scevgep139, %scevgep147
  %bound1240 = icmp ult ptr %scevgep146, %scevgep140
  %found.conflict241 = and i1 %bound0239, %bound1240
  %conflict.rdx242 = or i1 %conflict.rdx238, %found.conflict241
  %bound0243 = icmp ult ptr %scevgep139, %scevgep148.a
  %bound1244 = icmp ult ptr %i.w, %scevgep140
  %found.conflict245 = and i1 %bound0243, %bound1244
  %conflict.rdx246 = or i1 %conflict.rdx242, %found.conflict245
  %bound0247 = icmp ult ptr %scevgep139, %scevgep150
  %bound1248 = icmp ult ptr %scevgep149.a, %scevgep140
  %found.conflict249 = and i1 %bound0247, %bound1248
  %conflict.rdx250 = or i1 %conflict.rdx246, %found.conflict249
  %bound0251 = icmp ult ptr %scevgep139, %scevgep152
  %bound1252 = icmp ult ptr %scevgep151, %scevgep140
  %found.conflict253 = and i1 %bound0251, %bound1252
  %conflict.rdx254 = or i1 %conflict.rdx250, %found.conflict253
  %bound0255 = icmp ult ptr %scevgep139, %scevgep158
  %bound1256 = icmp ult ptr %scevgep157, %scevgep140
  %found.conflict257 = and i1 %bound0255, %bound1256
  %conflict.rdx258 = or i1 %conflict.rdx254, %found.conflict257
  %bound0259 = icmp ult ptr %scevgep139, %scevgep153
  %bound1260 = icmp ult ptr %i.r, %scevgep140
  %found.conflict261 = and i1 %bound0259, %bound1260
  %conflict.rdx262 = or i1 %conflict.rdx258, %found.conflict261
  %bound0263 = icmp ult ptr %scevgep139, %scevgep154
  %bound1264 = icmp ult ptr %i.t, %scevgep140
  %found.conflict265 = and i1 %bound0263, %bound1264
  %conflict.rdx266 = or i1 %conflict.rdx262, %found.conflict265
  %bound0267 = icmp ult ptr %scevgep139, %scevgep156
  %bound1268 = icmp ult ptr %scevgep155, %scevgep140
  %found.conflict269 = and i1 %bound0267, %bound1268
  %conflict.rdx270 = or i1 %conflict.rdx266, %found.conflict269
  %bound0271 = icmp ult ptr %scevgep139, %scevgep157.a
  %bound1272 = icmp ult ptr %i.p, %scevgep140
  %found.conflict273 = and i1 %bound0271, %bound1272
  %conflict.rdx274 = or i1 %conflict.rdx270, %found.conflict273
  %bound0275 = icmp ult ptr %scevgep141, %scevgep144
  %bound1276 = icmp ult ptr %scevgep143, %scevgep142
  %found.conflict277 = and i1 %bound0275, %bound1276
  %conflict.rdx278 = or i1 %conflict.rdx274, %found.conflict277
  %bound0279 = icmp ult ptr %scevgep141, %scevgep145
  %bound1280 = icmp ult ptr %i.v, %scevgep142
  %found.conflict281 = and i1 %bound0279, %bound1280
  %conflict.rdx282 = or i1 %conflict.rdx278, %found.conflict281
  %bound0283 = icmp ult ptr %scevgep141, %scevgep145.a
  %bound1284 = icmp ult ptr %scevgep144.a, %scevgep142
  %found.conflict285 = and i1 %bound0283, %bound1284
  %conflict.rdx286 = or i1 %conflict.rdx282, %found.conflict285
  %bound0287 = icmp ult ptr %scevgep141, %scevgep149
  %bound1288 = icmp ult ptr %scevgep148, %scevgep142
  %found.conflict289 = and i1 %bound0287, %bound1288
  %conflict.rdx290 = or i1 %conflict.rdx286, %found.conflict289
  %bound0291 = icmp ult ptr %scevgep141, %scevgep147
  %bound1292 = icmp ult ptr %scevgep146, %scevgep142
  %found.conflict293 = and i1 %bound0291, %bound1292
  %conflict.rdx294 = or i1 %conflict.rdx290, %found.conflict293
  %bound0295 = icmp ult ptr %scevgep141, %scevgep148.a
  %bound1296 = icmp ult ptr %i.w, %scevgep142
  %found.conflict297 = and i1 %bound0295, %bound1296
  %conflict.rdx298 = or i1 %conflict.rdx294, %found.conflict297
  %bound0299 = icmp ult ptr %scevgep141, %scevgep150
  %bound1300 = icmp ult ptr %scevgep149.a, %scevgep142
  %found.conflict301 = and i1 %bound0299, %bound1300
  %conflict.rdx302 = or i1 %conflict.rdx298, %found.conflict301
  %bound0303 = icmp ult ptr %scevgep141, %scevgep152
  %bound1304 = icmp ult ptr %scevgep151, %scevgep142
  %found.conflict305 = and i1 %bound0303, %bound1304
  %conflict.rdx306 = or i1 %conflict.rdx302, %found.conflict305
  %bound0307 = icmp ult ptr %scevgep141, %scevgep158
  %bound1308 = icmp ult ptr %scevgep157, %scevgep142
  %found.conflict309 = and i1 %bound0307, %bound1308
  %conflict.rdx310 = or i1 %conflict.rdx306, %found.conflict309
  %bound0311 = icmp ult ptr %scevgep141, %scevgep153
  %bound1312 = icmp ult ptr %i.r, %scevgep142
  %found.conflict313 = and i1 %bound0311, %bound1312
  %conflict.rdx314 = or i1 %conflict.rdx310, %found.conflict313
  %bound0315 = icmp ult ptr %scevgep141, %scevgep154
  %bound1316 = icmp ult ptr %i.t, %scevgep142
  %found.conflict317 = and i1 %bound0315, %bound1316
  %conflict.rdx318 = or i1 %conflict.rdx314, %found.conflict317
  %bound0319 = icmp ult ptr %scevgep141, %scevgep156
  %bound1320 = icmp ult ptr %scevgep155, %scevgep142
  %found.conflict321 = and i1 %bound0319, %bound1320
  %conflict.rdx322 = or i1 %conflict.rdx318, %found.conflict321
  %bound0323 = icmp ult ptr %scevgep141, %scevgep157.a
  %bound1324 = icmp ult ptr %i.p, %scevgep142
  %found.conflict325 = and i1 %bound0323, %bound1324
  %conflict.rdx326 = or i1 %conflict.rdx322, %found.conflict325
  %bound0327 = icmp ult ptr %scevgep143, %scevgep145
  %bound1328 = icmp ult ptr %i.v, %scevgep144
  %found.conflict329 = and i1 %bound0327, %bound1328
  %conflict.rdx330 = or i1 %conflict.rdx326, %found.conflict329
  %bound0331 = icmp ult ptr %scevgep143, %scevgep145.a
  %bound1332 = icmp ult ptr %scevgep144.a, %scevgep144
  %found.conflict333 = and i1 %bound0331, %bound1332
  %conflict.rdx334 = or i1 %conflict.rdx330, %found.conflict333
  %bound0335 = icmp ult ptr %scevgep143, %scevgep149
  %bound1336 = icmp ult ptr %scevgep148, %scevgep144
  %found.conflict337 = and i1 %bound0335, %bound1336
  %conflict.rdx338 = or i1 %conflict.rdx334, %found.conflict337
  %bound0339 = icmp ult ptr %scevgep143, %scevgep147
  %bound1340 = icmp ult ptr %scevgep146, %scevgep144
  %found.conflict341 = and i1 %bound0339, %bound1340
  %conflict.rdx342 = or i1 %conflict.rdx338, %found.conflict341
  %bound0343 = icmp ult ptr %scevgep143, %scevgep148.a
  %bound1344 = icmp ult ptr %i.w, %scevgep144
  %found.conflict345 = and i1 %bound0343, %bound1344
  %conflict.rdx346 = or i1 %conflict.rdx342, %found.conflict345
  %bound0347 = icmp ult ptr %scevgep143, %scevgep150
  %bound1348 = icmp ult ptr %scevgep149.a, %scevgep144
  %found.conflict349 = and i1 %bound0347, %bound1348
  %conflict.rdx350 = or i1 %conflict.rdx346, %found.conflict349
  %bound0351 = icmp ult ptr %scevgep143, %scevgep152
  %bound1352 = icmp ult ptr %scevgep151, %scevgep144
  %found.conflict353 = and i1 %bound0351, %bound1352
  %conflict.rdx354 = or i1 %conflict.rdx350, %found.conflict353
  %bound0355 = icmp ult ptr %scevgep143, %scevgep158
  %bound1356 = icmp ult ptr %scevgep157, %scevgep144
  %found.conflict357 = and i1 %bound0355, %bound1356
  %conflict.rdx358 = or i1 %conflict.rdx354, %found.conflict357
  %bound0359 = icmp ult ptr %scevgep143, %scevgep153
  %bound1360 = icmp ult ptr %i.r, %scevgep144
  %found.conflict361 = and i1 %bound0359, %bound1360
  %conflict.rdx362 = or i1 %conflict.rdx358, %found.conflict361
  %bound0363 = icmp ult ptr %scevgep143, %scevgep154
  %bound1364 = icmp ult ptr %i.t, %scevgep144
  %found.conflict365 = and i1 %bound0363, %bound1364
  %conflict.rdx366 = or i1 %conflict.rdx362, %found.conflict365
  %bound0367 = icmp ult ptr %scevgep143, %scevgep156
  %bound1368 = icmp ult ptr %scevgep155, %scevgep144
  %found.conflict369 = and i1 %bound0367, %bound1368
  %conflict.rdx370 = or i1 %conflict.rdx366, %found.conflict369
  %bound0371 = icmp ult ptr %scevgep143, %scevgep157.a
  %bound1372 = icmp ult ptr %i.p, %scevgep144
  %found.conflict373 = and i1 %bound0371, %bound1372
  %conflict.rdx374 = or i1 %conflict.rdx370, %found.conflict373
  %bound0375 = icmp ult ptr %i.v, %scevgep145.a
  %bound1376 = icmp ult ptr %scevgep144.a, %scevgep145
  %found.conflict377 = and i1 %bound0375, %bound1376
  %conflict.rdx378 = or i1 %conflict.rdx374, %found.conflict377
  %bound0379 = icmp ult ptr %i.v, %scevgep149
  %bound1380 = icmp ult ptr %scevgep148, %scevgep145
  %found.conflict381 = and i1 %bound0379, %bound1380
  %conflict.rdx382 = or i1 %conflict.rdx378, %found.conflict381
  %bound0383 = icmp ult ptr %i.v, %scevgep147
  %bound1384 = icmp ult ptr %scevgep146, %scevgep145
  %found.conflict385 = and i1 %bound0383, %bound1384
  %conflict.rdx386 = or i1 %conflict.rdx382, %found.conflict385
  %bound0387 = icmp ult ptr %i.v, %scevgep148.a
  %bound1388 = icmp ult ptr %i.w, %scevgep145
  %found.conflict389 = and i1 %bound0387, %bound1388
  %conflict.rdx390 = or i1 %conflict.rdx386, %found.conflict389
  %bound0391 = icmp ult ptr %i.v, %scevgep150
  %bound1392 = icmp ult ptr %scevgep149.a, %scevgep145
  %found.conflict393 = and i1 %bound0391, %bound1392
  %conflict.rdx394 = or i1 %conflict.rdx390, %found.conflict393
  %bound0395 = icmp ult ptr %i.v, %scevgep152
  %bound1396 = icmp ult ptr %scevgep151, %scevgep145
  %found.conflict397 = and i1 %bound0395, %bound1396
  %conflict.rdx398 = or i1 %conflict.rdx394, %found.conflict397
  %bound0399 = icmp ult ptr %i.v, %scevgep158
  %bound1400 = icmp ult ptr %scevgep157, %scevgep145
  %found.conflict401 = and i1 %bound0399, %bound1400
  %conflict.rdx402 = or i1 %conflict.rdx398, %found.conflict401
  %bound0403 = icmp ult ptr %i.v, %scevgep153
  %bound1404 = icmp ult ptr %i.r, %scevgep145
  %found.conflict405 = and i1 %bound0403, %bound1404
  %conflict.rdx406 = or i1 %conflict.rdx402, %found.conflict405
  %bound0407 = icmp ult ptr %i.v, %scevgep154
  %bound1408 = icmp ult ptr %i.t, %scevgep145
  %found.conflict409 = and i1 %bound0407, %bound1408
  %conflict.rdx410 = or i1 %conflict.rdx406, %found.conflict409
  %bound0411 = icmp ult ptr %i.v, %scevgep156
  %bound1412 = icmp ult ptr %scevgep155, %scevgep145
  %found.conflict413 = and i1 %bound0411, %bound1412
  %conflict.rdx414 = or i1 %conflict.rdx410, %found.conflict413
  %bound0415 = icmp ult ptr %i.v, %scevgep157.a
  %min.iters.check.a = icmp ult ptr %i.p, %scevgep145
  %found.conflict417 = and i1 %bound0415, %min.iters.check.a
  %conflict.rdx418 = or i1 %conflict.rdx414, %found.conflict417
  %bound0419 = icmp ult ptr %scevgep144.a, %scevgep149
  %bound1420 = icmp ult ptr %scevgep148, %scevgep145.a
  %found.conflict421 = and i1 %bound0419, %bound1420
  %conflict.rdx422 = or i1 %conflict.rdx418, %found.conflict421
  %bound0423 = icmp ult ptr %scevgep144.a, %scevgep147
  %bound1424 = icmp ult ptr %scevgep146, %scevgep145.a
  %found.conflict425 = and i1 %bound0423, %bound1424
  %conflict.rdx426 = or i1 %conflict.rdx422, %found.conflict425
  %bound0427 = icmp ult ptr %scevgep144.a, %scevgep148.a
  %bound1428 = icmp ult ptr %i.w, %scevgep145.a
  %found.conflict429 = and i1 %bound0427, %bound1428
  %conflict.rdx430 = or i1 %conflict.rdx426, %found.conflict429
  %bound0207.a = icmp ult ptr %scevgep144.a, %scevgep150
  %bound1208.a = icmp ult ptr %scevgep149.a, %scevgep145.a
  %found.conflict209.a = and i1 %bound0207.a, %bound1208.a
  %conflict.rdx434 = or i1 %conflict.rdx430, %found.conflict209.a
  %bound0435 = icmp ult ptr %scevgep144.a, %scevgep152
  %bound1436 = icmp ult ptr %scevgep151, %scevgep145.a
  %found.conflict437 = and i1 %bound0435, %bound1436
  %conflict.rdx438 = or i1 %conflict.rdx434, %found.conflict437
  %bound1228.a = icmp ult ptr %scevgep144.a, %scevgep158
  %bound1232.a = icmp ult ptr %scevgep157, %scevgep145.a
  %found.conflict441 = and i1 %bound1228.a, %bound1232.a
  %conflict.rdx442 = or i1 %conflict.rdx438, %found.conflict441
  %bound0235.a = icmp ult ptr %scevgep144.a, %scevgep153
  %bound1236.a = icmp ult ptr %i.r, %scevgep145.a
  %found.conflict445 = and i1 %bound0235.a, %bound1236.a
  %conflict.rdx446 = or i1 %conflict.rdx442, %found.conflict445
  %bound0447 = icmp ult ptr %scevgep144.a, %scevgep154
  %bound1448 = icmp ult ptr %i.t, %scevgep145.a
  %found.conflict449 = and i1 %bound0447, %bound1448
  %conflict.rdx450 = or i1 %conflict.rdx446, %found.conflict449
  %bound1256.a = icmp ult ptr %scevgep144.a, %scevgep156
  %bound1260.a = icmp ult ptr %scevgep155, %scevgep145.a
  %found.conflict453 = and i1 %bound1256.a, %bound1260.a
  %conflict.rdx454 = or i1 %conflict.rdx450, %found.conflict453
  %bound0263.a = icmp ult ptr %scevgep144.a, %scevgep157.a
  %bound1264.a = icmp ult ptr %i.p, %scevgep145.a
  %found.conflict457 = and i1 %bound0263.a, %bound1264.a
  %conflict.rdx458 = or i1 %conflict.rdx454, %found.conflict457
  %bound0459 = icmp ult ptr %scevgep148, %scevgep147
  %bound1460 = icmp ult ptr %scevgep146, %scevgep149
  %found.conflict461 = and i1 %bound0459, %bound1460
  %conflict.rdx462 = or i1 %conflict.rdx458, %found.conflict461
  %bound0463 = icmp ult ptr %scevgep148, %scevgep148.a
  %bound1464 = icmp ult ptr %i.w, %scevgep149
  %found.conflict465 = and i1 %bound0463, %bound1464
  %conflict.rdx466 = or i1 %conflict.rdx462, %found.conflict465
  %bound0467 = icmp ult ptr %scevgep148, %scevgep150
  %bound1468 = icmp ult ptr %scevgep149.a, %scevgep149
  %found.conflict469 = and i1 %bound0467, %bound1468
  %conflict.rdx470 = or i1 %conflict.rdx466, %found.conflict469
  %bound0471 = icmp ult ptr %scevgep148, %scevgep152
  %bound1472 = icmp ult ptr %scevgep151, %scevgep149
  %found.conflict473 = and i1 %bound0471, %bound1472
  %conflict.rdx474 = or i1 %conflict.rdx470, %found.conflict473
  %bound0475 = icmp ult ptr %scevgep148, %scevgep158
  %bound1476 = icmp ult ptr %scevgep157, %scevgep149
  %found.conflict477 = and i1 %bound0475, %bound1476
  %conflict.rdx478 = or i1 %conflict.rdx474, %found.conflict477
  %bound0479 = icmp ult ptr %scevgep148, %scevgep153
  %bound1480 = icmp ult ptr %i.r, %scevgep149
  %found.conflict481 = and i1 %bound0479, %bound1480
  %conflict.rdx482 = or i1 %conflict.rdx478, %found.conflict481
  %bound0483 = icmp ult ptr %scevgep148, %scevgep154
  %bound1460.a = icmp ult ptr %i.t, %scevgep149
  %found.conflict485 = and i1 %bound0483, %bound1460.a
  %conflict.rdx486 = or i1 %conflict.rdx482, %found.conflict485
  %bound0487 = icmp ult ptr %scevgep148, %scevgep156
  %bound1488 = icmp ult ptr %scevgep155, %scevgep149
  %found.conflict489 = and i1 %bound0487, %bound1488
  %conflict.rdx490 = or i1 %conflict.rdx486, %found.conflict489
  %bound0491 = icmp ult ptr %scevgep148, %scevgep157.a
  %bound1492 = icmp ult ptr %i.p, %scevgep149
  %found.conflict493 = and i1 %bound0491, %bound1492
  %conflict.rdx494 = or i1 %conflict.rdx490, %found.conflict493
  %bound0495 = icmp ult ptr %scevgep146, %scevgep148.a
  %bound1496 = icmp ult ptr %i.w, %scevgep147
  %found.conflict497 = and i1 %bound0495, %bound1496
  %conflict.rdx498 = or i1 %conflict.rdx494, %found.conflict497
  %bound0499 = icmp ult ptr %scevgep146, %scevgep150
  %bound1500 = icmp ult ptr %scevgep149.a, %scevgep147
  %found.conflict501 = and i1 %bound0499, %bound1500
  %conflict.rdx502 = or i1 %conflict.rdx498, %found.conflict501
  %bound0503 = icmp ult ptr %scevgep146, %scevgep152
  %bound1504 = icmp ult ptr %scevgep151, %scevgep147
  %found.conflict505 = and i1 %bound0503, %bound1504
  %conflict.rdx506 = or i1 %conflict.rdx502, %found.conflict505
  %bound0507 = icmp ult ptr %scevgep146, %scevgep158
  %bound1508 = icmp ult ptr %scevgep157, %scevgep147
  %found.conflict509 = and i1 %bound0507, %bound1508
  %conflict.rdx510 = or i1 %conflict.rdx506, %found.conflict509
  %bound0511 = icmp ult ptr %scevgep146, %scevgep153
  %bound1576.a = icmp ult ptr %i.r, %scevgep147
  %found.conflict513 = and i1 %bound0511, %bound1576.a
  %conflict.rdx514 = or i1 %conflict.rdx510, %found.conflict513
  %bound0515 = icmp ult ptr %scevgep146, %scevgep154
  %bound1516 = icmp ult ptr %i.t, %scevgep147
  %found.conflict517 = and i1 %bound0515, %bound1516
  %conflict.rdx518 = or i1 %conflict.rdx514, %found.conflict517
  %bound0611.a = icmp ult ptr %scevgep146, %scevgep156
  %bound1612.a = icmp ult ptr %scevgep155, %scevgep147
  %found.conflict521 = and i1 %bound0611.a, %bound1612.a
  %conflict.rdx522 = or i1 %conflict.rdx518, %found.conflict521
  %bound0523 = icmp ult ptr %scevgep146, %scevgep157.a
  %bound1524 = icmp ult ptr %i.p, %scevgep147
  %found.conflict525 = and i1 %bound0523, %bound1524
  %conflict.rdx526 = or i1 %conflict.rdx522, %found.conflict525
  %bound0527 = icmp ult ptr %i.w, %scevgep150
  %bound1528 = icmp ult ptr %scevgep149.a, %scevgep148.a
  %found.conflict529 = and i1 %bound0527, %bound1528
  %conflict.rdx530 = or i1 %conflict.rdx526, %found.conflict529
  %bound0531 = icmp ult ptr %i.w, %scevgep152
  %bound1532 = icmp ult ptr %scevgep151, %scevgep148.a
  %found.conflict533 = and i1 %bound0531, %bound1532
  %conflict.rdx534 = or i1 %conflict.rdx530, %found.conflict533
  %bound0535 = icmp ult ptr %i.w, %scevgep158
  %bound1536 = icmp ult ptr %scevgep157, %scevgep148.a
  %found.conflict537 = and i1 %bound0535, %bound1536
  %conflict.rdx538 = or i1 %conflict.rdx534, %found.conflict537
  %bound0539 = icmp ult ptr %i.w, %scevgep153
  %bound1540 = icmp ult ptr %i.r, %scevgep148.a
  %found.conflict541 = and i1 %bound0539, %bound1540
  %conflict.rdx542 = or i1 %conflict.rdx538, %found.conflict541
  %bound0543 = icmp ult ptr %i.w, %scevgep154
  %bound1544 = icmp ult ptr %i.t, %scevgep148.a
  %found.conflict545 = and i1 %bound0543, %bound1544
  %conflict.rdx546 = or i1 %conflict.rdx542, %found.conflict545
  %bound0547 = icmp ult ptr %i.w, %scevgep156
  %bound1548 = icmp ult ptr %scevgep155, %scevgep148.a
  %found.conflict549 = and i1 %bound0547, %bound1548
  %conflict.rdx550 = or i1 %conflict.rdx546, %found.conflict549
  %bound0551 = icmp ult ptr %i.w, %scevgep157.a
  %bound1552 = icmp ult ptr %i.p, %scevgep148.a
  %found.conflict553 = and i1 %bound0551, %bound1552
  %conflict.rdx554 = or i1 %conflict.rdx550, %found.conflict553
  %bound0555 = icmp ult ptr %scevgep149.a, %scevgep152
  %bound1556 = icmp ult ptr %scevgep151, %scevgep150
  %found.conflict557 = and i1 %bound0555, %bound1556
  %conflict.rdx558 = or i1 %conflict.rdx554, %found.conflict557
  %bound0559 = icmp ult ptr %scevgep149.a, %scevgep158
  %bound1560 = icmp ult ptr %scevgep157, %scevgep150
  %found.conflict561 = and i1 %bound0559, %bound1560
  %conflict.rdx562 = or i1 %conflict.rdx558, %found.conflict561
  %bound0563 = icmp ult ptr %scevgep149.a, %scevgep153
  %bound1564 = icmp ult ptr %i.r, %scevgep150
  %found.conflict565 = and i1 %bound0563, %bound1564
  %conflict.rdx566 = or i1 %conflict.rdx562, %found.conflict565
  %bound0567 = icmp ult ptr %scevgep149.a, %scevgep154
  %bound1568 = icmp ult ptr %i.t, %scevgep150
  %found.conflict569 = and i1 %bound0567, %bound1568
  %conflict.rdx570 = or i1 %conflict.rdx566, %found.conflict569
  %bound0571 = icmp ult ptr %scevgep149.a, %scevgep156
  %bound1572 = icmp ult ptr %scevgep155, %scevgep150
  %found.conflict573 = and i1 %bound0571, %bound1572
  %conflict.rdx574 = or i1 %conflict.rdx570, %found.conflict573
  %bound0575 = icmp ult ptr %scevgep149.a, %scevgep157.a
  %bound1576 = icmp ult ptr %i.p, %scevgep150
  %found.conflict577 = and i1 %bound0575, %bound1576
  %conflict.rdx578 = or i1 %conflict.rdx574, %found.conflict577
  %bound0579 = icmp ult ptr %scevgep151, %scevgep158
  %bound1580 = icmp ult ptr %scevgep157, %scevgep152
  %found.conflict581 = and i1 %bound0579, %bound1580
  %conflict.rdx582 = or i1 %conflict.rdx578, %found.conflict581
  %bound0583 = icmp ult ptr %scevgep151, %scevgep153
  %bound1584 = icmp ult ptr %i.r, %scevgep152
  %found.conflict585 = and i1 %bound0583, %bound1584
  %conflict.rdx586 = or i1 %conflict.rdx582, %found.conflict585
  %bound0587 = icmp ult ptr %scevgep151, %scevgep154
  %bound1588 = icmp ult ptr %i.t, %scevgep152
  %found.conflict589 = and i1 %bound0587, %bound1588
  %conflict.rdx590 = or i1 %conflict.rdx586, %found.conflict589
  %bound0591 = icmp ult ptr %scevgep151, %scevgep156
  %bound1592 = icmp ult ptr %scevgep155, %scevgep152
  %found.conflict593 = and i1 %bound0591, %bound1592
  %conflict.rdx594 = or i1 %conflict.rdx590, %found.conflict593
  %bound0595 = icmp ult ptr %scevgep151, %scevgep157.a
  %bound1596 = icmp ult ptr %i.p, %scevgep152
  %found.conflict597 = and i1 %bound0595, %bound1596
  %conflict.rdx598 = or i1 %conflict.rdx594, %found.conflict597
  %bound0599 = icmp ult ptr %scevgep157, %scevgep153
  %bound1600 = icmp ult ptr %i.r, %scevgep158
  %found.conflict601 = and i1 %bound0599, %bound1600
  %conflict.rdx602 = or i1 %conflict.rdx598, %found.conflict601
  %bound0603 = icmp ult ptr %scevgep157, %scevgep154
  %bound1604 = icmp ult ptr %i.t, %scevgep158
  %found.conflict605 = and i1 %bound0603, %bound1604
  %conflict.rdx606 = or i1 %conflict.rdx602, %found.conflict605
  %bound0607 = icmp ult ptr %scevgep157, %scevgep156
  %bound1608 = icmp ult ptr %scevgep155, %scevgep158
  %found.conflict609 = and i1 %bound0607, %bound1608
  %op.rdx = or i1 %conflict.rdx606, %found.conflict609
  %bound0611 = icmp ult ptr %scevgep157, %scevgep157.a
  %bound1612 = icmp ult ptr %i.p, %scevgep158
  %found.conflict613 = and i1 %bound0611, %bound1612
  %op.rdx727 = or i1 %op.rdx, %found.conflict613
  %n.vec = and i64 %i.au, -8                      ; 3 uses
  %i.av = shl i64 %n.vec, 1
  %broadcast.splatinsert617 = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat618 = shufflevector <8 x i32> %broadcast.splatinsert617, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert619 = insertelement <8 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat620 = shufflevector <8 x i32> %broadcast.splatinsert619, <8 x i32> poison, <8 x i32> zeroinitializer ; 24 uses
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.u) #15
  tail call void @free(ptr noundef %i.v) #15
  tail call void @free(ptr noundef %i.w) #15
  br label %bb.c

._crit_edge134.split:                             ; preds = %._crit_edge, %.preheader
  tail call void @free(ptr noundef %i.p) #15
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store ptr %i.u, ptr %i.ax, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.az) #15
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  store ptr %i.v, ptr %i.bb, align 8, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 176
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.bd) #15
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !19  ; 11 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 176
  store ptr %i.w, ptr %i.bf, align 8, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  store i32 %i.i, ptr %i.bg, align 8, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 76
  store i32 %i.l, ptr %i.bh, align 4, !tbaa !23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 136
  store i32 %i.i, ptr %i.bi, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 140
  store i32 %i.l, ptr %i.bj, align 4, !tbaa !23
  %i.bk = load i32, ptr %i.be, align 8, !tbaa !28 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 128
  store i32 %i.bk, ptr %i.bm, align 8, !tbaa !28
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !29 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 68
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 132
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !29
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.0127132 = phi i64 [ %i.fj, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.br = lshr exact i64 %.0127132, 1
  %i.bs = mul nuw nsw i64 %i.br, %i.j             ; 2 uses
  %i.bt = mul nuw i64 %.0127132, %i.j             ; 4 uses
  %i.bu = or disjoint i64 %.0127132, 1
  %i.bv = mul nuw i64 %i.bu, %i.j                 ; 4 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bt ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bt ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bt ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bt ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bv ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bv ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bv ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bv ; 2 uses
  %.pre = load i32, ptr %i.t, align 4, !tbaa !12
  %i.ce = sub nsw i32 %.pre, %i.f
  %i.cf = sitofp reassoc nsz arcp contract afn i32 %i.ce to float
  %i.cg = fpext reassoc nsz arcp contract afn float %i.cf to double ; 2 uses
  %i.ch = fmul reassoc nnan nsz arcp contract afn double %i.cg, 1.402000e+00
  %i.ci = fptosi double %i.ch to i32              ; 2 uses
  %i.cj = fmul reassoc nnan nsz arcp contract afn double %i.cg, 7.140000e-01 ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx727
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert615 = insertelement <8 x double> poison, double %i.cj, i64 0
  %broadcast.splat616 = shufflevector <8 x double> %broadcast.splatinsert615, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ck = shl nuw i64 %index, 1                   ; 8 uses
  %i.cl = add nuw nsw i64 %index, %i.bs           ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cl
  %wide.load = load <8 x i32>, ptr %i.cm, align 4, !tbaa !12, !alias.scope !78
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.cl
  %wide.load621 = load <8 x i32>, ptr %i.cn, align 4, !tbaa !12, !alias.scope !79
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ck
  %wide.vec = load <16 x i32>, ptr %i.co, align 4, !tbaa !12, !alias.scope !80 ; 2 uses
  %strided.vec = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec622 = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.ck
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ck
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ck
  %i.cs = sub nsw <8 x i32> %wide.load, %broadcast.splat618
  %i.ct = sub nsw <8 x i32> %wide.load621, %broadcast.splat618
  %i.cu = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ct to <8 x float>
  %i.cv = fpext reassoc nsz arcp contract afn <8 x float> %i.cu to <8 x double> ; 2 uses
  %i.cw = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.cv, splat (double 1.402000e+00)
  %i.cx = fptosi <8 x double> %i.cw to <8 x i32>  ; 3 uses
  %i.cy = add nsw <8 x i32> %strided.vec, %i.cx   ; 2 uses
  %i.cz = icmp sgt <8 x i32> %i.cy, %broadcast.splat620
  %i.da = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cy, <8 x i32> zeroinitializer)
  %i.db = select <8 x i1> %i.cz, <8 x i32> %broadcast.splat620, <8 x i32> %i.da
  %i.dc = sitofp reassoc nsz arcp contract afn <8 x i32> %i.cs to <8 x float>
  %i.dd = fpext reassoc nsz arcp contract afn <8 x float> %i.dc to <8 x double> ; 2 uses
  %i.de = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.dd, splat (double 3.440000e-01) ; 2 uses
  %i.df = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.cv, splat (double 7.140000e-01)
  %i.dg = fadd reassoc nsz arcp contract afn <8 x double> %i.df, %i.de
  %i.dh = fptosi <8 x double> %i.dg to <8 x i32>  ; 3 uses
  %i.di = sub nsw <8 x i32> %strided.vec, %i.dh   ; 2 uses
  %i.dj = icmp sgt <8 x i32> %i.di, %broadcast.splat620
  %i.dk = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.di, <8 x i32> zeroinitializer)
  %i.dl = select <8 x i1> %i.dj, <8 x i32> %broadcast.splat620, <8 x i32> %i.dk
  %i.dm = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.dd, splat (double 1.772000e+00)
  %i.dn = fptosi <8 x double> %i.dm to <8 x i32>  ; 4 uses
  %i.do = add nsw <8 x i32> %strided.vec, %i.dn   ; 2 uses
  %i.dp = icmp sgt <8 x i32> %i.do, %broadcast.splat620
  %i.dq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.do, <8 x i32> zeroinitializer)
  %i.dr = select <8 x i1> %i.dp, <8 x i32> %broadcast.splat620, <8 x i32> %i.dq
  %i.ds = add nsw <8 x i32> %strided.vec622, %i.cx ; 2 uses
  %i.dt = icmp sgt <8 x i32> %i.ds, %broadcast.splat620
  %i.du = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ds, <8 x i32> zeroinitializer)
  %i.dv = select <8 x i1> %i.dt, <8 x i32> %broadcast.splat620, <8 x i32> %i.du
  %interleaved.vec = shufflevector <8 x i32> %i.db, <8 x i32> %i.dv, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec, ptr %i.cp, align 4, !tbaa !12
  %i.dw = sub nsw <8 x i32> %strided.vec622, %i.dh ; 2 uses
  %i.dx = icmp sgt <8 x i32> %i.dw, %broadcast.splat620
  %i.dy = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dw, <8 x i32> zeroinitializer)
  %i.dz = select <8 x i1> %i.dx, <8 x i32> %broadcast.splat620, <8 x i32> %i.dy
  %interleaved.vec623 = shufflevector <8 x i32> %i.dl, <8 x i32> %i.dz, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec623, ptr %i.cq, align 4, !tbaa !12
  %i.ea = add nsw <8 x i32> %strided.vec622, %i.dn ; 2 uses
  %i.eb = icmp sgt <8 x i32> %i.ea, %broadcast.splat620
  %i.ec = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ea, <8 x i32> zeroinitializer)
  %i.ed = select <8 x i1> %i.eb, <8 x i32> %broadcast.splat620, <8 x i32> %i.ec
  %interleaved.vec624 = shufflevector <8 x i32> %i.dr, <8 x i32> %i.ed, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec624, ptr %i.cr, align 4, !tbaa !12
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ck
  %wide.vec625 = load <16 x i32>, ptr %i.ee, align 4, !tbaa !12, !alias.scope !81 ; 2 uses
  %strided.vec626 = shufflevector <16 x i32> %wide.vec625, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec627 = shufflevector <16 x i32> %wide.vec625, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ck
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ck
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ck
  %i.ei = add nsw <8 x i32> %strided.vec626, %i.cx ; 2 uses
  %i.ej = icmp sgt <8 x i32> %i.ei, %broadcast.splat620
  %i.ek = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ei, <8 x i32> zeroinitializer)
  %i.el = select <8 x i1> %i.ej, <8 x i32> %broadcast.splat620, <8 x i32> %i.ek
  %i.em = sub nsw <8 x i32> %strided.vec626, %i.dh ; 2 uses
  %i.en = icmp sgt <8 x i32> %i.em, %broadcast.splat620
  %i.eo = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.em, <8 x i32> zeroinitializer)
  %i.ep = select <8 x i1> %i.en, <8 x i32> %broadcast.splat620, <8 x i32> %i.eo
  %i.eq = add nsw <8 x i32> %strided.vec626, %i.dn ; 2 uses
  %i.er = icmp sgt <8 x i32> %i.eq, %broadcast.splat620
  %i.es = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.eq, <8 x i32> zeroinitializer)
  %i.et = select <8 x i1> %i.er, <8 x i32> %broadcast.splat620, <8 x i32> %i.es
  %i.eu = add nsw <8 x i32> %strided.vec627, %broadcast.splat ; 2 uses
  %i.ev = icmp sgt <8 x i32> %i.eu, %broadcast.splat620
  %i.ew = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.eu, <8 x i32> zeroinitializer)
  %i.ex = select <8 x i1> %i.ev, <8 x i32> %broadcast.splat620, <8 x i32> %i.ew
  %interleaved.vec628 = shufflevector <8 x i32> %i.el, <8 x i32> %i.ex, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec628, ptr %i.ef, align 4, !tbaa !12
  %i.ey = fadd reassoc nsz arcp contract afn <8 x double> %broadcast.splat616, %i.de
  %i.ez = fptosi <8 x double> %i.ey to <8 x i32>
  %i.fa = sub nsw <8 x i32> %strided.vec627, %i.ez ; 2 uses
  %i.fb = icmp sgt <8 x i32> %i.fa, %broadcast.splat620
  %i.fc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fa, <8 x i32> zeroinitializer)
  %i.fd = select <8 x i1> %i.fb, <8 x i32> %broadcast.splat620, <8 x i32> %i.fc
  %interleaved.vec629 = shufflevector <8 x i32> %i.ep, <8 x i32> %i.fd, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec629, ptr %i.eg, align 4, !tbaa !12
  %i.fe = add nsw <8 x i32> %strided.vec627, %i.dn ; 2 uses
  %i.ff = icmp sgt <8 x i32> %i.fe, %broadcast.splat620
  %i.fg = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fe, <8 x i32> zeroinitializer)
  %i.fh = select <8 x i1> %i.ff, <8 x i32> %broadcast.splat620, <8 x i32> %i.fg
  %interleaved.vec630 = shufflevector <8 x i32> %i.et, <8 x i32> %i.fh, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec630, ptr %i.eh, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.0131.ph = phi i64 [ %i.av, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.fj = add nuw nsw i64 %.0127132, 2            ; 2 uses
  %i.fk = icmp samesign ult i64 %i.fj, %i.m
  br i1 %i.fk, label %.lr.ph, label %._crit_edge134.split

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0131 = phi i64 [ %i.ix, %scalar.ph ], [ %.0131.ph, %scalar.ph.preheader ] ; 10 uses
  %i.fl = lshr exact i64 %.0131, 1
  %i.fm = add nuw nsw i64 %i.fl, %i.bs            ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !12
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.fm
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !12
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.0131 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !12 ; 3 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.0131 ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.0131 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.0131 ; 2 uses
  %i.fw = sub nsw i32 %i.fo, %i.f
  %i.fx = sub nsw i32 %i.fq, %i.f
  %i.fy = sitofp reassoc nsz arcp contract afn i32 %i.fx to float
  %i.fz = fpext reassoc nsz arcp contract afn float %i.fy to double ; 2 uses
  %i.ga = fmul reassoc nnan nsz arcp contract afn double %i.fz, 1.402000e+00
  %i.gb = fptosi double %i.ga to i32              ; 3 uses
  %i.gc = add nsw i32 %i.fs, %i.gb                ; 2 uses
  %i.gd = icmp sgt i32 %i.gc, %i.g
  %i.ge = tail call i32 @llvm.smax.i32(i32 %i.gc, i32 0)
  %i.gf = select i1 %i.gd, i32 %i.g, i32 %i.ge
  store i32 %i.gf, ptr %i.ft, align 4, !tbaa !12
  %i.gg = sitofp reassoc nsz arcp contract afn i32 %i.fw to float
  %i.gh = fpext reassoc nsz arcp contract afn float %i.gg to double ; 2 uses
  %i.gi = fmul reassoc nnan nsz arcp contract afn double %i.gh, 3.440000e-01 ; 2 uses
  %i.gj = fmul reassoc nnan nsz arcp contract afn double %i.fz, 7.140000e-01
  %i.gk = fadd reassoc nsz arcp contract afn double %i.gj, %i.gi
  %i.gl = fptosi double %i.gk to i32              ; 3 uses
  %i.gm = sub nsw i32 %i.fs, %i.gl                ; 2 uses
  %i.gn = icmp sgt i32 %i.gm, %i.g
  %i.go = tail call i32 @llvm.smax.i32(i32 %i.gm, i32 0)
  %i.gp = select i1 %i.gn, i32 %i.g, i32 %i.go
  store i32 %i.gp, ptr %i.fu, align 4, !tbaa !12
  %i.gq = fmul reassoc nnan nsz arcp contract afn double %i.gh, 1.772000e+00
  %i.gr = fptosi double %i.gq to i32              ; 4 uses
  %i.gs = add nsw i32 %i.fs, %i.gr                ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, %i.g
  %i.gu = tail call i32 @llvm.smax.i32(i32 %i.gs, i32 0)
  %i.gv = select i1 %i.gt, i32 %i.g, i32 %i.gu
  store i32 %i.gv, ptr %i.fv, align 4, !tbaa !12
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !12 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.hb = add nsw i32 %i.gx, %i.gb                ; 2 uses
  %i.hc = icmp sgt i32 %i.hb, %i.g
  %i.hd = tail call i32 @llvm.smax.i32(i32 %i.hb, i32 0)
  %i.he = select i1 %i.hc, i32 %i.g, i32 %i.hd
  store i32 %i.he, ptr %i.gy, align 4, !tbaa !12
  %i.hf = sub nsw i32 %i.gx, %i.gl                ; 2 uses
  %i.hg = icmp sgt i32 %i.hf, %i.g
  %i.hh = tail call i32 @llvm.smax.i32(i32 %i.hf, i32 0)
  %i.hi = select i1 %i.hg, i32 %i.g, i32 %i.hh
  store i32 %i.hi, ptr %i.gz, align 4, !tbaa !12
  %i.hj = add nsw i32 %i.gx, %i.gr                ; 2 uses
  %i.hk = icmp sgt i32 %i.hj, %i.g
  %i.hl = tail call i32 @llvm.smax.i32(i32 %i.hj, i32 0)
  %i.hm = select i1 %i.hk, i32 %i.g, i32 %i.hl
  store i32 %i.hm, ptr %i.ha, align 4, !tbaa !12
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.0131 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !12 ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.0131 ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.0131 ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.0131 ; 2 uses
  %i.hs = add nsw i32 %i.ho, %i.gb                ; 2 uses
  %i.ht = icmp sgt i32 %i.hs, %i.g
  %i.hu = tail call i32 @llvm.smax.i32(i32 %i.hs, i32 0)
  %i.hv = select i1 %i.ht, i32 %i.g, i32 %i.hu
  store i32 %i.hv, ptr %i.hp, align 4, !tbaa !12
  %i.hw = sub nsw i32 %i.ho, %i.gl                ; 2 uses
  %i.hx = icmp sgt i32 %i.hw, %i.g
  %i.hy = tail call i32 @llvm.smax.i32(i32 %i.hw, i32 0)
  %i.hz = select i1 %i.hx, i32 %i.g, i32 %i.hy
  store i32 %i.hz, ptr %i.hq, align 4, !tbaa !12
end_hunk_0
