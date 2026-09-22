Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fitscore?download=true
inline.NumInlined: 175
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@ffmkky:bb.a
  br i1 %i.by, label %bb.y, label %bb.ad

.thread202:                                       ; preds = %.thread183
  %i.bz = load i8, ptr %1, align 1, !tbaa !29
  %i.ca = icmp eq i8 %i.bz, 39
  br i1 %i.ca, label %.thread214, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.cb = icmp ugt i64 %.1132, 77
  br i1 %i.cb, label %bb.z, label %.thread214

bb.z:                                             ; preds = %bb.y
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull @.str.162)
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %0)
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %1)
  store i32 207, ptr %4, align 4, !tbaa !27
  br label %bb.ao

.thread214:                                       ; preds = %.thread202, %bb.y
  %.2194206220 = phi i32 [ %.2, %bb.y ], [ 0, %.thread202 ] ; 3 uses
  %.1124191209219 = phi i32 [ %.1124, %bb.y ], [ 0, %.thread202 ] ; 3 uses
  %.1132188212218 = phi i64 [ %.1132, %bb.y ], [ 10, %.thread202 ] ; 2 uses
  %i.cc = sub nuw nsw i64 80, %.1132188212218
  %i.cd = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull %1, i64 noundef %i.cc) #28 ; 0 uses
  %i.ce = add i64 %.1132188212218, %i.l           ; 3 uses
  %i.cf = call i64 @llvm.umin.i64(i64 %i.ce, i64 80) ; 3 uses
  %i.cg = icmp ugt i64 %i.ce, 79
  br i1 %i.cg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.thread214
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 79
  store i8 39, ptr %i.ch, align 1, !tbaa !29
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread214
  %.not164 = icmp eq ptr %2, null
  br i1 %.not164, label %.thread180, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ci = load i8, ptr %2, align 1, !tbaa !29
  %i.cj = icmp ne i8 %i.ci, 0
  %i.ck = icmp ult i64 %i.ce, 30
  %or.cond3 = and i1 %i.ck, %i.cj
  br i1 %or.cond3, label %.preheader.preheader, label %bb.ai

.preheader.preheader:                             ; preds = %bb.ac
  %scevgep241 = getelementptr i8, ptr %3, i64 %i.cf
  %i.cl = sub nsw i64 30, %i.cf
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep241, i8 32, i64 %i.cl, i1 false), !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 30
  store i8 0, ptr %i.cm, align 1, !tbaa !29
  br label %bb.ai

bb.ad:                                            ; preds = %.thread202, %bb.x
  %.1132188213 = phi i64 [ 10, %.thread202 ], [ %.1132, %bb.x ] ; 2 uses
  %.1124191211 = phi i32 [ 0, %.thread202 ], [ %.1124, %bb.x ]
  %.2194208 = phi i32 [ 0, %.thread202 ], [ %.2, %bb.x ]
  %i.cn = add i64 %.1132188213, %i.l              ; 4 uses
  %i.co = icmp ugt i64 %i.cn, 80
  br i1 %i.co, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull @.str.162)
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %0)
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %1)
  store i32 207, ptr %4, align 4, !tbaa !27
  br label %bb.ao

bb.af:                                            ; preds = %bb.ad
  %i.cp = icmp samesign ult i64 %i.cn, 30
  br i1 %i.cp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cq = sub nuw nsw i64 30, %i.cn
  %i.cr = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull @.str.163, i64 noundef %i.cq) #28 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.cs = sub i64 80, %.1132188213
  %i.ct = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull %1, i64 noundef %i.cs) #28 ; 0 uses
  %i.cu = call i64 @llvm.umax.i64(i64 %i.cn, i64 30)
  br label %bb.ai

bb.ai:                                            ; preds = %.preheader.preheader, %bb.ac, %bb.ah
  %.1124191210 = phi i32 [ %.1124191209219, %.preheader.preheader ], [ %.1124191209219, %bb.ac ], [ %.1124191211, %bb.ah ] ; 3 uses
  %.2194207 = phi i32 [ %.2194206220, %.preheader.preheader ], [ %.2194206220, %bb.ac ], [ %.2194208, %bb.ah ] ; 3 uses
  %.0130 = phi i64 [ 30, %.preheader.preheader ], [ %i.cf, %bb.ac ], [ %i.cu, %bb.ah ] ; 2 uses
  %i.cv = icmp ne ptr %2, null
  %i.cw = icmp samesign ult i64 %.0130, 77
  %or.cond5 = and i1 %i.cv, %i.cw
  br i1 %or.cond5, label %bb.aj, label %.thread180

bb.aj:                                            ; preds = %bb.ai
  %char0 = load i8, ptr %2, align 1
  %.not165 = icmp eq i8 %char0, 0
  br i1 %.not165, label %.thread180, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %strlen166 = call i64 @strlen(ptr nonnull dereferenceable(1) %3)
  %endptr167 = getelementptr inbounds i8, ptr %3, i64 %strlen166
  store i32 2109216, ptr %endptr167, align 1
  %i.cx = sub nuw nsw i64 77, %.0130
  br label %.thread180.sink.split

bb.al:                                            ; preds = %bb.w
  %i.cy = icmp eq i64 %.1132, 10
  br i1 %i.cy, label %.thread196, label %.thread180

.thread196:                                       ; preds = %.thread183, %bb.al
  %.1124192201 = phi i32 [ %.1124, %bb.al ], [ 0, %.thread183 ] ; 2 uses
  %.2195200 = phi i32 [ %.2, %bb.al ], [ 0, %.thread183 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 32, ptr %i.cz, align 1, !tbaa !29
  %.not163 = icmp eq ptr %2, null
  br i1 %.not163, label %.thread180, label %.thread180.sink.split

.thread180.sink.split:                            ; preds = %.thread196, %bb.ak
  %.sink = phi i64 [ %i.cx, %bb.ak ], [ 70, %.thread196 ]
  %.2193.ph = phi i32 [ %.2194207, %bb.ak ], [ %.2195200, %.thread196 ]
  %.1124190.ph = phi i32 [ %.1124191210, %bb.ak ], [ %.1124192201, %.thread196 ]
  %i.da = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull %2, i64 noundef %.sink) #28 ; 0 uses
  br label %.thread180

.thread180:                                       ; preds = %.thread180.sink.split, %bb.ab, %bb.al, %.thread196, %bb.ai, %bb.aj
  %.2193 = phi i32 [ %.2194207, %bb.aj ], [ %.2, %bb.al ], [ %.2194206220, %bb.ab ], [ %.2195200, %.thread196 ], [ %.2194207, %bb.ai ], [ %.2193.ph, %.thread180.sink.split ]
  %.1124190 = phi i32 [ %.1124191210, %bb.aj ], [ %.1124, %bb.al ], [ %.1124191209219, %bb.ab ], [ %.1124192201, %.thread196 ], [ %.1124191210, %bb.ai ], [ %.1124190.ph, %.thread180.sink.split ]
  %i.db = icmp eq i32 %.1124190, 1
  %i.dc = icmp eq i32 %.2193, 1
  %or.cond = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %or.cond, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.thread180
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull @.str.165)
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %3)
  br label %bb.an

bb.an:                                            ; preds = %.thread180, %bb.am
  %i.dd = load i32, ptr %4, align 4, !tbaa !27
  br label %bb.ao

