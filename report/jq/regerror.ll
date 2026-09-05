Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/regerror?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@onig_error_code_to_str:bb.a
  br label %bb.v

bb.u:                                             ; preds = %bb.a
  %i.cz = call ptr @onig_error_code_to_format(i32 noundef %1) ; 2 uses
  %i.da = call i32 @onigenc_str_bytelen_null(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull %i.cz) #8 ; 2 uses
  %i.db = sext i32 %i.da to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 1 %i.cz, i64 %i.db, i1 false)
  %i.dc = getelementptr inbounds i8, ptr %0, i64 %i.db
  store i8 0, ptr %i.dc, align 1, !tbaa !16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.split.us
  %.0 = phi i32 [ %i.da, %bb.u ], [ %i.cy, %.split.us ]
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @onigenc_str_bytelen_null(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #3

; Function Attrs: nounwind uwtable
define dso_local void @onig_snprintf_with_pattern(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ...) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 19 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 6 uses
  %6 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.va_start.p0(ptr nonnull %6)
  %i.c = sext i32 %1 to i64
  %i.d = call i32 @vsnprintf(ptr noundef %0, i64 noundef %i.c, ptr noundef %5, ptr noundef nonnull %6) #8
  call void @llvm.va_end.p0(ptr nonnull %6)
  %i.e = ptrtoint ptr %4 to i64
  %i.f = ptrtoint ptr %3 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = shl nsw i32 %i.h, 2
  %i.j = add nsw i32 %i.i, 4
  %i.k = add nsw i32 %i.j, %i.d
  %i.l = icmp slt i32 %i.k, %1
  br i1 %i.l, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %strlen = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %endptr = getelementptr inbounds i8, ptr %0, i64 %strlen
  store i32 3088442, ptr %endptr, align 1
  %i.m = call i32 @onigenc_str_bytelen_null(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull %0) #8
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n ; 2 uses
  %i.p = icmp ult ptr %3, %4
  br i1 %i.p, label %.lr.ph98, label %._crit_edge

.lr.ph98:                                         ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.s = add i64 %i.b, -1
  %i.t = add i64 %i.b, -1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph98, %.loopexit65
  %.05197 = phi ptr [ %i.o, %.lr.ph98 ], [ %.6, %.loopexit65 ] ; 22 uses
  %.05396 = phi ptr [ %3, %.lr.ph98 ], [ %.457, %.loopexit65 ] ; 20 uses
  %.05396146 = ptrtoaddr ptr %.05396 to i64       ; 2 uses
  %.05197131 = ptrtoaddr ptr %.05197 to i64       ; 3 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !17
  %i.v = call i32 %i.u(ptr noundef %.05396) #8
  %.not = icmp eq i32 %i.v, 1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %2, align 8, !tbaa !17
  %i.x = call i32 %i.w(ptr noundef %.05396) #8    ; 8 uses
  %i.y = load i32, ptr %i.q, align 4, !tbaa !15
  %i.z = icmp eq i32 %i.y, 1
  %i.aa = icmp sgt i32 %i.x, 0                    ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader68

.preheader68:                                     ; preds = %bb.d
  br i1 %i.aa, label %.lr.ph75, label %.loopexit65

.preheader:                                       ; preds = %bb.d
  br i1 %i.aa, label %iter.check201, label %.loopexit65

iter.check201:                                    ; preds = %.preheader
  %i.ab = zext nneg i32 %i.x to i64               ; 5 uses
  %min.iters.check184 = icmp ult i32 %i.x, 4
  %i.ac = sub i64 %.05396146, %.05197131
  %diff.check183 = icmp ugt i64 %i.ac, -32
  %or.cond = select i1 %min.iters.check184, i1 true, i1 %diff.check183
  br i1 %or.cond, label %.lr.ph81.preheader, label %vector.main.loop.iter.check185

vector.main.loop.iter.check185:                   ; preds = %iter.check201
  %min.iters.check186 = icmp ult i32 %i.x, 32
  br i1 %min.iters.check186, label %vec.epilog.ph205, label %vector.ph187

vector.ph187:                                     ; preds = %vector.main.loop.iter.check185
  %i.ad = and i64 %i.ab, 28
  %n.vec188 = and i64 %i.ab, 2147483616           ; 6 uses
  %i.ae = getelementptr i8, ptr %.05197, i64 %n.vec188 ; 2 uses
  %i.af = getelementptr i8, ptr %.05396, i64 %n.vec188 ; 2 uses
  %i.ag = trunc nuw nsw i64 %n.vec188 to i32
  %i.ah = sub nsw i32 %i.x, %i.ag
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph187
  %index190 = phi i64 [ 0, %vector.ph187 ], [ %index.next195, %vector.body189 ] ; 3 uses
  %next.gep191 = getelementptr i8, ptr %.05197, i64 %index190 ; 2 uses
  %next.gep192 = getelementptr i8, ptr %.05396, i64 %index190 ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep192, i64 16
  %wide.load193 = load <16 x i8>, ptr %next.gep192, align 1, !tbaa !16
  %wide.load194 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !16
  %i.aj = getelementptr i8, ptr %next.gep191, i64 16
  store <16 x i8> %wide.load193, ptr %next.gep191, align 1, !tbaa !16
  store <16 x i8> %wide.load194, ptr %i.aj, align 1, !tbaa !16
  %index.next195 = add nuw i64 %index190, 32      ; 2 uses
  %i.ak = icmp eq i64 %index.next195, %n.vec188
  br i1 %i.ak, label %middle.block196, label %vector.body189, !llvm.loop !29

middle.block196:                                  ; preds = %vector.body189
  %cmp.n197 = icmp eq i64 %n.vec188, %i.ab
  br i1 %cmp.n197, label %.loopexit65, label %vec.epilog.iter.check203

vec.epilog.iter.check203:                         ; preds = %middle.block196
  %min.epilog.iters.check204 = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check204, label %.lr.ph81.preheader, label %vec.epilog.ph205, !prof !47

vec.epilog.ph205:                                 ; preds = %vector.main.loop.iter.check185, %vec.epilog.iter.check203
  %vec.epilog.resume.val198 = phi i64 [ %n.vec188, %vec.epilog.iter.check203 ], [ 0, %vector.main.loop.iter.check185 ]
  %n.vec206 = and i64 %i.ab, 2147483644           ; 5 uses
  %i.al = getelementptr i8, ptr %.05197, i64 %n.vec206 ; 2 uses
  %i.am = getelementptr i8, ptr %.05396, i64 %n.vec206 ; 2 uses
  %i.an = trunc nuw nsw i64 %n.vec206 to i32
  %i.ao = sub nsw i32 %i.x, %i.an
  br label %vec.epilog.vector.body207

vec.epilog.vector.body207:                        ; preds = %vec.epilog.vector.body207, %vec.epilog.ph205
  %index208 = phi i64 [ %vec.epilog.resume.val198, %vec.epilog.ph205 ], [ %index.next212, %vec.epilog.vector.body207 ] ; 3 uses
  %next.gep209 = getelementptr i8, ptr %.05197, i64 %index208
  %next.gep210 = getelementptr i8, ptr %.05396, i64 %index208
  %wide.load211 = load <4 x i8>, ptr %next.gep210, align 1, !tbaa !16
  store <4 x i8> %wide.load211, ptr %next.gep209, align 1, !tbaa !16
  %index.next212 = add nuw i64 %index208, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next212, %n.vec206
  br i1 %i.ap, label %vec.epilog.middle.block213, label %vec.epilog.vector.body207, !llvm.loop !30

vec.epilog.middle.block213:                       ; preds = %vec.epilog.vector.body207
  %cmp.n214 = icmp eq i64 %n.vec206, %i.ab
  br i1 %cmp.n214, label %.loopexit65, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %iter.check201, %vec.epilog.iter.check203, %vec.epilog.middle.block213
  %.15280.ph = phi ptr [ %.05197, %iter.check201 ], [ %i.ae, %vec.epilog.iter.check203 ], [ %i.al, %vec.epilog.middle.block213 ]
  %.15479.ph = phi ptr [ %.05396, %iter.check201 ], [ %i.af, %vec.epilog.iter.check203 ], [ %i.am, %vec.epilog.middle.block213 ]
  %.05878.ph = phi i32 [ %i.x, %iter.check201 ], [ %i.ah, %vec.epilog.iter.check203 ], [ %i.ao, %vec.epilog.middle.block213 ]
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %.lr.ph81
  %.15280 = phi ptr [ %i.at, %.lr.ph81 ], [ %.15280.ph, %.lr.ph81.preheader ] ; 2 uses
  %.15479 = phi ptr [ %i.ar, %.lr.ph81 ], [ %.15479.ph, %.lr.ph81.preheader ] ; 2 uses
  %.05878 = phi i32 [ %i.aq, %.lr.ph81 ], [ %.05878.ph, %.lr.ph81.preheader ] ; 2 uses
  %i.aq = add nsw i32 %.05878, -1
  %i.ar = getelementptr inbounds nuw i8, ptr %.15479, i64 1 ; 2 uses
  %i.as = load i8, ptr %.15479, align 1, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %.15280, i64 1 ; 2 uses
  store i8 %i.as, ptr %.15280, align 1, !tbaa !16
  %i.au = icmp samesign ugt i32 %.05878, 1
  br i1 %i.au, label %.lr.ph81, label %.loopexit65, !llvm.loop !31

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block233, %vec.epilog.middle.block249, %.lr.ph75
  %.3.lcssa = phi ptr [ %.274, %.lr.ph75 ], [ %i.bn, %vec.epilog.middle.block249 ], [ %i.bi, %middle.block233 ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.cu, %.lr.ph ] ; 2 uses
  %i.av = icmp samesign ugt i32 %.in, 1
  br i1 %i.av, label %.lr.ph75, label %.loopexit65, !llvm.loop !32

.lr.ph75:                                         ; preds = %.preheader68, %.loopexit
  %.in = phi i32 [ %i.aw, %.loopexit ], [ %i.x, %.preheader68 ] ; 2 uses
  %.274 = phi ptr [ %.3.lcssa, %.loopexit ], [ %.05197, %.preheader68 ] ; 7 uses
  %.25573 = phi ptr [ %i.ax, %.loopexit ], [ %.05396, %.preheader68 ] ; 2 uses
  %i.aw = add nsw i32 %.in, -1
  %i.ax = getelementptr inbounds nuw i8, ptr %.25573, i64 1 ; 2 uses
  %i.ay = load i8, ptr %.25573, align 1, !tbaa !16
  %i.az = zext i8 %i.ay to i32
  %i.ba = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 5, ptr noundef nonnull @.str.83, i32 noundef %i.az) #8 ; 0 uses
  %i.bb = call i32 @onigenc_str_bytelen_null(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull %i.a) #8 ; 4 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %iter.check237, label %.loopexit

iter.check237:                                    ; preds = %.lr.ph75
  %.274219 = ptrtoaddr ptr %.274 to i64
  %i.bd = zext nneg i32 %i.bb to i64              ; 8 uses
  %i.be = getelementptr i8, ptr %i.a, i64 %i.bd
  %scevgep = getelementptr i8, ptr %i.be, i64 -1
  %min.iters.check221 = icmp ult i32 %i.bb, 8
  %i.bf = sub i64 %i.b, %.274219
  %diff.check220 = icmp ugt i64 %i.bf, -32
  %or.cond253 = select i1 %min.iters.check221, i1 true, i1 %diff.check220
  br i1 %or.cond253, label %.lr.ph.preheader, label %vector.main.loop.iter.check222

vector.main.loop.iter.check222:                   ; preds = %iter.check237
  %min.iters.check223 = icmp ult i32 %i.bb, 32
  br i1 %min.iters.check223, label %vec.epilog.ph241, label %vector.ph224

vector.ph224:                                     ; preds = %vector.main.loop.iter.check222
  %i.bg = and i64 %i.bd, 24
  %n.vec225 = and i64 %i.bd, 2147483616           ; 5 uses
  %i.bh = getelementptr i8, ptr %i.a, i64 %n.vec225
  %i.bi = getelementptr i8, ptr %.274, i64 %n.vec225 ; 2 uses
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph224
  %index227 = phi i64 [ 0, %vector.ph224 ], [ %index.next232, %vector.body226 ] ; 3 uses
  %next.gep228 = getelementptr i8, ptr %i.a, i64 %index227 ; 2 uses
  %next.gep229 = getelementptr i8, ptr %.274, i64 %index227 ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep228, i64 16
  %wide.load230 = load <16 x i8>, ptr %next.gep228, align 1, !tbaa !16
  %wide.load231 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !16
  %i.bk = getelementptr i8, ptr %next.gep229, i64 16
  store <16 x i8> %wide.load230, ptr %next.gep229, align 1, !tbaa !16
  store <16 x i8> %wide.load231, ptr %i.bk, align 1, !tbaa !16
  %index.next232 = add nuw i64 %index227, 32      ; 2 uses
  %i.bl = icmp eq i64 %index.next232, %n.vec225
  br i1 %i.bl, label %middle.block233, label %vector.body226, !llvm.loop !33