bb.ao:                                            ; preds = %bb.a, %bb.an, %bb.ae, %bb.z, %bb.v, %bb.p, %bb.f
  %.0133 = phi i32 [ 207, %bb.v ], [ 207, %bb.f ], [ 207, %bb.z ], [ %i.dd, %bb.an ], [ 207, %bb.ae ], [ 207, %bb.p ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0133
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok_r(ptr noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local i32 @ffmkey(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [81 x i8], align 16               ; 55 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.f = load i32, ptr %i.e, align 4, !tbaa !35
  %.not = icmp eq i32 %i.b, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.b, 1
  %i.h = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.g, ptr noundef null, ptr noundef %2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 80) #28 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 0, ptr %i.j, align 16, !tbaa !29
  %i.k = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29 ; 12 uses
  %.not40 = icmp eq i64 %i.k, 0
  br i1 %.not40, label %.lr.ph35.preheader, label %iter.check

iter.check:                                       ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.k, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check46 = icmp ult i64 %i.k, 32
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.k, 24
  %n.vec = and i64 %i.k, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue109, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue109 ] ; 33 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <16 x i8>, ptr %i.m, align 16, !tbaa !29
  %wide.load47 = load <16 x i8>, ptr %i.n, align 16, !tbaa !29
  %i.o = add <16 x i8> %wide.load, splat (i8 -127)
  %i.p = add <16 x i8> %wide.load47, splat (i8 -127)
  %i.q = icmp ult <16 x i8> %i.o, splat (i8 -95)  ; 16 uses
  %i.r = icmp ult <16 x i8> %i.p, splat (i8 -95)  ; 16 uses
  %i.s = extractelement <16 x i1> %i.q, i64 0
  br i1 %i.s, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 32, ptr %i.m, align 16, !tbaa !29
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.t = extractelement <16 x i1> %i.q, i64 1
  br i1 %i.t, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 32, ptr %i.v, align 1, !tbaa !29
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue
  %i.w = extractelement <16 x i1> %i.q, i64 2
  br i1 %i.w, label %pred.store.if50, label %pred.store.continue51

pred.store.if50:                                  ; preds = %pred.store.continue49
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i8 32, ptr %i.y, align 2, !tbaa !29
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue49
  %i.z = extractelement <16 x i1> %i.q, i64 3
  br i1 %i.z, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  store i8 32, ptr %i.ab, align 1, !tbaa !29
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %i.ac = extractelement <16 x i1> %i.q, i64 4
  br i1 %i.ac, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue53
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i8 32, ptr %i.ae, align 4, !tbaa !29
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %i.af = extractelement <16 x i1> %i.q, i64 5
  br i1 %i.af, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 5
  store i8 32, ptr %i.ah, align 1, !tbaa !29
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %i.ai = extractelement <16 x i1> %i.q, i64 6
  br i1 %i.ai, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  store i8 32, ptr %i.ak, align 2, !tbaa !29
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.al = extractelement <16 x i1> %i.q, i64 7
  br i1 %i.al, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 7
  store i8 32, ptr %i.an, align 1, !tbaa !29
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.ao = extractelement <16 x i1> %i.q, i64 8
  br i1 %i.ao, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i8 32, ptr %i.aq, align 8, !tbaa !29
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %i.ar = extractelement <16 x i1> %i.q, i64 9
  br i1 %i.ar, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 9
  store i8 32, ptr %i.at, align 1, !tbaa !29
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.au = extractelement <16 x i1> %i.q, i64 10
  br i1 %i.au, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 32, ptr %i.aw, align 2, !tbaa !29
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %i.ax = extractelement <16 x i1> %i.q, i64 11
  br i1 %i.ax, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 11
  store i8 32, ptr %i.az, align 1, !tbaa !29
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %i.ba = extractelement <16 x i1> %i.q, i64 12
  br i1 %i.ba, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i8 32, ptr %i.bc, align 4, !tbaa !29
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %i.bd = extractelement <16 x i1> %i.q, i64 13
  br i1 %i.bd, label %pred.store.if72, label %pred.store.continue73

pred.store.if72:                                  ; preds = %pred.store.continue71
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 13
  store i8 32, ptr %i.bf, align 1, !tbaa !29
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue71
  %i.bg = extractelement <16 x i1> %i.q, i64 14
  br i1 %i.bg, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue73
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 14
  store i8 32, ptr %i.bi, align 2, !tbaa !29
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue73
  %i.bj = extractelement <16 x i1> %i.q, i64 15
  br i1 %i.bj, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 15
  store i8 32, ptr %i.bl, align 1, !tbaa !29
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %i.bm = extractelement <16 x i1> %i.r, i64 0
  br i1 %i.bm, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i8 32, ptr %i.bo, align 16, !tbaa !29
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %i.bp = extractelement <16 x i1> %i.r, i64 1
  br i1 %i.bp, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 17
  store i8 32, ptr %i.br, align 1, !tbaa !29
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.bs = extractelement <16 x i1> %i.r, i64 2
  br i1 %i.bs, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 18
  store i8 32, ptr %i.bu, align 2, !tbaa !29
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %i.bv = extractelement <16 x i1> %i.r, i64 3
  br i1 %i.bv, label %pred.store.if84, label %pred.store.continue85

end_hunk_0
begin_hunk_1_@fits_translate_keyword:bb.a

bb.ap:                                            ; preds = %bb.an
  %i.eb = sext i32 %.5193 to i64
  %i.ec = getelementptr inbounds i8, ptr %1, i64 %i.eb
  store i8 %i.dp, ptr %i.ec, align 1, !tbaa !29
  br label %bb.aw

bb.aq:                                            ; preds = %bb.an
  %i.ed = icmp eq i32 %.7224, -1
  %spec.select275 = select i1 %i.ed, i32 %4, i32 %.7224 ; 3 uses
  %i.ee = icmp sgt i32 %spec.select275, 0
  br i1 %i.ee, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  %i.ef = add nsw i32 %spec.select275, %5         ; 4 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph395, label %._crit_edge401

.lr.ph400.preheader:                              ; preds = %.lr.ph395
  %i.eh = sext i32 %.5193 to i64
  br label %.lr.ph400

.lr.ph395:                                        ; preds = %bb.ar, %.lr.ph395
  %.0206393 = phi i32 [ %i.ei, %.lr.ph395 ], [ 1, %bb.ar ]
  %i.ei = mul nuw nsw i32 %.0206393, 10           ; 3 uses
  %.not425 = icmp samesign ugt i32 %i.ei, %i.ef
  br i1 %.not425, label %.lr.ph400.preheader, label %.lr.ph395, !llvm.loop !112

.lr.ph400:                                        ; preds = %.lr.ph400.preheader, %.lr.ph400
  %indvars.iv442 = phi i64 [ %i.eh, %.lr.ph400.preheader ], [ %indvars.iv.next443, %.lr.ph400 ] ; 2 uses
  %.1207.in398 = phi i32 [ %i.ei, %.lr.ph400.preheader ], [ %.1207, %.lr.ph400 ] ; 2 uses
  %.1207 = udiv i32 %.1207.in398, 10              ; 2 uses
  %i.ej = udiv i32 %i.ef, %.1207
  %i.ek = urem i32 %i.ej, 10
  %i.el = trunc nuw nsw i32 %i.ek to i8
  %i.em = or disjoint i8 %i.el, 48
  %i.en = getelementptr inbounds i8, ptr %1, i64 %indvars.iv442
  store i8 %i.em, ptr %i.en, align 1, !tbaa !29
  %indvars.iv.next443 = add nsw i64 %indvars.iv442, 1 ; 2 uses
  %.not269 = icmp samesign ult i32 %.1207.in398, 100
  br i1 %.not269, label %._crit_edge401.loopexit, label %.lr.ph400, !llvm.loop !113

._crit_edge401.loopexit:                          ; preds = %.lr.ph400
  %i.eo = trunc nsw i64 %indvars.iv.next443 to i32
  br label %._crit_edge401

._crit_edge401:                                   ; preds = %bb.ar, %._crit_edge401.loopexit
  %.6194.lcssa = phi i32 [ %i.eo, %._crit_edge401.loopexit ], [ %.5193, %bb.ar ]
  %i.ep = add nsw i32 %.6194.lcssa, -1
  br label %bb.aw

bb.as:                                            ; preds = %bb.an
  %i.eq = icmp eq i8 %i.dt, 109
  %or.cond16 = select i1 %i.eq, i1 %i.ds, i1 false
  br i1 %or.cond16, label %.preheader317, label %bb.at

.preheader317:                                    ; preds = %bb.as
  br i1 %.not521, label %._crit_edge410, label %.lr.ph404

.lr.ph409.preheader:                              ; preds = %.lr.ph404
  %i.er = sext i32 %.5193 to i64
  br label %.lr.ph409

.lr.ph404:                                        ; preds = %.preheader317, %.lr.ph404
  %.2208403 = phi i32 [ %i.es, %.lr.ph404 ], [ 1, %.preheader317 ]
  %i.es = mul nuw nsw i32 %.2208403, 10           ; 3 uses
  %.not426 = icmp samesign ugt i32 %i.es, %.6216
  br i1 %.not426, label %.lr.ph409.preheader, label %.lr.ph404, !llvm.loop !114

.lr.ph409:                                        ; preds = %.lr.ph409.preheader, %.lr.ph409
  %indvars.iv445 = phi i64 [ %i.er, %.lr.ph409.preheader ], [ %indvars.iv.next446, %.lr.ph409 ] ; 2 uses
  %.3209.in407 = phi i32 [ %i.es, %.lr.ph409.preheader ], [ %.3209, %.lr.ph409 ] ; 2 uses
  %.3209 = udiv i32 %.3209.in407, 10              ; 2 uses
  %i.et = udiv i32 %.6216, %.3209
  %i.eu = urem i32 %i.et, 10
  %i.ev = trunc nuw nsw i32 %i.eu to i8
  %i.ew = or disjoint i8 %i.ev, 48
  %i.ex = getelementptr inbounds i8, ptr %1, i64 %indvars.iv445
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !29
  %indvars.iv.next446 = add nsw i64 %indvars.iv445, 1 ; 2 uses
  %.not268 = icmp samesign ult i32 %.3209.in407, 100
  br i1 %.not268, label %._crit_edge410.loopexit, label %.lr.ph409, !llvm.loop !115

._crit_edge410.loopexit:                          ; preds = %.lr.ph409
  %i.ey = trunc nsw i64 %indvars.iv.next446 to i32
  br label %._crit_edge410

._crit_edge410:                                   ; preds = %.preheader317, %._crit_edge410.loopexit
  %.7.lcssa = phi i32 [ %i.ey, %._crit_edge410.loopexit ], [ %.5193, %.preheader317 ]
  %i.ez = add nsw i32 %.7.lcssa, -1
  br label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.fa = icmp eq i8 %i.dt, 97
  %i.fb = sext i32 %.5193 to i64
  %i.fc = getelementptr inbounds i8, ptr %1, i64 %i.fb ; 2 uses
  br i1 %i.fa, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i8 %.5205, ptr %i.fc, align 1, !tbaa !29
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  store i8 %i.dt, ptr %i.fc, align 1, !tbaa !29
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ao, %._crit_edge401, %bb.aq, %bb.au, %bb.av, %._crit_edge410, %bb.ap
  %.9226 = phi i32 [ %.7224, %bb.ao ], [ %.7224, %bb.ap ], [ %i.ef, %._crit_edge401 ], [ %spec.select275, %bb.aq ], [ %.7224, %._crit_edge410 ], [ %.7224, %bb.au ], [ %.7224, %bb.av ]
  %.8 = phi i32 [ %.5193, %bb.ao ], [ %.5193, %bb.ap ], [ %i.ep, %._crit_edge401 ], [ %.5193, %bb.aq ], [ %i.ez, %._crit_edge410 ], [ %.5193, %bb.au ], [ %.5193, %bb.av ]
  %indvars.iv.next449 = add nuw nsw i64 %indvars.iv448, 1 ; 2 uses
  %i.fd = add nsw i32 %.8, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv.next449
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !29
  br label %bb.an, !llvm.loop !116

._crit_edge414:                                   ; preds = %.lr.ph413.preheader, %.preheader
  %i.fe = load i32, ptr %12, align 4, !tbaa !27
  br label %.critedge14

.critedge14:                                      ; preds = %sub_0, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.ae, %.tail312.thread, %.tail312, %bb.a, %._crit_edge414, %bb.c
  %.0240 = phi i32 [ %i.fe, %._crit_edge414 ], [ 115, %bb.c ], [ %i.a, %bb.a ], [ 0, %.tail312 ], [ 0, %.tail312.thread ], [ 0, %sub_0 ], [ 0, %bb.ae ], [ 0, %bb.am ], [ 0, %bb.al ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.af ]
  ret i32 %.0240
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local i32 @fits_translate_keywords(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [81 x i8], align 16               ; 47 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  %i.i = alloca [81 x i8], align 16               ; 15 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  %i.k = load i32, ptr %8, align 4, !tbaa !27     ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = call i32 @ffghsp(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %8) #28 ; 0 uses
  %i.n = load i32, ptr %8, align 4, !tbaa !27     ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  %i.p = load i32, ptr %i.a, align 4
  %i.q = icmp sle i32 %2, %i.p
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph49, label %.loopexit

.lr.ph49:                                         ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 7 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 6 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 5 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 3 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph49, %bb.u
  %.03947 = phi i32 [ %2, %.lr.ph49 ], [ %i.gw, %bb.u ] ; 7 uses
  store i8 0, ptr %i.i, align 16, !tbaa !29
  %i.ac = call i32 @ffgrec(ptr noundef %0, i32 noundef %.03947, ptr noundef nonnull %i.c, ptr noundef nonnull %8) #28 ; 0 uses
  %i.ad = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #29 ; 3 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = icmp sgt i32 %i.ae, 8
  br i1 %i.af, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.c
  %wide.trip.count = and i64 %i.ad, 2147483647    ; 2 uses
  %i.ag = add nsw i64 %wide.trip.count, -8        ; 6 uses
  %min.iters.check = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check54 = icmp ult i64 %i.ag, 32
  br i1 %min.iters.check54, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ah = and i64 %i.ag, 24
  %n.vec = and i64 %i.ag, -32                     ; 4 uses
  %i.ai = or disjoint i64 %n.vec, 8
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue117, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue117 ] ; 33 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %wide.load = load <16 x i8>, ptr %i.ak, align 8, !tbaa !29
  %wide.load55 = load <16 x i8>, ptr %i.al, align 8, !tbaa !29
  %i.am = add <16 x i8> %wide.load, splat (i8 -127)
  %i.an = add <16 x i8> %wide.load55, splat (i8 -127)
  %i.ao = icmp ult <16 x i8> %i.am, splat (i8 -95) ; 16 uses
  %i.ap = icmp ult <16 x i8> %i.an, splat (i8 -95) ; 16 uses
  %i.aq = extractelement <16 x i1> %i.ao, i64 0
  br i1 %i.aq, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 32, ptr %i.ak, align 8, !tbaa !29
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ar = extractelement <16 x i1> %i.ao, i64 1
  br i1 %i.ar, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 9
  store i8 32, ptr %i.at, align 1, !tbaa !29
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue
  %i.au = extractelement <16 x i1> %i.ao, i64 2
  br i1 %i.au, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 32, ptr %i.aw, align 2, !tbaa !29
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.ax = extractelement <16 x i1> %i.ao, i64 3
  br i1 %i.ax, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 11
  store i8 32, ptr %i.az, align 1, !tbaa !29
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.ba = extractelement <16 x i1> %i.ao, i64 4
  br i1 %i.ba, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i8 32, ptr %i.bc, align 4, !tbaa !29
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %i.bd = extractelement <16 x i1> %i.ao, i64 5
  br i1 %i.bd, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 13
  store i8 32, ptr %i.bf, align 1, !tbaa !29
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.bg = extractelement <16 x i1> %i.ao, i64 6
  br i1 %i.bg, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 14
  store i8 32, ptr %i.bi, align 2, !tbaa !29
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %i.bj = extractelement <16 x i1> %i.ao, i64 7
  br i1 %i.bj, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 15
  store i8 32, ptr %i.bl, align 1, !tbaa !29
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %i.bm = extractelement <16 x i1> %i.ao, i64 8
  br i1 %i.bm, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i8 32, ptr %i.bo, align 16, !tbaa !29
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %i.bp = extractelement <16 x i1> %i.ao, i64 9
  br i1 %i.bp, label %pred.store.if72, label %pred.store.continue73

pred.store.if72:                                  ; preds = %pred.store.continue71
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 17
  store i8 32, ptr %i.br, align 1, !tbaa !29
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue71
  %i.bs = extractelement <16 x i1> %i.ao, i64 10
  br i1 %i.bs, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue73
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 18
  store i8 32, ptr %i.bu, align 2, !tbaa !29
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue73
  %i.bv = extractelement <16 x i1> %i.ao, i64 11
  br i1 %i.bv, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 19
  store i8 32, ptr %i.bx, align 1, !tbaa !29
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %i.by = extractelement <16 x i1> %i.ao, i64 12
  br i1 %i.by, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  store i8 32, ptr %i.ca, align 4, !tbaa !29
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %i.cb = extractelement <16 x i1> %i.ao, i64 13
  br i1 %i.cb, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 21
  store i8 32, ptr %i.cd, align 1, !tbaa !29
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.ce = extractelement <16 x i1> %i.ao, i64 14
  br i1 %i.ce, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 22
  store i8 32, ptr %i.cg, align 2, !tbaa !29
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %i.ch = extractelement <16 x i1> %i.ao, i64 15
  br i1 %i.ch, label %pred.store.if84, label %pred.store.continue85

pred.store.if84:                                  ; preds = %pred.store.continue83
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 23
  store i8 32, ptr %i.cj, align 1, !tbaa !29
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  %i.ck = extractelement <16 x i1> %i.ap, i64 0
  br i1 %i.ck, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue85
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i8 32, ptr %i.cm, align 8, !tbaa !29
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %i.cn = extractelement <16 x i1> %i.ap, i64 1
  br i1 %i.cn, label %pred.store.if88, label %pred.store.continue89

pred.store.if88:                                  ; preds = %pred.store.continue87
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 25
  store i8 32, ptr %i.cp, align 1, !tbaa !29
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.if88, %pred.store.continue87
  %i.cq = extractelement <16 x i1> %i.ap, i64 2
  br i1 %i.cq, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue89
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 26
  store i8 32, ptr %i.cs, align 2, !tbaa !29
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %i.ct = extractelement <16 x i1> %i.ap, i64 3
  br i1 %i.ct, label %pred.store.if92, label %pred.store.continue93
end_hunk_1
begin_hunk_2_@ffeqty:bb.a
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !43
  store i64 %i.d, ptr %3, align 8, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not9 = icmp eq ptr %4, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i64, ptr %i.b, align 8, !tbaa !43
  store i64 %i.e, ptr %4, align 8, !tbaa !54
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = load i32, ptr %5, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffeqtyll(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = load i32, ptr %5, align 4, !tbaa !27     ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %ffghdt.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %i.i = load i32, ptr %i.h, align 4, !tbaa !35
  %.not = icmp eq i32 %i.e, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %i.e, 1
  %i.k = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef null, ptr noundef nonnull %5) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %5)
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %5, align 4, !tbaa !27
  br label %ffghdt.exit.thread

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.r = icmp slt i32 %1, 1
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !17   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 944
  %i.u = load i32, ptr %i.t, align 8, !tbaa !58
  %i.v = icmp sgt i32 %1, %i.u
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 302, ptr %5, align 4, !tbaa !27
  br label %ffghdt.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 976
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !59
  %i.y = zext nneg i32 %1 to i64
  %i.z = getelementptr [160 x i8], ptr %i.x, i64 %i.y ; 6 uses
  %i.aa = load i32, ptr %5, align 4, !tbaa !27    ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %ffghdt.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i32, ptr %0, align 8, !tbaa !34    ; 3 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %._crit_edge.i

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !45
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.l, %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 84
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !35
  %.not.i = icmp eq i32 %i.ac, %i.ai
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  %i.aj = add nsw i32 %i.ac, 1
  %i.ak = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef null, ptr noundef nonnull %5), !inline_history !46 ; 0 uses
  br label %bb.p

bb.n:                                             ; preds = %._crit_edge.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.am = load i64, ptr %i.al, align 8, !tbaa !47
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %5), !inline_history !46
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %ffghdt.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 1148
  %i.au = load i32, ptr %i.at, align 4, !tbaa !49
  %.not21.i = icmp eq i32 %i.au, 0
  %i.av = icmp eq i32 %i.as, 1
  %i.aw = select i1 %.not21.i, i1 %i.av, i1 false
  br label %ffghdt.exit

ffghdt.exit:                                      ; preds = %bb.o, %bb.p
  %.0136 = phi i1 [ undef, %bb.o ], [ %i.aw, %bb.p ]
  %i.ax = load i32, ptr %5, align 4, !tbaa !27    ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %ffghdt.exit.thread, label %bb.q

bb.q:                                             ; preds = %ffghdt.exit
  br i1 %.0136, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr i8, ptr %i.z, i64 -20
  %i.ba = call i32 @ffasfm(ptr noundef %i.az, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %5) ; 0 uses
  %.not131 = icmp eq ptr %4, null
  br i1 %.not131, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !54
  store i64 %i.bb, ptr %4, align 8, !tbaa !43
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not132 = icmp eq ptr %3, null
  br i1 %.not132, label %bb.z, label %.sink.split

.thread:                                          ; preds = %bb.l, %bb.q
  %.not128 = icmp eq ptr %2, null
  br i1 %.not128, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.thread
  %i.bc = getelementptr i8, ptr %i.z, i64 -80
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !64
  store i32 %i.bd, ptr %2, align 4, !tbaa !27
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread
  %.not129 = icmp eq ptr %4, null
  br i1 %.not129, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = getelementptr i8, ptr %i.z, i64 -8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !65
  store i64 %i.bf, ptr %4, align 8, !tbaa !43
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.not130 = icmp eq ptr %3, null
  br i1 %.not130, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bg = getelementptr i8, ptr %i.z, i64 -72
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !66
  br label %.sink.split

.sink.split:                                      ; preds = %bb.t, %bb.y
  %.sink = phi i64 [ %i.bh, %bb.y ], [ 1, %bb.t ]
  store i64 %.sink, ptr %3, align 8, !tbaa !43
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.x, %bb.t
  %.not133 = icmp eq ptr %2, null
  br i1 %.not133, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bi = load i32, ptr %5, align 4, !tbaa !27
  br label %ffghdt.exit.thread

bb.ab:                                            ; preds = %bb.z
  %i.bj = getelementptr i8, ptr %i.z, i64 -64
  %6 = getelementptr i8, ptr %i.z, i64 -56
  %7 = load double, ptr %6, align 8, !tbaa !67    ; 8 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !68 ; 6 uses
  %i.bl = fcmp oeq double %i.bk, 1.000000e+00
  %i.bm = fcmp oeq double %7, 0.000000e+00
  %or.cond = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bn = load i32, ptr %5, align 4, !tbaa !27
  br label %ffghdt.exit.thread

bb.ad:                                            ; preds = %bb.ab
  %i.bo = load i32, ptr %2, align 4, !tbaa !27    ; 2 uses
  %i.bp = call i32 @llvm.abs.i32(i32 %i.bo, i1 true) ; 3 uses
  %i.bq = add nsw i32 %i.bp, -11                  ; 2 uses
  %i.br = call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.bq, i32 31) ; 4 uses
  %i.bs = icmp ult i32 %i.br, 36
  %switch.maskindex = zext nneg i32 %i.br to i64
  %switch.shifted = lshr i64 34359771169, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond162 = select i1 %i.bs, i1 %switch.lobit, i1 false
  br i1 %or.cond162, label %switch.lookup, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bt = load i32, ptr %5, align 4, !tbaa !27
  br label %ffghdt.exit.thread

switch.lookup:                                    ; preds = %bb.ad
  %i.bu = zext nneg i32 %i.br to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ffeqtyll, i64 %i.bu
  %switch.load = load double, ptr %switch.gep, align 8
  %i.bv = zext nneg i32 %i.br to i64
  %switch.gep160 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ffeqtyll.1, i64 %i.bv
  %switch.load161 = load double, ptr %switch.gep160, align 8
  %i.bw = fcmp ult double %i.bk, 0.000000e+00     ; 2 uses
  %8 = insertelement <2 x double> poison, double %i.bk, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = insertelement <2 x double> poison, double %switch.load, i64 0
  %11 = insertelement <2 x double> %10, double %switch.load161, i64 1
  %12 = insertelement <2 x double> poison, double %7, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %11, <2 x double> %13) ; 2 uses
  %15 = extractelement <2 x double> %14, i64 0    ; 3 uses
  %i.bx = call double @llvm.fmuladd.f64(double %i.bk, double %15, double %7)
  %.1112 = select i1 %i.bw, double %i.bx, double %15 ; 5 uses
  %16 = extractelement <2 x double> %14, i64 1
  %.1 = select i1 %i.bw, double %15, double %16   ; 7 uses
  %i.by = fcmp une double %7, f0x41E0000000000000
  %i.bz = fcmp une double %7, f0x43E0000000000000
  %or.cond3 = and i1 %i.by, %i.bz
  br i1 %or.cond3, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %switch.lookup
  %i.ca = fptosi double %i.bk to i64
  %i.cb = fcmp olt double %7, f0x41E0000000000000
  %i.cc = fptosi double %7 to i64
  %i.cd = sitofp i64 %i.cc to double
  %.0 = select i1 %i.cb, double %i.cd, double 0.000000e+00
  %i.ce = fcmp une double %.0, %7
  %i.cf = sitofp i64 %i.ca to double
  %i.cg = fcmp une double %i.bk, %i.cf
  %or.cond135 = select i1 %i.ce, i1 true, i1 %i.cg
  br i1 %or.cond135, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %switch.selectcmp.case1 = icmp eq i32 %i.bp, 21
  %switch.selectcmp.case2 = icmp eq i32 %i.bp, 11
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.ch = select i1 %switch.selectcmp, i32 42, i32 82
  br label %bb.ao

bb.ah:                                            ; preds = %bb.af, %switch.lookup
  %i.ci = fcmp oeq double %.1112, -1.280000e+02
  %i.cj = fcmp oeq double %.1, 1.270000e+02
  %or.cond7 = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %or.cond7, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ck = fcmp oge double %.1112, -3.276800e+04
  %i.cl = fcmp ole double %.1, 3.276700e+04
  %or.cond9 = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %or.cond9, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cm = fcmp oge double %.1112, 0.000000e+00    ; 3 uses
  %i.cn = fcmp ole double %.1, 6.553500e+04
  %or.cond11 = select i1 %i.cm, i1 %i.cn, i1 false
  br i1 %or.cond11, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.co = fcmp oge double %.1112, f0xC1E0000000000000
  %i.cp = fcmp ole double %.1, f0x41DFFFFFFFC00000
  %or.cond13 = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond13, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cq = fcmp olt double %.1, f0x41F0000000000000
  %or.cond15 = select i1 %i.cm, i1 %i.cq, i1 false
  br i1 %or.cond15, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cr = fcmp oge double %.1112, f0xC3E0000000000000
  %i.cs = fcmp ole double %.1, f0x43E0000000000000
  %or.cond17 = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %or.cond17, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ct = fcmp ole double %.1, f0x43F0000000000000
  %or.cond19 = select i1 %i.cm, i1 %i.ct, i1 false
  %. = select i1 %or.cond19, i32 80, i32 82
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ag, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.0113 = phi i32 [ 81, %bb.am ], [ %i.ch, %bb.ag ], [ %., %bb.an ], [ 12, %bb.ah ], [ 21, %bb.ai ], [ 20, %bb.aj ], [ 41, %bb.ak ], [ 40, %bb.al ] ; 2 uses
  %i.cu = icmp slt i32 %i.bo, 0
  %i.cv = sub nsw i32 0, %.0113
  %storemerge = select i1 %i.cu, i32 %i.cv, i32 %.0113
  store i32 %storemerge, ptr %2, align 4, !tbaa !27
  %i.cw = load i32, ptr %5, align 4, !tbaa !27
  br label %ffghdt.exit.thread