middle.block233:                                  ; preds = %vector.body226
  %cmp.n234 = icmp eq i64 %n.vec225, %i.bd
  br i1 %cmp.n234, label %.loopexit, label %vec.epilog.iter.check239

vec.epilog.iter.check239:                         ; preds = %middle.block233
  %min.epilog.iters.check240 = icmp eq i64 %i.bg, 0
  br i1 %min.epilog.iters.check240, label %.lr.ph.preheader, label %vec.epilog.ph241, !prof !48

vec.epilog.ph241:                                 ; preds = %vector.main.loop.iter.check222, %vec.epilog.iter.check239
  %vec.epilog.resume.val235 = phi i64 [ %n.vec225, %vec.epilog.iter.check239 ], [ 0, %vector.main.loop.iter.check222 ]
  %n.vec242 = and i64 %i.bd, 2147483640           ; 4 uses
  %i.bm = getelementptr i8, ptr %i.a, i64 %n.vec242
  %i.bn = getelementptr i8, ptr %.274, i64 %n.vec242 ; 2 uses
  br label %vec.epilog.vector.body243

vec.epilog.vector.body243:                        ; preds = %vec.epilog.vector.body243, %vec.epilog.ph241
  %index244 = phi i64 [ %vec.epilog.resume.val235, %vec.epilog.ph241 ], [ %index.next248, %vec.epilog.vector.body243 ] ; 3 uses
  %next.gep245 = getelementptr i8, ptr %i.a, i64 %index244
  %next.gep246 = getelementptr i8, ptr %.274, i64 %index244
  %wide.load247 = load <8 x i8>, ptr %next.gep245, align 1, !tbaa !16
  store <8 x i8> %wide.load247, ptr %next.gep246, align 1, !tbaa !16
  %index.next248 = add nuw i64 %index244, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next248, %n.vec242
  br i1 %i.bo, label %vec.epilog.middle.block249, label %vec.epilog.vector.body243, !llvm.loop !34