ffghdt.exit.thread:                               ; preds = %ffghdt.exit, %bb.j, %bb.a, %bb.ao, %bb.ae, %bb.ac, %bb.aa, %bb.i, %bb.f
  %.0114 = phi i32 [ %i.q, %bb.f ], [ 302, %bb.i ], [ %i.c, %bb.a ], [ %i.bn, %bb.ac ], [ %i.bt, %bb.ae ], [ %i.cw, %bb.ao ], [ %i.bi, %bb.aa ], [ %i.ax, %ffghdt.exit ], [ %i.aa, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0114
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #18

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgncl(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %.not = icmp eq i32 %i.c, %i.g
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.c, 1
  %i.i = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.h, ptr noundef null, ptr noundef nonnull %2) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load i32, ptr %i.q, align 8, !tbaa !48
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 235, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 944
  %i.u = load i32, ptr %i.t, align 8, !tbaa !58
  store i32 %i.u, ptr %1, align 4, !tbaa !27
  %i.v = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.f
  %.0 = phi i32 [ %i.o, %bb.f ], [ 235, %bb.h ], [ %i.v, %bb.i ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgnrw(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %.not = icmp eq i32 %i.c, %i.g
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.c, 1
  %i.i = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.h, ptr noundef null, ptr noundef nonnull %2) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load i32, ptr %i.q, align 8, !tbaa !48
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 235, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 960
  %i.u = load i64, ptr %i.t, align 8, !tbaa !60
  store i64 %i.u, ptr %1, align 8, !tbaa !54
  %i.v = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.f
  %.0 = phi i32 [ %i.o, %bb.f ], [ 235, %bb.h ], [ %i.v, %bb.i ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgnrwll(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %.not = icmp eq i32 %i.c, %i.g
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.c, 1
  %i.i = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.h, ptr noundef null, ptr noundef nonnull %2) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load i32, ptr %i.q, align 8, !tbaa !48
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 235, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 960
  %i.u = load i64, ptr %i.t, align 8, !tbaa !60
  store i64 %i.u, ptr %1, align 8, !tbaa !43
  %i.v = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.f
  %.0 = phi i32 [ %i.o, %bb.f ], [ 235, %bb.h ], [ %i.v, %bb.i ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgacl(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [75 x i8], align 16               ; 6 uses
  %i.b = alloca [73 x i8], align 16               ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.d = load i32, ptr %10, align 4, !tbaa !27    ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35
  %.not = icmp eq i32 %i.f, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.f, 1
  %i.l = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.k, ptr noundef null, ptr noundef nonnull %10) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.n = load i64, ptr %i.m, align 8, !tbaa !47
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %10)
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %10, align 4, !tbaa !27
  br label %bb.aa

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.s = icmp slt i32 %1, 1
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 944
  %i.v = load i32, ptr %i.u, align 8, !tbaa !58
  %i.w = icmp sgt i32 %1, %i.v
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 302, ptr %10, align 4, !tbaa !27
  br label %bb.aa

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 976
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59
  %i.z = zext nneg i32 %1 to i64
  %i.aa = getelementptr [160 x i8], ptr %i.y, i64 %i.z ; 6 uses
  %.not60 = icmp eq ptr %2, null
  br i1 %.not60, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %i.aa, i64 -160
  %i.ac = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %i.ab) #28 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not61 = icmp eq ptr %3, null
  br i1 %.not61, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %i.aa, i64 -88
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !69
  %i.af = add nsw i64 %i.ae, 1
  store i64 %i.af, ptr %3, align 8, !tbaa !54
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not62 = icmp eq ptr %5, null
  br i1 %.not62, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr i8, ptr %i.aa, i64 -20
  %i.ah = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %i.ag) #28 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not63 = icmp eq ptr %6, null
  br i1 %.not63, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = getelementptr i8, ptr %i.aa, i64 -64
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !68
  store double %i.aj, ptr %6, align 8, !tbaa !57
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.not64 = icmp eq ptr %7, null
  br i1 %.not64, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = getelementptr i8, ptr %i.aa, i64 -56
  %i.al = load double, ptr %i.ak, align 8, !tbaa !67
  store double %i.al, ptr %7, align 8, !tbaa !57
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not65 = icmp eq ptr %8, null
  br i1 %.not65, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.am = getelementptr i8, ptr %i.aa, i64 -40
  %i.an = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %i.am) #28 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not66 = icmp eq ptr %4, null
  br i1 %.not66, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ao = call i32 @ffkeyn(ptr noundef nonnull @.str.335, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %10) ; 0 uses
  store i32 0, ptr %i.c, align 4, !tbaa !27
  store i8 0, ptr %4, align 1, !tbaa !29
  %i.ap = call i32 @ffgkys(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #28 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.not67 = icmp eq ptr %9, null
  br i1 %.not67, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aq = call i32 @ffkeyn(ptr noundef nonnull @.str.336, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %10) ; 0 uses
  store i32 0, ptr %i.c, align 4, !tbaa !27
  store i8 0, ptr %9, align 1, !tbaa !29
  %i.ar = call i32 @ffgkys(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %9, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #28 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.as = load i32, ptr %10, align 4, !tbaa !27
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %bb.z, %bb.i, %bb.f
  %.0 = phi i32 [ %i.r, %bb.f ], [ 302, %bb.i ], [ %i.as, %bb.z ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

declare i32 @ffgkys(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgbcl(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = load i32, ptr %10, align 4, !tbaa !27    ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @ffgbclll(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.a, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i.b, ptr noundef %9, ptr noundef nonnull %10) ; 0 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !43
  store i64 %i.f, ptr %5, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not19 = icmp eq ptr %8, null
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i64, ptr %i.b, align 8, !tbaa !43
  store i64 %i.g, ptr %8, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = load i32, ptr %10, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i32 [ %i.h, %bb.f ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgbclll(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [75 x i8], align 16               ; 6 uses
  %i.b = alloca [73 x i8], align 16               ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.d = load i32, ptr %10, align 4, !tbaa !27    ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35
  %.not = icmp eq i32 %i.f, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.f, 1
  %i.l = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.k, ptr noundef null, ptr noundef nonnull %10) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.n = load i64, ptr %i.m, align 8, !tbaa !47
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %10)
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %10, align 4, !tbaa !27
  br label %bb.an

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.s = icmp slt i32 %1, 1
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 944
  %i.v = load i32, ptr %i.u, align 8, !tbaa !58
  %i.w = icmp sgt i32 %1, %i.v
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 302, ptr %10, align 4, !tbaa !27
  br label %bb.an

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 976
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59
  %i.z = zext nneg i32 %1 to i64
  %i.aa = getelementptr [160 x i8], ptr %i.y, i64 %i.z ; 6 uses
  %.not84 = icmp eq ptr %2, null
  br i1 %.not84, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %i.aa, i64 -160
  %i.ac = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %i.ab) #28 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not85 = icmp eq ptr %4, null
  br i1 %.not85, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %i.aa, i64 -80    ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !64
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i16 80, ptr %4, align 1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store i8 0, ptr %4, align 1, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ag = load i32, ptr %i.ad, align 8, !tbaa !64
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.ag, i1 true)
  switch i32 %i.ah, label %bb.aa [
    i32 1, label %.sink.split
    i32 11, label %bb.q
    i32 14, label %bb.r
    i32 16, label %bb.s
    i32 21, label %bb.t
    i32 41, label %bb.u
    i32 81, label %bb.v
    i32 42, label %bb.w
    i32 82, label %bb.x
    i32 83, label %bb.y
    i32 163, label %bb.z
  ]

bb.q:                                             ; preds = %bb.p
  br label %.sink.split

bb.r:                                             ; preds = %bb.p
  br label %.sink.split

bb.s:                                             ; preds = %bb.p
  br label %.sink.split

bb.t:                                             ; preds = %bb.p
  br label %.sink.split

bb.u:                                             ; preds = %bb.p
  br label %.sink.split

bb.v:                                             ; preds = %bb.p
  br label %.sink.split

bb.w:                                             ; preds = %bb.p
  br label %.sink.split

bb.x:                                             ; preds = %bb.p
  br label %.sink.split

bb.y:                                             ; preds = %bb.p
  br label %.sink.split

bb.z:                                             ; preds = %bb.p
  br label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.q, %bb.s, %bb.u, %bb.w, %bb.y, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r
  %.sink = phi i16 [ 66, %bb.q ], [ 76, %bb.r ], [ 73, %bb.t ], [ 75, %bb.v ], [ 68, %bb.x ], [ 77, %bb.z ], [ 67, %bb.y ], [ 69, %bb.w ], [ 74, %bb.u ], [ 65, %bb.s ], [ 88, %bb.p ]
  %strlen104 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %4)
  %endptr105 = getelementptr inbounds i8, ptr %4, i64 %strlen104
  store i16 %.sink, ptr %endptr105, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.p, %bb.l
  %.not106 = icmp eq ptr %5, null
  br i1 %.not106, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ai = getelementptr i8, ptr %i.aa, i64 -72
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !66
  store i64 %i.aj, ptr %5, align 8, !tbaa !43
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not107 = icmp eq ptr %6, null
  br i1 %.not107, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ak = getelementptr i8, ptr %i.aa, i64 -64
  %i.al = load double, ptr %i.ak, align 8, !tbaa !68
  store double %i.al, ptr %6, align 8, !tbaa !57
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.not108 = icmp eq ptr %7, null
  br i1 %.not108, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.am = getelementptr i8, ptr %i.aa, i64 -56
  %i.an = load double, ptr %i.am, align 8, !tbaa !67
  store double %i.an, ptr %7, align 8, !tbaa !57
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.not109 = icmp eq ptr %8, null
  br i1 %.not109, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ao = getelementptr i8, ptr %i.aa, i64 -48
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !70
  store i64 %i.ap, ptr %8, align 8, !tbaa !43
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not110 = icmp eq ptr %3, null
  br i1 %.not110, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.aq = call i32 @ffkeyn(ptr noundef nonnull @.str.335, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %10) ; 0 uses
  store i32 0, ptr %i.c, align 4, !tbaa !27
  store i8 0, ptr %3, align 1, !tbaa !29
  %i.ar = call i32 @ffgkys(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #28 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.not111 = icmp eq ptr %9, null
  br i1 %.not111, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.as = call i32 @ffkeyn(ptr noundef nonnull @.str.336, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %10) ; 0 uses
  store i32 0, ptr %i.c, align 4, !tbaa !27
  store i8 0, ptr %9, align 1, !tbaa !29
  %i.at = call i32 @ffgkys(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %9, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #28 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.au = load i32, ptr %10, align 4, !tbaa !27
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %bb.am, %bb.i, %bb.f
  %.0 = phi i32 [ %i.r, %bb.f ], [ 302, %bb.i ], [ %i.au, %bb.am ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @ffghdn(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !34
  %i.b = add nsw i32 %i.a, 1                      ; 2 uses
  store i32 %i.b, ptr %1, align 4, !tbaa !27
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffghadll(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !27     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %.not = icmp eq i32 %i.c, %i.g
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.c, 1
  %i.i = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.h, ptr noundef null, ptr noundef nonnull %4)
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.sink.split, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.l = load i64, ptr %i.k, align 8, !tbaa !47
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %4)
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.not29 = icmp eq ptr %1, null
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 84
  %i.t = load i32, ptr %i.s, align 4, !tbaa !35
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !43
  store i64 %i.w, ptr %1, align 8, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not30 = icmp eq ptr %2, null
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.z = load i64, ptr %i.y, align 8, !tbaa !47
  store i64 %i.z, ptr %2, align 8, !tbaa !43
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not31 = icmp eq ptr %3, null
  br i1 %.not31, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 84
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !35
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [8 x i8], ptr %i.ac, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !43
  store i64 %i.ai, ptr %3, align 8, !tbaa !43
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.k, %bb.e, %bb.c
  %i.aj = load i32, ptr %4, align 4, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.aj, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffghof(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !27     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %.not = icmp eq i32 %i.c, %i.g
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.c, 1
  %i.i = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.h, ptr noundef null, ptr noundef nonnull %4)
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.sink.split, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.l = load i64, ptr %i.k, align 8, !tbaa !47
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %4)
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.not29 = icmp eq ptr %1, null
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 84
  %i.t = load i32, ptr %i.s, align 4, !tbaa !35
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !43
  store i64 %i.w, ptr %1, align 8, !tbaa !54
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not30 = icmp eq ptr %2, null
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.z = load i64, ptr %i.y, align 8, !tbaa !47
  store i64 %i.z, ptr %2, align 8, !tbaa !54
end_hunk_2
begin_hunk_3_@ffpinit:bb.a
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !77 ; 2 uses
  %.not171 = icmp eq ptr %i.ee, null
  br i1 %.not171, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.ee) #28
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %exitcond191.not = icmp eq i64 %indvars.iv.next188, %wide.trip.count190
  br i1 %exitcond191.not, label %._crit_edge180.loopexit, label %.lr.ph179, !llvm.loop !150

._crit_edge180.loopexit:                          ; preds = %bb.q
  %.pre195 = load ptr, ptr %i.r, align 8, !tbaa !17
  br label %._crit_edge180

._crit_edge180:                                   ; preds = %._crit_edge180.loopexit, %bb.m
  %i.ef = phi ptr [ %.pre195, %._crit_edge180.loopexit ], [ %i.bj, %bb.m ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1368
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !79
  call void @free(ptr noundef %i.eh) #28
  %i.ei = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1344
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !80
  call void @free(ptr noundef %i.ek) #28
  %i.el = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1336
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !81
  call void @free(ptr noundef %i.en) #28
  %i.eo = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1360
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !78
  call void @free(ptr noundef %i.eq) #28
  %i.er = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1352
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !76
  call void @free(ptr noundef %i.et) #28
  %i.eu = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1328
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !75
  call void @free(ptr noundef %i.ew) #28
  %i.ex = load ptr, ptr %i.r, align 8, !tbaa !17  ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ey, i8 0, i64 48, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge180, %bb.l
  %i.ez = phi ptr [ %i.ex, %._crit_edge180 ], [ %i.bj, %bb.l ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 976
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !59 ; 2 uses
  %.not169 = icmp eq ptr %i.fb, null
  br i1 %.not169, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.fb) #28
  %.pre196 = load ptr, ptr %i.r, align 8, !tbaa !17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fc = phi ptr [ %.pre196, %bb.s ], [ %i.ez, %bb.r ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 976
  store ptr null, ptr %i.fd, align 8, !tbaa !59
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 952
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i8 0, i64 16, i1 false)
  br label %bb.af

bb.u:                                             ; preds = %.loopexit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bj, i64 960
  store i64 %i.cs, ptr %i.ff, align 8, !tbaa !60
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bj, i64 952
  store i64 %i.cs, ptr %i.fg, align 8, !tbaa !61
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bj, i64 968
  store i64 %i.cr, ptr %i.fh, align 8, !tbaa !74
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bj, i64 944
  store i32 2, ptr %i.fi, align 8, !tbaa !58
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bj, i64 1328
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !75
  %.not163 = icmp eq ptr %i.fk, null
  br i1 %.not163, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bj, i64 1176
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !54
  %i.fn = add nsw i64 %i.fm, -1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bj, i64 1088
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !54
  %i.fq = sdiv i64 %i.fn, %i.fp                   ; 2 uses
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = icmp ult i32 %i.fr, 2147483647
  br i1 %i.fs, label %.lr.ph176.preheader, label %._crit_edge

.lr.ph176.preheader:                              ; preds = %bb.v
  %i.ft = add nuw nsw i64 %i.fq, 1
  %wide.trip.count185 = and i64 %i.ft, 4294967295
  br label %.lr.ph176

.lr.ph176:                                        ; preds = %.lr.ph176.preheader, %bb.z
  %indvars.iv182 = phi i64 [ 0, %.lr.ph176.preheader ], [ %indvars.iv.next183, %bb.z ] ; 3 uses
  %i.fu = load ptr, ptr %i.r, align 8, !tbaa !17  ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 1352
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !76
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv182
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !77 ; 2 uses
  %.not166 = icmp eq ptr %i.fy, null
  br i1 %.not166, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph176
  call void @free(ptr noundef nonnull %i.fy) #28
  %.pre192 = load ptr, ptr %i.r, align 8, !tbaa !17
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph176
  %i.fz = phi ptr [ %.pre192, %bb.w ], [ %i.fu, %.lr.ph176 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 1360
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !78
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv182
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !77 ; 2 uses
  %.not167 = icmp eq ptr %i.gd, null
  br i1 %.not167, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef nonnull %i.gd) #28
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count185
  br i1 %exitcond186.not, label %._crit_edge.loopexit, label %.lr.ph176, !llvm.loop !151

._crit_edge.loopexit:                             ; preds = %bb.z
  %.pre193 = load ptr, ptr %i.r, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.v
  %i.ge = phi ptr [ %.pre193, %._crit_edge.loopexit ], [ %i.bj, %bb.v ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1368
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !79
  call void @free(ptr noundef %i.gg) #28
  %i.gh = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1344
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !80
  call void @free(ptr noundef %i.gj) #28
  %i.gk = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1336
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !81
  call void @free(ptr noundef %i.gm) #28
  %i.gn = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 1360
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !78
  call void @free(ptr noundef %i.gp) #28
  %i.gq = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 1352
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !76
  call void @free(ptr noundef %i.gs) #28
  %i.gt = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1328
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !75
  call void @free(ptr noundef %i.gv) #28
  %i.gw = load ptr, ptr %i.r, align 8, !tbaa !17  ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gx, i8 0, i64 48, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %bb.u
  %i.gy = phi ptr [ %i.gw, %._crit_edge ], [ %i.bj, %bb.u ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 976
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !59 ; 2 uses
  %.not164 = icmp eq ptr %i.ha, null
  br i1 %.not164, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.ha) #28
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.hb = call noalias dereferenceable_or_null(320) ptr @calloc(i64 noundef 2, i64 noundef 160) #32 ; 14 uses
  %.not165 = icmp eq ptr %i.hb, null
  br i1 %.not165, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull @.str.359)
  %i.hc = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 976
  store ptr null, ptr %i.hd, align 8, !tbaa !59
  store i32 111, ptr %1, align 4, !tbaa !27
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.he = load ptr, ptr %i.r, align 8, !tbaa !17  ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 976
  store ptr %i.hb, ptr %i.hf, align 8, !tbaa !59
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 80
  store i32 %.0146, ptr %i.hg, align 8, !tbaa !64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 152
  store i64 %.0145, ptr %i.hh, align 8, !tbaa !65
  %i.hi = load i64, ptr %i.h, align 8, !tbaa !54  ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 88
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !66
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hb, i64 96
  store double 1.000000e+00, ptr %i.hk, align 8, !tbaa !68
  %i.hl = load i64, ptr %i.k, align 8, !tbaa !43  ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hb, i64 112
  store i64 %i.hl, ptr %i.hm, align 8, !tbaa !70
  %i.hn = mul nsw i64 %i.hi, %.0145
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hb, i64 232
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !69
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hb, i64 240
  store i32 %.0146, ptr %i.hp, align 8, !tbaa !64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hb, i64 312
  store i64 %.0145, ptr %i.hq, align 8, !tbaa !65
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hb, i64 248
  store i64 %.2, ptr %i.hr, align 8, !tbaa !66
  %i.hs = load double, ptr %i.l, align 8, !tbaa !57
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hb, i64 256
  store double %i.hs, ptr %i.ht, align 8, !tbaa !68
  %i.hu = load double, ptr %i.m, align 8, !tbaa !57
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hb, i64 264
  store double %i.hu, ptr %i.hv, align 8, !tbaa !67
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hb, i64 272
  store i64 %i.hl, ptr %i.hw, align 8, !tbaa !70
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.t
  %i.hx = phi ptr [ %i.he, %bb.ae ], [ %i.fc, %bb.t ] ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 104
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !41
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 84
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !35
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %i.ic
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !43
  %i.if = getelementptr inbounds nuw i8, ptr %i.hx, i64 128
  store i64 %i.ie, ptr %i.if, align 8, !tbaa !39
  %i.ig = load i32, ptr %1, align 4, !tbaa !27
  br label %bb.ag

bb.ag:                                            ; preds = %bb.f, %bb.a, %bb.af, %bb.ad
  %.0147 = phi i32 [ %i.o, %bb.a ], [ %i.ig, %bb.af ], [ 111, %bb.ad ], [ %i.ae, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0147
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffc2s(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !29
  switch i8 %i.c, label %bb.d [
    i8 39, label %bb.e
    i8 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %1, align 1, !tbaa !29
  store i32 204, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.d = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %0) #28 ; 0 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29 ; 4 uses
  %i.g = icmp ugt i64 %i.f, 1
  br i1 %i.g, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.e ] ; 3 uses
  %.043 = phi i64 [ %i.p, %bb.g ], [ 1, %bb.e ]   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.043
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29    ; 2 uses
  %i.j = icmp eq i8 %i.i, 39
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.k = add nuw i64 %.043, 1                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !29
  %i.n = icmp eq i8 %i.m, 39
  br i1 %i.n, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %.1 = phi i64 [ %.043, %.lr.ph ], [ %i.k, %bb.f ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.i, ptr %i.o, align 1, !tbaa !29
  %i.p = add i64 %.1, 1                           ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.f
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !152

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %.037.lcssa.ph.in = phi i64 [ %indvars.iv.next, %bb.g ], [ %indvars.iv, %bb.f ] ; 2 uses
  %.0.lcssa.ph = phi i64 [ %i.p, %bb.g ], [ %.043, %bb.f ]
  %i.r = and i64 %.037.lcssa.ph.in, 4294967295    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  store i8 0, ptr %i.s, align 1, !tbaa !29
  %i.t = icmp eq i64 %.0.lcssa.ph, %i.f
  br i1 %i.t, label %bb.h, label %.preheader

._crit_edge.thread:                               ; preds = %bb.e
  store i8 0, ptr %1, align 1, !tbaa !29
  %i.u = icmp eq i64 %i.f, 1
  br i1 %i.u, label %bb.h, label %._crit_edge51

.preheader:                                       ; preds = %._crit_edge
  %.037.lcssa.ph = trunc i64 %.037.lcssa.ph.in to i32
  %i.v = icmp sgt i32 %.037.lcssa.ph, 0
  br i1 %i.v, label %.lr.ph50, label %._crit_edge51

bb.h:                                             ; preds = %._crit_edge.thread, %._crit_edge
  tail call void @ffxmsg(i32 noundef 5, ptr noundef nonnull @.str.554)
  tail call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %0)
  store i32 205, ptr %2, align 4, !tbaa !27
  br label %bb.j

.lr.ph50:                                         ; preds = %.preheader, %bb.i
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %bb.i ], [ %i.r, %.preheader ] ; 2 uses
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, -1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next55 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !29
  %i.y = icmp eq i8 %i.x, 32
  br i1 %i.y, label %bb.i, label %._crit_edge51

bb.i:                                             ; preds = %.lr.ph50
  store i8 0, ptr %i.w, align 1, !tbaa !29
  %i.z = icmp samesign ugt i64 %indvars.iv54, 1
  br i1 %i.z, label %.lr.ph50, label %._crit_edge51, !llvm.loop !153

._crit_edge51:                                    ; preds = %bb.i, %.lr.ph50, %._crit_edge.thread, %.preheader
  %i.aa = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %._crit_edge51, %bb.h, %bb.d, %bb.c
  %.039 = phi i32 [ %i.aa, %._crit_edge51 ], [ 204, %bb.c ], [ %i.e, %bb.d ], [ 205, %bb.h ], [ %i.a, %bb.a ]
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffainit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca [75 x i8], align 16               ; 13 uses
  %i.f = alloca [71 x i8], align 16               ; 7 uses
  %i.g = alloca [73 x i8], align 16               ; 4 uses
  %i.h = alloca [81 x i8], align 16               ; 12 uses
  %i.i = alloca [81 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  %i.j = load i32, ptr %1, align 4, !tbaa !27     ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 84
  %i.p = load i32, ptr %i.o, align 4, !tbaa !35
  %.not = icmp eq i32 %i.l, %i.p
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %i.l, 1
  %i.r = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.q, ptr noundef null, ptr noundef nonnull %1) ; 0 uses
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi ptr [ %.pre, %bb.c ], [ %i.n, %bb.b ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  store i32 1, ptr %i.t, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.v = load i64, ptr %i.u, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  store i64 %i.v, ptr %i.w, align 8, !tbaa !45
  %i.x = call i32 @ffgttb(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %1) #28
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %1, align 4, !tbaa !27
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !43
  %.not143 = icmp eq i64 %i.aa, 0
  br i1 %.not143, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull @.str.360)
end_hunk_3
begin_hunk_4_@ffgtbp:bb.a
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cg = call i32 @ffasfm(ptr noundef nonnull %i.v, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, ptr noundef nonnull %3)
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds i8, ptr %i.bw, i64 -80
  store i32 16, ptr %i.ci, align 8, !tbaa !64
  %i.cj = getelementptr inbounds i8, ptr %i.bw, i64 -72
  store i64 1, ptr %i.cj, align 8, !tbaa !66
  %i.ck = load i64, ptr %i.p, align 8, !tbaa !54
  %i.cl = getelementptr inbounds i8, ptr %i.bw, i64 -8
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !65
  br label %.sink.split

bb.u:                                             ; preds = %bb.r
  %i.cm = call i32 @ffbnfm(ptr noundef nonnull %i.v, ptr noundef nonnull %i.n, ptr noundef nonnull %i.q, ptr noundef nonnull %i.p, ptr noundef nonnull %3)
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = load i32, ptr %i.n, align 4, !tbaa !27  ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.bw, i64 -80
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !64
  %i.cq = load i64, ptr %i.q, align 8, !tbaa !54  ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.bw, i64 -72
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !66
  %i.cs = icmp eq i32 %i.co, 16
  br i1 %i.cs, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds i8, ptr %i.bw, i64 -8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !65 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  %i.cw = icmp sgt i64 %i.cu, %i.cq
  %or.cond185 = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %or.cond185, label %bb.x, label %.sink.split

bb.x:                                             ; preds = %bb.w
  %i.cx = load i64, ptr %i.p, align 8, !tbaa !54
  store i64 %i.cx, ptr %i.ct, align 8, !tbaa !65
  br label %.sink.split

bb.y:                                             ; preds = %bb.v
  %i.cy = load i64, ptr %i.p, align 8, !tbaa !54
  %i.cz = getelementptr inbounds i8, ptr %i.bw, i64 -8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !65
  br label %.sink.split

bb.z:                                             ; preds = %bb.d
  %i.da = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(5) @.str.378, i64 noundef 4) #29
  %.not168 = icmp eq i32 %i.da, 0
  br i1 %.not168, label %bb.aa, label %.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  %i.dc = tail call ptr @__errno_location() #30   ; 3 uses
  store i32 0, ptr %i.dc, align 4, !tbaa !27
  %i.dd = call i64 @strtol(ptr noundef nonnull %i.db, ptr noundef nonnull %i.g, i32 noundef 10) #28 ; 3 uses
  %i.de = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.df = load i8, ptr %i.de, align 1, !tbaa !29
  %i.dg = load i32, ptr %i.dc, align 4, !tbaa !27
  %i.dh = icmp eq i32 %i.dg, 34                   ; 2 uses
  switch i8 %i.df, label %.thread254 [
    i8 0, label %bb.ab
    i8 32, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  br i1 %i.dh, label %ffc2ii.exit196.thread, label %bb.ac

.thread254:                                       ; preds = %bb.aa
  br i1 %i.dh, label %ffc2ii.exit196.thread, label %ffc2ii.exit196.thread255

ffc2ii.exit196.thread:                            ; preds = %.thread254, %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(54) %i.h, ptr noundef nonnull align 1 dereferenceable(54) @.str.551, i64 54, i1 false) #28
  %i.di = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.db, i64 noundef 25) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.h)
  store i32 0, ptr %i.dc, align 4, !tbaa !27
  br label %ffc2ii.exit196.thread255

ffc2ii.exit196.thread255:                         ; preds = %.thread254, %ffc2ii.exit196.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  br label %.sink.split

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  %i.dj = icmp slt i64 %i.dd, 1
  br i1 %i.dj, label %.sink.split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dk = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 944
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !58
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp sgt i64 %i.dd, %i.dn
  br i1 %i.do, label %.sink.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 976
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !59
  %i.dr = getelementptr inbounds nuw [160 x i8], ptr %i.dq, i64 %i.dd
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 88
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !48
  %i.du = icmp eq i32 %i.dt, 2
  br i1 %i.du, label %.sink.split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = call i32 @ffc2ii(ptr noundef %2, ptr noundef nonnull %i.s, ptr noundef nonnull %3)
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 81, ptr noundef nonnull @.str.379, ptr noundef nonnull %1, ptr noundef %2) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.x)
  br label %.sink.split