vec.epilog.middle.block249:                       ; preds = %vec.epilog.vector.body243
  %cmp.n250 = icmp eq i64 %n.vec242, %i.bd
  br i1 %cmp.n250, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check237, %vec.epilog.iter.check239, %vec.epilog.middle.block249
  %.05071.ph = phi ptr [ %i.a, %iter.check237 ], [ %i.bh, %vec.epilog.iter.check239 ], [ %i.bm, %vec.epilog.middle.block249 ] ; 3 uses
  %.370.ph = phi ptr [ %.274, %iter.check237 ], [ %i.bi, %vec.epilog.iter.check239 ], [ %i.bn, %vec.epilog.middle.block249 ] ; 2 uses
  %i.bp = add i64 %i.b, %i.bd
  %.05071.ph264 = ptrtoaddr ptr %.05071.ph to i64 ; 2 uses
  %i.bq = sub i64 %i.bp, %.05071.ph264
  %i.br = add i64 %i.s, %i.bd
  %i.bs = sub i64 %i.br, %.05071.ph264
  %xtraiter = and i64 %i.bq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.05071.prol = phi ptr [ %i.bt, %.lr.ph.prol ], [ %.05071.ph, %.lr.ph.preheader ] ; 2 uses
  %.370.prol = phi ptr [ %i.bv, %.lr.ph.prol ], [ %.370.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.05071.prol, i64 1 ; 2 uses
  %i.bu = load i8, ptr %.05071.prol, align 1, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %.370.prol, i64 1 ; 3 uses
  store i8 %i.bu, ptr %.370.prol, align 1, !tbaa !16
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !35

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bv, %.lr.ph.prol ]
  %.05071.unr = phi ptr [ %.05071.ph, %.lr.ph.preheader ], [ %i.bt, %.lr.ph.prol ]
  %.370.unr = phi ptr [ %.370.ph, %.lr.ph.preheader ], [ %i.bv, %.lr.ph.prol ]
  %i.bw = icmp ult i64 %i.bs, 7
  br i1 %i.bw, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.05071 = phi ptr [ %i.cs, %.lr.ph ], [ %.05071.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.370 = phi ptr [ %i.cu, %.lr.ph ], [ %.370.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.05071, i64 1
  %i.by = load i8, ptr %.05071, align 1, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %.370, i64 1
  store i8 %i.by, ptr %.370, align 1, !tbaa !16
  %i.ca = getelementptr inbounds nuw i8, ptr %.05071, i64 2
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %.370, i64 2
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %.05071, i64 3
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %.370, i64 3
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !16
  %i.cg = getelementptr inbounds nuw i8, ptr %.05071, i64 4
  %i.ch = load i8, ptr %i.cd, align 1, !tbaa !16
  %i.ci = getelementptr inbounds nuw i8, ptr %.370, i64 4
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !16
  %i.cj = getelementptr inbounds nuw i8, ptr %.05071, i64 5
  %i.ck = load i8, ptr %i.cg, align 1, !tbaa !16
  %i.cl = getelementptr inbounds nuw i8, ptr %.370, i64 5
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !16
  %i.cm = getelementptr inbounds nuw i8, ptr %.05071, i64 6
  %i.cn = load i8, ptr %i.cj, align 1, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %.370, i64 6
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !16
  %i.cp = getelementptr inbounds nuw i8, ptr %.05071, i64 7 ; 2 uses
  %i.cq = load i8, ptr %i.cm, align 1, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %.370, i64 7
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !16
  %i.cs = getelementptr inbounds nuw i8, ptr %.05071, i64 8
  %i.ct = load i8, ptr %i.cp, align 1, !tbaa !16
  %i.cu = getelementptr inbounds nuw i8, ptr %.370, i64 8 ; 2 uses
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !16
  %exitcond.not.7 = icmp eq ptr %i.cp, %scevgep
  br i1 %exitcond.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !36

bb.e:                                             ; preds = %bb.c
  %i.cv = load i8, ptr %.05396, align 1, !tbaa !16 ; 2 uses
  switch i8 %i.cv, label %bb.h [
    i8 92, label %bb.f
    i8 47, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.cw = getelementptr inbounds nuw i8, ptr %.05396, i64 1 ; 7 uses
  store i8 92, ptr %.05197, align 1, !tbaa !16
  %i.cx = load ptr, ptr %2, align 8, !tbaa !17
  %i.cy = call i32 %i.cx(ptr noundef nonnull %i.cw) #8 ; 7 uses
  %.484 = getelementptr inbounds nuw i8, ptr %.05197, i64 1 ; 6 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %iter.check165, label %.loopexit65

iter.check165:                                    ; preds = %bb.f
  %i.da = zext nneg i32 %i.cy to i64              ; 5 uses
  %min.iters.check148 = icmp ult i32 %i.cy, 4
  %i.db = sub i64 %.05396146, %.05197131
  %diff.check147 = icmp ugt i64 %i.db, -32
  %or.cond254 = select i1 %min.iters.check148, i1 true, i1 %diff.check147
  br i1 %or.cond254, label %.lr.ph88.preheader, label %vector.main.loop.iter.check149

vector.main.loop.iter.check149:                   ; preds = %iter.check165
  %min.iters.check150 = icmp ult i32 %i.cy, 32
  br i1 %min.iters.check150, label %vec.epilog.ph169, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check149
  %i.dc = and i64 %i.da, 28
  %n.vec152 = and i64 %i.da, 2147483616           ; 6 uses
  %i.dd = getelementptr i8, ptr %.484, i64 %n.vec152 ; 2 uses
  %i.de = getelementptr i8, ptr %i.cw, i64 %n.vec152 ; 2 uses
  %i.df = trunc nuw nsw i64 %n.vec152 to i32
  %i.dg = sub nsw i32 %i.cy, %i.df
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body153 ] ; 3 uses
  %next.gep155 = getelementptr i8, ptr %.484, i64 %index154 ; 2 uses
  %next.gep156 = getelementptr i8, ptr %i.cw, i64 %index154 ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep156, i64 16
  %wide.load157 = load <16 x i8>, ptr %next.gep156, align 1, !tbaa !16
  %wide.load158 = load <16 x i8>, ptr %i.dh, align 1, !tbaa !16
  %i.di = getelementptr i8, ptr %next.gep155, i64 16
  store <16 x i8> %wide.load157, ptr %next.gep155, align 1, !tbaa !16
  store <16 x i8> %wide.load158, ptr %i.di, align 1, !tbaa !16
  %index.next159 = add nuw i64 %index154, 32      ; 2 uses
  %i.dj = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.dj, label %middle.block160, label %vector.body153, !llvm.loop !37

middle.block160:                                  ; preds = %vector.body153
  %cmp.n161 = icmp eq i64 %n.vec152, %i.da
  br i1 %cmp.n161, label %.loopexit65, label %vec.epilog.iter.check167

vec.epilog.iter.check167:                         ; preds = %middle.block160
  %min.epilog.iters.check168 = icmp eq i64 %i.dc, 0
  br i1 %min.epilog.iters.check168, label %.lr.ph88.preheader, label %vec.epilog.ph169, !prof !47

vec.epilog.ph169:                                 ; preds = %vector.main.loop.iter.check149, %vec.epilog.iter.check167
  %vec.epilog.resume.val162 = phi i64 [ %n.vec152, %vec.epilog.iter.check167 ], [ 0, %vector.main.loop.iter.check149 ]
  %n.vec170 = and i64 %i.da, 2147483644           ; 5 uses
  %i.dk = getelementptr i8, ptr %.484, i64 %n.vec170 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.cw, i64 %n.vec170 ; 2 uses
  %i.dm = trunc nuw nsw i64 %n.vec170 to i32
  %i.dn = sub nsw i32 %i.cy, %i.dm
  br label %vec.epilog.vector.body171

vec.epilog.vector.body171:                        ; preds = %vec.epilog.vector.body171, %vec.epilog.ph169
  %index172 = phi i64 [ %vec.epilog.resume.val162, %vec.epilog.ph169 ], [ %index.next176, %vec.epilog.vector.body171 ] ; 3 uses
  %next.gep173 = getelementptr i8, ptr %.484, i64 %index172
  %next.gep174 = getelementptr i8, ptr %i.cw, i64 %index172
  %wide.load175 = load <4 x i8>, ptr %next.gep174, align 1, !tbaa !16
  store <4 x i8> %wide.load175, ptr %next.gep173, align 1, !tbaa !16
  %index.next176 = add nuw i64 %index172, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next176, %n.vec170
  br i1 %i.do, label %vec.epilog.middle.block177, label %vec.epilog.vector.body171, !llvm.loop !38

vec.epilog.middle.block177:                       ; preds = %vec.epilog.vector.body171
  %cmp.n178 = icmp eq i64 %n.vec170, %i.da
  br i1 %cmp.n178, label %.loopexit65, label %.lr.ph88.preheader

.lr.ph88.preheader:                               ; preds = %iter.check165, %vec.epilog.iter.check167, %vec.epilog.middle.block177
  %.487.ph = phi ptr [ %.484, %iter.check165 ], [ %i.dd, %vec.epilog.iter.check167 ], [ %i.dk, %vec.epilog.middle.block177 ]
  %.35686.ph = phi ptr [ %i.cw, %iter.check165 ], [ %i.de, %vec.epilog.iter.check167 ], [ %i.dl, %vec.epilog.middle.block177 ]
  %.26085.ph = phi i32 [ %i.cy, %iter.check165 ], [ %i.dg, %vec.epilog.iter.check167 ], [ %i.dn, %vec.epilog.middle.block177 ]
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %.lr.ph88
  %.487 = phi ptr [ %.4, %.lr.ph88 ], [ %.487.ph, %.lr.ph88.preheader ] ; 2 uses
  %.35686 = phi ptr [ %i.dq, %.lr.ph88 ], [ %.35686.ph, %.lr.ph88.preheader ] ; 2 uses
  %.26085 = phi i32 [ %i.dp, %.lr.ph88 ], [ %.26085.ph, %.lr.ph88.preheader ] ; 2 uses
  %i.dp = add nsw i32 %.26085, -1
  %i.dq = getelementptr inbounds nuw i8, ptr %.35686, i64 1 ; 2 uses
  %i.dr = load i8, ptr %.35686, align 1, !tbaa !16
  store i8 %i.dr, ptr %.487, align 1, !tbaa !16
  %.4 = getelementptr inbounds nuw i8, ptr %.487, i64 1 ; 2 uses
  %i.ds = icmp samesign ugt i32 %.26085, 1
  br i1 %i.ds, label %.lr.ph88, label %.loopexit65, !llvm.loop !39

bb.g:                                             ; preds = %bb.e
  %i.dt = getelementptr inbounds nuw i8, ptr %.05197, i64 1
  store i8 92, ptr %.05197, align 1, !tbaa !16
  %i.du = getelementptr inbounds nuw i8, ptr %.05396, i64 1
  %i.dv = load i8, ptr %.05396, align 1, !tbaa !16
  %i.dw = getelementptr inbounds nuw i8, ptr %.05197, i64 2
  store i8 %i.dv, ptr %i.dt, align 1, !tbaa !16
  br label %.loopexit65

bb.h:                                             ; preds = %bb.e
  %i.dx = zext i8 %i.cv to i32
  %i.dy = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.dz = call i32 %i.dy(i32 noundef %i.dx, i32 noundef 7) #8
  %.not63 = icmp eq i32 %i.dz, 0
  br i1 %.not63, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ea = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.eb = load i8, ptr %.05396, align 1, !tbaa !16
  %i.ec = zext i8 %i.eb to i32
  %i.ed = call i32 %i.ea(i32 noundef %i.ec, i32 noundef 9) #8
  %.not64 = icmp eq i32 %i.ed, 0
  br i1 %.not64, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.05396, i64 1 ; 5 uses
  %i.ef = load i8, ptr %.05396, align 1, !tbaa !16
  %i.eg = zext i8 %i.ef to i32
  %i.eh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 5, ptr noundef nonnull @.str.83, i32 noundef %i.eg) #8 ; 0 uses
  %i.ei = call i32 @onigenc_str_bytelen_null(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull %i.a) #8 ; 4 uses
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %iter.check, label %.loopexit65

iter.check:                                       ; preds = %bb.j
  %i.ek = zext nneg i32 %i.ei to i64              ; 8 uses
  %i.el = getelementptr i8, ptr %i.a, i64 %i.ek
  %scevgep108 = getelementptr i8, ptr %i.el, i64 -1
  %min.iters.check = icmp ult i32 %i.ei, 8
  %i.em = sub i64 %i.b, %.05197131
  %diff.check = icmp ugt i64 %i.em, -32
  %or.cond255 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond255, label %.lr.ph94.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check132 = icmp ult i32 %i.ei, 32
  br i1 %min.iters.check132, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.en = and i64 %i.ek, 24
  %n.vec = and i64 %i.ek, 2147483616              ; 5 uses
  %i.eo = getelementptr i8, ptr %i.a, i64 %n.vec
  %i.ep = getelementptr i8, ptr %.05197, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %index ; 2 uses
  %next.gep133 = getelementptr i8, ptr %.05197, i64 %index ; 2 uses
  %i.eq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !16
  %wide.load134 = load <16 x i8>, ptr %i.eq, align 1, !tbaa !16
  %i.er = getelementptr i8, ptr %next.gep133, i64 16
  store <16 x i8> %wide.load, ptr %next.gep133, align 1, !tbaa !16
  store <16 x i8> %wide.load134, ptr %i.er, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ek
  br i1 %cmp.n, label %.loopexit65, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.en, 0
  br i1 %min.epilog.iters.check, label %.lr.ph94.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec136 = and i64 %i.ek, 2147483640           ; 4 uses
  %i.et = getelementptr i8, ptr %i.a, i64 %n.vec136
  %i.eu = getelementptr i8, ptr %.05197, i64 %n.vec136 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index137 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 3 uses
  %next.gep138 = getelementptr i8, ptr %i.a, i64 %index137
  %next.gep139 = getelementptr i8, ptr %.05197, i64 %index137
  %wide.load140 = load <8 x i8>, ptr %next.gep138, align 1, !tbaa !16
  store <8 x i8> %wide.load140, ptr %next.gep139, align 1, !tbaa !16
  %index.next141 = add nuw i64 %index137, 8       ; 2 uses
  %i.ev = icmp eq i64 %index.next141, %n.vec136
  br i1 %i.ev, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !41

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n142 = icmp eq i64 %n.vec136, %i.ek
  br i1 %cmp.n142, label %.loopexit65, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.193.ph = phi ptr [ %i.a, %iter.check ], [ %i.eo, %vec.epilog.iter.check ], [ %i.et, %vec.epilog.middle.block ] ; 3 uses
  %.592.ph = phi ptr [ %.05197, %iter.check ], [ %i.ep, %vec.epilog.iter.check ], [ %i.eu, %vec.epilog.middle.block ] ; 2 uses
  %i.ew = add i64 %i.b, %i.ek
  %.193.ph265 = ptrtoaddr ptr %.193.ph to i64     ; 2 uses
  %i.ex = sub i64 %i.ew, %.193.ph265
  %i.ey = add i64 %i.t, %i.ek
  %i.ez = sub i64 %i.ey, %.193.ph265
  %xtraiter266 = and i64 %i.ex, 7                 ; 2 uses
  %lcmp.mod267.not = icmp eq i64 %xtraiter266, 0
  br i1 %lcmp.mod267.not, label %.lr.ph94.prol.loopexit, label %.lr.ph94.prol

.lr.ph94.prol:                                    ; preds = %.lr.ph94.preheader, %.lr.ph94.prol
  %.193.prol = phi ptr [ %i.fa, %.lr.ph94.prol ], [ %.193.ph, %.lr.ph94.preheader ] ; 2 uses
  %.592.prol = phi ptr [ %i.fc, %.lr.ph94.prol ], [ %.592.ph, %.lr.ph94.preheader ] ; 2 uses
  %prol.iter268 = phi i64 [ %prol.iter268.next, %.lr.ph94.prol ], [ 0, %.lr.ph94.preheader ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.193.prol, i64 1 ; 2 uses
  %i.fb = load i8, ptr %.193.prol, align 1, !tbaa !16
  %i.fc = getelementptr inbounds nuw i8, ptr %.592.prol, i64 1 ; 3 uses
  store i8 %i.fb, ptr %.592.prol, align 1, !tbaa !16
  %prol.iter268.next = add i64 %prol.iter268, 1   ; 2 uses
  %prol.iter268.cmp.not = icmp eq i64 %prol.iter268.next, %xtraiter266
  br i1 %prol.iter268.cmp.not, label %.lr.ph94.prol.loopexit, label %.lr.ph94.prol, !llvm.loop !42

.lr.ph94.prol.loopexit:                           ; preds = %.lr.ph94.prol, %.lr.ph94.preheader
  %.lcssa263.unr = phi ptr [ poison, %.lr.ph94.preheader ], [ %i.fc, %.lr.ph94.prol ]
  %.193.unr = phi ptr [ %.193.ph, %.lr.ph94.preheader ], [ %i.fa, %.lr.ph94.prol ]
  %.592.unr = phi ptr [ %.592.ph, %.lr.ph94.preheader ], [ %i.fc, %.lr.ph94.prol ]
  %i.fd = icmp ult i64 %i.ez, 7
  br i1 %i.fd, label %.loopexit65, label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.prol.loopexit, %.lr.ph94
  %.193 = phi ptr [ %i.fz, %.lr.ph94 ], [ %.193.unr, %.lr.ph94.prol.loopexit ] ; 9 uses
  %.592 = phi ptr [ %i.gb, %.lr.ph94 ], [ %.592.unr, %.lr.ph94.prol.loopexit ] ; 9 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.193, i64 1
  %i.ff = load i8, ptr %.193, align 1, !tbaa !16
  %i.fg = getelementptr inbounds nuw i8, ptr %.592, i64 1
  store i8 %i.ff, ptr %.592, align 1, !tbaa !16
  %i.fh = getelementptr inbounds nuw i8, ptr %.193, i64 2
  %i.fi = load i8, ptr %i.fe, align 1, !tbaa !16
  %i.fj = getelementptr inbounds nuw i8, ptr %.592, i64 2
  store i8 %i.fi, ptr %i.fg, align 1, !tbaa !16
  %i.fk = getelementptr inbounds nuw i8, ptr %.193, i64 3
  %i.fl = load i8, ptr %i.fh, align 1, !tbaa !16
  %i.fm = getelementptr inbounds nuw i8, ptr %.592, i64 3
  store i8 %i.fl, ptr %i.fj, align 1, !tbaa !16
  %i.fn = getelementptr inbounds nuw i8, ptr %.193, i64 4
  %i.fo = load i8, ptr %i.fk, align 1, !tbaa !16
  %i.fp = getelementptr inbounds nuw i8, ptr %.592, i64 4
  store i8 %i.fo, ptr %i.fm, align 1, !tbaa !16
  %i.fq = getelementptr inbounds nuw i8, ptr %.193, i64 5
  %i.fr = load i8, ptr %i.fn, align 1, !tbaa !16
  %i.fs = getelementptr inbounds nuw i8, ptr %.592, i64 5
  store i8 %i.fr, ptr %i.fp, align 1, !tbaa !16
  %i.ft = getelementptr inbounds nuw i8, ptr %.193, i64 6
  %i.fu = load i8, ptr %i.fq, align 1, !tbaa !16
  %i.fv = getelementptr inbounds nuw i8, ptr %.592, i64 6
  store i8 %i.fu, ptr %i.fs, align 1, !tbaa !16
  %i.fw = getelementptr inbounds nuw i8, ptr %.193, i64 7 ; 2 uses
  %i.fx = load i8, ptr %i.ft, align 1, !tbaa !16
  %i.fy = getelementptr inbounds nuw i8, ptr %.592, i64 7
  store i8 %i.fx, ptr %i.fv, align 1, !tbaa !16
  %i.fz = getelementptr inbounds nuw i8, ptr %.193, i64 8
  %i.ga = load i8, ptr %i.fw, align 1, !tbaa !16
  %i.gb = getelementptr inbounds nuw i8, ptr %.592, i64 8 ; 2 uses
  store i8 %i.ga, ptr %i.fy, align 1, !tbaa !16
  %exitcond109.not.7 = icmp eq ptr %i.fw, %scevgep108
  br i1 %exitcond109.not.7, label %.loopexit65, label %.lr.ph94, !llvm.loop !43

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.gc = getelementptr inbounds nuw i8, ptr %.05396, i64 1
  %i.gd = load i8, ptr %.05396, align 1, !tbaa !16
  %i.ge = getelementptr inbounds nuw i8, ptr %.05197, i64 1
  store i8 %i.gd, ptr %.05197, align 1, !tbaa !16
  br label %.loopexit65

.loopexit65:                                      ; preds = %.loopexit, %.lr.ph81, %.lr.ph88, %.lr.ph94.prol.loopexit, %.lr.ph94, %middle.block196, %vec.epilog.middle.block213, %middle.block160, %vec.epilog.middle.block177, %middle.block, %vec.epilog.middle.block, %.preheader68, %.preheader, %bb.f, %bb.j, %bb.k, %bb.g
  %.457 = phi ptr [ %i.ee, %bb.j ], [ %i.ar, %.lr.ph81 ], [ %i.ee, %.lr.ph94.prol.loopexit ], [ %i.du, %bb.g ], [ %i.gc, %bb.k ], [ %i.ee, %middle.block ], [ %i.cw, %bb.f ], [ %.05396, %.preheader ], [ %.05396, %.preheader68 ], [ %i.dq, %.lr.ph88 ], [ %i.ee, %vec.epilog.middle.block ], [ %i.dl, %vec.epilog.middle.block177 ], [ %i.de, %middle.block160 ], [ %i.am, %vec.epilog.middle.block213 ], [ %i.af, %middle.block196 ], [ %i.ee, %.lr.ph94 ], [ %i.ax, %.loopexit ] ; 2 uses
  %.6 = phi ptr [ %.05197, %bb.j ], [ %i.at, %.lr.ph81 ], [ %i.gb, %.lr.ph94 ], [ %i.dw, %bb.g ], [ %i.ge, %bb.k ], [ %i.ep, %middle.block ], [ %.484, %bb.f ], [ %.05197, %.preheader ], [ %.05197, %.preheader68 ], [ %.4, %.lr.ph88 ], [ %i.eu, %vec.epilog.middle.block ], [ %i.dk, %vec.epilog.middle.block177 ], [ %i.dd, %middle.block160 ], [ %i.al, %vec.epilog.middle.block213 ], [ %i.ae, %middle.block196 ], [ %.lcssa263.unr, %.lr.ph94.prol.loopexit ], [ %.3.lcssa, %.loopexit ] ; 2 uses
  %i.gf = icmp ult ptr %.457, %4
  br i1 %i.gf, label %bb.c, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %.loopexit65, %bb.b
  %.051.lcssa = phi ptr [ %i.o, %bb.b ], [ %.6, %.loopexit65 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.051.lcssa, i64 1
  store i8 47, ptr %.051.lcssa, align 1, !tbaa !16
  store i8 0, ptr %i.gg, align 1, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"OnigEncodingTypeST", !12, i64 0, !13, i64 8, !9, i64 16, !9, i64 20, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !9, i64 144, !9, i64 148, !9, i64 152}
!15 = !{!14, !9, i64 20}
!16 = !{!8, !8, i64 0}
!17 = !{!14, !12, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{null}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = !{!12, !12, i64 0}
!23 = !{!"p1 _ZTS18OnigEncodingTypeST", !12, i64 0}
!24 = !{!"", !23, i64 0, !13, i64 8, !13, i64 16}
!25 = !{!24, !23, i64 0}
!26 = !{!24, !13, i64 8}
!27 = !{!24, !13, i64 16}
!28 = !{!14, !12, i64 32}
!29 = distinct !{!29, !18, !45, !46}
!30 = distinct !{!30, !18, !45, !46}
!31 = distinct !{!31, !18, !45}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18, !45, !46}
!34 = distinct !{!34, !18, !45, !46}
!35 = distinct !{!35, !49}
!36 = distinct !{!36, !18, !45}
!37 = distinct !{!37, !18, !45, !46}
!38 = distinct !{!38, !18, !45, !46}
!39 = distinct !{!39, !18, !45}
!40 = distinct !{!40, !18, !45, !46}
!41 = distinct !{!41, !18, !45, !46}
!42 = distinct !{!42, !49}
!43 = distinct !{!43, !18, !45}
!44 = distinct !{!44, !18}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!"branch_weights", i32 4, i32 28}
!48 = !{!"branch_weights", i32 8, i32 24}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!14, !12, i64 88}
end_hunk_0