bb.ah:                                            ; preds = %bb.af
  %i.dy = load i64, ptr %i.s, align 8, !tbaa !54
  %i.dz = add nsw i64 %i.dy, -1
  %i.ea = getelementptr inbounds i8, ptr %i.dr, i64 -88
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !69
  br label %.sink.split

bb.ai:                                            ; preds = %bb.d
  %i.eb = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(5) @.str.380, i64 noundef 4) #29
  %.not170 = icmp eq i32 %i.eb, 0
  br i1 %.not170, label %bb.aj, label %.sink.split

bb.aj:                                            ; preds = %bb.ai
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %i.ed = tail call ptr @__errno_location() #30   ; 3 uses
  store i32 0, ptr %i.ed, align 4, !tbaa !27
  %i.ee = call i64 @strtol(ptr noundef nonnull %i.ec, ptr noundef nonnull %i.e, i32 noundef 10) #28 ; 3 uses
  %i.ef = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !29
  %i.eh = load i32, ptr %i.ed, align 4, !tbaa !27
  %i.ei = icmp eq i32 %i.eh, 34                   ; 2 uses
  switch i8 %i.eg, label %.thread256 [
    i8 0, label %bb.ak
    i8 32, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj
  br i1 %i.ei, label %ffc2ii.exit198.thread, label %bb.al

.thread256:                                       ; preds = %bb.aj
  br i1 %i.ei, label %ffc2ii.exit198.thread, label %ffc2ii.exit198.thread257

ffc2ii.exit198.thread:                            ; preds = %.thread256, %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(54) %i.f, ptr noundef nonnull align 1 dereferenceable(54) @.str.551, i64 54, i1 false) #28
  %i.ej = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(1) %i.ec, i64 noundef 25) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.f)
  store i32 0, ptr %i.ed, align 4, !tbaa !27
  br label %ffc2ii.exit198.thread257

ffc2ii.exit198.thread257:                         ; preds = %.thread256, %ffc2ii.exit198.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %.sink.split

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.ek = icmp slt i64 %i.ee, 1
  br i1 %i.ek, label %.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.el = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 944
  %i.en = load i32, ptr %i.em, align 8, !tbaa !58
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp sgt i64 %i.ee, %i.eo
  br i1 %i.ep, label %.sink.split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 976
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !59
  %i.es = call i32 @ffc2dd(ptr noundef %2, ptr noundef nonnull %i.u, ptr noundef nonnull %i.m)
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.eu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 81, ptr noundef nonnull @.str.381, ptr noundef nonnull %1, ptr noundef %2) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.x)
  br label %.sink.split

bb.ap:                                            ; preds = %bb.an
  %i.ev = getelementptr inbounds nuw [160 x i8], ptr %i.er, i64 %i.ee
  %i.ew = load double, ptr %i.u, align 8, !tbaa !57
  %i.ex = getelementptr inbounds i8, ptr %i.ev, i64 -64
  store double %i.ew, ptr %i.ex, align 8, !tbaa !68
  br label %.sink.split

bb.aq:                                            ; preds = %bb.d
  %i.ey = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(5) @.str.382, i64 noundef 4) #29
  %.not172 = icmp eq i32 %i.ey, 0
  br i1 %.not172, label %bb.ar, label %.sink.split

bb.ar:                                            ; preds = %bb.aq
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.fa = tail call ptr @__errno_location() #30   ; 3 uses
  store i32 0, ptr %i.fa, align 4, !tbaa !27
  %i.fb = call i64 @strtol(ptr noundef nonnull %i.ez, ptr noundef nonnull %i.c, i32 noundef 10) #28 ; 3 uses
  %i.fc = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !29
  %i.fe = load i32, ptr %i.fa, align 4, !tbaa !27
  %i.ff = icmp eq i32 %i.fe, 34                   ; 2 uses
  switch i8 %i.fd, label %.thread258 [
    i8 0, label %bb.as
    i8 32, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar
  br i1 %i.ff, label %ffc2ii.exit200.thread, label %bb.at

.thread258:                                       ; preds = %bb.ar
  br i1 %i.ff, label %ffc2ii.exit200.thread, label %ffc2ii.exit200.thread259

ffc2ii.exit200.thread:                            ; preds = %.thread258, %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(54) %i.d, ptr noundef nonnull align 1 dereferenceable(54) @.str.551, i64 54, i1 false) #28
  %i.fg = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.ez, i64 noundef 25) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.d)
  store i32 0, ptr %i.fa, align 4, !tbaa !27
  br label %ffc2ii.exit200.thread259

ffc2ii.exit200.thread259:                         ; preds = %.thread258, %ffc2ii.exit200.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.sink.split

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.fh = icmp slt i64 %i.fb, 1
  br i1 %i.fh, label %.sink.split, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fi = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 944
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !58
  %i.fl = sext i32 %i.fk to i64
  %i.fm = icmp sgt i64 %i.fb, %i.fl
  br i1 %i.fm, label %.sink.split, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 976
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !59
  %i.fp = call i32 @ffc2dd(ptr noundef %2, ptr noundef nonnull %i.u, ptr noundef nonnull %i.m)
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 81, ptr noundef nonnull @.str.381, ptr noundef nonnull %1, ptr noundef %2) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.x)
  br label %.sink.split

bb.ax:                                            ; preds = %bb.av
  %i.fs = getelementptr inbounds nuw [160 x i8], ptr %i.fo, i64 %i.fb
  %i.ft = load double, ptr %i.u, align 8, !tbaa !57
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 -56
  store double %i.ft, ptr %i.fu, align 8, !tbaa !67
  br label %.sink.split

bb.ay:                                            ; preds = %bb.d
  %i.fv = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(5) @.str.383, i64 noundef 4) #29
  %.not174 = icmp eq i32 %i.fv, 0
  br i1 %.not174, label %bb.az, label %.sink.split

bb.az:                                            ; preds = %bb.ay
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.fx = tail call ptr @__errno_location() #30   ; 3 uses
  store i32 0, ptr %i.fx, align 4, !tbaa !27
  %i.fy = call i64 @strtol(ptr noundef nonnull %i.fw, ptr noundef nonnull %i.a, i32 noundef 10) #28 ; 3 uses
  %i.fz = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !29
  %i.gb = load i32, ptr %i.fx, align 4, !tbaa !27
  %i.gc = icmp eq i32 %i.gb, 34                   ; 2 uses
  switch i8 %i.ga, label %.thread260 [
    i8 0, label %bb.ba
    i8 32, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  br i1 %i.gc, label %ffc2ii.exit202.thread, label %bb.bb

.thread260:                                       ; preds = %bb.az
  br i1 %i.gc, label %ffc2ii.exit202.thread, label %ffc2ii.exit202.thread261

ffc2ii.exit202.thread:                            ; preds = %.thread260, %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(54) %i.b, ptr noundef nonnull align 1 dereferenceable(54) @.str.551, i64 54, i1 false) #28
  %i.gd = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.fw, i64 noundef 25) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.b)
  store i32 0, ptr %i.fx, align 4, !tbaa !27
  br label %ffc2ii.exit202.thread261

ffc2ii.exit202.thread261:                         ; preds = %.thread260, %ffc2ii.exit202.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.sink.split

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ge = icmp slt i64 %i.fy, 1
  br i1 %i.ge, label %.sink.split, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gf = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 944
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !58
  %i.gi = sext i32 %i.gh to i64
  %i.gj = icmp sgt i64 %i.fy, %i.gi
  br i1 %i.gj, label %.sink.split, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 976
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !59
  %i.gm = getelementptr inbounds nuw [160 x i8], ptr %i.gl, i64 %i.fy ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 88
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !48
  %i.gp = icmp eq i32 %i.go, 1
  br i1 %i.gp, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.gq = call i32 @ffc2s(ptr noundef %2, ptr noundef nonnull %i.v, ptr noundef nonnull %i.m)
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.sink.split, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gs = getelementptr inbounds i8, ptr %i.gm, i64 -40
  %i.gt = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.gs, ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 17) #28 ; 0 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gm, i64 -23
  store i8 0, ptr %i.gu, align 1, !tbaa !29
  br label %.sink.split

bb.bg:                                            ; preds = %bb.bd
  %i.gv = call i32 @ffc2jj(ptr noundef %2, ptr noundef nonnull %i.t, ptr noundef nonnull %i.m)
  %i.gw = icmp sgt i32 %i.gv, 0
  br i1 %i.gw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 81, ptr noundef nonnull @.str.379, ptr noundef nonnull %1, ptr noundef %2) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.x)
  br label %.sink.split

bb.bi:                                            ; preds = %bb.bg
  %i.gy = load i64, ptr %i.t, align 8, !tbaa !43
  %i.gz = getelementptr inbounds i8, ptr %i.gm, i64 -48
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !70
  br label %.sink.split

sub_1:                                            ; preds = %bb.d
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.hb = load i8, ptr %i.ha, align 1
  %.not234 = icmp eq i8 %i.hb, 73
  br i1 %.not234, label %.tail, label %.sink.split

.tail:                                            ; preds = %sub_1
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.hd = load i8, ptr %i.hc, align 1
  %i.he = icmp eq i8 %i.hd, 77
  br i1 %i.he, label %bb.bj, label %.sink.split

bb.bj:                                            ; preds = %.tail
  %i.hf = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 88
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !48
  %i.hi = icmp eq i32 %i.hh, 1
  br i1 %i.hi, label %.sink.split, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.hk = call i32 @ffc2ii(ptr noundef nonnull %i.hj, ptr noundef nonnull %i.r, ptr noundef nonnull %i.m)
  %i.hl = icmp sgt i32 %i.hk, 0
  br i1 %i.hl, label %.sink.split, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hm = load i64, ptr %i.r, align 8, !tbaa !54  ; 3 uses
  %i.hn = icmp slt i64 %i.hm, 1
  br i1 %i.hn, label %.sink.split, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ho = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 944
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !58
  %i.hr = sext i32 %i.hq to i64
  %i.hs = icmp sgt i64 %i.hm, %i.hr
  br i1 %i.hs, label %.sink.split, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 976
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !59
  %i.hv = getelementptr inbounds nuw [160 x i8], ptr %i.hu, i64 %i.hm ; 3 uses
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 -80
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !64
  switch i32 %i.hx, label %.sink.split [
    i32 -9999, label %bb.bo
    i32 16, label %bb.bo
  ]

bb.bo:                                            ; preds = %bb.bn, %bb.bn
  %i.hy = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 40) #29 ; 2 uses
  %.not179 = icmp eq ptr %i.hy, null
  br i1 %.not179, label %.sink.split, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1 ; 2 uses
  store ptr %i.hz, ptr %i.w, align 8, !tbaa !30
  %i.ia = call i64 @strtol(ptr noundef nonnull %i.hz, ptr noundef nonnull %i.w, i32 noundef 10) #28 ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %i.hv, i64 -72
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !66 ; 2 uses
  %.not180 = icmp ne i64 %i.ic, 1
  %i.id = icmp slt i64 %i.ic, %i.ia
  %or.cond191 = select i1 %.not180, i1 %i.id, i1 false
  br i1 %or.cond191, label %.sink.split, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ie = getelementptr inbounds i8, ptr %i.hv, i64 -8
  store i64 %i.ia, ptr %i.ie, align 8, !tbaa !65
  br label %.sink.split

bb.br:                                            ; preds = %bb.d
  %i.if = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(5) @.str.385, i64 noundef 4) #29
  %.not182 = icmp eq i32 %i.if, 0
  br i1 %.not182, label %bb.bs, label %.sink.split

bb.bs:                                            ; preds = %bb.br
  %i.ig = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 88
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !48
  %i.ij = icmp eq i32 %i.ii, 1
  br i1 %i.ij, label %.sink.split, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ik = call i32 @ffc2jj(ptr noundef %2, ptr noundef nonnull %i.t, ptr noundef nonnull %i.m)
  %i.il = icmp sgt i32 %i.ik, 0
  br i1 %i.il, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.im = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 81, ptr noundef nonnull @.str.379, ptr noundef nonnull %1, ptr noundef %2) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.x)
  br label %.sink.split

bb.bv:                                            ; preds = %bb.bt
  %i.in = load i64, ptr %i.t, align 8, !tbaa !43
  %i.io = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 984
  store i64 %i.in, ptr %i.ip, align 8, !tbaa !73
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.ah, %bb.ax, %bb.bq, %bb.br, %bb.bf, %bb.bi, %bb.ap, %bb.t, %bb.x, %bb.y, %bb.w, %.tail, %bb.ay, %bb.aq, %bb.l, %bb.e, %bb.z, %bb.ai, %bb.d, %sub_1, %bb.bs, %bb.bp, %bb.bo, %bb.bn, %bb.bl, %bb.bm, %bb.bk, %bb.bj, %bb.be, %bb.bb, %bb.bc, %bb.at, %bb.au, %bb.al, %bb.am, %bb.ae, %bb.ac, %bb.ad, %bb.u, %bb.s, %bb.q, %bb.o, %bb.p, %bb.j, %bb.h, %bb.i, %ffc2ii.exit.thread251, %ffc2ii.exit194.thread253, %ffc2ii.exit196.thread255, %bb.ag, %ffc2ii.exit198.thread257, %bb.ao, %ffc2ii.exit200.thread259, %bb.aw, %ffc2ii.exit202.thread261, %bb.bh, %bb.bu, %bb.bv
  %i.iq = load i32, ptr %3, align 4, !tbaa !27
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ %i.y, %bb.a ], [ %i.iq, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #28
end_hunk_4
begin_hunk_5_@ffc2jj:bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.h = load i8, ptr %i.g, align 1, !tbaa !29
  switch i8 %i.h, label %bb.c [
    i8 0, label %bb.d
    i8 32, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  store i32 407, ptr %2, align 4, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %i.i = load i32, ptr %i.e, align 4, !tbaa !27
  %i.j = icmp eq i32 %i.i, 34
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(58) %i.b, ptr noundef nonnull align 1 dereferenceable(58) @.str.552, i64 58, i1 false) #28
  %i.k = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 23) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.b)
  store i32 412, ptr %2, align 4, !tbaa !27
  store i32 0, ptr %i.e, align 4, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i32 [ %i.l, %bb.f ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgcprll(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7, ptr noundef %8, ptr nofree noundef captures(none) %9, ptr nofree noundef captures(none) %10, ptr nofree noundef writeonly captures(none) %11, ptr nofree noundef writeonly captures(none) %12, ptr nofree noundef captures(none) %13, ptr nofree noundef captures(none) %14, ptr nofree noundef captures(none) %15, ptr nofree noundef captures(none) %16, ptr nofree noundef captures(none) %17, ptr nofree noundef writeonly captures(none) %18, ptr noundef %19, ptr noundef %20) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca [81 x i8], align 16               ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.e = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %i.i = load i32, ptr %i.h, align 4, !tbaa !35
  %.not = icmp eq i32 %i.e, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.e, 1
  %i.k = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef null, ptr noundef %20) ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef %20)
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %20, align 4, !tbaa !27
  br label %bb.cs

bb.f:                                             ; preds = %bb.c
  %i.r = icmp sgt i32 %5, 0
  %i.s = icmp ne i32 %5, 15
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr @STREAM_DRIVER, align 4, !tbaa !27 ; 2 uses
  %i.u = add i32 %i.t, -41
  %or.cond3 = icmp ult i32 %i.u, -40
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i32 @urltype2driver(ptr noundef nonnull @.str.386, ptr noundef nonnull @STREAM_DRIVER) #28 ; 0 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !17
  %.pre371 = load i32, ptr @STREAM_DRIVER, align 4, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.w = phi i32 [ %i.t, %bb.g ], [ %.pre371, %bb.h ]
  %i.x = phi ptr [ %i.g, %bb.g ], [ %.pre, %bb.h ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !82
  %i.aa = icmp eq i32 %i.z, %i.w
  br i1 %i.aa, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !83
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !47
  %i.ah = add nsw i64 %i.ag, -2880
  %. = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 %i.ah)
  %.not354 = icmp eq i64 %i.ac, %.
  br i1 %.not354, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call i32 @ffwend(ptr noundef nonnull %0, ptr noundef %20) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.i, %bb.k, %bb.j, %bb.f, %bb.b
  %i.aj = icmp slt i64 %2, 1
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !17  ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %i.am = load i32, ptr %i.al, align 8, !tbaa !48 ; 3 uses
  br i1 %i.aj, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = sitofp i64 %2 to double                 ; 2 uses
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 81, ptr noundef nonnull @.str.387, double noundef %i.ao) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.d)
  store i32 307, ptr %20, align 4, !tbaa !27
  br label %bb.cs

bb.o:                                             ; preds = %bb.m
  %i.aq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 81, ptr noundef nonnull @.str.388, double noundef %i.ao) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.d)
  store i32 307, ptr %20, align 4, !tbaa !27
  br label %bb.cs

bb.p:                                             ; preds = %bb.l
  %i.ar = icmp ne i32 %i.am, 1
  %i.as = icmp slt i64 %3, 1
  %or.cond5 = and i1 %i.as, %i.ar
  br i1 %or.cond5, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 81, ptr noundef nonnull @.str.389, i64 noundef %3) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.d)
  store i32 308, ptr %20, align 4, !tbaa !27
  br label %bb.cs

bb.r:                                             ; preds = %bb.p
  %i.au = icmp slt i64 %4, 0
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.av = sitofp i64 %4 to double
  %i.aw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 81, ptr noundef nonnull @.str.390, double noundef %i.av) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.d)
  store i32 306, ptr %20, align 4, !tbaa !27
  br label %bb.cs

bb.t:                                             ; preds = %bb.r
  %i.ax = icmp slt i32 %1, 1
  br i1 %i.ax, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 944
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !58
  %i.ba = icmp sgt i32 %1, %i.az
  br i1 %i.ba, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 81, ptr noundef nonnull @.str.391, i32 noundef %1) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.d)
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 944
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !58
  %i.bf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 81, ptr noundef nonnull @.str.392, i32 noundef %i.be) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.d)
  store i32 302, ptr %20, align 4, !tbaa !27
  br label %bb.cs

bb.w:                                             ; preds = %bb.u
  store i32 %i.am, ptr %17, align 4, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 968
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !74
  store i64 %i.bh, ptr %16, align 8, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !47 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 976
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !59
  %i.bm = zext nneg i32 %1 to i64
  %i.bn = getelementptr [160 x i8], ptr %i.bl, i64 %i.bm ; 9 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 -64
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !68
  store double %i.bp, ptr %6, align 8, !tbaa !57
  %i.bq = getelementptr i8, ptr %i.bn, i64 -56
  %i.br = load double, ptr %i.bq, align 8, !tbaa !67
  store double %i.br, ptr %7, align 8, !tbaa !57
  %i.bs = getelementptr i8, ptr %i.bn, i64 -48
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !70
  store i64 %i.bt, ptr %18, align 8, !tbaa !43
  %i.bu = getelementptr i8, ptr %i.bn, i64 -88
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !69
  %i.bw = getelementptr i8, ptr %i.bn, i64 -8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !65 ; 2 uses
  store i64 %i.bx, ptr %9, align 8, !tbaa !54
  store i64 %i.bx, ptr %14, align 8, !tbaa !54
  %i.by = getelementptr i8, ptr %i.bn, i64 -80    ; 4 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !64
  store i32 %i.bz, ptr %10, align 4, !tbaa !27
  %i.ca = getelementptr i8, ptr %i.bn, i64 -72
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !66
  store i64 %i.cb, ptr %15, align 8, !tbaa !43
  %i.cc = getelementptr i8, ptr %i.bn, i64 -20
  %i.cd = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %i.cc) #28 ; 0 uses
  %i.ce = getelementptr i8, ptr %i.bn, i64 -40
  %i.cf = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %i.ce) #28 ; 0 uses
  %i.cg = load i32, ptr %17, align 4, !tbaa !27
  %i.ch = icmp eq i32 %i.cg, 1
  br i1 %i.ch, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ci = load i8, ptr %19, align 1, !tbaa !29
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %19, ptr noundef nonnull align 1 dereferenceable(18) @.str.393, i64 18, i1 false) #28
  %i.ck = load i64, ptr %9, align 8, !tbaa !54    ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, 17
  %sext = shl i64 %i.ck, 32
  %i.cm = ashr exact i64 %sext, 32
  %i.cn = select i1 %i.cl, i64 17, i64 %i.cm
  %i.co = getelementptr inbounds i8, ptr %19, i64 %i.cn
  store i8 0, ptr %i.co, align 1, !tbaa !29
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.cp = add i32 %5, -15
  %or.cond7 = icmp ult i32 %i.cp, 4
  %.pre372 = load i32, ptr %10, align 4, !tbaa !27 ; 5 uses
  br i1 %or.cond7, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.cq = tail call i32 @llvm.abs.i32(i32 %.pre372, i1 true)
  %i.cr = icmp eq i32 %i.cq, 16
  br i1 %i.cr, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cs = load i32, ptr %17, align 4, !tbaa !27
  %.not355 = icmp eq i32 %i.cs, 1
  br i1 %.not355, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i64 1, ptr %14, align 8, !tbaa !54
  %i.ct = icmp slt i32 %.pre372, 0
  br i1 %i.ct, label %bb.ad, label %.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.cu = load i64, ptr %9, align 8, !tbaa !54
  store i64 %i.cu, ptr %15, align 8, !tbaa !43
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ad, %bb.ac
  store i64 1, ptr %9, align 8, !tbaa !54
  store double 1.000000e+00, ptr %6, align 8, !tbaa !57
  store double 0.000000e+00, ptr %7, align 8, !tbaa !57
  store i64 1234554321, ptr %18, align 8, !tbaa !43
  store i32 28800, ptr %11, align 4, !tbaa !27
  %i.cv = load i32, ptr %10, align 4, !tbaa !27
  %i.cw = icmp slt i32 %i.cv, 0
  %.415 = select i1 %i.cw, i32 -11, i32 11        ; 2 uses
  store i32 %.415, ptr %10, align 4, !tbaa !27
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ab, %bb.aa
  %i.cx = phi i32 [ %.pre372, %bb.ab ], [ %.pre372, %bb.aa ], [ %.415, %.sink.split ]
  %i.cy = add nsw i32 %5, -16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.z
  %i.cz = phi i32 [ %i.cx, %bb.ae ], [ %.pre372, %bb.z ] ; 3 uses
  %.0323 = phi i32 [ %i.cy, %bb.ae ], [ %5, %bb.z ] ; 2 uses
  %i.da = icmp ne i32 %.0323, -1                  ; 2 uses
  %spec.select = select i1 %i.da, i32 %.0323, i32 0 ; 2 uses
  %i.db = tail call i32 @llvm.abs.i32(i32 %i.cz, i1 true)
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dd = mul nsw i32 %i.cz, 11                   ; 2 uses
  store i32 %i.dd, ptr %10, align 4, !tbaa !27
  %i.de = load i64, ptr %15, align 8, !tbaa !43
  %i.df = add nsw i64 %i.de, 7
  %i.dg = sdiv i64 %i.df, 8
  store i64 %i.dg, ptr %15, align 8, !tbaa !43
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pr = phi i32 [ %i.dd, %bb.ag ], [ %i.cz, %bb.af ] ; 6 uses
  %i.dh = load i32, ptr %17, align 4, !tbaa !27   ; 2 uses
  %i.di = icmp eq i32 %i.dh, 2
  br i1 %i.di, label %bb.ai, label %thread-pre-split

bb.ai:                                            ; preds = %bb.ah
  switch i32 %.pr, label %thread-pre-split [
    i32 16, label %bb.aj
    i32 -16, label %.thread369
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.dj = load i64, ptr %9, align 8, !tbaa !54    ; 2 uses
  %.not356 = icmp eq i64 %i.dj, 0
  br i1 %.not356, label %thread-pre-split.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dk = load i64, ptr %15, align 8, !tbaa !43
  %i.dl = sdiv i64 %i.dk, %i.dj
  br label %thread-pre-split.thread

.thread369:                                       ; preds = %bb.ai
  store i64 1, ptr %14, align 8, !tbaa !54
  store i64 %4, ptr %9, align 8, !tbaa !54
  %i.dm = add nsw i64 %3, -1
  store i64 %i.dm, ptr %13, align 8, !tbaa !43
  br label %bb.ap

thread-pre-split.thread:                          ; preds = %bb.aj, %bb.ak
  %.sink406 = phi i64 [ %i.dl, %bb.ak ], [ 0, %bb.aj ]
  store i64 %.sink406, ptr %15, align 8, !tbaa !43
  %i.dn = add nsw i64 %3, -1
  store i64 %i.dn, ptr %13, align 8, !tbaa !43
  br label %bb.ap

thread-pre-split:                                 ; preds = %bb.ai, %bb.ah
  %i.do = icmp eq i32 %i.dh, 1
  %i.dp = add nsw i64 %3, -1
  %storemerge = select i1 %i.do, i64 0, i64 %i.dp
  store i64 %storemerge, ptr %13, align 8, !tbaa !43
  %i.dq = add i32 %.pr, -83
  %i.dr = icmp ult i32 %i.dq, -165
  br i1 %i.dr, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %thread-pre-split
  %i.ds = icmp sgt i32 %.pr, 0
  br i1 %i.ds, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dt = add nuw nsw i32 %.pr, 1
  %i.du = lshr i32 %i.dt, 1
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %.nonneg = sub i32 1, %.pr
  %i.dv = lshr i32 %.nonneg, 1
  %.neg = sub nsw i32 0, %i.dv
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %storemerge357 = phi i32 [ %.neg, %bb.an ], [ %i.du, %bb.am ] ; 2 uses
  store i32 %storemerge357, ptr %10, align 4, !tbaa !27
  %i.dw = load i64, ptr %15, align 8, !tbaa !43
  %i.dx = shl nsw i64 %i.dw, 1
  store i64 %i.dx, ptr %15, align 8, !tbaa !43
  %i.dy = load i64, ptr %9, align 8, !tbaa !54
  %i.dz = sdiv i64 %i.dy, 2
  store i64 %i.dz, ptr %9, align 8, !tbaa !54
  %i.ea = load i64, ptr %14, align 8, !tbaa !54
  %i.eb = sdiv i64 %i.ea, 2
  store i64 %i.eb, ptr %14, align 8, !tbaa !54
  br label %bb.ap

bb.ap:                                            ; preds = %thread-pre-split.thread, %.thread369, %bb.ao, %thread-pre-split
  %i.ec = phi i32 [ -16, %.thread369 ], [ %storemerge357, %bb.ao ], [ %.pr, %thread-pre-split ], [ 16, %thread-pre-split.thread ]
  %i.ed = tail call i32 @llvm.abs.i32(i32 %i.ec, i1 true)
  switch i32 %i.ed, label %bb.au [
    i32 42, label %.sink.split407
    i32 82, label %bb.aq
    i32 16, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  br label %.sink.split407

bb.ar:                                            ; preds = %bb.ap
  %i.ee = load i64, ptr %9, align 8, !tbaa !54    ; 3 uses
  %.not358 = icmp eq i64 %i.ee, 0
  br i1 %.not358, label %.sink.split407, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ef = sdiv i64 28799, %i.ee                   ; 2 uses
  %i.eg = trunc nsw i64 %i.ef to i32
  store i32 %i.eg, ptr %11, align 4, !tbaa !27
  %i.eh = icmp eq i64 %i.ef, 0
  br i1 %i.eh, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
end_hunk_5
begin_hunk_6_@fftheap:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca [81 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %i.g = load i32, ptr %5, align 4, !tbaa !27     ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35
  %.not = icmp eq i32 %i.i, %i.m
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add nsw i32 %i.i, 1
  %i.o = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.n, ptr noundef null, ptr noundef nonnull %5) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.p = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %5)
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %5, align 4, !tbaa !27
  br label %bb.af

bb.f:                                             ; preds = %bb.d, %bb.c
  %.not97 = icmp eq ptr %4, null                  ; 3 uses
  br i1 %.not97, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %4, align 4, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not98 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not98, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 992
  %i.u = load i64, ptr %i.t, align 8, !tbaa !62
  store i64 %i.u, ptr %1, align 8, !tbaa !43
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not99 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not99, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %2, align 8, !tbaa !43
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not100 = icmp eq ptr %3, null                 ; 2 uses
  br i1 %.not100, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 0, ptr %3, align 8, !tbaa !43
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !17   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.x = load i32, ptr %i.w, align 8, !tbaa !48
  %.not101 = icmp eq i32 %i.x, 2
  br i1 %.not101, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 992
  %i.z = load i64, ptr %i.y, align 8, !tbaa !62   ; 10 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ab = load i32, ptr %5, align 4, !tbaa !27
  br label %bb.af

bb.q:                                             ; preds = %bb.o
  %i.ac = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.z) #32 ; 6 uses
  %.not102 = icmp eq ptr %i.ac, null
  br i1 %.not102, label %bb.r, label %.preheader107

.preheader107:                                    ; preds = %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 944
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !58
  %.not103112 = icmp slt i32 %i.ae, 1
  br i1 %.not103112, label %.critedge, label %.lr.ph116

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(43) %i.f, ptr noundef nonnull align 1 dereferenceable(43) @.str.411, i64 43, i1 false)
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.f)
  store i32 113, ptr %5, align 4, !tbaa !27
  br label %bb.af

.lr.ph116:                                        ; preds = %.preheader107, %.loopexit106
  %.080113 = phi i32 [ %i.cq, %.loopexit106 ], [ 1, %.preheader107 ] ; 7 uses
  %i.af = load i32, ptr %5, align 4, !tbaa !27
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %ffgtcl.exit, label %.critedge

ffgtcl.exit:                                      ; preds = %.lr.ph116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.ah = call i32 @ffgtclll(ptr noundef nonnull %0, i32 noundef %.080113, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !27
  %.fr123 = freeze i32 %i.ai                      ; 3 uses
  %i.aj = icmp sgt i32 %.fr123, 0
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !17  ; 3 uses
  br i1 %i.aj, label %.loopexit106, label %bb.s

bb.s:                                             ; preds = %ffgtcl.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 960
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !60
  %.not104109 = icmp slt i64 %i.al, 1
  br i1 %.not104109, label %.loopexit106, label %.lr.ph111

.lr.ph111:                                        ; preds = %bb.s
  %i.am = sub i32 0, %.fr123
  %i.an = udiv i32 %i.am, 10
  %i.ao = icmp eq i32 %.fr123, -1
  %i.ap = zext nneg i32 %i.an to i64
  br i1 %i.ao, label %.lr.ph111.split.us, label %.lr.ph111.split

.lr.ph111.split.us:                               ; preds = %.lr.ph111, %.loopexit.us
  %.079110.us = phi i64 [ %i.bc, %.loopexit.us ], [ 1, %.lr.ph111 ] ; 4 uses
  %i.aq = call i32 @ffgdesll(ptr noundef nonnull %0, i32 noundef %.080113, i64 noundef %.079110.us, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %5) ; 0 uses
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !43  ; 4 uses
  %i.as = add nsw i64 %i.ar, 7
  %i.at = sdiv i64 %i.as, 8                       ; 2 uses
  %i.au = load i64, ptr %i.e, align 8, !tbaa !43  ; 3 uses
  %i.av = icmp slt i64 %i.au, 0
  %i.aw = add nsw i64 %i.au, %i.at
  %i.ax = icmp sgt i64 %i.aw, %i.z
  %or.cond.us = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond.us, label %bb.t, label %.preheader.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.077108.us = phi i64 [ %i.ba, %.lr.ph.us ], [ %.077108.us.ph, %.lr.ph.us.preheader ] ; 2 uses
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %.077108.us ; 2 uses
  %i.ay = load i8, ptr %gep.us, align 1, !tbaa !29
  %i.az = add i8 %i.ay, 1
  store i8 %i.az, ptr %gep.us, align 1, !tbaa !29
  %i.ba = add nuw nsw i64 %.077108.us, 1          ; 2 uses
  %exitcond125.not = icmp eq i64 %i.ba, %smax
  br i1 %exitcond125.not, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !172

bb.t:                                             ; preds = %.lr.ph111.split.us
  br i1 %.not97, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %4, align 4, !tbaa !27
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 81, ptr noundef nonnull @.str.412, i64 noundef %.079110.us, i32 noundef %.080113) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.f)
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.lr.ph.us, %middle.block, %vec.epilog.middle.block, %.preheader.us, %bb.v
  %i.bc = add nuw nsw i64 %.079110.us, 1
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !17  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 960
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !60
  %.not104.us.not = icmp slt i64 %.079110.us, %i.bf
  br i1 %.not104.us.not, label %.lr.ph111.split.us, label %.loopexit106, !llvm.loop !173

.preheader.us:                                    ; preds = %.lr.ph111.split.us
  %invariant.gep.us = getelementptr i8, ptr %i.ac, i64 %i.au ; 3 uses
  %i.bg = icmp sgt i64 %i.ar, 0
  br i1 %i.bg, label %iter.check, label %.loopexit.us

iter.check:                                       ; preds = %.preheader.us
  %smax = call i64 @llvm.smax.i64(i64 %i.at, i64 1) ; 6 uses
  %min.iters.check = icmp slt i64 %i.ar, 25
  br i1 %min.iters.check, label %.lr.ph.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check144 = icmp slt i64 %i.ar, 249
  br i1 %min.iters.check144, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bh = and i64 %smax, 28
  %n.vec = and i64 %smax, 1152921504606846944     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = getelementptr i8, ptr %invariant.gep.us, i64 %index ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 16     ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.bi, align 1, !tbaa !29
  %wide.load145 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !29
  %i.bk = add <16 x i8> %wide.load, splat (i8 1)
  %i.bl = add <16 x i8> %wide.load145, splat (i8 1)
  store <16 x i8> %i.bk, ptr %i.bi, align 1, !tbaa !29
  store <16 x i8> %i.bl, ptr %i.bj, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %smax, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.us.preheader, label %vec.epilog.ph, !prof !182

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec146 = and i64 %smax, 1152921504606846972  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index147 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next149, %vec.epilog.vector.body ] ; 2 uses
  %i.bn = getelementptr i8, ptr %invariant.gep.us, i64 %index147 ; 2 uses
  %wide.load148 = load <4 x i8>, ptr %i.bn, align 1, !tbaa !29
  %i.bo = add <4 x i8> %wide.load148, splat (i8 1)
  store <4 x i8> %i.bo, ptr %i.bn, align 1, !tbaa !29
  %index.next149 = add nuw i64 %index147, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next149, %n.vec146
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !175

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n150 = icmp eq i64 %smax, %n.vec146
  br i1 %cmp.n150, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.077108.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec146, %vec.epilog.middle.block ]
  br label %.lr.ph.us

.lr.ph111.split:                                  ; preds = %.lr.ph111, %.loopexit
  %.079110 = phi i64 [ %i.cl, %.loopexit ], [ 1, %.lr.ph111 ] ; 4 uses
  %i.bq = call i32 @ffgdesll(ptr noundef nonnull %0, i32 noundef %.080113, i64 noundef %.079110, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %5) ; 0 uses
  %i.br = load i64, ptr %i.d, align 8, !tbaa !43
  %i.bs = mul i64 %i.br, %i.ap                    ; 10 uses
  %i.bt = load i64, ptr %i.e, align 8, !tbaa !43  ; 3 uses
  %i.bu = icmp slt i64 %i.bt, 0
  %i.bv = add nsw i64 %i.bt, %i.bs
  %i.bw = icmp sgt i64 %i.bv, %i.z
  %or.cond = select i1 %i.bu, i1 true, i1 %i.bw
  br i1 %or.cond, label %bb.w, label %.preheader

.preheader:                                       ; preds = %.lr.ph111.split
  %invariant.gep = getelementptr i8, ptr %i.ac, i64 %i.bt ; 3 uses
  %i.bx = icmp sgt i64 %i.bs, 0
  br i1 %i.bx, label %iter.check164, label %.loopexit

iter.check164:                                    ; preds = %.preheader
  %min.iters.check151 = icmp ult i64 %i.bs, 4
  br i1 %min.iters.check151, label %.lr.ph.preheader, label %vector.main.loop.iter.check152

vector.main.loop.iter.check152:                   ; preds = %iter.check164
  %min.iters.check153 = icmp ult i64 %i.bs, 32
  br i1 %min.iters.check153, label %vec.epilog.ph168, label %vector.ph154

vector.ph154:                                     ; preds = %vector.main.loop.iter.check152
  %i.by = and i64 %i.bs, 28
  %n.vec155 = and i64 %i.bs, 9223372036854775776  ; 4 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next160, %vector.body156 ] ; 2 uses
  %i.bz = getelementptr i8, ptr %invariant.gep, i64 %index157 ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 16     ; 2 uses
  %wide.load158 = load <16 x i8>, ptr %i.bz, align 1, !tbaa !29
  %wide.load159 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !29
  %i.cb = add <16 x i8> %wide.load158, splat (i8 1)
  %i.cc = add <16 x i8> %wide.load159, splat (i8 1)
  store <16 x i8> %i.cb, ptr %i.bz, align 1, !tbaa !29
  store <16 x i8> %i.cc, ptr %i.ca, align 1, !tbaa !29
  %index.next160 = add nuw i64 %index157, 32      ; 2 uses
  %i.cd = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.cd, label %middle.block161, label %vector.body156, !llvm.loop !176

middle.block161:                                  ; preds = %vector.body156
  %cmp.n162 = icmp eq i64 %i.bs, %n.vec155
  br i1 %cmp.n162, label %.loopexit, label %vec.epilog.iter.check166

vec.epilog.iter.check166:                         ; preds = %middle.block161
  %min.epilog.iters.check167 = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check167, label %.lr.ph.preheader, label %vec.epilog.ph168, !prof !182

vec.epilog.ph168:                                 ; preds = %vector.main.loop.iter.check152, %vec.epilog.iter.check166
  %vec.epilog.resume.val163 = phi i64 [ %n.vec155, %vec.epilog.iter.check166 ], [ 0, %vector.main.loop.iter.check152 ]
  %n.vec169 = and i64 %i.bs, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body170

vec.epilog.vector.body170:                        ; preds = %vec.epilog.vector.body170, %vec.epilog.ph168
  %index171 = phi i64 [ %vec.epilog.resume.val163, %vec.epilog.ph168 ], [ %index.next173, %vec.epilog.vector.body170 ] ; 2 uses
  %i.ce = getelementptr i8, ptr %invariant.gep, i64 %index171 ; 2 uses
  %wide.load172 = load <4 x i8>, ptr %i.ce, align 1, !tbaa !29
  %i.cf = add <4 x i8> %wide.load172, splat (i8 1)
  store <4 x i8> %i.cf, ptr %i.ce, align 1, !tbaa !29
  %index.next173 = add nuw i64 %index171, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next173, %n.vec169
  br i1 %i.cg, label %vec.epilog.middle.block174, label %vec.epilog.vector.body170, !llvm.loop !177

vec.epilog.middle.block174:                       ; preds = %vec.epilog.vector.body170
  %cmp.n175 = icmp eq i64 %i.bs, %n.vec169
  br i1 %cmp.n175, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check164, %vec.epilog.iter.check166, %vec.epilog.middle.block174
  %.077108.ph = phi i64 [ 0, %iter.check164 ], [ %n.vec155, %vec.epilog.iter.check166 ], [ %n.vec169, %vec.epilog.middle.block174 ]
  br label %.lr.ph

bb.w:                                             ; preds = %.lr.ph111.split
  br i1 %.not97, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %4, align 4, !tbaa !27
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ch = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 81, ptr noundef nonnull @.str.412, i64 noundef %.079110, i32 noundef %.080113) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.f)
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.077108 = phi i64 [ %i.ck, %.lr.ph ], [ %.077108.ph, %.lr.ph.preheader ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.077108 ; 2 uses
  %i.ci = load i8, ptr %gep, align 1, !tbaa !29
  %i.cj = add i8 %i.ci, 1
  store i8 %i.cj, ptr %gep, align 1, !tbaa !29
  %i.ck = add nuw nsw i64 %.077108, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ck, %i.bs
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !178

.loopexit:                                        ; preds = %.lr.ph, %middle.block161, %vec.epilog.middle.block174, %.preheader, %bb.y
  %i.cl = add nuw nsw i64 %.079110, 1
  %i.cm = load ptr, ptr %i.j, align 8, !tbaa !17  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 960
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !60
  %.not104.not = icmp slt i64 %.079110, %i.co
  br i1 %.not104.not, label %.lr.ph111.split, label %.loopexit106, !llvm.loop !173

.loopexit106:                                     ; preds = %.loopexit, %.loopexit.us, %bb.s, %ffgtcl.exit
  %i.cp = phi ptr [ %i.bd, %.loopexit.us ], [ %.pre, %ffgtcl.exit ], [ %.pre, %bb.s ], [ %i.cm, %.loopexit ]
  %i.cq = add nuw nsw i32 %.080113, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 944
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !58
  %.not103.not = icmp slt i32 %.080113, %i.cs
  br i1 %.not103.not, label %.lr.ph116, label %.critedge, !llvm.loop !179

.critedge:                                        ; preds = %.lr.ph116, %.loopexit106, %.preheader107
  %i.ct = icmp sgt i64 %i.z, 0
  br i1 %i.ct, label %.lr.ph121.preheader, label %._crit_edge

.lr.ph121.preheader:                              ; preds = %.critedge
  %min.iters.check177 = icmp ult i64 %i.z, 4
  br i1 %min.iters.check177, label %.lr.ph121.preheader193, label %vector.ph178

vector.ph178:                                     ; preds = %.lr.ph121.preheader
  %n.vec179 = and i64 %i.z, 9223372036854775804   ; 3 uses
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next187, %vector.body180 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph178 ], [ %i.dc, %vector.body180 ]
  %vec.phi182 = phi <2 x i64> [ zeroinitializer, %vector.ph178 ], [ %i.dd, %vector.body180 ]
  %vec.phi183 = phi <2 x i64> [ zeroinitializer, %vector.ph178 ], [ %i.dg, %vector.body180 ]
  %vec.phi184 = phi <2 x i64> [ zeroinitializer, %vector.ph178 ], [ %i.dh, %vector.body180 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ac, i64 %index181 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  %wide.load185 = load <2 x i8>, ptr %i.cu, align 1, !tbaa !29 ; 2 uses
  %wide.load186 = load <2 x i8>, ptr %i.cv, align 1, !tbaa !29 ; 2 uses
  %i.cw = icmp eq <2 x i8> %wide.load185, zeroinitializer
  %i.cx = icmp eq <2 x i8> %wide.load186, zeroinitializer
  %i.cy = icmp sgt <2 x i8> %wide.load185, splat (i8 1)
  %i.cz = icmp sgt <2 x i8> %wide.load186, splat (i8 1)
  %i.da = zext <2 x i1> %i.cy to <2 x i64>
  %i.db = zext <2 x i1> %i.cz to <2 x i64>
  %i.dc = add <2 x i64> %vec.phi, %i.da           ; 2 uses
  %i.dd = add <2 x i64> %vec.phi182, %i.db        ; 2 uses
  %i.de = zext <2 x i1> %i.cw to <2 x i64>
  %i.df = zext <2 x i1> %i.cx to <2 x i64>
  %i.dg = add <2 x i64> %vec.phi183, %i.de        ; 2 uses
  %i.dh = add <2 x i64> %vec.phi184, %i.df        ; 2 uses
  %index.next187 = add nuw i64 %index181, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next187, %n.vec179
  br i1 %i.di, label %middle.block188, label %vector.body180, !llvm.loop !180

middle.block188:                                  ; preds = %vector.body180
  %bin.rdx = add <2 x i64> %i.dd, %i.dc
  %i.dj = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %bin.rdx189 = add <2 x i64> %i.dh, %i.dg
  %i.dk = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx189) ; 2 uses
  %cmp.n190 = icmp eq i64 %i.z, %n.vec179
  br i1 %cmp.n190, label %._crit_edge, label %.lr.ph121.preheader193

.lr.ph121.preheader193:                           ; preds = %.lr.ph121.preheader, %middle.block188
  %.0120.ph = phi i64 [ 0, %.lr.ph121.preheader ], [ %i.dj, %middle.block188 ]
  %.074119.ph = phi i64 [ 0, %.lr.ph121.preheader ], [ %i.dk, %middle.block188 ]
  %.178118.ph = phi i64 [ 0, %.lr.ph121.preheader ], [ %n.vec179, %middle.block188 ]
  br label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.preheader193, %.lr.ph121
  %.0120 = phi i64 [ %spec.select, %.lr.ph121 ], [ %.0120.ph, %.lr.ph121.preheader193 ]
  %.074119 = phi i64 [ %.175, %.lr.ph121 ], [ %.074119.ph, %.lr.ph121.preheader193 ]
  %.178118 = phi i64 [ %i.dr, %.lr.ph121 ], [ %.178118.ph, %.lr.ph121.preheader193 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.178118
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !29  ; 2 uses
  %i.dn = icmp eq i8 %i.dm, 0
  %i.do = icmp sgt i8 %i.dm, 1
  %i.dp = zext i1 %i.do to i64
  %spec.select = add nuw nsw i64 %.0120, %i.dp    ; 2 uses
  %i.dq = zext i1 %i.dn to i64
  %.175 = add nuw nsw i64 %.074119, %i.dq         ; 2 uses
  %i.dr = add nuw nsw i64 %.178118, 1             ; 2 uses
  %exitcond126.not = icmp eq i64 %i.dr, %i.z
  br i1 %exitcond126.not, label %._crit_edge, label %.lr.ph121, !llvm.loop !181

._crit_edge:                                      ; preds = %.lr.ph121, %middle.block188, %.critedge
  %.074.lcssa = phi i64 [ 0, %.critedge ], [ %i.dk, %middle.block188 ], [ %.175, %.lr.ph121 ]
  %.0.lcssa = phi i64 [ 0, %.critedge ], [ %i.dj, %middle.block188 ], [ %spec.select, %.lr.ph121 ]
  br i1 %.not98, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  store i64 %i.z, ptr %1, align 8, !tbaa !43
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge
  br i1 %.not99, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i64 %.074.lcssa, ptr %2, align 8, !tbaa !43
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br i1 %.not100, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i64 %.0.lcssa, ptr %3, align 8, !tbaa !43
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @free(ptr noundef %i.ac) #28
  %i.ds = load i32, ptr %5, align 4, !tbaa !27
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae, %bb.r, %bb.p, %bb.e
  %.081 = phi i32 [ 113, %bb.r ], [ %i.ab, %bb.p ], [ %i.r, %bb.e ], [ %i.ds, %bb.ae ], [ %i.g, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  ret i32 %.081
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffcmph(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 13 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca [73 x i8], align 16               ; 4 uses
end_hunk_6
begin_hunk_7_@strtoll

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoull(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare ptr @localeconv() local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 2) i32 @fits_strcasecmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #24 {
bb.a:
  %i.a = tail call ptr @__ctype_toupper_loc() #30
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !29
  %i.d = sext i8 %i.c to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27
  %i.g = load i8, ptr %1, align 1, !tbaa !29
  %i.h = sext i8 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !27
  %sext18 = shl i32 %i.f, 24                      ; 2 uses
  %i.k = ashr exact i32 %sext18, 24               ; 2 uses
  %sext1719 = shl i32 %i.j, 24
  %i.l = ashr exact i32 %sext1719, 24             ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.n = phi i32 [ %i.ac, %bb.c ], [ %i.l, %bb.a ]
  %i.o = phi i32 [ %i.ab, %bb.c ], [ %i.k, %bb.a ]
  %sext22 = phi i32 [ %sext, %bb.c ], [ %sext18, %bb.a ]
  %.01321 = phi ptr [ %i.r, %bb.c ], [ %0, %bb.a ]
  %.01420 = phi ptr [ %i.s, %bb.c ], [ %1, %bb.a ]
  %i.p = icmp sgt i32 %i.o, %i.n
  br i1 %i.p, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = icmp eq i32 %sext22, 0
  br i1 %i.q, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.01321, i64 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01420, i64 1 ; 2 uses
  %i.t = load i8, ptr %i.r, align 1, !tbaa !29
  %i.u = sext i8 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !27
  %i.x = load i8, ptr %i.s, align 1, !tbaa !29
  %i.y = sext i8 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !27
  %sext = shl i32 %i.w, 24                        ; 2 uses
  %i.ab = ashr exact i32 %sext, 24                ; 2 uses
  %sext17 = shl i32 %i.aa, 24
  %i.ac = ashr exact i32 %sext17, 24              ; 2 uses
  %i.ad = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 2) i32 @fits_strncasecmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #24 {
bb.a:
  %.not20 = icmp eq i64 %2, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = tail call ptr @__ctype_toupper_loc() #30
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph
  %.in = phi i64 [ %2, %.lr.ph ], [ %i.c, %bb.d ]
  %.01422 = phi ptr [ %0, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.01521 = phi ptr [ %1, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %i.c = add i64 %.in, -1                         ; 2 uses
  %i.d = load i8, ptr %.01422, align 1, !tbaa !29
  %i.e = sext i8 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27
  %i.h = load i8, ptr %.01521, align 1, !tbaa !29
  %i.i = sext i8 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27
  %sext = shl i32 %i.g, 24                        ; 2 uses
  %i.l = ashr exact i32 %sext, 24                 ; 2 uses
  %sext19 = shl i32 %i.k, 24
  %i.m = ashr exact i32 %sext19, 24               ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp sgt i32 %i.l, %i.m
  br i1 %i.o, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i32 %sext, 0
  %i.q = getelementptr inbounds nuw i8, ptr %.01422, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %.01521, i64 1
  %.not = icmp eq i64 %i.c, 0
  %or.cond = select i1 %i.p, i1 true, i1 %.not
  br i1 %or.cond, label %._crit_edge, label %bb.b, !llvm.loop !232

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef ptr @fits_recalloc(ptr noundef captures(address_is_null, ret: address, provenance) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #25 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef %3) #32
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %2, %1
  br i1 %i.d, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %0) #28
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.f = icmp ult i64 %2, %1
  %i.g = mul i64 %3, %2
  %i.h = tail call ptr @realloc(ptr noundef nonnull %0, i64 noundef %i.g) #31 ; 4 uses
  %.not36 = icmp eq ptr %i.h, null                ; 2 uses
  br i1 %i.f, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not36, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %0) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  br i1 %.not36, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %0) #28
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.i = mul i64 %3, %1
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = sub nuw i64 %2, %1
  %i.l = mul i64 %i.k, %3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 %i.l, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.c, %bb.k, %bb.j, %bb.e, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.j ], [ null, %bb.e ], [ %0, %bb.c ], [ %i.h, %bb.k ], [ null, %bb.h ], [ %i.h, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { nounwind willreturn memory(none) }
attributes #31 = { nounwind allocsize(1) }
attributes #32 = { nounwind allocsize(0,1) }
attributes #33 = { nounwind allocsize(0) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !31}
!1 = distinct !{!1, !31}
!2 = distinct !{!2, !31}
!3 = distinct !{!3, !31}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"float", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"", !10, i64 0, !15, i64 8}
!17 = !{!16, !15, i64 8}
!18 = !{!"p1 omnipotent char", !15, i64 0}
!19 = !{!"long long", !9, i64 0}
!20 = !{!"p1 long long", !15, i64 0}
!21 = !{!"long", !9, i64 0}
!22 = !{!"double", !9, i64 0}
!23 = !{!"p1 int", !15, i64 0}
!24 = !{!"p1 long", !15, i64 0}
!25 = !{!"any p2 pointer", !15, i64 0}
!26 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !18, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !19, i64 40, !19, i64 48, !10, i64 56, !19, i64 64, !19, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !20, i64 104, !19, i64 112, !19, i64 120, !19, i64 128, !19, i64 136, !10, i64 144, !9, i64 152, !10, i64 944, !10, i64 948, !19, i64 952, !19, i64 960, !19, i64 968, !15, i64 976, !19, i64 984, !19, i64 992, !10, i64 1000, !9, i64 1008, !13, i64 1056, !10, i64 1060, !10, i64 1064, !10, i64 1068, !10, i64 1072, !13, i64 1076, !10, i64 1080, !10, i64 1084, !9, i64 1088, !13, i64 1136, !10, i64 1140, !10, i64 1144, !10, i64 1148, !9, i64 1152, !10, i64 1164, !10, i64 1168, !9, i64 1176, !21, i64 1224, !21, i64 1232, !10, i64 1240, !10, i64 1244, !10, i64 1248, !10, i64 1252, !10, i64 1256, !10, i64 1260, !22, i64 1264, !22, i64 1272, !22, i64 1280, !22, i64 1288, !22, i64 1296, !10, i64 1304, !10, i64 1308, !10, i64 1312, !13, i64 1316, !10, i64 1320, !23, i64 1328, !24, i64 1336, !23, i64 1344, !25, i64 1352, !25, i64 1360, !23, i64 1368, !18, i64 1376, !9, i64 1384, !9, i64 1704, !9, i64 1864}
!27 = !{!10, !10, i64 0}
!28 = !{!26, !10, i64 92}
!29 = !{!9, !9, i64 0}
!30 = !{!18, !18, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!23, !23, i64 0}
!34 = !{!16, !10, i64 0}
!35 = !{!26, !10, i64 84}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!"branch_weights", i32 8, i32 24}
!39 = !{!26, !19, i64 128}
!40 = !{!26, !10, i64 100}
!41 = !{!26, !20, i64 104}
!42 = !{!26, !10, i64 96}
!43 = !{!19, !19, i64 0}
!44 = !{!26, !19, i64 48}
!45 = !{!26, !19, i64 112}
!46 = !{ptr @ffghdt}
!47 = !{!26, !19, i64 136}
!48 = !{!26, !10, i64 88}
!49 = !{!26, !10, i64 1148}
!50 = !{!"p1 short", !15, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"short", !9, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!21, !21, i64 0}
!55 = !{!"lconv", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !9, i64 80, !9, i64 81, !9, i64 82, !9, i64 83, !9, i64 84, !9, i64 85, !9, i64 86, !9, i64 87, !9, i64 88, !9, i64 89, !9, i64 90, !9, i64 91, !9, i64 92, !9, i64 93}
!56 = !{!55, !18, i64 0}
!57 = !{!22, !22, i64 0}
!58 = !{!26, !10, i64 944}
!59 = !{!26, !15, i64 976}
!60 = !{!26, !19, i64 960}
!61 = !{!26, !19, i64 952}
!62 = !{!26, !19, i64 992}
!63 = !{!"", !9, i64 0, !19, i64 72, !10, i64 80, !19, i64 88, !22, i64 96, !22, i64 104, !19, i64 112, !9, i64 120, !9, i64 140, !21, i64 152}
!64 = !{!63, !10, i64 80}
!65 = !{!63, !21, i64 152}
!66 = !{!63, !19, i64 88}
!67 = !{!63, !22, i64 104}
!68 = !{!63, !22, i64 96}
!69 = !{!63, !19, i64 72}
!70 = !{!63, !19, i64 112}
!71 = !{!26, !10, i64 56}
!72 = !{!26, !10, i64 144}
!73 = !{!26, !19, i64 984}
!74 = !{!26, !19, i64 968}
!75 = !{!26, !23, i64 1328}
!76 = !{!26, !25, i64 1352}
!77 = !{!15, !15, i64 0}
!78 = !{!26, !25, i64 1360}
!79 = !{!26, !23, i64 1368}
!80 = !{!26, !23, i64 1344}
!81 = !{!26, !24, i64 1336}
!82 = !{!26, !10, i64 4}
!83 = !{!26, !19, i64 120}
!84 = !{!26, !10, i64 1168}
!85 = !{!26, !18, i64 16}
!86 = distinct !{!86, !32}
!87 = distinct !{!87, !31}
!88 = distinct !{!88, !32}
!89 = distinct !{!89, !31}
!90 = distinct !{!90, !32}
!91 = distinct !{!91, !31}
!92 = distinct !{!92, !31}
!93 = distinct !{!93, !31}
!94 = distinct !{!94, !31, !36, !37}
!95 = distinct !{!95, !31, !36, !37}
!96 = distinct !{!96, !31, !37, !36}
!97 = distinct !{!97, !31}
!98 = distinct !{!98, !32}
!99 = distinct !{!99, !31}
!100 = !{ptr @ffgext}
!101 = distinct !{!101, !31}
!102 = distinct !{!102, !31}
!103 = distinct !{!103, !31}
!104 = distinct !{!104, !31}
!105 = distinct !{!105, !31}
!106 = distinct !{!106, !31}
!107 = distinct !{!107, !32}
!108 = distinct !{!108, !32}
!109 = distinct !{!109, !31}
!110 = distinct !{!110, !31}
!111 = distinct !{!111, !31}
!112 = distinct !{!112, !31}
!113 = distinct !{!113, !31}
!114 = distinct !{!114, !31}
!115 = distinct !{!115, !31}
!116 = distinct !{!116, !31}
!117 = distinct !{!117, !31, !36, !37}
!118 = distinct !{!118, !31, !36, !37}
!119 = distinct !{!119, !31, !37, !36}
!120 = distinct !{!120, !31}
!121 = distinct !{!121, !31}
!122 = distinct !{!122, !31}
!123 = distinct !{!123, !31}
!124 = distinct !{!124, !31}
!125 = distinct !{!125, !31}
!126 = distinct !{!126, !31}
!127 = distinct !{!127, !31}
!128 = distinct !{!128, !31}
!129 = distinct !{!129, !32}
!130 = distinct !{!130, !31}
!131 = distinct !{!131, !32}
!132 = distinct !{!132, !31}
!133 = distinct !{!133, !31}
!134 = distinct !{!134, !32}
!135 = distinct !{!135, !31}
!136 = distinct !{!136, !31}
!137 = distinct !{!137, !31}
!138 = distinct !{!138, !31}
!139 = distinct !{!139, !31}
!140 = !{!26, !10, i64 948}
!141 = distinct !{!141, !31}
!142 = distinct !{!142, !31}
!143 = distinct !{!143, !32}
!144 = distinct !{!144, !32}
!145 = distinct !{!145, !31}
!146 = distinct !{!146, !31}
!147 = distinct !{!147, !31}
!148 = distinct !{!148, !31}
!149 = distinct !{!149, !32}
!150 = distinct !{!150, !31}
!151 = distinct !{!151, !31}
!152 = distinct !{!152, !31}
!153 = distinct !{!153, !31}
!154 = distinct !{!154, !31}
!155 = distinct !{!155, !31}
!156 = distinct !{!156, !32}
!157 = distinct !{!157, !31}
!158 = distinct !{!158, !31}
!159 = distinct !{!159, !31}
!160 = distinct !{!160, !31}
!161 = distinct !{!161, !31}
!162 = distinct !{!162, !31}
!163 = distinct !{!163, !31}
!164 = distinct !{!164, !31}
!165 = distinct !{!165, !31}
!166 = distinct !{!166, !31}
!167 = distinct !{!167, !31}
!168 = distinct !{!168, !31}
!169 = distinct !{!169, !31}
!170 = distinct !{!170, !31, !36, !37}
!171 = distinct !{!171, !31, !37, !36}
!172 = distinct !{!172, !31, !37, !36}
!173 = distinct !{!173, !31}
!174 = distinct !{!174, !31, !36, !37}
!175 = distinct !{!175, !31, !36, !37}
!176 = distinct !{!176, !31, !36, !37}
!177 = distinct !{!177, !31, !36, !37}
!178 = distinct !{!178, !31, !37, !36}
!179 = distinct !{!179, !31}
!180 = distinct !{!180, !31, !36, !37}
!181 = distinct !{!181, !31, !37, !36}
!182 = !{!"branch_weights", i32 4, i32 28}
!183 = distinct !{!183, !31}
!184 = distinct !{!184, !31}
!185 = distinct !{!185, !31}
!186 = distinct !{!186, !31}
!187 = distinct !{!187, !31, !36, !37}
!188 = distinct !{!188, !31, !37, !36}
!189 = distinct !{!189, !31}
!190 = distinct !{!190, !31}
!191 = distinct !{!191, !31}
!192 = distinct !{!192, !31}
!193 = distinct !{!193, !31}
!194 = !{!26, !10, i64 8}
!195 = distinct !{!195, !31, !199}
!196 = distinct !{!196, !31}
!197 = distinct !{!197, !31}
!198 = !{ptr @ffgdesll}
!199 = !{!"llvm.loop.unswitch.partial.disable"}
!200 = distinct !{!200, !31}
!201 = distinct !{!201, !31}
!202 = distinct !{!202, !31}
!203 = distinct !{!203, !31, !204}
!204 = !{!"llvm.loop.peeled.count", i32 1}
!205 = !{!26, !10, i64 1064}
!206 = !{!26, !10, i64 1144}
!207 = distinct !{!207, !31, !36, !37}
!208 = distinct !{!208, !31, !37, !36}
!209 = distinct !{!209, !31, !36, !37}
!210 = distinct !{!210, !32}
!211 = distinct !{!211, !31, !36}
!212 = distinct !{!212, !31, !36, !37}
!213 = distinct !{!213, !31, !37, !36}
!214 = distinct !{!214, !31, !36, !37}
!215 = distinct !{!215, !32}
!216 = distinct !{!216, !31, !36}
!217 = distinct !{!217, !31, !36, !37}
!218 = distinct !{!218, !32}
!219 = distinct !{!219, !31, !36}
!220 = distinct !{!220, !31, !36, !37}
!221 = distinct !{!221, !31, !37, !36}
!222 = distinct !{!222, !31, !36, !37}
!223 = distinct !{!223, !32}
!224 = distinct !{!224, !31, !36}
!225 = distinct !{!225, !31, !36, !37}
!226 = distinct !{!226, !31, !37, !36}
!227 = !{!26, !10, i64 28}
!228 = distinct !{!228, !31}
!229 = distinct !{!229, !32}
!230 = distinct !{!230, !31}
!231 = distinct !{!231, !31}
!232 = distinct !{!232, !31}
end_hunk_7
